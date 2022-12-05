#!/bin/sh
#SBATCH --nodes=1 
#SBATCH --job-name=fesom-c
#SBATCH --cpus-per-task=1
#SBATCH --time=0:30:00
#SBATCH --mem=20G
#SBATCH -p smp

module purge
module load intel.compiler
#module load intel.mpi
module load netcdf/4.6.0_gnu
module list

EXE=../../src/fesom_coast.exe
export OMP_NUM_THREADS=1

ulimit -s unlimited

date
srun ${EXE}
date

