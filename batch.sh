#!/bin/bash
#SBATCH -J test
#SBATCH -N 4
#SBATCH -n 4
#SBATCH -p development
#SBATCH -o test.o%j
#SBATCH -t 00:30:00
#          <------ Account String ----->
# <--- (Use this ONLY if you have MULTIPLE accounts) --->


export LAUNCHER_PLUGIN_DIR=$LAUNCHER_DIR/plugins
export LAUNCHER_RMI=SLURM
export LAUNCHER_JOB_FILE=joblist

$LAUNCHER_DIR/paramrun
