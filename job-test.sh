#!/bin/bash
#SBATCH --nodes 1
#SBATCH -n 1
#SBATCH --time 2:00:00                                                                 
#SBATCH --job-name ic
#SBATCH --partition RM
#SBATCH --output=slurm-test.out
#SBATCH --mem=10G
source activate agama
 
./exe/mkspherical.exe density=Spheroid mass=2e11 beta=4.0 gamma=1.0 scaleRadius=30.2e3 alpha=1.0 outerCutoffRadius=60e3 cutoffStrength=3 tab=hernquist_low out=hernquist_nb nbody=32768
