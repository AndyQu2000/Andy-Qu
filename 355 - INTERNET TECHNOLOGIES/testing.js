const fs = require('fs');
const http = require('http');
const https = require('https');

//first we load up the server
const cred = require("./auth/cred.json");
// this is the cred page which is typed in a json format which will contain the headers needed for the api
//this will be the local port that we are hosting on.
const port = 3000;
const server = http.createServer();
// so after creating the server we attach two listener
// one  to display the port number which is 3000 and the other for the request
// which will listen to new request from the client
server.on("listening", listen_handler);
server.listen(port);
function listen_handler(){
    console.log(`Listening on port ${port}`);
}
server.on("request", request_handler);
function request_handler(req, res){
    // so when we first enter the program the request handler will fire
    //  the url of the requested page is printed and we are directed to the root
    //  we are directed based on the request 
    // In this we have 3 different pages.
    // a homepage/or root,       the search  and the 404 not found page


    console.log(`New Request from ${req.socket.remoteAddress} for ${req.url}`);
    console.log(req.url);
    if(req.url === "/"){
        const form = fs.createReadStream("html/index.html");
        res.writeHead(200,{"Content-Type": "text/html"})
        form.pipe(res);
        
    }
    //this is a form where the user has to fill out their long and lat. 
    // After filling it out and prressing search it will send via get to the endpoint

    //in here we extract both the long and lat that the client has entered.
    // since there is mulitple information (lat and long) we do unser_input.get twice(once for each)
    // after getting the information we call the get_information 
    // usually we would also use this to filter out invalid information entered.
    // such as a long that is not between -180 and 180 or a lat that is not between -90 or 90
    // other factors such as entering an empty result, non integers, coordinates in the sea or areas without a city name etc.
    // there were too many factors which will make it undfeined so i decided to inplemnet the 404 for those during the parsing process
    else if (req.url.startsWith("/search")){
        const user_input = new URL(req.url, `https://${req.headers.host}`).searchParams;
        let lat = user_input.get('lat');
        let long = user_input.get('long');
        res.writeHead(200, {"Content-Type": "text/html"});
        get_information(long,lat,res);
    

    }
    else{
            res.writeHead(404,{"Content-Type": "text/html"});
            res.end('<h1> 404 Not Found </h1>')

    }
}

function get_information(lat,long,res){
    // so we send out request to the accuweather api for getting their city.
    // after getting the request we send it to the stream with parse as the call back
    const citysearach_endpoint = `https://dataservice.accuweather.com/locations/v1/cities/geoposition/search?q=${long},${lat}&apikey=${cred.apikey}`;
    const citysearach_request = https.request(citysearach_endpoint, {method:"GET", headers:cred});
    
    citysearach_request.once("response", stream => process_stream(stream,parse_citysearch, res));

    citysearach_request.end();

}

function get_insult(res){
    // insult is typically the same as gettting the city
    // over here we dont have the cred header since it is an public api which doesnt take any keys
    // just like before we call the process stream function which will execute the parse insult function after
    const insult_endpoint = 'https://evilinsult.com/generate_insult.php?lang=en&type=json';
    const insult_request = https.request(insult_endpoint, {method:"GET"});
    insult_request.once("response", stream => process_stream(stream,parse_insult, res));
    insult_request.end();
}
//so after the process stream finishes it will run the call back. in the first case it will be parse citysearch
// and second will be parsing the insult when we return to this function.
function process_stream(stream, callback , ...args){
    // so to parse we start off with "body " which is an empty string
    // and as we process each chunk we add the information to the back to process strea
    // when there is no more data left in the stream, we end the event in which we execute the callback.
    let body = "";
    stream.on("data", chunk =>body += chunk);
    stream.on("end", () => callback(body, ...args));

}
function parse_citysearch(citysearch_data,res,callback){
    // So in this function we parse the city search, but we also use it for error dections
    // if they didnt enter a valid coordinate or they didnt enter any coordinates
    // the api will not return any information.
    // instead we would normally get undefined  which will give us an error while parsing it since it is not in json
    // So to fix these i put a try and catch.
    // if they entered anythign invalid they are directed to the 404 not found page
    //  if  is valid then we go ahead and parse the json file and set the "results variable to what we want to print

    //  in this case we wanted to print "oh your're from (whatever city theyu are from) in caps and underneath it  lemee just tell you something"
// after writing it out we go ahead and execute the get insult function.

    try{
        const citysearach_object = JSON.parse(citysearch_data);
        let results = citysearach_object.LocalizedName;
        results = `<div style = "width49%;font-size: 30px; float:left;">OH YOU'RE FROM ${results.toUpperCase()} ?!?!?!?!?!?! <br><br> Lemme just tell you something <br><br></div>`
        console.log(results);
        res.write(results.padEnd(1024," "),() => get_insult(res));
    }
    catch(e){
        res.writeHead(404,{"Content-Type": "text/html"});
        res.end('<h1> 404 Not Found </h1>')
        console.log("PLEASE ENTER CORRECT LAT,LONG");
    }
}
// parse insult is the same as parse citysearch but without the error detection
// since we we arent entering any information to this api
function parse_insult(insult_data,res){
    const insult_object = JSON.parse(insult_data);
    let ins = insult_object?.SearchResult?.SearchResultItems;
    let results = insult_object.insult;
    results = `<div style = "width49%;font-size: 30px; float:left;">${results}</div>`
    console.log(results);
    res.write(results.padEnd(1024," "),() => res.end());
}