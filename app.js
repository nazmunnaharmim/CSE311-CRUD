const express = require("express"); // import express to start server
const path = require('path'); // Import path module
const mysql = require("mysql"); // import mysql
const dotenv = require('dotenv'); // import dotenv
const cookieParser = require('cookie-parser'); // import cookie-parser

dotenv.config({ path: './.env' }); // locate .env as dotenv file

const app = express(); // start server with app

const db = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE
});

// put files like css, js etc
const publicDirectory = path.join(__dirname, './public');
app.use(express.static(publicDirectory));

// Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.urlencoded({ extended: false }));
// Parse JSON bodies (as sent by API clients)
app.use(express.json());
app.use(cookieParser());

// setup hbs as view engine
app.set('view engine', 'hbs');

// database connection
db.connect((error) => {
  if (error) {
    console.log(error)
  } else {
    console.log("MYSQL Connected...")
  }
})

//Define Routes
app.use('/', require('./routes/pages'));
app.use('/auth', require('./routes/auth'));

app.listen(5001, () => {
  console.log("Server started on Port 5001");
})