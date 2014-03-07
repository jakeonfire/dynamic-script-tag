http = require 'http'
express = require 'express'

exports.startServer = (port, assetsPath, callback) ->
  app = express()
  server = http.createServer(app)

  app.set 'port', port
  app.use express.static(assetsPath)
  app.use app.router

  # fake a slow api response
  app.get '/api/user.js', (req, res) ->
    res.contentType 'text/javascript'
    setTimeout (->
      res.end """
        window.user = {
          name: 'Bones McGee',
          experience: 'deadly'
        };
      """
    ), 1000

  server.listen port, callback
