#!/bin/bash

model=NorESM2-MM
expid=ssp585-ozone
version=v20230612
cmorout=/projects/NS9252K/cmorout/

CMOR_ROOT=$(cd $(dirname $0) && cd ../../.. && pwd)
# parse input parameters
source $CMOR_ROOT/workflow/cmorParse.sh -m=$model -e=$expid -v=$version -o=$cmorout

#years1=(2015 $(seq 2021 10 2091))
#years2=(2020 $(seq 2030 10 2100))
years1=(2015 $(seq 2021 10 2081) 2091)
years2=(2020 $(seq 2030 10 2090) 2100)

${CMOR_ROOT}/workflow/cmorCheck.sh -v=$version -e=$expid -m=$model -o=$cmorout -yrs1="${years1[*]}" -yrs2="${years2[*]}"

