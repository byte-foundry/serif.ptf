exports.glyphs['O_cap'] =
	unicode: 'O'
	glyphName: 'O'
	characterName: 'LATIN CAPITAL LETTER O'
	ot:
		advanceWidth: 0 + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 0 * spacing + (0)
		spacingRight: 0 * spacing
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: 0
			y: 0
			left: 0 # contours[0].nodes[0].expandedTo[0].x
			right: 0 # contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 0
					y: 0
					dirOut: 0 + 'deg'
					expand: Object({
						width: 0
						angle: 0 + 'deg'
						distr: 0.25
					})
