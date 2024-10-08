import express from 'express';
import dotenv from 'dotenv';
import colors from "colors";

import db from './connection/connect.js';

//configure env
dotenv.config();

//rest object
const app = express();

// middlewares
app.use(express.json());

// app.get('/data', (req, res) => {
//     const q = "SELECT * from users";
//     db.query(q, (err, result) => {
//         if (err) throw err;
//         res.json(result);
//     });
// })


const port = process.env.PORT || 8080;
app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`.bgWhite
        .white);
});