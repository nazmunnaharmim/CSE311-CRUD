first install node.js & xampp

// Create database
CREATE DATABASE userInfo;

USE userInfo;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    gender ENUM('male', 'female') NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    photo VARCHAR(255)
);


pwd // curent directory
ls // shows current directory files

node -v // check node js installed version

npm init -y // create package.json

// Dependency install
npm install express mysql dotenv hbs // express = to start our server, mysql = to database, dotenv = store all sensitive data, hbs = handelbars this is template for html
npm i --save nodemon // server auto resatrt after code changes

add this line in package.json -> after "test": "....",
start": "nodemon app.js"



// for hash the password we need to install bcryptjs // for using cookies cookie-parser
npm i bcryptjs cookie-parser jsonwebtoken


npm start // start the server or run the project
localhost:5001/ // goto browser and load project or website


Project Github Link: https://github.com/nazmunnaharmim/cse311-crud