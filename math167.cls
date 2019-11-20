\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{math137}[2019/09/11 Math 167: Complexity Theory]

\LoadClass{article}
\PassOptionsToClass{article}{10pt}

\RequirePackage{geometry}
\geometry{
  left=1in,
  right=1in,
  top=.25in,
  bottom=.5in,
  headsep=1em,
  includeheadfoot,
}

\RequirePackage{titling}
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\fancypagestyle{homework}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \chead{\textbf{\thetitle}\\Math 167 / CS 142: Complexity Theory}
  \lhead{\leavevmode{\footnotesize Due \thedate}\\}
  \rhead{\leavevmode{\footnotesize\theauthor}\\}
  \cfoot{\footnotesize\thepage{} OF \pageref{LastPage}}
}
\pagestyle{homework}

\RequirePackage{microtype}
\RequirePackage[T1]{fontenc}
\RequirePackage[ascii]{inputenc}

\RequirePackage{lmodern}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{wasysym}

\RequirePackage{wasysym}
\RequirePackage{textcomp}

\RequirePackage{isomath}

\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{forest}

\usetikzlibrary{arrows.meta}
\usetikzlibrary{calc}
\usetikzlibrary{positioning}
\usetikzlibrary{circuits}
\usetikzlibrary{circuits.logic}
\usetikzlibrary{circuits.logic.US}

\RequirePackage{parskip}

\RequirePackage{mdframed}

\mdfdefinestyle{solution}{
  skipabove=.5em,
  skipbelow=.5em,
  linecolor=gray,
}
\newmdenv[style=solution]{solution}

\mdfdefinestyle{aside}{
  hidealllines=true,
  skipabove=.5em,
  skipbelow=.5em,
  leftline=true,
  linecolor=gray,
  linewidth=.25em,
}
\newmdenv[style=aside]{aside}

\mdfdefinestyle{book}{
  hidealllines=true,
  skipabove=.5em,
  skipbelow=.5em,
  leftline=true,
  linecolor=lightgray,
  linewidth=.25em,
}
\newmdenv[style=book]{book}

\RequirePackage{enumitem}
\newlist{problems}{enumerate}{3}
\setlist[problems, 1]{
  label=\arabic*.,
  leftmargin=0em,
}
\setlist[problems, 2]{label=(\alph*)}

%
\newcommand{\QQ}{\mathbb Q}
\newcommand{\RR}{\mathbb R}
\newcommand{\NN}{\mathbb N}
\newcommand{\FF}{\mathbb F}
\newcommand{\CC}{\mathbb C}
\newcommand{\TT}{\mathbb T}

\newcommand{\AND}{\operatorname{AND}}
\newcommand{\NAND}{\operatorname{NAND}}
\newcommand{\OR}{\operatorname{OR}}
\newcommand{\NOR}{\operatorname{NOR}}
\newcommand{\NOT}{\operatorname{NOT}}
\newcommand{\XOR}{\operatorname{XOR}}
\newcommand{\NXOR}{\operatorname{NXOR}}

\newcommand{\pro}{\mathbf{pro}}
\newcommand{\co}{\mathbf{co}}
\renewcommand{\L}{\mathbf L}
\newcommand{\NL}{\mathbf{NL}}
\newcommand{\FL}{\mathbf{FL}}
\renewcommand{\P}{\mathbf P}
\newcommand{\BPP}{\mathbf{BPP}}
\newcommand{\RP}{\mathbf{RP}}
\newcommand{\PP}{\mathbf{PP}}
\newcommand{\NP}{\mathbf{NP}}
\newcommand{\NPSPACE}{\mathbf{NPSPACE}}
\newcommand{\PSPACE}{\mathbf{PSPACE}}
\newcommand{\EXPSPACE}{\mathbf{EXPSPACE}}
\newcommand{\NEXPSPACE}{\mathbf{NEXPSPACE}}
\newcommand{\TIME}{\mathbf{TIME}}
\newcommand{\NTIME}{\mathbf{NTIME}}
\newcommand{\SPACE}{\mathbf{SPACE}}
\newcommand{\NSPACE}{\mathbf{NSPACE}}
\renewcommand{\O}{\mathcal O}

\newcommand{\problem}[1]{\ensuremath{\mathrm{\scriptstyle #1}}}
\newcommand{\SAT}{\problem{SAT}}
\newcommand{\CIRCUITSAT}{\problem{CIRCUIT\,SAT}}
\newcommand{\kSAT}[1][k]{\problem{#1{-}SAT}}
\newcommand{\TSP}{\problem{TSP}}
\newcommand{\CIRCUITVALUE}{\problem{CIRCUIT\,VALUE}}
\newcommand{\STCONN}{\problem{STCONN}}
\newcommand{\SUCCINCTSTCONN}{\problem{SUCCINCT\,STCONN}}

\newcommand{\true}{\mathbf{true}}
\newcommand{\false}{\mathbf{false}}

\newcommand{\dif}{\mathop{}\!\mathrm d}
\newcommand{\pdif}{\!\mathop{\partial}}
\newcommand{\drv}[3][]{\frac{\dif^{#1} #2}{\dif #3^{#1}}}
\newcommand{\pdrv}[3][]{\frac{\pdif^{#1} #2}{\pdif #3^{#1}}}

\DeclarePairedDelimiter{\cbr}{\{}{\}}
\DeclarePairedDelimiter{\set}{\{}{\}}
\DeclarePairedDelimiter{\sbr}{[}{]}
\DeclarePairedDelimiter{\abr}{\langle}{\rangle}
\DeclarePairedDelimiter{\abs}{\lvert}{\rvert}
\DeclarePairedDelimiter{\prn}{(}{)}
\DeclarePairedDelimiter{\floor}{\lfloor}{\rfloor}
\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
