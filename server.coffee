express = require 'express'
path = require 'path'

server = express()
server.use(express.static(path.join(__dirname, 'public')))
server.get('/', (req, res) -> res.sendfile(path.join(__dirname, 'public', 'pages', 'main.html')))
server.listen(3000, () -> console.log('Server listening on 3000.'))
