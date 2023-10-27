#!/bin/bash
#SBATCH -p HENON
#SBATCH -N 1
#SBATCH --ntasks 1
#SBATCH --mincpus=32
#SBATCH --cpus-per-task=32
#SBATCH --job-name=halo
#SBATCH --time=8:00:00
#SBATCH --output=slurm.out
#SBATCH --mem=100G
#SBATCH --mail-type=END
#SBATCH --mail-user=username@andrew.cmu.edu # change this

export OMP_NUM_THREADS=32

module load intel intelmpi gsl

ROOT="$HOME/MP-Gadget"
OUTDIR="$HOME/scratch1/multigal_ideal/sys1/multigal" # change this
mpirun -np 1 $ROOT/gadget/MP-Gadget paramfile.gadget 2 0 > $OUTDIR/log || exit 1
