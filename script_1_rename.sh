#!/bin/bash

FROM_DIR=0_original
TO_DIR=1_renamed

mkdir -p $TO_DIR

cp $FROM_DIR/'Shogi_fuhyo(svg).svg' $TO_DIR/0FU.svg
cp $FROM_DIR/'Shogi_ginsho(svg).svg' $TO_DIR/0GI.svg
cp $FROM_DIR/'Shogi_gyokusho(svg).svg' $TO_DIR/0OU.svg
cp $FROM_DIR/'Shogi_hisha(svg).svg' $TO_DIR/0HI.svg
cp $FROM_DIR/'Shogi_kakugyo(svg).svg' $TO_DIR/0KA.svg
cp $FROM_DIR/'Shogi_keima(svg).svg' $TO_DIR/0KE.svg
cp $FROM_DIR/'Shogi_kinsho(svg).svg' $TO_DIR/0KI.svg
cp $FROM_DIR/'Shogi_kyosha(svg).svg' $TO_DIR/0KY.svg
cp $FROM_DIR/'Shogi_narigin(svg).svg' $TO_DIR/0NG.svg
cp $FROM_DIR/'Shogi_narikei(svg).svg' $TO_DIR/0NK.svg
cp $FROM_DIR/'Shogi_narikyo(svg).svg' $TO_DIR/0NY.svg
cp $FROM_DIR/'Shogi_ryuma(svg).svg' $TO_DIR/0UM.svg
cp $FROM_DIR/'Shogi_ryuo(svg).svg' $TO_DIR/0RY.svg
cp $FROM_DIR/'Shogi_tokin(svg).svg' $TO_DIR/0TO.svg
#cp $FROM_DIR/'Shogi_osho(svg).svg' $TO_DIR/0OU.svg
