if Meteor.isClient

	@p5 = require \p5
	setup =
		[\createCanvas, 640, 480]
		[\background, 200]
	draw =
		[\fill, 204, 101, 192, 127]
		[\stroke, 127, 63, 120]
		[\rect, 40, 120, 120, 40]
		[\ellipse, 240, 240, 80, 80]
		[\triangle, 300, 100, 320, 100, 310, 80]
		[\translate, 580, 200]
		[\noStroke]
		loop: 10, body: arr =
			[\ellipse, 0, 30, 20, 80]
			[\rotate, 3.14/5]
	new p5 -> pSketch it, {setup, draw}
