#!/bin/bash
#SBATCH --time=3:00:00
#SBATCH --mem=10GB
#SBATCH -n 1
#SBATCH -c 20
##SBATCH --constraint=intel18
#SBATCH --reservation=ubuntu_compute

module purge
module load EasyBuild
#module load Mesa
#module load SDL2
#module load freetype
#module load fontconfig
#module load CMake
#module load METIS
#module load libpng

mkdir -p ../software/modules

eb --installpath-software ../software --installpath-module ../software/modules/ glew-2.1.0-foss-2023a.eb
eb --installpath-software ../software --installpath-module ../software/modules/ MFEM-4.7-foss-2023a.eb
eb --installpath-software ../software --installpath-module ../software/modules/ --robot GLVis-4.2-foss-2023a.eb
