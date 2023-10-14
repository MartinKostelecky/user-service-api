const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.json([{
    name:'Martin',
    email:'kosteleckymartin@gmail.com'
  },
  { name:'programator',
    email:'programator@junior.com'
  },
  { name:'tester',
    email:'tester@tester.com'   
  }])
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})