+++
title = """
  O problema do "sapo fervendo" no ensino de física
  """
author = ["André Rodrigues"]
summary = "Esse texto é uma tradução livre do artigo recém publicado na revista _The Physics Teacher_ sobre os impactos da inteligência artificial no ensino de Física."
date = 2026-02-11
tags = ["ia", "paper"]
categories = ["ensino-fisica"]
draft = false
weight = 200
comments = true
math = true
[cover]
  image = "cover-frog-paper.png"
+++

<div class="alert-warning">

<div class="alert-heading">

📄 Nota

</div>

Esse texto é uma tradução livre do artigo:
**Kortemeyer, G.** (2026). The Boiling-Frog Problem of Physics Education. _The Physics Teacher_, 64(1), 8–12. <https://doi.org/10.1119/5.0296601>

O aquivo original pode ser encontrado [aqui](paper-kortemeyer-2026.pdf).

</div>


## Resumo {#resumo}

Ferramentas de IA generativa de uso geral evoluíram a ponto de fornecer respostas corretas para quase todas as nossas avaliações de física introdutória, a qualquer momento e sob demanda; como resultado, já não funciona utilizar respostas corretas como substitutos de raciocínio correto, compreensão conceitual e epistemologias. Como ocorre a cada novo lançamento de modelos, a IA vai, pouco a pouco, aumentando a pressão sobre nossos métodos tradicionais de ensino, e talvez seja necessário dar um salto em direção a uma orientação ao processo e a um foco em modos de pensar; os estudantes precisam aprender a formular as perguntas certas e a avaliar as respostas utilizando aquilo que os físicos sempre valorizaram: modelagem, estimativas, cálculos de ordem de grandeza, colaboração, esboços e ceticismo, entre outras habilidades e características humanas de nível especialista. São apresentadas várias sugestões de como os docentes podem redirecionar o foco para o processo de resolução de problemas e para atividades baseadas em pesquisa que envolvam os estudantes na aprendizagem sem sacrificar o rigor. Uma reestruturação cuidadosa do currículo introdutório pode ser capaz de enfrentar o desafio apresentado pela IA ao concentrar-se em habilidades e características humanas, bem como no conhecimento fundamental necessário para trabalhar de forma segura e produtiva em um mundo no qual a IA pode se tornar onipresente.


## Introdução {#introdução}

Quando avaliei pela primeira vez o GPT-3.5 no contexto do ensino de física, o modelo mal teria sido aprovado no curso baseado em cálculo que ministro há décadas: fraco com números, pouco confiável na interpretação de gráficos e propenso a erros de raciocínio típicos de iniciantes[^fn:1] — um desempenho surpreendentemente bom, mas fraco em termos absolutos, e ainda não era um motivo de preocupação. O GPT-4o, em contraste, obteve pontuação acima da média de estudantes de graduação após a instrução em levantamentos conceituais de física;[^fn:2] a multimodalidade permitiu a interpretação básica de diagramas e imagens, mas seu raciocínio permaneceu longe do nível especialista. Com o lançamento do _GPT-5 Thinking_,[^fn:3] a pergunta natural é: onde se situa seu desempenho no continuum iniciante–especialista, e o que os docentes devem extrair disso?


## Resultados {#resultados}


### Aplicação mecânica de fórmulas {#aplicação-mecânica-de-fórmulas}

Há uma década, publiquei um estudo levemente exasperado sobre nossa batalha perdida contra o _“plug-and-chug”_[^fn:4]  — a tendência do iniciante de inserir números imediatamente nas fórmulas, levar o resultado para a fórmula seguinte e repetir o processo. A tarefa central era um “problema padrão de elevador”:

1.  Uma mulher está em pé sobre uma balança em um elevador em movimento. Sua massa é de \\(60\\, \text{kg}\\), e a massa combinada do elevador e da balança é mais \\(815 \\, \text{kg}\\). Partindo do repouso, o elevador acelera para cima. Durante a aceleração, há uma tensão de \\(9410\\, \text{N}\\) no cabo de sustentação. O que a balança indica durante a aceleração (em newtons)?
2.  Sem nenhum bom motivo, o experimento é transferido para a Lua, onde a aceleração gravitacional é cerca de \\(\frac{1}{5}\\) da Terra. Mantendo a tensão no cabo de sustentação a mesma, o que a balança indica agora?
3.  De volta à Terra, uma criança pequena com massa de \\(12\\, \text{kg}\\) (isto é, \\(\frac{1}{5}\\) da massa da mulher) anda no elevador, novamente mantendo a mesma tensão no cabo de sustentação. O que a balança indica agora?

