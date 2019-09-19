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
  \lhead{\leavevmode\footnotesize Due \thedate\\}
  \rhead{\leavevmode\footnotesize\theauthor\\}
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

\usetikzlibrary{arrows.meta}
\usetikzlibrary{calc}
\usetikzlibrary{positioning}

\RequirePackage{parskip}

\RequirePackage{mdframed}

\mdfdefinestyle{solution}{
  skipabove=.5em,
  skipbelow=.5em,
  linecolor=gray,
}
\newmdenv[style=solution]{solution}

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

\renewcommand{\P}{\mathbf P}
\newcommand{\NP}{\mathbf{NP}}
\newcommand{\PSPACE}{\mathbf{PSPACE}}
\newcommand{\TIME}{\mathbf{TIME}}
\newcommand{\NTIME}{\mathbf{NTIME}}
\newcommand{\SPACE}{\mathbf{SPACE}}
\newcommand{\NSPACE}{\mathbf{NSPACE}}

\newcommand{\dif}{\mathop{}\!\mathrm d}
\newcommand{\pdif}{\!\mathop{\partial}}
\newcommand{\drv}[3][]{\frac{\dif^{#1} #2}{\dif #3^{#1}}}
\newcommand{\pdrv}[3][]{\frac{\pdif^{#1} #2}{\pdif #3^{#1}}}

\newcommand{\cbr}[1]{\{#1\}}
\newcommand{\Cbr}[1]{\left\{#1\right\}}
\newcommand{\sbr}[1]{[#1]}
\newcommand{\Sbr}[1]{\left[#1\right]}
\newcommand{\abr}[1]{\langle#1\rangle}
\newcommand{\Abr}[1]{\left\langle#1\right\rangle}
\newcommand{\abs}[1]{\lvert#1\rvert}
\newcommand{\Abs}[1]{\left\lvert#1\right\rvert}
\newcommand{\prn}[1]{(#1)}
\newcommand{\Prn}[1]{\left(#1\right)}
\newcommand{\floor}[1]{\lfloor#1\rfloor}
\newcommand{\Floor}[1]{\left\lfloor#1\right\rfloor}
\newcommand{\ceil}[1]{\lceil#1\rceil}
\newcommand{\Ceil}[1]{\left\lceil#1\right\rceil}
