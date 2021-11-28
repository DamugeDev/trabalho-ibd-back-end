const express = require('express')
const app = express()
const port = 8081 || process.env.PORT
const cors = require('cors')

app.use(cors())
app.use(express.urlencoded({ extended: false }))
app.use(express.json())

require('./routes/index')(app)

app.listen(port, () => console.log(`Server running on: ${port}`))