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
						width: thickness
						angle: 180 + 30 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: capHeight
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + thickness
					y: capHeight / 2
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
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
					expand: Object({
						width: thickness
						angle: 150 + 'deg'
						distr: 0
					})
	# components:
	# 	0:
	# 		base: 'serif-curve-outside'
	# 		parentAnchors:
	# 			0:
	# 				base: contours[0].nodes[4].expandedTo[0]
	# 				opposite: contours[0].nodes[4].expandedTo[1].point
	# 				curveEnd: contours[0].nodes[3].expandedTo[0]
