unset grid
set terminal pdfcairo
set output "./res/wykres1.pdf"
set key box top left
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'

plot "./res/originalFunction" title "originalFunction"