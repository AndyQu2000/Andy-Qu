import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.sql.*;
import java.util.Vector;


//Northwinds2020TSQLV6;
//AdventureWorks2017;

public class SQLDatabaseConnection {
    // Connect to your database.
    // Replace server name, username, and password with your credentials
    public static void main(String[] args) {
        String connectionUrl =
                "jdbc:sqlserver://localhost:13001;"
                        + "database=Northwinds2020TSQLV6;"
                        + "user=sa;"
                        + "password=PH@123456789;"
                        + "loginTimeout=20;";

        String connectionUrl2 =
                "jdbc:sqlserver://localhost:13001;"
                        + "database=AdventureWorks2017;"
                        + "user=sa;"
                        + "password=PH@123456789;"
                        + "loginTimeout=20;";
        String connectionUrl3 =
                "jdbc:sqlserver://localhost:13001;"
                        + "database=AdventureWorksDW2017;"
                        + "user=sa;"
                        + "password=PH@123456789;"
                        + "loginTimeout=20;";
        try (Connection connection = DriverManager.getConnection(connectionUrl)) {
        // Code here.
            System.out.println("Connected");
            Statement myStmt = connection.createStatement();

            //Muhammad
            //-- select every orderdate for every order that was placed by employees
            // -- that have birthdays in the summer
/*
            ResultSet myRs = myStmt.executeQuery("SELECT O.OrderDate\n" +
                   "\t , D.UnitPrice\n" +
                   "\t , D.Quantity\n" +
                   "FROM Sales.[Order]\t\t\t\tAS O\n" +
                   "INNER JOIN Sales.OrderDetail\tAS D\n" +
                   "\tON O.OrderId = D.OrderId\n" +
                   "WHERE O.EmployeeId IN (SELECT EmployeeId\n" +
                   "\t\t\t\t\t\tFROM HumanResources.Employee\n" +
                   "\t\t\t\t\t\tWHERE MONTH(BirthDate) IN (6, 7, 8))\n" +
                   "GROUP BY O.OrderDate, D.UnitPrice, D.Quantity");

 */




           // Andy Qu
           // USE AdventureWorks2017

/*
            ResultSet myRs = myStmt.executeQuery("SELECT A.ProductID\n" +
                    "\t,D.name\n" +
                    "\t,C.LocationID\n" +
                    "\t,A.Quantity\n" +
                    "\t,B.StandardCost\n" +
                    "FROM production.ProductInventory AS A\n" +
                    "INNER JOIN production.ProductCostHistory AS B ON A.ProductID = B.ProductID\n" +
                    "INNER JOIN Production.Location AS C ON A.LocationID = c.LocationID\n" +
                    "INNER JOIN Production.Product AS D ON A.ProductID = D.ProductID\n" +
                    "WHERE Quantity < 100\n");

 */





            /*
            --3
            Jean Gomez
            --OUTPUT all customers Name, city, and postal code whose country is Australia.

             */
/*
            ResultSet myRs = myStmt.executeQuery("SELECT G.EnglishCountryRegionName,G.City, G.PostalCode, C.FirstName, C.LastName\n" +
                    "FROM dbo.DimGeography AS G\n" +
                    "INNER JOIN DimCustomer AS C ON G.GeographyKey = C.GeographyKey\n" +
                    "WHERE G.GeographyKey >= 1 AND G.GeographyKey <= 40;\n");

 */


            /*
            ---------------------------------------------------------------------
            -- The proposition is to join the customer and
            -- the order table to match customers with
            -- their orders, and then join the result of the first join
            -- with the orderdetail table to match orders with their order lines
            ---------------------------------------------------------------------

             */
/*
            ResultSet myRs = myStmt.executeQuery("SELECT\n" +
                    "  C.CustomerId, C.CustomerCompanyName, O.orderid,\n" +
                    "  OD.productid, OD.Quantity\n" +
                    "FROM Sales.Customer AS C\n" +
                    "  INNER JOIN Sales.[Order] AS O\n" +
                    "    ON C.CustomerId = O.CustomerId\n" +
                    "  INNER JOIN Sales.OrderDetail AS OD\n" +
                    "    ON O.orderid = OD.orderid;\n");

 */



            /* Sital Pun
            USE Northwinds2020TSQLV6;

             */
/*
            ResultSet myRs = myStmt.executeQuery("SELECT E.EmployeeFirstName\n" +
                    "    ,E.EmployeeLastName\n" +
                    "    ,(\n" +
                    "   \t SELECT AVG(O.Freight)\n" +
                    "   \t FROM Sales.[Order] AS O\n" +
                    "   \t ) AS AvgFreight\n" +
                    "FROM HumanResources.Employee AS E\n" +
                    "WHERE E.EmployeeId IN (\n" +
                    "   \t SELECT O.EmployeeId\n" +
                    "   \t FROM Sales.[Order] AS O\n" +
                    "   \t )\n" +
                    "GROUP BY E.EmployeeFirstName\n" +
                    "    ,E.EmployeeLastName;\n");

 */


            /*
              Muhammad Sajjad
            -- select every order and its category from a customer in the USA
            -- from Northwinds2020TSQLV6;

             */
/*
            ResultSet myRs = myStmt.executeQuery("SELECT O.OrderId\n" +
                    "\t, CONCAT ('$', D.UnitPrice) AS 'Unit Price'\n" +
                    "\t, P.ProductName\n" +
                    "\t, C.CategoryName\n" +
                    "FROM Sales.[Order]\t\t\t\tAS O\n" +
                    "INNER JOIN Sales.OrderDetail    AS D\n" +
                    "\tON O.Orderid = D.OrderId\n" +
                    "INNER JOIN Production.Product   AS P\n" +
                    "\tON D.ProductId = P.ProductId\n" +
                    "INNER JOIN Production.Category  AS C\n" +
                    "\tON P.CategoryId = C.CategoryId\n" +
                    "\tWHERE O.CustomerId IN (SELECT CustomerId FROM Sales.Customer WHERE CustomerCountry = N'USA')\n" +
                    "GROUP BY O.OrderId, D.UnitPrice, P.ProductName, C.CategoryName\n");

 */


            /*
            Jean Gomez
              --Output the names of all employees who work as Marketing Specialist
               USE AdventureWorks2017;
             */
/*
            ResultSet myRs = myStmt.executeQuery("SELECT P.FirstName, P.MiddleName, P.LastName\n" +
                    "FROM Person.Person AS P\n" +
                    "WHERE P.BusinessEntityID IN\n" +
                    "(\n" +
                    "SELECT E.BusinessEntityID\n" +
                    "FROM HumanResources.Employee AS E\n" +
                    "WHERE JobTitle = 'Marketing Specialist'\n" +
                    ");\n");

 */


            /*
            --7 Yevgeniy Sumarryev
            --get all the customers and their regions
            --using Inner Join
            USE AdventureWorksDW2017;
             */
/*
            ResultSet myRs = myStmt.executeQuery("SELECT C.CustomerKey,\n" +
                    "       C.GeographyKey,\n" +
                    "       C.FirstName,\n" +
                    "       C.LastName,\n" +
                    "       G.City\n" +
                    "FROM dbo.DimCustomer AS C\n" +
                    "    INNER JOIN dbo.DimGeography AS G\n" +
                    "        ON G.GeographyKey = C.GeographyKey\n" +
                    "ORDER BY G.City DESC;\n");

 */


            /*
            --9 muhammad
            -- select customerid and customer country at every order instance
            -- where the customer and employee were from different countries
            -- group by customer id
                USE Northwinds2020TSQLV6;
             */

            ResultSet myRs = myStmt.executeQuery("SELECT C.CustomerId\n" +
                    "\t , C.CustomerContactName\n" +
                    "\t , C.CustomerCountry\n" +
                    "\t , E.EmployeeCountry\n" +
                    "FROM Sales.Customer\t\t\t\t\tAS C\n" +
                    "INNER JOIN Sales.[Order]\t\t\tAS O\n" +
                    "\tON C.CustomerId = O.CustomerId\n" +
                    "INNER JOIN HumanResources.Employee\tAS E\n" +
                    "\tON O.EmployeeId = E.EmployeeId\n" +
                    "WHERE C.CustomerCountry <> E.EmployeeCountry\n" +
                    "GROUP BY C.Customerid, C.CustomerContactName, C.CustomerCountry, E.EmployeeCountry\n");





            // It creates and displays the table
            JTable table = new JTable(buildTableModel(myRs));

            //Close connection
            connection.close();

            JOptionPane.showMessageDialog(null, new JScrollPane(table));




        }
        // Handle any errors that may have occurred.
        catch (SQLException e) {
            e.printStackTrace();
        }


    }



    public static DefaultTableModel buildTableModel(ResultSet rs)
            throws SQLException {

        ResultSetMetaData metaData = rs.getMetaData();

        // names of columns
        Vector<String> columnNames = new Vector<String>();
        int columnCount = metaData.getColumnCount();
        for (int column = 1; column <= columnCount; column++) {
            columnNames.add(metaData.getColumnName(column));
        }

        // data of the table
        Vector<Vector<Object>> data = new Vector<Vector<Object>>();
        while (rs.next()) {
            Vector<Object> vector = new Vector<Object>();
            for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                vector.add(rs.getObject(columnIndex));
            }
            data.add(vector);
        }

        return new DefaultTableModel(data, columnNames);

    }

}


