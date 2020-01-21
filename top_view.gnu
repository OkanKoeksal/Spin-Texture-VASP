set style arrow 9 size graph 0.01,30,10 filled linewidth 1.0
set xrange[-0.7:0.7]
set yrange[-0.7:0.7]
set zrange[-1.3:0.8]
set xtics (-0.7,-0.5,-0.33,-0.15,0.0,0.15,0.33,0.5,0.7) font "Times-Roman,18"
set xtics format " "
set ytics (-0.7,-0.5,-0.33,-0.15,0.0,0.15,0.33,0.5,0.7) font "Times-Roman,18"
set ytics format " "
set ztics (-1.0,-0.7,-0.4,0.0,0.2,0.4,0.7) font "Times-Roman,18"
set zlabel 'E-E_{F}'rotate by 90 font "Times-Roman,18"
unset xlabel
unset ylabel
unset ztics 
unset zlabel
#set palette defined (0 '#000fff',1 '#90ff70',2 '#ee0000')
#set palette rgb 33,13,10
set palette rgbformulae 22,13,-31
set view 0,180
set ticslevel 0    
unset key
scale = 2.0
#set label "{/Symbol G}" at 0.0,0.0,1.1 font "Times-Roman,18" textcolor rgb "black"
#set label "K" at 0.333,-0.667,0.9 font "Times-Roman,18" textcolor rgb "black"
#set label "M" at 0.500,-0.500,0.9 font "Times-Roman,18"  textcolor rgb "black"
#set label "K'" at 0.667,-0.333,0.9 font "Times-Roman,18" textcolor rgb "black"
splot 'data.dat' u 1:2:3:($4*scale):($5*scale):($6*scale):($4+$5+$6) w vectors arrowstyle 9, 'data.dat' u 1:2:(-1.3):($4*scale):($5*scale):(0):($4+$5+$6) w vectors as 9, 'kpath.dat' u 1:2:3 w linespoints pt 7

set terminal postscript enhanced color font 'Helvetica,10' size 11.4in,8.5in
set output 'spin_texture_plot_top_view.ps'
replot 
set output