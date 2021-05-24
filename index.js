const express = require('express')
const app = express()
 
app.get('/', (req, res) => {
   res.send('<h1>Hello Alll!</h1>')
})
 
const PORT = process.env.PORT || 3000
app.listen(PORT, () => {
   console.log(`Server is up and listening at port: ${PORT}`)
})
 
module.exports = app