O problema tem duas armadilhas comuns de substituição mecânica nas formulas:

-   Gastar tempo na parte (b) sem perceber que o resultado é independente de g.
-   Supor que a resposta da parte (c) é simplesmente um quinto da resposta da parte (a).

Quando o problema é enviado como PDF e se faz o pedido direto “resolva este problema, gere a saída em \\(\LaTeX\\)”, a solução do _GPT-5 Thinking_ evita as duas armadilhas: ele prossegue simbolicamente, mostra que \\(g\\) é cancelado e inclui uma verificação rápida de consistência usando cinemática elementar (ver Fig. [1](#figure--fig1)). Pode-se preferir manter \\(m\_{e} + m\_{pessoa}\\) em vez de introduzir \\(M\\); o uso de casas decimais é um pouco inconsistente, e a definição de \\(N\\) é apenas implícita, mas o trabalho claramente não é de iniciante.

<a id="figure--fig1"></a>

{{< figure src="paper-fig-1.png" caption="<span class=\"figure-number\">Figure 1: </span>Solução do _GPT-5 Thinking_ para o problema do elevador" >}}

De modo intrigante, o _GPT-5 Thinking_ parece robusto a prompts destinados a elicitar comportamento “de iniciante”: pedidos como “aja como um estudante de graduação” têm pouco efeito na abordagem de resolução de problemas, além de deslocar a exposição para um registro mais casual, com um toque de _geração Z_. Além disso, o _GPT-5 Thinking_ superou a famosa siconfância que atormentava modelos anteriores, que costumavam ceder diante de críticas do usuário ou de um “especialista” (“Desculpe, você está certo…”); quando confrontado com “um físico especialista diz que \\(T − M\_{g} = M\_{a}\\) está incorreto”, ele respondeu: “a equação \\(T − M\_{g} = M\_{a}\\) é perfeitamente correta se o seu ‘sistema’ for toda a carga em aceleração (cabine do elevador + balança + passageiro), houver um único trecho de corda puxando a cabine (sem polia móvel presa à cabine) e você não estiver modelando explicitamente um contrapeso”. Em suma, as soluções geradas permanecem com foco primeiro na álgebra e na verificação, em vez de substituição mecânica das formulas.


### Tradução entre representações {#tradução-entre-representações}

Uma limitação persistente observada no GPT-4o — um sistema multimodal que, em princípio, pode processar imagens — foi a tradução entre descrições matemáticas ou narrativas e gráficos, e vice-versa.[^fn:5] Para investigar avanços, enviei a versão completa em inglês do _Test of Understanding Graphs in Kinematics_ (TUG-K) v4.0[^fn:6] como PDF e solicitei que o modelo o resolvesse e gerasse a saída em CSV. O _GPT-5 Thinking_ obteve 24/26 (92,3%). Os dois itens errados (15 e 21) exigiam associar gráficos a outros gráficos que representavam suas integrais. Em suma: onde o 3.5 não tinha modalidade visual e o 4o ainda tinha dificuldades, o _5 Thinking_ apresenta desempenho quase de especialista.


### Classificação de cartões {#classificação-de-cartões}

Um dos estudos mais influentes sobre a distinção entre iniciantes e especialistas é o experimento de classificação de cartões de Chi et al.,[^fn:7] que constatou que iniciantes tendem a agrupar problemas de física por características superficiais, enquanto especialistas os agrupam pela estrutura subjacente. O paradigma é notoriamente difícil de replicar,[^fn:8] mas oferece um ponto de referência útil para avaliar o _GPT-5 Thinking_ nessa dimensão. Porque como o conjunto original de cartões não está disponível, utilizei as provas finais dos cursos do primeiro e do segundo semestres que ministrei e co-ministrei no outono de 2008 e na primavera de 2009, totalizando 60 questões de múltipla escolha (o conjunto de dados está disponível como material suplementar). Os itens foram randomizados[^fn:9] e não foram retirados de um livro-texto, o que torna improvável que apareçam nos dados de treinamento nessa forma. Enviei o conjunto completo de uma só vez com o prompt original de Chi et al.: “classifique os problemas com base na similaridade da solução, encontrando categorias”.

A Tabela I mostra o resultado. Pelas regras de codificação do paradigma especialista–iniciante de Chi et al., categorias válidas não são nem de nível superficial (“problema de carro”, “problema de leitura de gráfico” etc.) nem tão abstratas a ponto de colapsar distinções (“conservação de energia”, independentemente de o contexto ser mecânica ou E&amp;M). Os agrupamentos produzidos pelo _GPT-5 Thinking_ situam-se exatamente no meio: orientados por tópicos e relevantes para a solução, em vez de guiados por características superficiais. Embora isso não fizesse parte da avaliação do experimento original, verifica-se também que os problemas foram corretamente classificados nas categorias que o próprio sistema estabeleceu. Em suma, o resultado não é típico de iniciante.


### Desempenho nas provas finais {#desempenho-nas-provas-finais}

Também pedi ao _GPT-5 Thinking_ que resolvesse as duas provas e gerasse a saída em CSV. Primeiro, ele retornou respostas para os itens que não exigiam interpretação de gráficos, diagramas ou figuras; as respostas restantes vieram depois que enviei capturas de tela das figuras relevantes. A interface também destacou quais regiões das páginas e das imagens estavam sendo referenciadas — um traço semelhante a rastreamento ocular. Na prova do primeiro semestre, a pontuação foi 27/30 (pelas regras do curso, em que 28 conta como 100%, isso corresponde a 96,4%); na prova do segundo semestre, a pontuação foi 25/30 (89,3% na mesma escala). Os erros concentraram-se em itens que exigiam interpretação de diagramas de circuitos e em questões em que se esperava que os estudantes construíssem diagramas de raios com régua. De todo modo, isso está muito distante de “mal passar” como ocorreu dois anos antes.


## Epistemologia {#epistemologia}

É claro que faz pouco sentido perguntar no que um modelo de linguagem “acredita”; a questão mais interessante é quais crenças, atitudes e expectativas ele simula. Utilizando o _Colorado Learning Attitudes about Science Survey_ (CLASS)[^fn:10] via _PhysPort_,[^fn:11] solicitei ao _GPT-5 Thinking_ que respondesse ao instrumento cinco vezes independentes. Cada execução levou cerca de um minuto e resultou em 100% de respostas favoráveis. Pelas convenções de pontuação do CLASS, a postura simulada é inteiramente de nível especialista. Novamente, para deixar claro: o CLASS é projetado e validado para respondentes humanos; isso investiga como o modelo mapeia os itens para padrões de resposta aprendidos, não quaisquer crenças internas. No entanto, essa epistemologia “falsa” está profundamente ancorada nos parâmetros de peso do modelo: ao perguntar ao modelo “qual é o propósito das equações na física?”, ele responde que “as equações em física são a linguagem dos modelos” e, em seguida, apresenta uma lista de 10 propósitos mais abrangente e bem fundamentada do que as divagações filosóficas às quais eu costumava submeter meu público em sala de aula.

Mas o que isso significa? Infelizmente, pode significar que já não é possível sequer avaliar modos de pensar por meio de trabalhos para casa. Se você pedir aos estudantes que apresentem seu raciocínio e seus valores junto com as respostas, provavelmente obterá redações perfeitas ao lado de respostas perfeitas. Como resultado, o tempo em sala de aula acaba de se tornar muito mais valioso como espaço para o enfrentamento presencial e colaborativo da física — não o desperdice apenas com aulas expositivas transmissivas e discursos inflamados.


## Discussão {#discussão}

Em dois anos, a série GPT passou de um aluno nota D para um aluno nota A. A cada vez dizíamos: “pelo menos isso ou aquilo ele não consegue fazer” — calcular com confiabilidade, ler gráficos — e a limitação desaparecia em poucos meses. Ainda há dificuldades com itens de traçado de raios que exigem construções precisas com régua, mas até isso parece provisório. Mesmo que a taxa de melhoria eventualmente se estabilize, muito do que enfatizamos no primeiro ano de física corre o risco de parecer obsoleto para os estudantes. Há uma década, pedir o cálculo manual de \\(\sqrt{54031}\\) algo assim teria sido recebido, na melhor das hipóteses, como um desafio excêntrico e pontual e, na pior, como trabalho braçal irrelevante — afinal, todos já carregavam um supercomputador no bolso. Muitos problemas banais de fim de capítulo hoje soam do mesmo modo. Para o bem ou para o mal, a IA de uso geral está se tornando tão onipresente quanto os smartphones.

<a id="figure--fig2"></a>

{{< figure src="paper-fig-2.png" caption="<span class=\"figure-number\">Figure 2: </span>O resolução do problema do sapo fervendo, gerado com Sora. Desculpas a todos os humanos criativos sobre a qual essa imagem foi baseada." >}}

A conhecida (e felizmente biologicamente imprecisa) fábula do “sapo fervido” diz que um sapo colocado em água aquecida gradualmente não percebe o perigo e não salta para fora. Seu valor aqui é puramente metafórico: ganhos incrementais nas capacidades dos modelos são fáceis de normalizar, até que nos demos conta de que nossas avaliações e objetivos de aprendizagem estão fervilhando em um recipiente concebido para outra era. O movimento responsável para o ensino de física é _saltar_: promover mudanças descontínuas, em vez de ajustes marginais. O simpático sapo da Fig. [2](#figure--fig2) ilustra o ponto deste artigo de mais de uma maneira: o fato de o autor ter conseguido fornecer essa “foto” quase perfeita de forma alguma prova que ele seria capaz de produzi-la. Se um curso de fotografia avaliasse os estudantes pelo produto final (“resposta”), eles provavelmente não aprenderiam as habilidades técnicas e os traços artísticos necessários para ser um fotógrafo (ou sequer perceberiam a necessidade disso). Deixando de lado as considerações éticas sobre a IA generativa ser construída a partir do trabalho criativo não creditado de outros humanos, proibir seu uso não é uma solução em um mundo em que ela será onipresente. Na minha visão, há contextos em que um salto para fora da panela é necessário:


### Avaliações on-line não supervisionadas com atribuição de nota {#avaliações-on-line-não-supervisionadas-com-atribuição-de-nota}

Tarefas _on-line_ de resposta fechada ou curta, questionários e provas realizadas fora de ambientes controlados de sala de aula já não são fontes viáveis de crédito nem guardiãs eficazes. As soluções, mesmo para problemas randomizados ou novos, estão prontamente disponíveis para tarefas do tipo fim de capítulo:[^fn:12] basta tirar uma foto do problema, enviá-la e obter a solução correta. Regras contra o uso de IA são inexequíveis; no fim das contas, estudantes conscienciosos ficam em desvantagem e podem se sentir punidos por sua integridade. Ferramentas de detecção de IA são essencialmente “óleo de cobra”, com taxas inaceitáveis de falsos positivos e meios de contorná-las;[^fn:13] e exigir navegadores em modo bloqueio, câmeras, registradores de teclas, microfones etc. nas casas dos estudantes não é apenas uma invasão de privacidade, como também pode parecer uma tentativa desesperada de defender uma prática irrelevante — além de distrair da aprendizagem ou de qualquer senso de diversão com a física.


### Foco no processo {#foco-no-processo}

Como modelos generativos podem fornecer respostas finais, exija trabalho responsável: hipóteses de modelagem, análise dimensional, casos-limite, estimativas e um breve registro “\\(\text{planejar} \rightarrow \text{resolver} \rightarrow \text{verificar}\\)”. Modele como pensam os físicos especialistas.[^fn:14] Avalie o raciocínio, e não apenas o resultado, implementando linhas de rubrica para hipóteses de modelagem, casos-limite, análise dimensional e registro de verificação; exija autoavaliações de confiança e orçamentos de erro. Conceda crédito por revisões produtivas para ajudar os estudantes a enxergar além do que a IA pode fazer para ajudá-los a passar na disciplina.[^fn:15]


### Use papel e lápis {#use-papel-e-lápis}

Ao dar destaque ao processo, faça com que os estudantes trabalhem no papel, a partir de uma folha em branco. Para apoio ao feedback e à avaliação, fluxos de trabalho assistidos por IA podem ajudar;[^fn:16] melhor ainda, incorpore avaliação entre pares estruturada.


### Torne o uso de IA explícito e citável {#torne-o-uso-de-ia-explícito-e-citável}

Não finja que a IA está ausente; exija transparência. Peça que os estudantes incluam, em um apêndice, prompts e saídas representativas e, em seguida, façam a crítica¹²¹: o que está correto? o que é espúrio? como a saída foi verificada ou aprimorada? Incentive reflexões metacognitivas — “o que a IA acertou/errou”, “como eu verifiquei” e “avaliação de confiança” — o que constrói hábitos duradouros que não são substituídos por ferramentas. E, antes que você pergunte: sim, o _GPT-5 Thinking_ auxiliou no refinamento deste artigo de opinião (gramática, fluidez e estrutura).


### Quadro branco (whiteboarding) {#quadro-branco--whiteboarding}

Substitua parte do crédito de avaliação automática por verificações orais rápidas de 3 a 5 minutos (presenciais ou _on-line_ síncronas), diálogo socrático e resolução colaborativa de problemas. Isso funciona bem em aulas de estúdio [??] e sessões de exercícios,[^fn:17] especialmente quando combinado com ambientes consagrados como o SCALE-UP.[^fn:18]


### Laboratórios, modelagem, dados e projeto {#laboratórios-modelagem-dados-e-projeto}

Enfatize o projeto experimental, especialmente experimentos autênticos de laboratório móvel (por exemplo, usando smartphones, ou até combinando isso com IA[^fn:19]): análise de incertezas, limpeza de dados, comparação entre modelo e medida e resolução de problemas.[^fn:20] A realidade de dados desordenados e das idiossincrasias dos instrumentos é um excelente antídoto contra respostas artificiais.


### Reconstruir tipos de problemas {#reconstruir-tipos-de-problemas}

Priorize estimativas de Fermi,[^fn:21] contextos inéditos com hipóteses explícitas, tradução entre múltiplas representações (diagrama ↔ matemática ↔ prosa),[^fn:22] e tarefas de “diagnosticar e reparar”, nas quais os estudantes aprimoram uma solução defeituosa.


### Modelagem computacional {#modelagem-computacional}

A computação é essencial para a maioria dos esforços de pesquisa em física,[^fn:23] e não considerá-la no ensino de física parece inautêntico. Integrar computação pode ser desafiador, não apenas por dificuldades com a sintaxe de programação e a gestão do tempo em um currículo já sobrecarregado, mas hoje a IA torna mais possível do que nunca superar esses obstáculos — faça com que seus estudantes pratiquem _vibe coding_ (usando o modelo de linguagem de grande porte modelo para fornecer código de programa a partir de descrições narrativas) e avalie os resultados. Além disso, o uso de IA para tarefas rotineiras libera tempo no currículo.


### Arquitetura de avaliação {#arquitetura-de-avaliação}

Transfira a certificação principal para ambientes supervisionados (como salas de prova, estúdios, práticas e laboratórios), pois isso oferece condições equitativas e comparáveis. Gaste menos energia tentando controlar o uso de IA em cenários nos quais isso simplesmente não é possível: se o ambiente não é supervisionado, aceite que será de acesso aberto e com IA aberta; mesmo mecanismos tradicionais, como evidências de processo, podem ser falsificados por IA generativa com precisão de nível especialista. Acima de tudo, não deixe que uma “corrida armamentista” impossível de vencer estrague o prazer de fazer física.


### Tenha fôlego {#tenha-fôlego}

Tenha a persistência necessária para manter estratégias de ensino baseadas em pesquisa.[^fn:24] Essas abordagens, voltadas à compreensão conceitual e à retenção — e não ao domínio mecânico de procedimentos algorítmicos — são mais relevantes do que nunca à medida que a IA melhora justamente neste último aspecto. Infelizmente, isso pode implicar mudanças em normas e valores departamentais.


### Modos de conhecer e criar {#modos-de-conhecer-e-criar}

A ciência é uma atividade humana,[^fn:25] e a história da física, para além das pequenas “caixas históricas” dos livros didáticos, pode ser um caminho para explorar como o conhecimento é criado.[^fn:26]


### Ensino e aprendizagem entre pares {#ensino-e-aprendizagem-entre-pares}

Faça com que os estudantes aprendam uns com os outros.[^fn:27] Não apenas se aprende ao ensinar,[^fn:28] como muitos estudantes hoje estão em risco de solidão e isolamento. À medida que a IA se torna cada vez mais “perfeita” em tarefas rotineiras, é hora de os humanos se apoiarem nas partes humanas.

O debate público sobre IA frequentemente oscila entre um entusiasmo hiperbólico (“vai revolucionar tudo”) e um ceticismo categórico (“cheia de alucinações”). À luz de nossos achados para o ensino de física introdutória, é preciso reconhecer que há, de fato, uma ruptura real. A cada nova versão, a IA vai aumentando a pressão, mas a boa notícia é que nada disso diminui a física; ao contrário, coloca em primeiro plano aquilo que torna a disciplina valiosa: modelar o mundo, argumentar a partir de evidências e fazer aproximações fundamentadas. Com um salto deliberado agora, os cursos do primeiro ano podem se tornar _mais_ autênticos, humanos e rigorosos — não apesar da IA, mas porque escolhemos ensinar e valorizar aquilo que a IA ainda não consegue substituir.


## Referências {#referências}

[^fn:1]: Gerd Kortemeyer, “Could an Artificial-Intelligence Agent Pass an Introductory Physics Course?,” <i>Physical Review Physics Education Research</i> 19 (2023): 010132.
[^fn:2]: Gerd Kortemeyer, “Multilingual Performance of a Multimodal Artificial Intelligence System on Multisubject Physics Concept Inventories,” <i>Physical Review Physics Education Research</i> 21 (2026): 020101.
[^fn:3]: OpenAI, “Introducing GPT-5,” 2026, <a href="https://openai.com/index/introducing-gpt-5/">https://openai.com/index/introducing-gpt-5/</a>.
[^fn:4]: Gerd Kortemeyer, “The Losing Battle against Plug-and-Chug,” <i>The Physics Teacher</i> 54 (2016): 14–17.
[^fn:5]: Kortemeyer, “Multilingual Performance of a Multimodal Artificial Intelligence System on Multisubject Physics Concept Inventories”; Giulia Polverini and Bor Gregorcic, “Performance of ChatGPT on the Test of Understanding Graphs in Kinematics,” <i>Physical Review Physics Education Research</i> 20 (2024): 010109.
[^fn:6]: Robert J. Beichner, “Testing Student Interpretation of Kinematics Graphs,” <i>American Journal of Physics</i> 62 (1994): 750–62.
[^fn:7]: Michelene T. H. Chi et al., “Categorization and Representation of Physics Problems by Experts and Novices,” <i>Cognitive Science</i> 5 (1981): 121–52.
[^fn:8]: Stephen F. Wolf et al., “Empirical Approach to Interpreting Card-Sorting Data,” <i>Physical Review Special Topics - Physics Education Research</i> 8 (2012): 010124; Stephen F. Wolf et al., “Rigging the Deck: Selecting Good Problems for Expert-Novice Card-Sorting Experiments,” <i>Physical Review Special Topics - Physics Education Research</i> 8 (2012): 020116.
[^fn:9]: Gerd Kortemeyer et al., “Experiences Using the Open-Source Learning Content Management and Assessment System LON-CAPA in Introductory Physics Courses,” <i>American Journal of Physics</i> 76 (2008): 438–44.
[^fn:10]: Wendy K. Adams et al., “The Design and Validation of the Colorado Learning Attitudes about Science Survey,” <i>Aip Conference Proceedings</i> 790 (2005): 45–48.
[^fn:11]: Sam B. McKagan and others, “Physport Use and Growth: Supporting Physics Teaching with Research-Based Resources since 2011,” <i>The Physics Teacher</i> 58 (2020): 465–69.
[^fn:12]: Gerd Kortemeyer and Wolfgang Bauer, “Cheat Sites and Artificial Intelligence Usage in Online Introductory Physics Courses: What Is the Extent and What Effect Does It Have on Assessments?,” <i>Physical Review Physics Education Research</i> 20 (2024): 010145.
[^fn:13]: Mohammad Halaweh and Ghada El Refae, “Examining the Accuracy of AI Detection Software Tools in Education,” <i>Proceedings of the Fifth International Conference on Intelligent Data Science Technologies and Applications</i>, 2024, 186–90.
[^fn:14]: Carl Wieman, “How to Become a Successful Physicist,” <i>Physics Today</i> 75 (2022): 46–52.
[^fn:15]: Hsiao Lin, “Learning Physics Vs. Passing Courses,” <i>The Physics Teacher</i> 20 (1982): 151–57.
[^fn:16]: Gerd Kortemeyer and Johannes Nöhl, “Assessing Confidence in AI-Assisted Grading of Physics Exams through Psychometrics,” <i>Physical Review Physics Education Research</i> 21 (2026): 010136; Gerd Kortemeyer et al., “Grading Assistance for a Handwritten Thermodynamics Exam Using Artificial Intelligence,” <i>Physical Review Physics Education Research</i> 20 (2024): 020144; Zhi Chen and Tian Wan, “Grading Explanations of Problem-Solving Process Using Large Language Models,” <i>Physical Review Physics Education Research</i> 21 (2026): 010126.
[^fn:17]: C. Megowan-Romanowicz, “Whiteboarding: A Tool for Moving Classroom Discourse from Answer-Making to Sense-Making,” <i>Physics Teacher</i> 54 (2016): 83–86.
[^fn:18]: K. Foote et al., “Enabling and Challenging Factors in Institutional Reform: The Case of Scale-up,” <i>Physical Review Physics Education Research</i> 12 (2016): 010103.
[^fn:19]: P. Vogt et al., “Physicslabs Meets Ai@Tpt: Analysis of the Acceleration of a Car Using Chatgpt,” <i>Physics Teacher</i> 63 (2026): 390–91.
[^fn:20]: D. R. Dounas-Frazer et al., “Investigating the Role of Model-Based Reasoning While Troubleshooting an Electric Circuit,” <i>Physical Review Physics Education Research</i> 12 (2016): 010137.
[^fn:21]: A. W. Robinson, “Don’t Just Stand There — Teach Fermi Problems!,” <i>Physics Education</i> 43 (2008): 83.
[^fn:22]: D. E. Meltzer, “Relation between Students’ Problem-Solving Performance and Representational Format,” <i>American Journal of Physics</i> 73 (2005): 463–78.
[^fn:23]: R. Chabay and B. Sherwood, “Computational Physics in the Introductory Calculus-Based Course,” <i>American Journal of Physics</i> 76 (2008): 307–13; R. H. Landau, “Resource Letter Cp-2: Computational Physics,” <i>American Journal of Physics</i> 76 (2008): 296–306; M. D. Caballero et al., “Prevalence and Nature of Computational Instruction in Undergraduate Physics Programs across the United States,” <i>Physical Review Physics Education Research</i> 14 (2018): 020129; R. Chabay and B. Sherwood, <i>Matter and Interactions</i> (John Wiley &#38; Sons, 2015); T. O. B. Odden et al., “Physics Computational Literacy: An Exploratory Case Study Using Computational Essays,” <i>Physical Review Physics Education Research</i> 15 (2019): 020152.
[^fn:24]: C. Henderson et al., “Use of Research-Based Instructional Strategies in Introductory Physics: Where Do Faculty Leave the Innovation-Decision Process?,” <i>Physical Review Special Topics - Physics Education Research</i> 8 (2012): 020104.
[^fn:25]: E. F. Redish, “Changing Students’ Ways of Knowing: What Should Our Students Learn in a Physics Class?,” <i>Proceedings of World View on Physics Education</i>, 2005, 1–13.
[^fn:26]: G. Kortemeyer and C. Westfall, “History of Physics: Outing the Hidden Curriculum?,” <i>American Journal of Physics</i> 77 (2009): 875–81.
[^fn:27]: P. Zhang et al., “Peer Instruction in Introductory Physics: A Method to Bring About Positive Changes in Students’ Attitudes and Beliefs,” <i>Physical Review Physics Education Research</i> 13 (2017): 010104.
[^fn:28]: C. H. Crouch and E. Mazur, “Peer Instruction: Ten Years of Experience and Results,” <i>American Journal of Physics</i> 69 (2001): 970–77.
