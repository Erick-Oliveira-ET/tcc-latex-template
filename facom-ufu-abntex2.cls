%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a 
%% Faculdade de Computação da Universidade Federal de Uberlândia
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is SEU_NOME, SEU_EMAIL
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{facom-ufu-abntex2}[2013/11/30 v1.0 Modelo da Faculdade de Computação da Universidade Federal de Uberlândia baseado em abnTeX2]


%=========================================================================
% Herança da classe `abntex2' e inclusão de pacotes e arquivos necessários
%=========================================================================

% --- Repassa todos os parametros a classe abntex2, -- %
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

%=========================================================================
% Herança da classe `abntex2' e inclusão de pacotes e arquivos necessários
%=========================================================================

% --- Pacotes fundamentais --- %
\usepackage{cmap}				% Mapear caracteres especiais no PDF
\usepackage{lmodern}			% Usa a fonte Latin Modern			
\usepackage[T1]{fontenc}		% Selecao de codigos de fonte.
\usepackage[utf8]{inputenc}		% Codificacao do documento (conversão automática dos acentos)
\usepackage{lastpage}			% Usado pela Ficha catalográfica
\usepackage{indentfirst}		% Indenta o primeiro parágrafo de cada seção.
\usepackage{color}				% Controle das cores
\usepackage{graphicx}			% Inclusão de gráficos
% ---

\usepackage{lipsum}				% para geração de dummy text

% ---
% Pacotes de citações
% ---
\usepackage[brazilian,hyperpageref]{backref}	 % Paginas com as citações na bibl
\usepackage[alf]{abntex2cite}	% Citações padrão ABNT


%=========================================================================
% Configurações
%=========================================================================

% --- Configurações de Pacotes --- %
% Configurações do pacote backref
% Usado sem a opção hyperpageref de backref
% Texto padrão antes do número das páginas
\renewcommand{\backref}{}
% Define os textos da citação
\renewcommand*{\backrefalt}[4]{
	\ifcase #1 %
		Nenhuma citação no texto.%
	\or
		Citado na página #2.%
	\else
		Citado #1 vezes nas páginas #2.%
	\fi}%
% ---

% --- Aparência do PDF final -- %
% alterando o aspecto da cor azul
\definecolor{blue}{RGB}{41,5,195}
\makeatletter
\hypersetup{
     	%pagebackref=true,
		pdftitle={\@title}, 
		pdfauthor={\@author},
    	pdfsubject={\imprimirpreambulo},
	    pdfcreator={LaTeX with abnTeX2},
		colorlinks=true,       		% false: boxed links; true: colored links
    	linkcolor=blue,          	% color of internal links
    	citecolor=blue,        		% color of links to bibliography
    	filecolor=magenta,      	% color of file links
		urlcolor=blue,
		bookmarksdepth=4
}
\makeatother
% --- 

% ---  Espaçamentos entre linhas e parágrafos  --- %
% O tamanho do parágrafo é dado por:
\setlength{\parindent}{1.3cm}

% --- Controle do espaçamento entre um parágrafo e outro: ---%
\setlength{\parskip}{0.2cm}  % tente também \onelineskip

% --- compila o indice --- %
\makeindex


%========================================================================
% Definição da capa, folha de rosto e folha de aprovação.
%========================================================================

% --- Informações de dados para CAPA e FOLHA DE ROSTO --- %
\instituicao{%
  Universidade Federal de Uberlândia -- UFU
  \par
  Faculdade de Engenharia Mecânica
  \par
  Bacharelado em XXX Engenharia Mecatrônica XXX}

\tipotrabalho{Trabalho de Conclusão de Cursos}
% O preambulo deve conter o tipo do trabalho, o objetivo, 
% o nome da instituição e a área de concentração 
\preambulo{Trabalho de conclusão de curso apresentado à Faculdade de Engenharia Mecânica da Universidade Federal de Uberlândia, Minas Gerais, como requisito exigido parcial à obtenção do grau de Bacharel em XXX Engenharia Mecatrônica XXX.}
% ---

\local{Uberlândia, Brasil}

% --- Impressão da Capa --- %
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    \ABNTEXchapterfont\Large UNIVERSIDADE FEDERAL DE UBERL\^{A}NDIA
    
    \vspace*{1cm}
    
    {\ABNTEXchapterfont\large\imprimirautor}

    \vfill
    \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \vfill
    
    \large\imprimirlocal

    \large\imprimirdata
    
    \vspace*{1cm}
  \end{capa}
}


% --- folha de rosto --- %
\makeatletter
\renewcommand{\folhaderostocontent}{
\begin{center}
{\ABNTEXchapterfont\Large UNIVERSIDADE FEDERAL DE UBERL\^{A}NDIA}
    
    \vspace*{1cm}
    
{\ABNTEXchapterfont\large\imprimirautor}

\vspace*{\fill}\vspace*{\fill}

\begin{center}
\ABNTEXchapterfont\bfseries\Large\imprimirtitulo
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \imprimirpreambulo
  \end{minipage}%
  \vspace*{\fill}
}%

{\large\imprimirorientadorRotulo~\imprimirorientador\par}

\abntex@ifnotempty{\imprimircoorientador}{%
  {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
}%

\vspace*{\fill}

{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao\vspace*{\fill}}}

{\large\imprimirlocal}

\par

{\large\imprimirdata}
\vspace*{1cm}
\end{center}
}

\makeatother


%========================================================================
% Definições das partes pré textuais
%========================================================================

% --- Dedicatória ---%
\newcommand{\imprimirdedicatoria}[1]{
	\begin{dedicatoria}
   		\vspace*{\fill}
   		\centering
   		\noindent
   		\textit{#1}
   		\vspace*{\fill}
	\end{dedicatoria}
}


% --- Agradecimentos --- %
\newcommand{\imprimiragradecimentos}[1]{
	\begin{agradecimentos}
		#1
	\end{agradecimentos}
}


% --- Epígrafe --- %
\newcommand{\imprimirepigrafe}[1]{
\begin{epigrafe}
    \vspace*{\fill}
	\begin{flushright}
		\textit{#1}
	\end{flushright}
\end{epigrafe}
}


%========================================================================
% Listas e Sumário
%========================================================================
\addto\captionsbrazil{%
  \renewcommand{\listfigurename}%
    {Lista de figuras}%
}
% --- Lista de figuras --- %
\newcommand{\listailustracoes}{
	\pdfbookmark[0]{\listfigurename{Lista de figuras}}{lof}
	\listoffigures*
	\cleardoublepage
}

% --- Lista de tabelas --- %
\newcommand{\listatabelas}{
	\pdfbookmark[0]{\listtablename}{lot}
	\listoftables*
	\cleardoublepage
}

% --- Lista de abreviaturas --- %
\newcommand{\listasiglas}[1]{
	\thispagestyle{empty}
	\pagestyle{empty}
	\pdfbookmark[0]{Lista de siglas}{Lista de siglas} 
	\chapter*{Lista de siglas}
	\input{#1}
	\cleardoublepage
}

% --- Sumário --- %
\newcommand{\sumario}{%
	\pdfbookmark[0]{\contentsname}{toc}
	\tableofcontents*
	\cleardoublepage
}
