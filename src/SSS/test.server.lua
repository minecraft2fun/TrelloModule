local api = require(game.ServerScriptService.TrelloApi)

wait(4)
print(api.BOARDS.GetBoardMembership(1))