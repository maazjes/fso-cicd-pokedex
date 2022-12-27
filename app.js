const express = require("express");
const app = express();

// Heroku dynamically sets a port
const PORT = process.env.PORT || 8080;

app.use(express.static("dist"));

app.get('/health', (req, res) => {
  throw 'error'
  res.send('ok')
})

app.get('/version', (req, res) => {
  res.send('6')
})

app.listen(PORT, () => {
  console.log("server started on port 8080");
});
