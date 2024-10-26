#!/bin/bash -l
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=48
#SBATCH --cpus-per-task=1
#SBATCH -A plglscclass24-cpu
#SBATCH --partition=plgrid-now
#SBATCH --time=01:00:00
# above config is mandatory!

export OMP_NUM_THREADS=1
module load imagemagick
cat files | xargs -P 48 -L 1 -n 1 srun --cpus-per-task=1 bash ./converter.sh
