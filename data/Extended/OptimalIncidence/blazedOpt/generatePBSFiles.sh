#!/bin/bash

WLS=(
0.0015
0.002
0.0025
0.003
0.0035
0.004
0.0045
0.005
0.0055
0.006
0.0065
0.007
0.0075
0.008
0.0085
0.009
0.0095
0.01
0.0105
0.011
0.0115
0.012
0.0125
0.013
0.0135
0.014
0.0145
0.015
)

PERIODS=(
0.4
0.5
0.6
0.7
0.8
0.9
1
1.1
1.2
1.3
1.4
1.5
1.6
1.7
1.8
1.9
2
)

for WL in ${WLS[@]}; do
	for PERIOD in ${PERIODS[@]}; do
		FILENAME=blazedOpt_${WL}_${PERIOD}.pbs
		cp blazedOpt.pbs $FILENAME
		sed -i '' "s/WL=/WL=${WL}/g" $FILENAME
		sed -i '' "s/PERIOD=/PERIOD=${PERIOD}/g" $FILENAME
	done
done