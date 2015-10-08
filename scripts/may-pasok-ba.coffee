# Description:
#   May pasok ba? Data from http://maypasokba.com/
#
# Dependencies:
#   "x-ray": "^2.0.2"
#
# Commands:
#   hubot may pasok ba[?] - hubot tells you kung may pasok ba
#
# Author:
#   mixxorz
#

Xray = require 'x-ray'
x = Xray()

module.exports = (robot) ->

  robot.respond /may pasok ba\?*$/i, (res) ->
    query = x 'http://maypasokba.com', 'div.post>h1'
    query (err, post) ->
      res.send "#{post}"
