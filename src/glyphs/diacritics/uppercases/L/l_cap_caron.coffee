exports.glyphs['l_cap_caron'] =
	unicode: 'Ľ'
	glyphName: 'Lcaron'
	characterName: 'LATIN CAPITAL LETTER L WITH CARON'
	base: 'L_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'caronSlovak'
			copy: true
			parentAnchors:
				0:
					x: anchors[1].x
					y: anchors[1].y
