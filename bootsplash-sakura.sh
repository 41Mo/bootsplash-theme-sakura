#!/bin/bash
#
# A simple script to show how to create a bootsplash.
# Do with it whatever you wish.
#
# This needs ImageMagick for the 'convert' and 'identify' tools.
#

LOGO=logo.gif

LOGO_WIDTH=$(identify $LOGO | head -1 | cut -d " " -f 3 | \
						cut -d x -f 1)
LOGO_HEIGHT=$(identify $LOGO | head -1 | cut -d " " -f 3 | \
						cut -d x -f 2)

convert -alpha remove \
	-background "#000000" \
	$LOGO \
	logo%02d.rgb

#make clean
#make bootsplash-packer


# Let's put Tux in the center of an orange background.
./bootsplash-packer \
	--bg_red 0x00 \
	--bg_green 0x00 \
	--bg_blue 0x00 \
	--frame_ms 48 \
	--picture \
	--pic_width $LOGO_WIDTH \
	--pic_height $LOGO_HEIGHT \
	--pic_position 0 \
	--pic_anim_type 1 \
	--pic_anim_loop 1 \
	--blob logo00.rgb \
	--blob logo01.rgb \
	--blob logo02.rgb \
	--blob logo03.rgb \
	--blob logo04.rgb \
	--blob logo05.rgb \
	--blob logo06.rgb \
	--blob logo07.rgb \
	--blob logo08.rgb \
	--blob logo09.rgb \
	--blob logo10.rgb \
	--blob logo11.rgb \
	--blob logo12.rgb \
	--blob logo13.rgb \
	--blob logo14.rgb \
	--blob logo15.rgb \
	--blob logo16.rgb \
	--blob logo17.rgb \
	--blob logo18.rgb \
	--blob logo19.rgb \
	--blob logo20.rgb \
	--blob logo21.rgb \
	--blob logo22.rgb \
	--blob logo23.rgb \
	--blob logo24.rgb \
	--blob logo25.rgb \
	--blob logo26.rgb \
	--blob logo27.rgb \
	--blob logo28.rgb \
	--blob logo29.rgb \
	--blob logo30.rgb \
	--blob logo31.rgb \
	--blob logo32.rgb \
	--blob logo33.rgb \
	--blob logo34.rgb \
	--blob logo35.rgb \
	--blob logo36.rgb \
	--blob logo37.rgb \
	--blob logo38.rgb \
	--blob logo39.rgb \
	--blob logo40.rgb \
	--blob logo41.rgb \
	--blob logo42.rgb \
	--blob logo43.rgb \
	--blob logo44.rgb \
	--blob logo45.rgb \
	--blob logo46.rgb \
	--blob logo47.rgb \
	--blob logo48.rgb \
	--blob logo49.rgb \
	--blob logo50.rgb \
	--blob logo51.rgb \
	--blob logo52.rgb \
	--blob logo53.rgb \
	--blob logo54.rgb \
	--blob logo55.rgb \
	--blob logo56.rgb \
	--blob logo57.rgb \
	--blob logo58.rgb \
	bootsplash-sakura

rm *.rgb
