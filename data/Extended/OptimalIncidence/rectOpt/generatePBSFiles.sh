#!/bin/bash

EVS=(
50
100
150
200
250
300
350
400
450
500
550
600
650
700
750
800
850
900
950
1000
)

PERIODS=(
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

for EV in ${EVS[@]}; do
	for PERIOD in ${PERIODS[@]}; do
		FILENAME=rectOpt_${EV}_${PERIOD}.pbs
		cp rectOpt.pbs $FILENAME
		sed -i '' "s/EV=/EV=${EV}/g" $FILENAME
		sed -i '' "s/PERIOD=/PERIOD=${PERIOD}/g" $FILENAME
	done
done