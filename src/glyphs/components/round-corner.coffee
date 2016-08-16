exports.glyphs['round-corner'] =
	parameters:
		roundCorner: serifHeight
	anchors:
		0:
			x: parentAnchors[0].base.x
			y: parentAnchors[0].base.y - Math.max( 0, serifArc * serifHeight )
		1:
			middle: ( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) * 0.5
			rotate: parentAnchors[0].rotate || 0
	tags: [
		'component'
	]
	contours:
		0:
			closed: true
			nodes:
				0:
					x: parentAnchors[0].base.x
					y: parentAnchors[0].base.y
				1:
					x: parentAnchors[0].base.x
					y: Math.min(
						parentAnchors[0].base.y,
						contours[0].nodes[2].y + Math.abs( anchors[1].middle )
					)
					dirOut: Utils.lineAngle( parentAnchors[0].obliqueEndPoint, parentAnchors[0].base )
				2:
					x: parentAnchors[0].base.x + Math.min(
						Math.abs( anchors[1].middle ),
						roundCorner
					)
					y: parentAnchors[0].opposite.y - roundCorner
					typeOut: 'line'
				3:
					x: parentAnchors[0].base.x + anchors[1].middle
					y: parentAnchors[0].opposite.y - roundCorner
					typeOut: 'line'
				4:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
