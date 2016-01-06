exports.glyphs['z_dot_accent'] =
	unicode: 'ż'
	glyphName: 'zdotaccent'
	characterName: 'LATIN SMALL LETTER Z WITH DOT ABOVE'
	base: 'z'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
