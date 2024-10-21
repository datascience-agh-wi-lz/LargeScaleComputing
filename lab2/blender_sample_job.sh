#!/bin/bash
#SBATCH -N 1
#SBATCH 
#SBATCH -A plglscclass24-cpu
#SBATCH --cpus-per-task=4
#SBATCH --time=00:20:00
#SBATCH --array=1-100
#SBATCH --mem-per-cpu=1000M

modules load blender
blender -b repeat_zone_flower_by_MiRA.blend  -f $SLURM_ARRAY_TASK_ID 
