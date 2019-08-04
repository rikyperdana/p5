if Meteor.isClient

	@_ = lodash
	@pSketch = (p, {setup, draw}) ->
		makeFunction = ({args = '', body}) ->
			_.toFunction "function(#args){return #body}"
		recurse = (val) ->
			if _.isString val.0 then p[val.0] ... (_.tail val) or []
			else if val.length then val.map -> recurse it
			else if val.args then recurse makeFunction(val)!
			else if val.cond then if makeFunction(body:val.cond)!
				if val.body.length then recurse val.body
				else recurse makeFunction(val)!
			else if _.isNumber(val.loop) or makeFunction!(body:val.loop)!
				if val.body.length then [til that]map -> recurse val.body
				else [til that]map -> recurse makeFunction(val.body) it
		p.setup = -> recurse setup if setup
		p.draw = -> recurse draw if draw
