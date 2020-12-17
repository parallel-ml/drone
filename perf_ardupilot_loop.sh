#!/bin/bash

#Script to execute the perf command

echo "SCRIPT WORKING"

echo "You passed in $1 as PID for ArduCoptert"
echo "You passed in $2 as PID for RCIO_Worker"
#echo "You passed in $3 as PID for SLAM_APP"


#sudo perf stat -e instructions -e branches  -e L1-dcache-loads -e L1-dcache-misses -e cache-misses -e cache-references -p 341 -B

#sudo perf stat -d -p 338 -B sleep 5



while :
do

	date +"%T"
	echo "Profiling ArduCopter and RCIO now PID $1 and PID $2"
	sudo perf stat -B -e branch-instructions \
		-e branch-misses \
		-e bus-cycles \
		-e cache-misses \
		-e cache-references \
		-p $1,$2 sleep 5


	date +"%T"
	echo "Profiling ArduCopter and RCIO now PID $1 and PID $2"
	sudo perf stat -B \
		-e cpu-cycles \
		-e instructions \
		-e alignment-faults \
		-e bpf-output \
		-e context-switches \
		-p $1,$2 sleep 5


	date +"%T"
	echo "Profiling ArduCopter and RCIO now PID $1 and PID $2"
	sudo perf stat -B \
		-e cpu-clock \
		-e cpu-migrations \
		-e dummy \
		-e emulation-faults \
		-e major-faults \
		-p $1,$2 sleep 5


	date +"%T"
	echo "Profiling ArduCopter and RCIO now PID $1 and PID $2"
	sudo perf stat -B \
		-e minor-faults \
		-e page-faults \
		-e task-clock \
		-e duration_time \
		-e L1-dcache-load-misses \
		-p $1,$2 sleep 5


	date +"%T"
	echo "Profiling ArduCopter and RCIO now PID $1 and PID $2"
	sudo perf stat -B \
		-e L1-dcache-loads \
		-e L1-dcache-store-misses \
		-e L1-dcache-stores \
		-e L1-icache-load-misses \
		-e L1-icache-loads \
		-p $1,$2 sleep 5

	date +"%T"
	echo "Profiling ArduCopter and RCIO now PID $1 and PID $2"
	sudo perf stat -B \
		-e LLC-load-misses \
		-e LLC-loads \
		-e LLC-store-misses \
		-e LLC-stores \
		-e branch-load-misses \
		-p $1,$2 sleep 5

	date +"%T"
	echo "Profiling ArduCopter and RCIO now PID $1 and PID $2"
	sudo perf stat -B \
		-e branch-loads \
		-e dTLB-load-misses \
		-e dTLB-store-misses \
		-e iTLB-load-misses \
		-p $1,$2 sleep 5


done













#-e armv7_cortex_a7/cid_write_retired/ \
	#-p 338 sleep 5
#-e armv7_cortex_a7/cpu_cycles/ \
	#-e armv7_cortex_a7/exc_return/ \
	#-e armv7_cortex_a7/exc_taken/ \
	#-e armv7_cortex_a7/inst_retired/ \
	#-e armv7_cortex_a7/inst_spec/ \
	#-e armv7_cortex_a7/l1d_cache/ \
	#-p 338 sleep 5


#-e armv7_cortex_a7/l1d_cache_refill/ \
	#-e armv7_cortex_a7/l1d_cache_wb/ \
	#-e armv7_cortex_a7/l1d_tlb_refill/ \
	#-e armv7_cortex_a7/l1i_cache/ \
	#-e armv7_cortex_a7/l1i_cache_refill/ \
	#-e armv7_cortex_a7/l1i_tlb_refill/ \
	#-e armv7_cortex_a7/l2d_cache/ \
	#-e armv7_cortex_a7/l2d_cache_refill/ \
	#-e armv7_cortex_a7/l2d_cache_wb/ \
	#-e armv7_cortex_a7/ld_retired/ \
	#-e armv7_cortex_a7/mem_access/ \
	#-e armv7_cortex_a7/memory_error/ \
	#-e armv7_cortex_a7/pc_write_retired/ \
	#-e armv7_cortex_a7/st_retired/ \
	#-e armv7_cortex_a7/sw_incr/ \
	#-e armv7_cortex_a7/ttbr_write_retired/ \
	#-e armv7_cortex_a7/unaligned_ldst_retired/ \
	#-p 338 sleep 5
