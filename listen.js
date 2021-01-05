const app = require("./app")

app.listen(9090, err => {
    if (err) throw err;
    else console.log("I am listening on port 9090...")
})