exports.glyphs['round'] =
	parameters:
		roundCorner: serifHeight # TODO: make a real param in controls.coffee
		directionX: if ( parentAnchors[0].opposite.x - parentAnchors[0].base.x ) > 0 then 1 else -1
		directionY: if ( parentAnchors[0].base.y - parentAnchors[0].obliqueEndPoint.y ) < 0 then -1 else 1
		# angleX: if ( parentAnchors[0].base.x - parentAnchors[0].obliqueEndPoint.x ) > 0 then 1 else -1
		# rotation:
		# 	if directionX < 0
		# 	then Math.PI + Utils.lineAngle( parentAnchors[0].base, parentAnchors[0].opposite )
		# 	else
		# 		if angleX > 0
		# 		then Utils.lineAngle( parentAnchors[0].base, parentAnchors[0].obliqueEndPoint )
		# 		else Utils.lineAngle( parentAnchors[0].base, parentAnchors[0].opposite )
		rotation:
			if directionY < 0
			then Utils.lineAngle( parentAnchors[0].obliqueEndPoint, parentAnchors[0].base ) - Math.PI / 2 + Math.PI
			else Utils.lineAngle( parentAnchors[0].obliqueEndPoint, parentAnchors[0].base ) - Math.PI / 2
	anchors:
		0:
			x: parentAnchors[0].base.x
			y: parentAnchors[0].base.y - Math.max( 0, serifArc * serifHeight )
		1:
			x: Math.abs( parentAnchors[0].base.x + parentAnchors[0].opposite.x ) / 2
			y: Math.abs( parentAnchors[0].base.y + parentAnchors[0].opposite.y ) / 2
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
					dirOut: 90 + 'deg'
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].y - Math.min(
						roundCorner,
						Math.abs( contours[0].nodes[3].x - contours[0].nodes[0].x )
					) * directionY
					dirOut: 90 + 'deg'
					transformOrigin: contours[0].nodes[0].point
					transforms: Array([ 'rotate', rotation ])
				2:
					x: contours[0].nodes[0].x + Math.min(
						roundCorner,
						Math.abs( contours[0].nodes[3].x - contours[0].nodes[0].x )
					) * directionX
					y: contours[0].nodes[3].y
					dirIn: 180 + 'deg'
					typeOut: 'line'
					transformOrigin: contours[0].nodes[0].point
					transforms: Array([ 'rotate', rotation ])
				3:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].y + roundCorner * directionY
					typeOut: 'line'
					transformOrigin: contours[0].nodes[0].point
					transforms: Array([ 'rotate', rotation ])
				4:
					x: anchors[1].x
					y: anchors[1].y
					typeOut: 'line'
