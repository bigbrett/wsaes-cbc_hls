#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/a.g.bc ${1+"$@"}
