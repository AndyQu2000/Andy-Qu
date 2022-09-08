// Andy Qu
// 23801639
// ACCUWEATHER x EVIL INSULT GENERATOR

const fs = require('fs');
const http = require('http');
const https = require('https');


const cred = require("./auth/cred.json");

const port = 3000;
const server = http.createServer();

server.on("listening", listen_handler);
server.listen(port);
function listen_handler(){
    console.log(`Listening on port ${port}`);
}
server.on("request", request_handler);
function request_handler(req, res){
    console.log(`New Request from ${req.socket.remoteAddress} for ${req.url}`);
    console.log(req.url);
    if(req.url === "/"){
        const form = fs.createReadStream("html/index.html");
        res.writeHead(200,{"Content-Type": "text/html"})
        form.pipe(res);
        
    }
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
    const citysearach_endpoint = `https://dataservice.accuweather.com/locations/v1/cities/geoposition/search?q=${long},${lat}&apikey=${cred.apikey}`;
    const citysearach_request = https.request(citysearach_endpoint, {method:"GET", headers:cred});
    
    citysearach_request.once("response", stream => process_stream(stream,parse_citysearch, res));

    citysearach_request.end();

}

function get_insult(res){
    const insult_endpoint = 'https://evilinsult.com/generate_insult.php?lang=en&type=json';
    const insult_request = https.request(insult_endpoint, {method:"GET"});
    insult_request.once("response", stream => process_stream(stream,parse_insult, res));
    insult_request.end();
}
function process_stream(stream, callback , ...args){
    let body = "";
    stream.on("data", chunk =>body += chunk);
    stream.on("end", () => callback(body, ...args));

}
function parse_citysearch(citysearch_data,res,callback){
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


function parse_insult(insult_data,res){
    const insult_object = JSON.parse(insult_data);
    let ins = insult_object?.SearchResult?.SearchResultItems;
    let results = insult_object.insult;
    results = `<div style = "width49%;font-size: 30px; float:left;"><br><br>${results}</div>`
    console.log(results);
    res.write(results.padEnd(1024," "),() => res.end());
}