const http = require("http");
const port = 3003;
const message = `http://localhost:${port} started listening`;
const fs = require("fs");
function toHostFile(file_path, content_type, req, resp) {
  console.log("file_path: " + file_path);
  if (file_path !== "/") {
    file_path = __dirname + file_path;
  }
  fs.readFile(file_path, (err, data) => {
    resp.setHeader("Content-Type", content_type);
    if (err) {
      resp.write(err);
    } else {
      resp.write(data);
    }
    resp.end();
  });
}
http
  .createServer((req, resp) => {
    const URL = req.url;
    switch (URL) {
      case "/aboutus.html":
        toHostFile("/aboutus.html", "text/html", req, resp);
        break;
      case "/contactus.html":
        toHostFile("/contactus.html", "text/html", req, resp);
        break;
      case "/signup.html":
        toHostFile("/signup.html", "text/html", req, resp);
        break;
      case "/signin.html":
        toHostFile("/signin.html", "text/html", req, resp);
        break;
      case "/css/styles.css":
        toHostFile("/css/styles.css", "text/css", req, resp);
        break;
      case "/onsubmit":
        toHostFile("/success.html", "text/html", req, resp);
        break;
      case "/login":
        toHostFile("/success.html", "text/html", req, resp);
        break;
      case "/img/girl.png":
        toHostFile("/img/girl.png", "images/png", req, resp);
        break;
      case "/img/boys.png":
        toHostFile("/img/boys.png", "images/jpg", req, resp);
        break;
      case "/img/logo.png":
        toHostFile("/img/logo.png", "images/png", req, resp);
        break;
      case "/img/shape.png":
        toHostFile("/img/shape.png", "images/png", req, resp);
        break;
      case "/img/login.png":
        toHostFile("/img/login.png", "images/png", req, resp);
        break;
      case "/img/virat.jpg":
        toHostFile("/img/virat.jpg", "images/png", req, resp);
        break;
      case "/img/raina.jpg":
        toHostFile("/img/raina.jpg", "images/png", req, resp);
        break;
      case "/img/dhoni.jpg":
        toHostFile("/img/dhoni.jpg", "images/png", req, resp);
        break;
      case "/register":
        toHostFile("/success.html", "text/html", req, resp);
        break;
      case "/signup.js":
        toHostFile("/js/signup.js", "text/css", req, resp);
        break;
      case "/signin.js":
        toHostFile("/js/signin.js", "text/css", req, resp);
        break;
      case "/contactus.css":
        toHostFile("/css/contactus.css", "text/css", req, resp);
        break;
      case "/index.html":
      default:
        toHostFile("/index.html", "text/html", req, resp);
        break;
    }
  })
  .listen(port, () => {
    console.log(message);
  });
