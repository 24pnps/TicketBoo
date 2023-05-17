# TicketBoo
This project is a team project belongs to the ITCS212 Web Programming course, we develop a web application for the music and entertainment business domain.

## Table of contents
* [General info](#general-info)
* [Mandatory functions](#mandatory-functions)
* [How to run](#how-to-run)
* [Members](#members)

## General info
Our website was developed using VSCode as the primary integrated development environment and Node.js as the server-side framework. The project also includes various web technologies such as HTML, CSS, JavaScript, .env, and database management with SQL. Our website's features include a responsive and intuitive user interface that allows users to browse available events, view ticket prices, and make bookings seamlessly. In addition, our website also incorporates various security measures, such as user authentication and data encryption, to protect sensitive user information.

## Mandatory functions
1. Authentication for Administrator (a person who manages product/user data) can log in/log out to the system using a username and password.
2. Administrator can insert, update, and delete product/user information via the web application.
3. Normal users (the ones who do not have an account to log in) and Administrator can search for product/user information. The web application will show the list of product/user results according to the query.
4. After each search, the web application will show the details of the selected product/user.

## How to run
To run our project:

1. First, you Download "sec1_gr10_pj2.zip"

2. Second, extract the "sec1_gr10_pj2.zip" file to "sec1_gr10_pj2" folder

3. Third, you have to open "sec1_gr10_pj2" folder in Visual Studio Code

4. Fourth, you open "sec1_gr10_pj2" folder, you have to click the "Terminal" button ad select "New Terminal"
    and click the "Terminal" button again ad select "Split Terminal" 
    ** (To open two terminal because we have to run two PORT at the same time) **

5. Fifth, the first Terminal, you should press command 
```
$ cd sec1_gr10_src
```
the second Terminal, you should press command 
```
$ cd sec1_gr10_ws_src
```
6. Sixth, first Terminal ['sec1_gr10_src' folder] you should press command
```
$ npm init
```
```
$ npm install express
```
```
$ npm install nodemon
```
( change scripts in package.json from test to start:
```
"scripts": {
	"start": "nodemon frontend.js"
},
```
)
                            
second Terminal ['sec1_gr10_ws_src' folder] you should press command
```
$ npm init
```
```
$ npm install express
```
```
$ npm install nodemon
```
```
$ npm install mysql2
```
```
$ npm install dotenv
```
( change scripts in package.json from test to start:
```
"scripts": {
	"start": "nodemon backend.js"
},
```
)

7. Seventh, Before you start you should open 'MYSQLWorkbench' and run the ```sec1_gr10_database.sql```
    After that, you click 'Administration' and then click 'Users and Privileges'.
    In addition, you should click 'Add Account' and fill the form of ```MYSQL_HOST```, ```MYSQL_USERNAME```, and ```MYSQL_PASSWORD``` [for the ```MYSQL_DATABASE = ticketboo```]
    Then, press 'Schema Privileges' and click 'Add Entry' then choose 'Selected schema of ticketboo'.
    For the Object Rights, you should select 'SELECT, INSERT, UPDATE, DELETE' and Click "Apply"

    and change name of ```MYSQL_HOST```, ```MYSQL_USERNAME```, and ```MYSQL_PASSWORD``` that you create your account in the 'MYSQLWorkbench' 
    and fill it in ```.env``` file to connect the database with web services.
For example,
```
PORT = 3030
MYSQL_HOST = localhost
MYSQL_USERNAME = movieStaff
MYSQL_PASSWORD = 1234
MYSQL_DATABASE = ticketboo
```

8. Eighth, after you init, install all of frameworks, and connect the database in '.env' file.
    You press command
```
$ npm start"
```
in both of two Terminal to run all source code and all web service source code file.

9. Ninth, when the first terminal [sec1_gr10_src] in console log returned:
```
                                        > frontend@1.0.0 start
                                        > nodemon frontend.js

                                        [nodemon] 2.0.22
                                        [nodemon] to restart at any time, enter `rs`
                                        [nodemon] watching path(s): *.*
                                        [nodemon] watching extensions: js,mjs,json
                                        [nodemon] starting `node frontend.js`
                                        Server listening at Port 3000
```
and second terminal [sec1_gr10_ws_src] in console log returned:
```
                                        > backend@1.0.0 start
                                        > nodemon backend.js

                                        [nodemon] 2.0.22
                                        [nodemon] to restart at any time, enter `rs`
                                        [nodemon] watching path(s): *.*
                                        [nodemon] watching extensions: js,mjs,json
                                        [nodemon] starting `node backend.js`
                                        Server listening at Port 3030
                                        Connected DB: ticketboo
```

10. Tenth, you open the 'Google Chrome' and press 'http://localhost:3000/' then you will see the Home page.

11. Eleventh, to go to the management page you have to press people button on the Nav bar in the right hand side
    and login to see our page. If you did not have an account yet, you press sign up to register your account.
    Then, Login again to see management page.

12. Twelfth, When you already login you will see the Product-management page first.
    To see the content you have to click 'search' the all concert will append in this page that you can edit or delete.
    For add product, we have 'Add product' button for you to fill the the form and then refresh the page and click the search
    it will append.

    For user-account-management you can click it in the nav bar.
    To see the content you have to click 'search' the all User will append in this page that you can edit or delete.
    For add user, we have 'Add user' button for you to fill the the form and then refresh the page and click the search
    it will append.

13. Thirteenth, For another website's API, our group use API of Google Map.
    The Google Map API is appear in each detail page. When you click the 'Concert & Entertainment' in the first nav.
    When you click the card below the 'Concert & Entertainment' title, it will appear the detail of content and we embedded the Google Map API in each detail page.

## Members
1. Suphavadee Cheng [6488120]
2. Ponnapassorn Iamborisut [6488179]
3. Thadeeya Duangkaew [6488181]
4. Ravikarn Jarungjitvittawas [6488210]
