exports.glyphs['round-corner'] =
	parameters:
		roundCorner: serifHeight # TODO: make a real param in controls.coffee
	anchors:
		0:
			x: parentAnchors[0].base.x
			y: parentAnchors[0].base.y - Math.max( 0, serifArc * serifHeight )
		1:
			middle: ( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) * 0.5
			rotate: parentAnchors[0].rotate || 0
			directionX: if ( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) > 0 then 1 else -1
			directionY: if ( parentAnchors[0].base.y - parentAnchors[0].obliqueEndPoint.y ) < 0 then 1 else -1
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
					typeOut: 'line'
				1:
					x: Utils.onLine({
						y: contours[0].nodes[1].y
						on: [ parentAnchors[0].obliqueEndPoint, parentAnchors[0].base ]
					})
					y:
						if ( parentAnchors[0].base.y - parentAnchors[0].obliqueEndPoint.y ) < 0
						then Math.min(
							parentAnchors[0].base.y,
							contours[0].nodes[2].y + Math.abs( anchors[1].middle ) * anchors[1].directionY
						)
						else Math.max(
							parentAnchors[0].base.y,
							contours[0].nodes[2].y + Math.abs( anchors[1].middle ) * anchors[1].directionY
						)
					dirOut: Utils.lineAngle( parentAnchors[0].obliqueEndPoint, parentAnchors[0].base )
				2:
					x: parentAnchors[0].base.x + Math.min(
						Math.abs( anchors[1].middle ),
						roundCorner
					) * anchors[1].directionX
					y: parentAnchors[0].opposite.y - roundCorner * anchors[1].directionY
					typeOut: 'line'
				3:
					x: parentAnchors[0].base.x + anchors[1].middle
					y: contours[0].nodes[2].y
					typeOut: 'line'
				4:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
