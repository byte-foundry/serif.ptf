exports.glyphs['e'] =
	unicode: 'e'
	glyphName: 'e'
	characterName: 'LATIN SMALL LETTER E'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + 350
					y: capHeight - 150
					# dirOut: 120 + 'deg'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: 180 + 30 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: capHeight
					type: 'smooth'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + thickness
					y: capHeight / 2
					type: 'smooth'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[1].x
					y: 0
					type: 'smooth'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].x
					y: 150
					dirIn: 60 + 'deg'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: 150 + 'deg'
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
	 				rotationAngle: -18
	 				rotationCenter: contours[0].nodes[4].expandedTo[0].point
	 	1:
	 		base: 'serif-curve-inside-auto'
	 		parentAnchors:
	 			0:
	 				base: contours[0].nodes[4].expandedTo[1]
	 				opposite: contours[0].nodes[4].expandedTo[0].point
	 				curveEnd: contours[0].nodes[3].expandedTo[1]
	 				rotationAngle: -18
	 				rotationCenter: contours[0].nodes[4].expandedTo[0].point
	 	2:
	 		base: 'serif-curve-inside-auto'
	 		parentAnchors:
	 			0:
	 				base: contours[0].nodes[0].expandedTo[0]
	 				opposite: contours[0].nodes[0].expandedTo[0].point
	 				curveEnd: contours[0].nodes[1].expandedTo[0]
	 				rotationAngle: 18
	 				rotationCenter: contours[0].nodes[0].expandedTo[0].point
	 	3:
	 		base: 'serif-curve-inside-auto'
	 		parentAnchors:
	 			0:
	 				base: contours[0].nodes[0].expandedTo[1]
	 				opposite: contours[0].nodes[0].expandedTo[0].point
	 				curveEnd: contours[0].nodes[1].expandedTo[1]
	 				down: true
	 				rotationAngle: 18
	 				rotationCenter: contours[0].nodes[0].expandedTo[0].point
