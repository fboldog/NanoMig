#!/bin/bash
EXT=
if [ "$#" -eq 1 ] || [ "$#" -eq 2 ]
then
    EXT=_$1
fi

SDV2=
if [ "$#" -eq 2 ]
then
    SDV2=$2
fi
# run through grc to highlight NOTEs, WARNings and ERRORs
export DISPLAY=0.0
export QT_QPA_PLATFORM=offscreen
export LD_LIBRARY_PATH=$GW_BIN/../lib:$LD_LIBRARY_PATH
grc --config=gw_sh.grc gw_sh ./build${EXT}.tcl ${SDV2}
