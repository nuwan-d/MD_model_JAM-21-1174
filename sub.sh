#!/bin/bash
#SBATCH --account=USER_NAME
#SBATCH --nodes=15
#SBATCH --ntasks-per-node=32
#SBATCH --mem=0
#SBATCH --time=00-11:45
#SBATCH --output=%J.log
#SBATCH --mail-user=YOUR_EMAIL
#SBATCH --mail-type=ALL
#SBATCH --job-name=uret_2km/s

module load StdEnv/2020  intel/2020.1.217  openmpi/4.0.3 lammps-omp/20201029

lmp_exec=lmp_icc_openmpi
lmp_input="pu_in.in"
lmp_output="lammps_output.txt"

srun ${lmp_exec} < ${lmp_input} > ${lmp_output}

