#!/bin/bash

# parse input parameters
source $CMOR_ROOT/workflow/cmorParse.sh

years1=(1849 $(seq 1850 10 2000) 2010)
years2=(1859 $(seq 1859 10 2009) 2014)

${CMOR_ROOT}/workflow/cmorCheck.sh -v=$version -e=$expid -m=$model -yrs1="${years1[*]}" -yrs2="${years2[*]}"

