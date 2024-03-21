## Template para Trabalho de Fim de Curso em Latex

## Como utilizar:

## Instalação

- Instale o VScode
- Instale a Extensão Latex Workshop no VSCode
- Instale um compilador de Latex como Tex Live (demora umas 2 horas para instalar mas não é porque é muito pesado)
- Baixe esse repositório e abra com o VSCode

Ao salvar alterações feitas nos arquivos, o VSCode atualiza o pdf do trabalho automaticamente. Para atualizar manualmente, clicar no botão verde no canto superior direito da tela (é necessário estar em um arquivo .tex). É possível dividir a tela do .pdf com o .tex ao clicar no retângulo com a lupa próximo ao botão verde.

## Utilizando imagens

Para utilizar imagens, coloque o arquivo na pasta de figuras e no texto use a função \includegraphics{caminho_para_o_arquivo} com o import do arquivo desejado. Para referenciar a figura, é necessário criar uma \label{nome} e passar um nome e assim é possível chamar no texto utilizando \ref{nome}.

A numeração e organização da tabela de figuras é feita automaticamente pelo latex.

```latex
\begin{figure}[htb]
    \centering
    \includegraphics[width=10cm]{figuras/simulação-indentação.png}
    \caption{Imagem do Abaqus com a simulação da indentação desenvolvida. Pode-se ver o semicírculo representando o indentador, o retângulo da amostra (com quadrado interno de malha refinada e a parte externa com malha mais grosseira).}
    \label{fig:figura_indentacao}
\end{figure}
```

## Referências

Para as referências, incluí-las no arquivo de bibliografia. Sites que publicam artigos usualmente possuem um botão para exportar a citação em latex em texto, sendo possível copiar e colar para a citação. Muitos exportam o DOI em um campo do DOI mas para a formatação da ABNT funcionar é necessário mudar o campo para URL e converter o DOI para URL. Caso algum site não consiga exportar, é possível utilizar do DOI para gerar uma referência em BibTex no site [doi2bib.org](https://www.doi2bib.org/).

Existem dois tipos de referência, a \cite{nome} que é a referência indireta e a \citeonline{name} que é a citação direta do autor.

## Outros

Algumas dicas para os leigos em Latex como eu:

- Pesquisa tudo no google como se estivesse programando.
- Para fazer tabelas: [Gerador de Tabelas](https://www.tablesgenerator.com/)
- Métodos para inserir símbolos no meio do texto:
  - \$ símbolo ou equação \$
  - (\ símbolo ou equação \\)
- \noindent remove indentação do parágrafo.
- \textit coloca o texto em itálico
