% LatexProjectMakefile
% **Daniel Mejía R.**
% April, 2016
*Summary.* This document contains the specification of `LatexProjectMakefile` with some considerations about use and
latex source tree organization. The styles sheet `DM_Styles.sty` has several dependencies described in the
dependencies the section [Latex package dependencies](#sec:dependencies)


<!-- 

Table of contents: Run pandoc with --toc option -->



## How to use this `Makefile`
<div id="sec:makefile-how-to"></div>

Look at the samples in `book_template` and `article_template` they are pretty self explanatory.  
Basically, all you have to do is to rename the main target at the `Makefile` and change it for the name 
of your main `.tex` file. It should work out of the box by calling `make` read more at the section
`Makefile` special variables below.

### Latex project source tree
<div id="subsec:latex-source-tree"></div>

This `Makefile` is designed to work with big projects, and big projects should be split
in several `.tex` sources which are included into its main document by means of the
`\input{}` or `\include{}` latex commands.   
The recommended source tree for a latex project using this `Makefile` is,


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
document-source/
│
├── appendices/  # Appendices tex sources
│   ├── apendix-1.tex
│   ├── ...
│   └── apendix-2.tex
├── chapters/
│   ├── chapter-appendices.tex  # Here we include the sources on appendices/
│   ├── chapter-1.tex
│   ├── chapter-2.tex
│   ├── ...
│   ├── complex_chapter.tex  # Some chapters can be extense
│   ├── complex_chapter_sections/ # here we include the sections of the chapter
│   │   ├── chapter_section-1.tex
│   │   ├── chapter_section-2.tex
│   │   ├── ...
│   │   └── chapter_section-N.tex
│   ├── ...
│   └── chapter-N.tex
├── figures/  # Here we put the figures to keep the root clean
│   ├── figure-1.png
│   ├── figure-2.jpg
│   ├── figure-3.eps
│   ├── ...
│   └── figure-N.png
├── references/  # Here we put the references
│   └── references.bib
├── tables/  # Here we put the tables to be included in the chapters
│   ├── table-1.tex
│   ├── table-2.tex
│   ├── ...
│   └── table-N.tex
│
├── Makefile   # the makefile
├── DM_Stiles.sty # the style sheet
└── main-document.tex # the main document includes chapters by \input or \include
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### `Makefile` special variables
<div id="subsec:makefile-variables"></div>
Edit the following variables on the makefile according to your needs,

#### Project name and sources

 * `PROJECT`: file name of the main `.tex` source file of the project.   
 * `APPENDICESDIR`: directory for the sources for the appendices (if they exist).   
 * `CHAPTERSDIR`: directory for the sources of the chapters.   
 * `TABLESDIR`: directory for  the sources of the tables.   
 * `FIGURESDIR`: directory for the images included in the figures.   
 * `REFERENCESDIR`: directory for the `.bib` files.   
 * `TEXDIRS`: variable that joins all the sources detailed above.   

#### Commands to build the document

 * `TEX`: command to call to compile the latex document. Default `pdflatex`   
 * `BIBTEX`: command to compile the bibliography. Default `bibtex`   
 * `MAKEIDX`: command to make the index. Default `makeindex`   
 * `BUILDSYMBOLS`: command to build the list of simbols calling `MAKEIDX` command.   

### `Makefile` targets
<div id="subsec:makefile-targets"></div>

 * `all`: builds the document calling the compiler in `$(TEX)` and building references.     
 * `$(PROJECT).pdf`: builds the pdf calling the compiler in `$(TEX)` without building references.     
 * `bibliography`: builds the document and the references. This is equivalent to the target `all`.     
 * `clean`: deletes auxiliary files created by `latex` build process leaving the working tree decluttered.     
 * `clean-all`: Deletes all but the sources and figures.     
 * `clean-eqs`: Useful to clean unwanted characters created by the plugin `vim-latexsuite` for the `vim` editor.     

Calling `make` usually should be enough to build the document.   

## Latex package dependencies
<div id="sec:dependencies"></div>

The list of packages (or latex modules if you want to call them that way) that will be invoked by the style sheet `DM_Styles.sty`
are the following,

 * `bibtex`.         
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
 * `mathtools` a successor or `amsmath`.         
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

