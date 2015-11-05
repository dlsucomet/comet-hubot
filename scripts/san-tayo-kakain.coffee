# Description:
#   Comet suggests food places!
#
# Commands:
#   hubot san tayo kakain[?] - hubot sends you a restaurant suggestion
#
# Author:
#   mixxorz - Mitchel Cabuloy
#   Laurenz Tolentino for the database
#

stores = [
  "7-Eleven",
  "Agno",
  "Animo Biz",
  "Army Navy",
  "Bagnet",
  "Barn",
  "Big Guy's",
  "Bon Chon",
  "Burger King",
  "Chomp Chomp",
  "Crazy Katsu",
  "Double Decker",
  "Eric's Siomai",
  "Ersao",
  "Exile",
  "Family Mart",
  "Flaming Wings",
  "Gaiju",
  "Jollibee",
  "Jus and Jerry's",
  "KFC",
  "Kenny Rogers",
  "Mang Inasal",
  "McDonald's",
  "Mini Stop",
  "Noel's BBQ",
  "Orange and Spices",
  "Pasta Boy",
  "Pasta Plate",
  "Perico's",
  "Rap's Steak",
  "Rice Taft",
  "Samgyupsalamat",
  "Sumibiyakid's",
  "Tapa King",
  "Time Out (sa UMall)",
  "Toribox",
  "Tropical Hut",
  "Wai Ying",
  "Wingstop",
  "Yellow Cab",
  "Zark's Burgers"
]

comments = [
  "#NowShowing ang 'That Thing Called Tadhana' diyan",
  "Ask mo sila sa WiFi password",
  "Bukas na ba yan?",
  "Dapat sarcastic comment to",
  "Dito yung 'Where do broken hearts go'",
  "Edi WOOOOOOW",
  "Edi WOW",
  "Hindi ko pa napapanood yung TTCT",
  "Ingat ka, malandi yung waiter",
  "Mag ingat sa #FlyingIpis",
  "Mas tipid diyan kaysa sa Starbucks",
  "May promo sila na free seating pag nag order ka",
  "May upuan sila sa tabi ng table",
  "Nakita ko to sa The Walking Dead",
  "Nandyan ako kahapon",
  "Nandyan kasi ako kanina",
  "Naubusan na ata ako ng comments",
  "Pede umutang kapag walang pera",
  "Sabi kasi ng katabi ko yan ibigay sayong sagot",
  "Siguraduhin mong hindi to 'Coffee Shop' or lagot ka kay Sir Tulfo",
  "Siguro last week nandyan ako",
  "Tanong mo narin if may parking sila",
  "Umorder ka na dito bago pa siya gawing isang yoga station",
  "Utang ka sa kaibigan mo",
  "Well basta may pera ka"
]

module.exports = (robot) ->

  robot.respond /san tayo kakain\?*$/i, (res) ->
  res.send res.random stores
    res.send res.random comments
