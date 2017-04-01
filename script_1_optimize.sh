FROM_DIR=0_original
TO_DIR=1_optimized
SVGO_ARGS="--config svgo-config.yml"

#$(npm bin)/svgo $SVGO_ARGS -f 0_original -o 1_optimized
mkdir -p $TO_DIR

$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_fuhyo(svg).svg' $TO_DIR/0FU.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_ginsho(svg).svg' $TO_DIR/0GI.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_gyokusho(svg).svg' $TO_DIR/0OU.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_hisha(svg).svg' $TO_DIR/0HI.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_kakugyo(svg).svg' $TO_DIR/0KA.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_keima(svg).svg' $TO_DIR/0KE.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_kinsho(svg).svg' $TO_DIR/0KI.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_kyosha(svg).svg' $TO_DIR/0KY.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_narigin(svg).svg' $TO_DIR/0NG.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_narikei(svg).svg' $TO_DIR/0NK.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_narikyo(svg).svg' $TO_DIR/0NY.svg
#'Shogi_osho(svg).svg' $TO_DIR/0OU.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_ryuma(svg).svg' $TO_DIR/0UM.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_ryuo(svg).svg' $TO_DIR/0RY.svg
$(npm bin)/svgo $SVGO_ARGS $FROM_DIR/'Shogi_tokin(svg).svg' $TO_DIR/0TO.svg
