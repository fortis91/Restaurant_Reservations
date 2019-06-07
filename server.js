var http = require("http");
var fs = require("fs");

var app = require('./app');

var PORT = 8080;

var server = http.createServer(handleRequest);

server.listen(PORT, function () {
    console.log("Server is listening on PORT: " + PORT);
});


function handleRequest(request, response) {
    var path = request.url;

    switch (path) {

        case "/list-tables":
            return fs.readFile(__dirname + "/list-tables.html", function (err, data) {
                response.writeHead(200, {
                    "Content-Type": "text/html"
                });
                response.end(data);
            });

        case "/reserve":
            return fs.readFile(__dirname + "/reserve.html", function (err, data) {
                response.writeHead(200, {
                    "Content-Type": "text/html"
                });
                response.end(data);
            });

        default:
            return fs.readFile(__dirname + "/index.html", function (err, data) {
                response.writeHead(200, {
                    "Content-Type": "text/html"
                });
                response.end(data);
            });
    }
}