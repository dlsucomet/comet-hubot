# Description:
#   Hubot is friendly. Say hi to him.
#
# Author:
#   mixxorz
#

greetings = [
  "Ahoy",
  "G'day",
  "Greetings",
  "Hello",
  "Hello there",
  "Hey",
  "Hi",
  "Hi there",
  "How are you",
  "How you doing",
  "How's it going",
  "Howdy",
  "Salutations",
  "What's up",
  "Yo",
  "Sup",
  "How art thou"
]

module.exports = (robot) ->
  robot.hear /// ^(#{greetings.join('|')}) \s+ #{robot.name}$ ///i, (res) ->
    res.send res.random greetings
