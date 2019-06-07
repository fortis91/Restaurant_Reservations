let http = require('http');
let fs = require('fs');
let express = require('express');
let path = require('path');

// let app = require('./app');

const PORT = 8080;

let app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname, 'index.html'));
});

app.get('/tables', function (req, res) {
    res.sendFile(path.join(__dirname, 'tables.html'));
});

app.get('/reservations', function (req, res) {
    res.sendFile(path.join(__dirname, 'reservations.html'));
});

app.post('/api/reservations', function (req, res) {
    let reservation = req.body;

    console.log(req.body);
    res.json(reservation);
});

app.listen(PORT, () => {
    console.log('App listening on PORT ' + PORT);
});