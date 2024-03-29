##################################################
# Sets up the eps latex terminal and sets the out
#
# To use:
#  0) put this file in the working directory, or set GNUPLOT_LIB to point to its directory
#  1) define the gpoutname string, without the .tex extension
#  2) then load 'pdf_startup.gp'
#  3) Do all plotting commands
#  4) then load 'pdf_shutdown.gp'
#
# Dependencies:
#  On Ubuntu you will probably need to install the texlive-font-utils package
##################################################



set terminal epslatex color colortext standalone dashed header \
"\\usepackage{mathabx}"

set termoption font 'ptm,10'

set style line 11 lc rgb 'black' lt 1 lw 2
#set border 3 front ls 11
set tics nomirror out scale 0.75

texoutname = sprintf("%s.tex", gpoutname)

set output texoutname
