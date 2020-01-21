set style arrow 9 size graph 0.01,30,10 filled linewidth 1.0
set xrange[-0.8:0.8]
set yrange[-0.8:0.8]
set zrange[-2.0:0.8]
set ytics format " "
set xtics format " "
set cbtics font "Times-Roman,22"
#set ztics (-2.0,-1.5,-1.0,-0.5,0.0,0.5) font "Times-Roman,22"
set zlabel 'E-E_{F}'rotate by 90 font "Times-Roman,22"
unset zlabel
#set palette defined (0 '#000fff',1 '#90ff70',2 '#ee0000')
#set palette rgb 33,13,10
set palette rgbformulae 22,13,-31
set view 69,223
set ticslevel 0    
unset key
scale = 0.4
scale_2 = 0.6
set label "{/Symbol G}" at 0.0,0.0,1.3 font "Times-Roman,18" textcolor rgb "black"
set label "K" at 0.333,0.333,1.1 font "Times-Roman,18" textcolor rgb "black"
set label "K'" at 0.667,-0.333,1.1 font "Times-Roman,18"  textcolor rgb "black"
set label "M" at 0.500,0.000,1.1 font "Times-Roman,18"  textcolor rgb "black"
splot 'data.dat' u 1:2:3:($4*scale):($5*scale):($6*scale):($4+$5+$6) w vectors arrowstyle 9, 'data.dat' u 1:2:(-2.0):($4*scale_2):($5*scale_2):(0):($4+$5+$6) w vectors as 9

set terminal postscript enhanced color font 'Helvetica,10' size 11in,8in
set output 'spin_texture_plot.ps'
replot 
set output