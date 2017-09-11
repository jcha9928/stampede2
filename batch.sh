#!/bin/bash
#SBATCH -J test
#SBATCH -N 10
#SBATCH -n 10
#SBATCH -p development
#SBATCH -o test.o%j
#SBATCH -t 48:00:00

export LAUNCHER_PLUGIN_DIR=$LAUNCHER_DIR/plugins
export LAUNCHER_RMI=SLURM
export LAUNCHER_JOB_FILE=joblist

$LAUNCHER_DIR/paramrun
