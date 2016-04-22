% LatexProjectMakefile
% **Daniel Mejía R.**
% April, 2016
*Summary.* This document contains the specification of `LatexProjectMakefile` with some considerations about use and
latex source tree organization. The styles sheet `DM_Styles.sty` has several dependencies described in the
dependencies the section [Latex package dependencies](#sec:dependencies)


<!-- 

Table of contents: Run pandoc with --toc option -->



## How to use this `Makefile`


## Latex package dependencies
<div id="sec:dependencies"></div>

The list of packages (or latex modules if you want to call them that way) that will be invoked by the style sheet `DM_Styles.sty`
are the following,

 * `nomencl`.         
 * `babel`.         
 * `inputenc`.         
 * `fontenc`.         
 * `hyperref`.         
 * `graphicx`.         
 * `float`.         
 * `layout`.         
 * `geometry`.         
 * `pdflscape`.         
 * `array`.         
 * `multirow`.         
 * `fancyhdr`.         
 * `listings`.         
 * `color`.         
 * `textcomp`.         
 * `url`.         
 * `verbatim`.         
 * `paralist`.         
 * `caption`.         
 * `subcaption`.         
 * `wrapfig`.         
 * `overpic`.         
 * `sidecap`.         
 * `chemfig`.         
 * `mathtools`.         
 * `amssymb`.         
 * `dsfont`.         
 * `cancel`.         
 * `esint`.         
 * `latexsym`.         
 * `upgreek`.         
 * `natbib`.         
 * `textcomp`.         

In GNU/Linux Debian you can install the prerequisites by executing the following command as superuser,  


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
apt-get update && apt-get texlive texlive-base texlive-bibtex-extra texlive-binaries texlive-extra-utils\,
texlive-font-utils texlive-fonts-extra texlive-fonts-recommended texlive-formats-extra \,
texlive-generic-extra texlive-generic-recommended texlive-humanities texlive-lang-english \,
texlive-lang-spanish texlive-latex-base texlive-latex-extra texlive-latex-recommended \, 
texlive-luatex texlive-math-extra texlive-pictures texlive-plain-extra texlive-pstricks \,
texlive-publishers texlive-science texlive-xetex
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

