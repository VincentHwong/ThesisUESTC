%
%  Copyright 2016-2019 Wen Wang <wwzvd@mst.edu>
%
%  This work may be distributed and/or modified under the
%  conditions of the LaTeX Project Public License, either version 1.3
%  of this license or (at your option) any later version.
%  The latest version of this license is in
%    http://www.latex-project.org/lppl.txt
%  and version 1.3 or later is part of all distributions of LaTeX
%  version 2005/12/01 or later.
%
%  This work has the LPPL maintenance status `maintained'.
%
%  The Current Maintainer of this work is Wen Wang <wwzvd@mst.edu>.
%
%  This work consists of the files thesis-uestc.cls, thesis-uestc.bst.
%


\ProvidesClass{thesis-uestc}

\LoadClass[12pt, openany, twoside]{book}

\RequirePackage{ifxetex}
\RequireXeTeX

\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage{graphicx}
\RequirePackage[font={doublespacing, small}, labelsep=space, skip=6pt]{caption}

\RequirePackage{array}
\RequirePackage{setspace}
\RequirePackage{multirow}
\RequirePackage[tbtags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{lmodern}
\RequirePackage[nopostdot]{glossaries}
\RequirePackage{mathspec}

\RequirePackage{xeCJK}
\RequirePackage{ifplatform}

\ifwindows
  \setallmainfonts{Times New Roman}
  \setCJKmainfont[AutoFakeBold=true]{SimSun}
  \newCJKfontfamily{\heiti}{SimHei}
  \newfontfamily{\heiti@letter}{SimHei}
\else
\ifmacosx
  \setallmainfonts{Times New Roman}
  \setCJKmainfont[AutoFakeBold=true]{Songti SC}
  \newCJKfontfamily{\heiti}{STHeiti}
  \newfontfamily{\heiti@letter}{STHeiti}
\else
  \setCJKmainfont[AutoFakeBold=true]{simsun.ttc}
  \newCJKfontfamily{\heiti}{simhei.ttf}
  \newfontfamily{\heiti@letter}{simhei.ttf}
  \setallmainfonts[
    BoldFont=timesbd.ttf,
    ItalicFont=timesi.ttf,
    BoldItalicFont=timesbi.ttf,
  ]{times.ttf}
\fi
\fi

\newcommand{\bm}{\pmb}

\RequirePackage{zhnumber}
\RequirePackage{pifont}

\RequirePackage[hyphens]{url}
\RequirePackage[hyperfootnotes=false,
    bookmarksnumbered,
    bookmarksdepth=4
]{hyperref}
\hypersetup{
  colorlinks=true,
  citecolor=black,
  linkcolor=black,
  urlcolor=black
}

\RequirePackage{indentfirst}
\RequirePackage{calc}
\RequirePackage{float}
\RequirePackage{fancyvrb}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{appendix}
\RequirePackage{setspace}
\RequirePackage{cite}
\RequirePackage[normalem]{ulem}
\RequirePackage{enumitem}

\RequirePackage[algochapter, boxruled, linesnumbered]{algorithm2e}

\RequirePackage{etoolbox}
\RequirePackage{newfloat}
\RequirePackage[resetlabels]{multibib}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{everypage}
\RequirePackage{ifoddpage}

\graphicspath{{./pic/}}

\RequirePackage[titles, subfigure]{tocloft}
\RequirePackage[small]{subfigure}

\urlstyle{rm}
\raggedbottom

\newcommand{\thesistablelist}{
  \listoftables
}

\RequirePackage[a4paper,
  inner=3cm, outer=3cm, top=3cm, bottom=3cm,
  bindingoffset=0cm]{geometry}

\setlength{\headheight}{15pt}

\pagestyle{fancy}
\linespread{1.391}
\setlength\parindent{24pt}
\titlespacing{\chapter}{0pt}{0pt}{18pt}
\titlespacing{\section}{0pt}{18pt}{6pt}
\titlespacing{\subsection}{0pt}{12pt}{6pt}
\titlespacing{\subsubsection}{0pt}{12pt}{6pt}

\renewcommand\thechapter{第\zhnumber{\arabic{chapter}}章}
\renewcommand\thesection{\arabic{chapter}.\arabic{section}}

\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}

\captionsetup{format=hang}
\captionsetup{width=\textwidth - 42pt}
\captionsetup[figure]{aboveskip=6pt,belowskip=0pt}
\captionsetup[table]{belowskip=6pt}

\setlength{\subfigcapskip}{0pt}
\setlength{\intextsep}{9pt}

\AtBeginEnvironment{figure}{
  \def\@floatboxreset{\centering}
}

\AtBeginEnvironment{table}{
  \def\@floatboxreset{\centering}
}

\AtBeginEnvironment{tabular}{\small}

\renewcommand{\p@subfigure}{\arabic{chapter}-\arabic{figure}}

\newcommand{\chinesecolon}{\char"FF1A}
\newcommand{\chinesespace}{\char"3000}
\newcommand{\chineseperiod}{\char"3002}
\newcommand{\chinesequestion}{\char"FF1F}
\newcommand{\chineseexclamation}{\char"FF01}
\newcommand{\chinesecomma}{\char"FF0C}
\newcommand{\chinesesemicolon}{\char"FF1B}
\newcommand{\chineseleftparenthesis}{\char"FF08}
\newcommand{\chineserightparenthesis}{\char"FF09}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}

\titleformat{\chapter}[block]
  {\centering\fontsize{15pt}{15pt}\selectfont\strong\thispagestyle{fancy}}{\thechapter}{7.5pt}{}

\titleformat{\section}[block]
  {\fontsize{14pt}{14pt}\selectfont\strong}
  {\thesection}{7pt}{}

\titleformat{\subsection}[block]
  {\fontsize{14pt}{14pt}\selectfont\strong}
  {\thesubsection}{7pt}{}

\titleformat{\subsubsection}[block]
  {\fontsize{12pt}{12pt}\selectfont\strong}
  {\thesubsubsection}{6pt}{}

\RequirePackage[hang, perpage]{footmisc}
\addtolength{\footnotesep}{0pt}
\setlength{\footnotemargin}{13.5pt}

\renewcommand{\footnotesize}{\fontsize{9pt}{10.8pt}\selectfont}
\renewcommand{\small}{\fontsize{10.5pt}{12.6pt}\selectfont}
\renewcommand\footnotelayout{\fontsize{9}{11.7}\selectfont}

\renewcommand{\thefootnote}{\ifcase\value{footnote}\or\ding{172}\or
\ding{173}\or\ding{174}\or\ding{175}\or\ding{176}\or\ding{177}\or
\ding{178}\or\ding{179}\or\ding{180\or\ding{181}}\fi}

\renewcommand{\footnoterule}{\vfill\noindent\vspace{0.9mm}\hspace{27pt}\rule{5.05cm}{0.02cm}\vspace*{2.6pt}}

\def\@makefntext #1{
  \ifFN@hangfoot
      \bgroup \setbox \@tempboxa \hbox {
          \ifdim
        \footnotemargin >0pt \hb@xt@
                \footnotemargin {\hbox { \normalfont \@thefnmark}\hss }
            \else
              \hbox { \normalfont \@thefnmark}
      \fi
    }
        \leftmargin \wd \@tempboxa
        \rightmargin \z@ \linewidth \columnwidth
          \advance \linewidth -\leftmargin\parshape \@ne
    \leftmargin \linewidth \footnotesize \@setpar {{\@@par }}
    \leavevmode \llap {\box \@tempboxa }\parskip
        \hangfootparskip \relax \parindent
    \hangfootparindent \relax
        \else
          \parindent 1em \noindent
            \ifdim
                \footnotemargin >\z@ \hb@xt@
                \footnotemargin {\hss \hbox { \normalfont \@thefnmark} }
            \else
        \ifdim \footnotemargin =\z@
                    \llap {\hbox { \normalfont \@thefnmark} }
                \else
          \llap {\hb@xt@ -\footnotemargin {\hbox { \normalfont \@thefnmark} \hss }}
        \fi
            \fi
    \fi
        \footnotelayout #1\ifFN@hangfoot \par \egroup
  \fi
}

\newcounter{pseudopage}
\setcounter{pseudopage}{0}
\AddEverypageHook{\stepcounter{pseudopage}}

\newcommand\blankpage{%
  \newpage
  \null
  \thispagestyle{empty}%
  \addtocounter{pseudopage}{-1}%
  \newpage
}

\newenvironment{chineseabstract}{
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  \pagenumbering{Roman}
  \ifchinesebook{
    \pdfbookmark{中文摘要}{chineseabstract}
  }{
    \pdfbookmark{Chinese Abstract}{chineseabstract}
  }
  \chapter*{\heiti{摘\chinesespace 要}}
  \thispagestyle{fancy}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont 摘要}
}{
  \checkoddpage
  \ifoddpage
      \blankpage
    \else
      \newpage
    \fi
}

\newcommand{\chinesekeyword}[1]{
  \vspace{\baselineskip}
  \noindent
    \begin{minipage}[t]{48pt}
      \noindent\textbf{关键词\chinesecolon}
    \end{minipage}
    \begin{minipage}[t]{\linewidth - 48pt}
      #1
    \end{minipage}
}

\newenvironment{englishabstract}{
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  \pagenumbering{Roman}
  \ifchinesebook{
    \pdfbookmark{英文摘要}{englishabstract}
  }{
    \pdfbookmark{English Abstract}{englishabstract}
  }
  \chapter*{\bfseries ABSTRACT}
    \thispagestyle{fancy}
    \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont ABSTRACT}
}{
  \checkoddpage
  \ifoddpage
      \blankpage
    \else
      \newpage
    \fi
}

\newcommand{\englishkeyword}[1]{
  \vspace{\baselineskip}
  \noindent\begin{minipage}[t]{2.1cm}
      \noindent\textbf{Keywords:}
    \end{minipage}
    \begin{minipage}[t]{
      \linewidth - 2.1cm}
        #1
    \end{minipage}
}

\AddEverypageHook{\addtocontents{toc}{
  \protect\cftsetpnumwidth{\widthof{\thepage}-1pt}
}}

\AddEverypageHook{\addtocontents{lof}{
  \protect\cftsetpnumwidth{\widthof{\thepage}-1pt}
}}

\AddEverypageHook{\addtocontents{lot}{
  \protect\cftsetpnumwidth{\widthof{\thepage}-1pt}
}}

\tocloftpagestyle{fancy}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand\cftchapleader{\cftdotfill{\cftdotsep}}

\renewcommand{\cftdotsep}{0.4}

\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{18pt}
\setlength{\cftbeforechapskip}{0pt}

\addtolength{\cftchapnumwidth}{25pt}

\cftsetindents{section}{21pt}{22pt}
\cftsetindents{subsection}{44pt}{31pt}
\cftsetindents{subsubsection}{76pt}{41pt}

\renewcommand{\cfttoctitlefont}{\fontsize{15pt}{15pt}\selectfont\strong}
\renewcommand\cftchapfont{\strong}

\newcommand{\thetitle}{\chinesespace}
\newcommand{\theauthor}{\chinesespace}
\newcommand{\thedate}{\chinesespace}
\newcommand{\theschool}{\chinesespace}
\newcommand{\themajor}{\chinesespace}
\newcommand{\theadvisor}{\chinesespace}
\newcommand{\thestudentnumber}{\chinesespace}

\renewcommand{\title}[1]{
  \renewcommand{\thetitle}{#1}
}

\renewcommand{\author}[1]{
  \renewcommand{\theauthor}{#1}
}

\renewcommand{\date}[1]{
  \renewcommand{\thedate}{#1}
}

\newcommand{\major}[1]{
  \renewcommand{\themajor}{#1}
}

\newcommand{\school}[1]{
  \renewcommand{\theschool}{#1}
}

\newcommand{\advisor}[1]{
  \renewcommand{\theadvisor}{#1}
}

\newcommand{\studentnumber}[1]{
  \renewcommand{\thestudentnumber}{#1}
}

\renewcommand{\strong}{\heiti}
\DeclareOption{english} {
  \newcommand{\englishbook}{}
  \renewcommand{\thechapter}{Chapter \arabic{chapter}}
  \addtolength{\cftchapnumwidth}{12pt}
  \renewcommand{\strong}{\bfseries}
}

\newcommand{\ifchinesebook}[2]{
  \ifthenelse{\isundefined{\englishbook}}{#1}{#2}
}

\DeclareOption{bachelor}{
  \newcommand{\chinesedegreename}{本科}
  \newcommand{\englishdegreename}{Bachelor}
  \newcommand{\chinesebooktitle}{本科学位论文}
  \newcommand{\englishbooktitle}{Bachelor Thesis}
  \newcommand{\display@englishheader}{Bachelor Thesis of University of Electronic Science and Technology of China}
}

\DeclareOption{master}{
  \newcommand{\chinesedegreename}{硕士}
  \newcommand{\englishdegreename}{Master}
  \newcommand{\chinesebooktitle}{硕士学位论文}
  \newcommand{\englishbooktitle}{Master Thesis}
  \newcommand{\display@englishheader}{Master Thesis of University of Electronic Science and Technology of China}
}

\DeclareOption{promaster}{
  \newcommand{\chinesedegreename}{专业硕士}
  \newcommand{\englishdegreename}{Professional Master}
  \newcommand{\chinesebooktitle}{专业学位硕士学位论文}
  \newcommand{\englishbooktitle}{Master Thesis for Professional Degree}
  \newcommand{\display@englishheader}{Master Thesis of University of Electronic Science and Technology of China}
}

\DeclareOption{doctor}{
  \newcommand{\chinesedegreename}{博士}
  \newcommand{\englishdegreename}{Doctor}
  \newcommand{\chinesebooktitle}{博士学位论文}
  \newcommand{\englishbooktitle}{Doctoral Dissertation}
  \newcommand{\display@englishheader}{Doctoral Dissertation of University of Electronic Science and Technology of China}
}

\ProcessOptions\relax

\ifchinesebook{
  \renewcommand{\contentsname}{目\hspace{6pt}录}
  \renewcommand{\bibname}{参考文献}
  \renewcommand{\figurename}{图}
  \renewcommand{\tablename}{表}
  \renewcommand{\listfigurename}{图目录}
  \renewcommand{\listtablename}{表目录}
}{}

\pretocmd{\listoffigures}{
    \newpage
  \fancyhf{}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont\listfigurename}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  \ifchinesebook{
    \addtolength{\cftfignumwidth}{12pt}
    \renewcommand{\cftfigpresnum}{\figurename}
  }{
    \addtolength{\cftfignumwidth}{32pt}
    \renewcommand{\cftfigpresnum}{\figurename~}
  }
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
}{}{}

\newcommand{\thesisfigurelist}{
  \listoffigures
}

\pretocmd{\listoftables}{
    \newpage
  \fancyhf{}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont\listtablename}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  
  \ifchinesebook{
    \addtolength{\cfttabnumwidth}{12pt}
    \renewcommand{\cfttabpresnum}{\figurename}
  }{
    \addtolength{\cfttabnumwidth}{32pt}
    \renewcommand{\cfttabpresnum}{\figurename~}
  }
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
}{}{}

\AtBeginDocument{\ifchinesebook{
  \SetAlgorithmName{算法}{算法}{算法列表}
}{
  \SetAlgorithmName{Algorithm}{Algorithm}{List of Algorithms}
}}
\renewcommand\thealgocf{\arabic{chapter}-\arabic{algocf}}
\SetAlgoCaptionSeparator{\null}
\AtBeginEnvironment{algorithm}{\vspace{9pt}}
\AfterEndEnvironment{algorithm}{\vspace{9pt}}

\renewcommand*{\glossarypreamble}{\vspace{-9pt}}
\newacronymstyle{acronym-uestc}{
  \ifglshaslong{\glslabel}{\glsgenacfmt}{\glsgenentryfmt}
}{
  \renewcommand*{\GenericAcronymFields}{
    first={\the\glslongtok\space\protect\paren{\the\glsshorttok}},
    description={\the\glslongtok}}
  \renewcommand*{\genacrfullformat}[2]{%
    \glsentrydesc{##1}~(\glsentrylong{##1},\space%
    \glsentryshort{##1})%
  }
  \renewcommand*{\acronymentry}[1]{%
    \acronymfont{\glsentryshort{##1}}%
  }
}
\setacronymstyle{acronym-uestc}

\newglossarystyle{long-uestc}{
  \renewenvironment{theglossary}%
    {\begin{longtable}{lp{.7\textwidth}}}%
    {\end{longtable}}%

  \renewcommand*{\glossaryheader}{}%
  \renewcommand*{\glsgroupheading}[1]{}%
  \renewcommand{\glossentry}[2]{
    \glsentryitem{##1}\glstarget{##1}{\glossentryname{##1}} &
    \ifglshaslong{##1}{\glsentrylong{##1}\ifglshasdesc{##1}{, \glsentrydesc{##1}}{}}
    {\glsentrydesc{##1}} \\
  }
  \renewcommand*{\subglossentry}[3]{
  \glossentry{##2}{##3}}
}

\defglsentryfmt{%
  \ifglshaslong{\glslabel}{%
    \glsgenacfmt%
  }{%
    \ifglsused{\glslabel}{%
      \glsgenentryfmt%
    }{%
      \glsgenentryfmt%
    }%
  }%
}

\newcommand{\thesisglossarylist}{
  \newpage
  \fancyhf{}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont\glossarytitle}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  \setlength\glsdescwidth{.7\textwidth}
  \pdfbookmark{\glossarytitle}{glossary}
  \ifchinesebook{
    \printglossary[style=long-uestc, title={\protect\centering 缩略词表}, nonumberlist, nogroupskip]
  }{
    \printglossary[style=long-uestc, title={\protect\centering Glossary}, nonumberlist, nogroupskip]
  }
}
\makeglossaries

\newcommand{\makecover}{
\thispagestyle{empty}
\setlength{\extrarowheight}{9pt}
\begin{center}
  \fontsize{22pt}{22pt}\selectfont 电\hspace{0.5em}子\hspace{0.5em}科\hspace{0.5em}技%
  \hspace{0.5em}大\hspace{0.5em}学 \\[7bp]
  \fontsize{12pt}{12pt}\selectfont UNIVERSITY OF ELECTRONIC SCIENCE
    AND TECHNOLOGY OF CHINA \\[36bp]
  \fontsize{42pt}{42pt}\selectfont\chinesebooktitle \\[24bp]
  \fontsize{16pt}{16pt}\selectfont
    \textbf{\MakeUppercase{\englishbooktitle}} \\[48bp]
  \includegraphics[width=221bp]{logo.pdf} \\[48bp]
  \begin{tabular}{lp{4.6in}}
    \fontsize{16pt}{16pt}\selectfont 论文题目 & \multirow[t]{2}{4.6in}{
        \centering
          \fontsize{16pt}{19pt}\selectfont
          \thetitle
    } \\
    \cline{2-2}
            & \\
    \cline{2-2}
  \end{tabular} \\[\baselineskip]
  \begin{tabular}{>{\fontsize{16pt}{16pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{16pt}{16pt}\selectfont}
      p{3.77in}}
    学科专业 & \themajor \\
    \cline{2-2}
    学\chinesespace\chinesespace 号 & \thestudentnumber \\
    \cline{2-2}
    作者姓名 & \theauthor \\
    \cline{2-2}
    指导老师 & \theadvisor \\
    \cline{2-2}
  \end{tabular}
\end{center}

\newpage
\thispagestyle{empty}

\noindent
分类号 \uline{\hspace{2.5in}} 密级 \uline{\hspace{2.5in}} \\[12bp]
UDC\textsuperscript{ 注1} \uline{\hspace{2.5in}} \\[12bp]

\begin{center}
  \fontsize{36pt}{36pt}\selectfont{\heiti
    学\chinesespace 位\chinesespace 论\chinesespace 文
  } \\[48bp]

  \fontsize{16pt}{16pt}\selectfont\thetitle \\
  \vspace{-15pt}
  \rule{5.9in}{.4pt} \\
  \fontsize{12pt}{12pt}\selectfont（题名和副题名）\\[48bp]
  \fontsize{16pt}{16pt}\selectfont\theauthor \\
  \vspace{-15pt}
  \rule{1.63in}{.4pt} \\
  \fontsize{12pt}{12pt}\selectfont（作者姓名） \\[48bp]

  \begin{tabular}{>{\fontsize{16pt}{16pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{16pt}{16pt}\selectfont}
      p{4.45in}}
      指导老师 & \theadvisor \\
    \cline{2-2}
    & \fontsize{12pt}{12pt}\selectfont（姓名、职称、单位名称）
  \end{tabular}  \\[48bp]
\end{center}

  \noindent
  \begin{tabular}{>{\fontsize{16pt}{16pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{16pt}{16pt}\selectfont}
      p{0.96in}
      >{\fontsize{16pt}{16pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{16pt}{16pt}\selectfont}
      p{2.48in}}
      申请学位级别 & \chinesedegreename{} &
      学科专业 & \themajor \\
    \cline{2-2}
    \cline{4-4}
  \end{tabular} \\
  \begin{tabular}{>{\fontsize{16pt}{16pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{16pt}{16pt}\selectfont}
      p{1.0in}
      >{\fontsize{16pt}{16pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{16pt}{16pt}\selectfont}
      p{2.0in}}
      提交论文日期 &  &
      论文答辩日期 & \\
    \cline{2-2}
    \cline{4-4}
  \end{tabular} \\
  \begin{tabular}{>{\fontsize{16pt}{16pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{16pt}{16pt}\selectfont}
      p{3.97in}}
      学位授予单位和日期 & 电子科技大学 \\
    \cline{2-2}
  \end{tabular} \\
  \begin{tabular}{>{\fontsize{16pt}{16pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{16pt}{16pt}\selectfont}
      p{2.26in}}
      答辩委员会主席 & \\
    \cline{2-2}
  \end{tabular} \\
  \begin{tabular}{>{\fontsize{16pt}{16pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{16pt}{16pt}\selectfont}
      p{4.89in}}
      评阅人 & \\
    \cline{2-2}
  \end{tabular}

\vspace{0.54in}
\noindent
注1：注明《国际十进分类法UDC》的类号。


\newpage
\setcounter{page}{0}
\setcounter{pseudopage}{0}
\setlength{\extrarowheight}{5pt}
}

\setlength{\extrarowheight}{5pt}

\newcommand{\standardhead}{
  \fancyhf{}
  \ifchinesebook{
    \fancyhead[CE]{\fontsize{10.5pt}{12.6pt}\selectfont 电子科技大学\chinesebooktitle}
    \fancyhead[CO]{\fontsize{10.5pt}{12.6pt}\selectfont\leftmark}
  } {
    \fancyhead[CE]{\fontsize{10.5pt}{12.6pt}\selectfont\nouppercase\display@englishheader}
    \fancyhead[CO]{\fontsize{10.5pt}{12.6pt}\selectfont\nouppercase\leftmark}
  }
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\thepage}
}

\pretocmd{\tableofcontents}{
  \fancyhf{}
  \ifchinesebook{
    \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont 目录}
    \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
    \pdfbookmark{目录}{toc}
  } {
    \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont Contents}
    \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
    \pdfbookmark{Contents}{toc}
  }
}{}{}

\newcommand{\thesistableofcontents}{
  \tableofcontents
}

\ifchinesebook{
  \renewcommand{\chaptermark}[1]{\markboth{第\zhnumber{\arabic{chapter}}章 \hspace{5.25pt}#1}{}}
}{
  \renewcommand{\chaptermark}[1]{\markboth{Chapter \arabic{chapter}\hspace{5.25pt}#1}{}}
}

\newcommand{\thesisacknowledgement}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \setcounter{section}{0}
  \ifchinesebook{
    \chapter*{致\hspace{12pt}谢}
    \addcontentsline{toc}{chapter}{致\hspace{12pt}谢}
    \markboth{致谢}{致谢}
  }{
    \chapter*{Acknowledgements}
    \addcontentsline{toc}{chapter}{Acknowledgements}
    \markboth{Acknowledgements}{Acknowledgements}
  }


  \thispagestyle{fancy}
}

\newcommand{\thesischapterexordium}{
  \checkoddpage
  \ifoddpage
      \blankpage
    \else
      \newpage
  \fi
    \newpage
  \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}
  \standardhead
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \ifchinesebook{
    \chapter{绪\hspace{6pt}论}
    \chaptermark{绪论}
  }{
    \chapter{Introduction}
    \chaptermark{Introduction}
  }
}

%\renewcommand*{\l@chapter}{\@dottedtocline{1}{1.5em}{2.3em}}

\newcommand{\thesisappendix}{
  \newpage
  \appendix
  \ifchinesebook{}{\addtocontents{toc}{\protect\addtolength{\cftchapnumwidth}{12pt}}}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}
  \titleformat{\chapter}[block]
    {\centering\fontsize{15pt}{15pt}\selectfont\strong\thispagestyle{fancy}}{\thechapter}{7.5pt}{}
  \ifchinesebook{
    \renewcommand{\thechapter}{附录\Alph{chapter}}
    \renewcommand{\appendixname}{附录}
  }{
    \renewcommand{\thechapter}{Appendix \Alph{chapter}}
    \renewcommand{\appendixname}{Appendix}
  }

  \renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}
  \renewcommand{\theequation}{\alph{chapter}-\arabic{equation}}
  \renewcommand{\thetable}{\alph{chapter}-\arabic{table}}
  \renewcommand{\thefigure}{\alph{chapter}-\arabic{figure}}
  \renewcommand{\thetheorem}{\alph{chapter}.\arabic{theorem}}
  \renewcommand{\theaxiom}{\alph{chapter}.\arabic{axiom}}
  \renewcommand{\thecorollary}{\alph{chapter}.\arabic{corollary}}
  \renewcommand{\thelemma}{\alph{chapter}.\arabic{lemma}}
  \renewcommand{\thedefinition}{\alph{chapter}.\arabic{definition}}
  \renewcommand{\theexample}{\alph{chapter}.\arabic{example}}
}

\newcommand{\thesissingleappendix}{
  \newpage
  \appendix
  \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}
  \titleformat{\chapter}[block]
    {\centering\fontsize{15pt}{15pt}\selectfont\strong\thispagestyle{fancy}}{附\hspace{12pt}录}{7.5pt}{}
  %\renewcommand{\thechapter}{附\hspace{12pt}录}
  \ifchinesebook{
    \renewcommand{\appendixname}{附录}
  } {
    \renewcommand{\appendixname}{Appendix}
  }
  
  \renewcommand{\thesection}{A.\arabic{section}}
  
  \renewcommand{\theequation}{a-\arabic{equation}}
  \renewcommand{\thetable}{a-\arabic{table}}
  \renewcommand{\thefigure}{a-\arabic{figure}}
  \renewcommand{\thetheorem}{a.\arabic{theorem}}
  \renewcommand{\theaxiom}{a.\arabic{axiom}}
  \renewcommand{\thecorollary}{a.\arabic{corollary}}
  \renewcommand{\thelemma}{a.\arabic{lemma}}
  \renewcommand{\thedefinition}{a.\arabic{definition}}
  \renewcommand{\theexample}{a.\arabic{example}}
  
  \ifchinesebook{
    \chapter*{附\hspace{12pt}录}
    \addcontentsline{toc}{chapter}{附录}
    \markboth{附录}{附录}
  } {
    \chapter*{Appendix}
    \addcontentsline{toc}{chapter}{Appendix}
    \markboth{Appendix}{Appendix}
  }
}

\ifchinesebook{
  \newcommand{\translation@originaltitle}{外文资料原文}
  \newcommand{\translation@chinesetitle}{外文资料译文}
} {
  \newcommand{\translation@originaltitle}{Original Text for Translation}
  \newcommand{\translation@chinesetitle}{Translated Text in Chinese}
}

\newcommand{\thesistranslationoriginal}{
  \chapter*{\translation@originaltitle}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \renewcommand\thesection{\arabic{section}}
    \setcounter{section}{0}
    \addcontentsline{toc}{chapter}{\translation@originaltitle}
    \markboth{\translation@originaltitle}{\translation@originaltitle}
    \thispagestyle{fancy}
    \hypersetup{bookmarksdepth=0} 
    \renewcommand{\theequation}{\arabic{equation}}
    \renewcommand{\thetable}{\arabic{table}}
    \renewcommand{\thefigure}{\arabic{figure}}
    \renewcommand{\figurename}{Figure}
    \renewcommand{\tablename}{Table}
}

\newcommand{\thesistranslationchinese}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \chapter*{\translation@chinesetitle}
  \renewcommand\thesection{\arabic{section}}
    \setcounter{section}{0}
    \addcontentsline{toc}{chapter}{\translation@chinesetitle}
    \markboth{\translation@chinesetitle}{\translation@chinesetitle}
    \thispagestyle{fancy}
    \hypersetup{bookmarksdepth=0} 
    \renewcommand{\theequation}{\arabic{equation}}
    \renewcommand{\thetable}{\arabic{table}}
    \renewcommand{\thefigure}{\arabic{figure}}
    \renewcommand{\figurename}{图}
    \renewcommand{\tablename}{表}
}

\ifchinesebook{
  \newcommand{\thesisaccomplishtitle}{攻读\chinesedegreename{}学位期间取得的成果}
  \newcommand{\thesisbibname}{参考文献}
}{
  \newcommand{\thesisaccomplishtitle}{Research Results Obtained During the Study for \englishdegreename{} Degree}
  \newcommand{\thesisbibname}{References}
}

\renewcommand{\bibname}{\thesisbibname}
\renewcommand{\@biblabel}[1]{[#1]\hfill}

\patchcmd\thebibliography
    {\labelsep}
    {\labelsep\itemsep=0pt\parsep=0pt\relax}
    {}
    {\typeout{Couldn't patch the command}}

\newenvironment{thesisbibliography}{
  \begin{thebibliography}{lo}
    \interlinepenalty=10000
    \begin{spacing}{1.667}
    \thispagestyle{fancy}
    \small
}{
    \end{spacing}
  \end{thebibliography}
}

\pretocmd{\bibliography}{
  \thispagestyle{fancy}
  \interlinepenalty=10000
  \begin{spacing}{1.667}
}{}{}

\apptocmd{\bibliography}{
  \end{spacing}
}{}{}

\newcommand{\thesisloadbibliography}[2][]{
  \ifthenelse{
      \equal{#1}{nocite}
    }{
      \nocite{*}
    }{}
  \bibliographystyle{thesis-uestc}
  \bibliography{#2}
}

\newcites{accomplish}{\thesisaccomplishtitle}

\newenvironment{thesisaccomplish}{
  \renewcommand{\bibname}{\thesisaccomplishtitle}
  \begin{thebibliography}{lo}
  \interlinepenalty=10000
  \begin{spacing}{1.667}
  \thispagestyle{fancy}
  \small
}{
  \end{spacing}\end{thebibliography}
  \renewcommand{\bibname}{\thesisbibname}
}

\newcommand{\thesisloadaccomplish}[1]{
  \nociteaccomplish{*}
  \renewcommand{\bibname}{\thesisaccomplishtitle}
  \thispagestyle{fancy}
  \begin{spacing}{1.667}
  \bibliographystyleaccomplish{thesis-uestc}
  \bibliographyaccomplish{#1}
  \end{spacing}
  \renewcommand{\bibname}{\thesisbibname}
}

\newtheoremstyle{dotless}{0pt}{0pt}{\normalfont}{24pt}{\strong}{}{ }{}
\theoremstyle{dotless}
%\renewcommand\@upn{\selectfont\heiti@letter}

\ifchinesebook{
  \newtheorem{theorem}{定理}[chapter]
  \newtheorem{axiom}[theorem]{公理}
  \newtheorem{corollary}[theorem]{推论}
  \newtheorem{lemma}[theorem]{引理}
  \newtheorem{definition}[theorem]{定义}
  \newtheorem{example}[theorem]{例子}
  \newtheorem{proposition}[theorem]{命题}
}{
  \newtheorem{theorem}{Theorem}[chapter]
  \newtheorem{axiom}[theorem]{Axiom}
  \newtheorem{corollary}[theorem]{Corollary}
  \newtheorem{lemma}[theorem]{Lemma}
  \newtheorem{definition}[theorem]{Definition}
  \newtheorem{example}[theorem]{Example}
  \newtheorem{proposition}[theorem]{Proposition}
}


\renewcommand{\thetheorem}{\arabic{chapter}.\arabic{theorem}}
\renewcommand{\theaxiom}{\arabic{chapter}.\arabic{axiom}}
\renewcommand{\thecorollary}{\arabic{chapter}.\arabic{corollary}}
\renewcommand{\thelemma}{\arabic{chapter}.\arabic{lemma}}
\renewcommand{\thedefinition}{\arabic{chapter}.\arabic{definition}}
\renewcommand{\theexample}{\arabic{chapter}.\arabic{example}}
\renewcommand{\qedsymbol}{$\blacksquare$}
\ifchinesebook{
  \renewcommand{\proofname}{证明}
}{}

\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}
  \normalfont
  \topsep0pt \partopsep0pt
  \trivlist
  \item[\hskip5\labelsep
    \strong
  #1\@addpunct{:}]\ignorespaces
}{
  \popQED\endtrivlist\@endpefalse
}

\newcommand{\citing}[1]{\textsuperscript{\cite{#1}}}
\setlist{noitemsep}
\setlist{nolistsep}

\AtBeginDocument{
  \setlength{\abovedisplayskip}{8pt}
  \setlength{\belowdisplayskip}{8pt}
  \setlength{\belowdisplayshortskip}{8pt}
  \setlength{\abovedisplayshortskip}{8pt}
}

\endinput
