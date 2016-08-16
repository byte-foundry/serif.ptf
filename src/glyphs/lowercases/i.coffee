exports.glyphs['i'] =
	unicode: 'i'
	glyphName: 'i'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
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
					x: spacingLeft + 100 - (50)
					y: Math.max( 0, 0 + serifArc * serifHeight + roundCorner )
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: Math.min( xHeight, xHeight - serifArc * serifHeight - roundCorner )
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		# 0:
		# 	base: 'round-corner'
		# 	parentAnchors:
		# 		0:
		# 			base: contours[0].nodes[0].expandedTo[0].point
		# 			opposite: contours[0].nodes[0].expandedTo[1].point
		# 			obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
		0:
			base: 'serif-vertical'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					# anchor: 0
		1:
			base: 'round-corner'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
		# 2:
		# 	base: 'round-corner'
		# 	parentAnchors:
		# 		0:
		# 			base: contours[0].nodes[1].expandedTo[0].point
		# 			opposite: contours[0].nodes[1].expandedTo[1].point
		# 			obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
		2:
			base: 'serif-vertical'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					# anchor: xHeight
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'skewY', 18 * serifRotate + 'deg' ],
				[ 'scaleY', -1 ]
			)
		3:
			base: 'round-corner'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1].point
