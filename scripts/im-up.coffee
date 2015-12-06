# Description:
#   Hubot tells you when he goes online
#
# Configuration:
#   HUBOT_UP_ROOM - Room where Hubot sends the up message
#
# Author:
#   mixxorz
#

announceRoom = process.env.HUBOT_UP_ROOM

module.exports = (robot) ->
  if announceRoom
    robot.messageRoom announceRoom, "I'm up"
