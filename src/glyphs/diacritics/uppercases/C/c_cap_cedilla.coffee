exports.glyphs['c_cap_cedilla'] =
	unicode: 'Ç'
	glyphName: 'Ccedilla'
	characterName: 'LATIN CAPITAL LETTER C WITH CEDILLA'
	base: 'C_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
