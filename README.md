# Molecular Dynamics Simulations of Shock Propagation and Spallation in Amorphous Polymers

The molecular dynamics (MD) model used in our recent paper is shown below. This repository contains the LAMMPS files required to run MD simulations of shock propagation and spallation of polyurethane. The LAMMPS data file (240 MB) can be downloaded [from here.](https://drive.google.com/file/d/1G8xaw0wd_ilcfPe6dSBAemUxr_OrjuH_/view?usp=sharing)
The input and parameters files are available above (“spall_in.in” and “polyurethana_60nm.params”)

 <img src="md_model.JPG" width="600">

The provided MATLAB code can be used to generate position-time plots of density (or any other thermodynamics variables). A position-time plot of density when the initial particle velocity is 2 km/s is shown below. In this case, the code will read the LAMMPS output file containing densities (density.out) and generate the plot.

<img src="x-t_density.JPG" width="450">

More information about the model is available in our paper.
