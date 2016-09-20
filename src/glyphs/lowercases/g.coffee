exports.glyphs['g'] =
	unicode: 'g'
	glyphName: 'g'
	characterName: 'LATIN SMALL LETTER G'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing
		spacingRight: 50 * spacing
		roundCorner: serifHeight
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + thickness
					y: capHeight - 150
					# dirOut: 120 + 'deg'
					expand: Object({
						width: thickness
						angle: -30 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					y: capHeight
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: -90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 350
					y: capHeight / 2
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[1].x
					y: 0
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].x
					y: 150
					dirIn: 120 + 'deg'
					expand: Object({
						width: thickness
						angle: 30 + 'deg'
						distr: 0
					})
	components:
	 	0:
	 		base: 'serif-curve-inside-auto'
	 		parentAnchors:
	 			0:
	 				base: contours[0].nodes[4].expandedTo[0]
	 				opposite: contours[0].nodes[4].expandedTo[0].point
	 				curveEnd: contours[0].nodes[3].expandedTo[0]
	 				down: true
	 				left: true
	 				rotationCenter: contours[0].nodes[4].expandedTo[0].point
