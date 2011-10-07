% Class for formatting Maine School of Science and Mathematics Assessments
% Kevin Joyce 2011
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assessment}

\LoadClassWithOptions{article}
\RequirePackage{  
  amsmath,
  amscd,
  amssymb,
  amsthm,
  latexsym,
  graphicx,
  ulem,
  enumerate,
  float,
  ulsy,
%  subfigure,
%  wrapfig,
  ifthen,
  rotating,
  url,
  mdwlist,
  fancyhdr
}
\RequirePackage[margin=1in]{geometry}

\pagestyle{fancy}
\setlength{\parindent}{0em}
\setlength{\parskip}{.5em}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\renewcommand{\normalsize}{\fontsize{12pt}{13pt}\selectfont}

\newcounter{pnum}
\def \problem #1{
  \nopagebreak[4]
  \setcounter{opnum}{0}
  \setcounter{spnum}{0}
  \stepcounter{pnum}
  \textbf{\arabic{pnum}.} #1 \par
}

\newcounter{spnum}
\def \subproblem #1{
  \nopagebreak[4]
  \stepcounter{spnum}
  \hspace{1cm} \textbf{(\alph{spnum})} #1 \par
}

\newcounter{opnum}
\def\option #1{
 \optionn #1 \par
}
\def \optionn {
  \nopagebreak[4]
  \stepcounter{opnum}
  (\alph{opnum})
}
\newenvironment{multchoice}
  { 
    \part{Multiple Choice}
  }
  {
    \par \underline{\hspace{\textwidth}}
  }
\newcommand{\ds}{\displaystyle}

\newenvironment{shortanswer} {
  \part{Short Answer}
} {
}
\newenvironment{freeresponse} {
  \part{Free Response}
} {
}
\newenvironment{truefalsecx} {
  \part{True or False.}
  
  For each statement determine if it is true or false.  If it is true, just say so, if it is false give a counter example.
} {
}

\newcommand{\Hint}{ {\it Hint:} }


\ProcessOptions\relax
