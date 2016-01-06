exports.glyphs['i_circumflex'] =
	unicode: 'î'
	glyphName: 'icircumflex'
	characterName: 'LATIN SMALL LETTER I WITH CIRCUMFLEX'
	base: 'i'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
