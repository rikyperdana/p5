if Meteor.isClient

	@p5 = require \p5
	new p5 (p) ->
		p.setup = ->
			p.createCanvas 640, 480
		p.draw = ->
			if p.mouseIsPressed then p.fill 0
			else p.fill 255
			p.ellipse p.mouseX, p.mouseY, 80, 80
