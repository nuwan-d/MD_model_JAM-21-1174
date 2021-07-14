[![DOI](https://zenodo.org/badge/368240107.svg)](https://zenodo.org/badge/latestdoi/368240107)

# Molecular dynamics simulations of shock propagation and spallation in amorphous polymers

We are currently investigating the shock response of materials using molecular dynamics (MD). This project showed us that the preparation of properly equilibrated MD models can be very challenging even for someone with a strong background in molecular modeling. Therefore, we would like to share some of our recent MD models with the research community. 

This repository contains the MD model used in [our recent paper](https://asmedigitalcollection.asme.org/appliedmechanics/article/doi/10.1115/1.4051238/1109502/Molecular-Dynamics-Simulations-of-Shock) (see below). This repository contains the LAMMPS files required to run MD simulations of shock propagation and spallation of polyurethane. The LAMMPS data file (240 MB) can be downloaded [from here.](https://zenodo.org/record/5099589#.YO5BluhKhPY)
The input and parameters files are available above (“spall_in.in” and “polyurethane_60nm.params”). We used the [Enhanced Monte Carlo](http://montecarlo.sourceforge.net/emc/Welcome.html) pcakage to create the model and the [Open Visualization Tool](https://www.ovito.org/) for visualization.

A brief video overview of this model (and another) is [available here](https://youtu.be/hgZXvUdr-Qo). 

 <img src="md_model.JPG" width="600">

The provided MATLAB code, x_t_density.m, can be used to generate position-time plots of density (or any other thermodynamics variables). A position-time plot of density when the initial particle velocity (Up) is 2 km/s is shown below. In this case, the code will read the LAMMPS output file containing densities (density.out) and generate the plot.

<img src="x-t_density.JPG" width="450">

If you are using [Compute Canada](https://www.computecanada.ca/home/), the "sub.sh" script can be used to submit the job. The simulation will need ~3500 core-hours.

If you would like to learn more about the model, please read [our paper](https://asmedigitalcollection.asme.org/appliedmechanics/article/doi/10.1115/1.4051238/1109502/Molecular-Dynamics-Simulations-of-Shock).

Good luck with your MD simulations.
