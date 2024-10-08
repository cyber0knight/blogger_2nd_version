// import mysql from 'mysql2/promise';
import mysql from'mysql2';
import dotenv from 'dotenv';
import colors from 'colors';

//configure env
dotenv.config();

// Create a new MySQL connection
// const db = await mysql.createPool({
//     host: 'localhost',
//     user: 'root',
//     password: process.env.DB_PASSWORD,
//     database: 'blogger_db',
//     waitForConnections: true,
//     connectionLimit: 10,
//     queueLimit: 0,
// });

const db = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: process.env.DB_PASSWORD,
        database: 'blogger_db'
})

db.connect(err => {
    if (err) throw err;
    console.log('Connected to MySQL successfully'.bgRed.blue);
});

export default db;