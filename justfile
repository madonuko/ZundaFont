# SPDX-License-Identifier: MIT

build:
	nanoemoji --linegap 0 --width 600 --output_file ZundaEmoji.ttf --family ZundaEmoji --color_format glyf_colr_0 emojis/emoji_u*.svg
	# --bitmap_resolution 32
	# --color_format glyf_colr_0 / cbdt

map-all:
	mkdir -p emojis/
	bash map.sh madonuko/
	bash map.sh zunpj/

map id:
	bash map.sh madonuko/ {{id}}
	bash map.sh zunpj/ {{id}}

install:
	cp build/ZundaEmoji.ttf ~/.local/share/fonts/
