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
grc --config=gw_sh.grc gw_sh ./build${EXT}.tcl ${SDV2}
