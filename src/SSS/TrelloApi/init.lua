local Endpoints = script.ApplicationData.EndPoints

return {
	BOARDS = {
		GetBoardMembership = function(BoardId)
			return require(Endpoints.BOARDS.GetBoardMembership).run(BoardId)
		end,
        GetABoard = function(BoardId)
            
        end
	},
}
