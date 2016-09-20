exports.glyphs['h'] =
	unicode: 'h'
	glyphName: 'h'
	characterName: 'LATIN SMALL LETTER H'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + (0)
		spacingRight: 60 * spacing
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x
			y: capHeight + diacriticHeight
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + serifCurve + Math.sqrt( serifCurve * 20 ), false )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + serifCurve + Math.sqrt( serifCurve * 80 ), true )
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], serifHeight + serifCurve + Math.sqrt( serifCurve * 80 ), false )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], serifHeight + serifCurve + Math.sqrt( serifCurve * 20 ), true )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[1].x + 285 + 200 * width,
						contours[0].nodes[2].expandedTo[0].x + 395 + 200 * width
					)
					y: capHeight - 60 - (12)
					dirOut: 150 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
						angle: - 125 + 'deg'
						distr: 0.25
					})
				1:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.56 + (2),
						contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					)
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (27)
					y: ( 330 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].x
					y: 60 + (12)
					dirIn: - 150 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
						angle: 125 + 'deg'
						distr: 0.25
					})
	components:
	 	0:
	 		base: 'serif-curve-inside-auto'
	 		parentAnchors:
	 			0:
	 				base: contours[0].nodes[4].expandedTo[0]
	 				thickness: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
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
	 				thickness: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
	 				opposite: contours[0].nodes[4].expandedTo[0].point
	 				curveEnd: contours[0].nodes[3].expandedTo[1]
	 				rotationAngle: -18
	 				rotationCenter: contours[0].nodes[4].expandedTo[0].point
	 	2:
	 		base: 'serif-curve-inside-auto'
	 		parentAnchors:
	 			0:
	 				base: contours[0].nodes[0].expandedTo[0]
	 				thickness: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
	 				opposite: contours[0].nodes[0].expandedTo[0].point
	 				curveEnd: contours[0].nodes[1].expandedTo[0]
	 				rotationAngle: 18
	 				rotationCenter: contours[0].nodes[0].expandedTo[0].point
	 	3:
	 		base: 'serif-curve-inside-auto'
	 		parentAnchors:
	 			0:
	 				base: contours[0].nodes[0].expandedTo[1]
	 				thickness: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
	 				opposite: contours[0].nodes[0].expandedTo[0].point
	 				curveEnd: contours[0].nodes[1].expandedTo[1]
	 				down: true
	 				rotationAngle: 18
	 				rotationCenter: contours[0].nodes[0].expandedTo[0].point
