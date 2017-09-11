#!/bin/bash
#SBATCH -J test
#SBATCH -N 4
#SBATCH -n 4
#SBATCH -p development
#SBATCH -o ./job/tcken.o%j
#SBATCH -e ./job/tcken.e%j
#SBATCH -t 48:00:00
#SBATCH --mail-user=cha.jiook@gmail.com                         

export LAUNCHER_PLUGIN_DIR=$LAUNCHER_DIR/plugins
export LAUNCHER_RMI=SLURM
export LAUNCHER_JOB_FILE=joblist

$LAUNCHER_DIR/paramrun
