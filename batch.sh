#!/bin/bash
#SBATCH -J test
#SBATCH -N 4
#SBATCH -n 4
#SBATCH -p development
#SBATCH -o tcken.o%j                                                                                                  
#SBATCH -e tcken.e%j 
#SBATCH -t 48:00:00
#SBATCH --mail-user=cha.jiook@gmail.com

module load launcher
export LAUNCHER_PLUGIN_DIR=$LAUNCHER_DIR/plugins
export LAUNCHER_RMI=SLURM
export LAUNCHER_JOB_FILE=/work/03263/jcha9928/stampede2/code/stampede2/joblist

$LAUNCHER_DIR/paramrun
