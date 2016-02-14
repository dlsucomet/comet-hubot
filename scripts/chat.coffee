# Description:
#   Make Hubot use Mitsuku to feign sentience.
#   www.mitsuku.com
#
# Dependencies:
#   "mitsuku-api": "*"
#
# Commands:
#   hubot <anything> - Hubot talks to you
#
# Author:
#   mixxorz

mitsukuMaker = require('mitsuku-api')

# Army of robots
army = {}

module.exports = (robot) ->
  robot.catchAll (res) ->
    namePattern = ///^#{robot.name} (.*)///i
    match = namePattern.exec(res.message.text)
    if match
      user = res.message.user.id
      text = match[1]

      # Create an instance of mitsuku per user
      if not army[user]?
        army[user] = mitsukuMaker()

      mitsuku = army[user]
      mitsuku.send(text).then (reply) ->
        res.send reply.replace(/\s+\.$/, '.').replace(/mitsuku/i, robot.name)
