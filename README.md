
## Spin Texture / VASP

Spin Texture / VASP contains two executable files in order to generate a 2D/3D spin texture using VASP output data. 

```
1. Manual_Spin_Texture --> Documentation for generating spin texture plots using C++-code listed below.

2. main_gcc_version_cygwin.exe  --> Executable in an cygwin environment in conjunction with 3 output files
from VASP (PROCAR, EIGENVAL as well as generated k-points path).

3. main_gcc_version_debian_linux.exe --> Executable in an linux environment in conjunction with 3 output files
from VASP (PROCAR, EIGENVAL as well as generated k-points path).

4. side_view.gnu --> Plots the spin texture (side view) as a function of the band energy along kx, ky-directions. 

5. top_view.gnu --> Plots the spin texture (top view) along kx, ky-directions. 

6. kpath.dat --> Marks the high-symmetry points on a graphene-like 2D material. 
```

Requirements:
```
1. For running the code: gcc/g++ version >= 4.7.2 on Cygwin

2. For plotting the spin textures: gnuplot version >= 5.0
```
Employing the scripts, it is possible to generate and plot spin textures using VASP output files (PROCAR, EIGENVAL).    

For more informations/questions send an e-mail to: koeksal.okan@gmail.com

A tutorial explaining the steps needed for the usage of this code can be found at:
```

[![Tutorial](https://i.imgur.com/svSFrsZ.png)](https://youtu.be/Tjvy6rrRa5A)
