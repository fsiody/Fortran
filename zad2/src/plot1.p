unset grid
set terminal pdfcairo
set output "./res/1_1_originalSignal.pdf"
set key box top left
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
plot "./res/1_1_originalSignal" title "1.1 originalSignal"

unset grid
set terminal pdfcairo
set output "./res/1_2_freq.pdf"
set key box top left
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
plot "./res/1_2_freq" title "1.2 Freq"




unset grid
set terminal pdfcairo
set output "./res/2_1_cosClear.pdf"
set key box top left
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
plot "./res/2_1_cosClear" title "2.1 cos"

unset grid
set terminal pdfcairo
set output "./res/2_2_cosWithNoize.pdf"
set key box top left
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
plot "./res/2_2_cosWithNoize" title "2.2 cos witn noize"

unset grid
set terminal pdfcairo
set output "./res/2_3_FFTCosWithNoize.pdf"
set key box top left
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
plot "./res/2_3_FFTCosWithNoize" title "2.3 FFT cos with noize"

unset grid
set terminal pdfcairo
set output "./res/2_4_FFTCos.pdf"
set key box top left
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
plot "./res/2_4_FFTCos" title "2.4 FFT cos"

unset grid
set terminal pdfcairo
set output "./res/2_5_cosClear2.pdf"
set key box top left
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
plot "./res/2_5_cosClear2" title "2.5 clear cos"