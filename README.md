# Meus Projetos de Calculadora - EBAC

Este repositório consolida dois projetos de calculadora desenvolvidos em diferentes linguagens (Bash e Python), aplicando conceitos essenciais de lógica de programação, interação com o usuário e controle de versão com Git e GitHub.

---

## Projeto 1: Calculadora de Terminal em Bash (`calculadora.sh`)

Este é um script de calculadora interativa para ser executado no terminal. Ele foi projetado para oferecer uma experiência de usuário controlada, com validação de entrada de dados.

### Funcionalidades:
* **Operações:** Suporta Soma, Subtração, Multiplicação e Divisão.
* **Validação de Entrada:** Os números inseridos pelo usuário devem estar entre 10 e 50.
* **Tratamento de Erros:** Inclui uma verificação específica para evitar divisão por zero.
* **Interatividade:** Guia o usuário através de menus e solicitações claras.

### Como Executar a Calculadora em Bash:

Para rodar este script no seu terminal (Linux, macOS ou Git Bash no Windows), siga os passos:

1.  **Navegue até o diretório do projeto:**
    Abra seu terminal e use `cd` para ir até a pasta onde `calculadora.sh` está salvo.
    ```bash
    cd /caminho/do/seu/repositorio/no/seu/computador
    ```
    *(Substitua pelo caminho real no seu sistema. Ex: `cd ~/Documentos/meus-projetos-calculadora-ebac`)*

2.  **Conceda permissão de execução ao script:**
    Este comando é fundamental para que o sistema possa executar o script como um programa.
    ```bash
    chmod +x calculadora.sh
    ```

3.  **Defina as permissões do arquivo (boa prática):**
    Este comando ajusta as permissões para que o proprietário possa ler e escrever (6), e outros usuários possam apenas ler (4), (4).
    ```bash
    chmod 644 calculadora.sh
    ```

4.  **Execute o script:**
    Finalmente, inicie a calculadora.
    ```bash
    ./calculadora.sh
    ```
    A calculadora irá interagir com você, pedindo a operação e os números.

### Explicação do Código (`calculadora.sh`):

O script `calculadora.sh` utiliza recursos do Bash para criar uma interface de linha de comando. Ele começa com mensagens de boas-vindas e um menu de opções para o usuário. Implementa loops (`while`) para garantir que a escolha da operação e a entrada dos números sejam válidas (entre 10 e 50), utilizando uma função `validar_numero` para esse fim.

A execução das operações é gerenciada por uma estrutura `case`, que direciona o fluxo para a operação matemática correta. Para a divisão, há uma checagem explícita (`if [ "$num2" -eq 0 ]`) para prevenir erros de divisão por zero e o uso do comando `bc` para garantir cálculos de ponto flutuante precisos. O script termina com uma mensagem de agradecimento e a identificação do aluno.

---

## Projeto 2: Calculadora de Lógica de Programação com Python (`Projeto_de_Lógica_de_Programação_com_Python.ipynb`)

Este projeto consiste em um Jupyter Notebook que demonstra as operações básicas de uma calculadora utilizando a linguagem Python. O foco principal foi aplicar conceitos de lógica de programação e tratamento de operações matemáticas.

### Funcionalidades:
* **Operações:** Realiza Soma, Subtração, Multiplicação e Divisão.
* **Números Pré-definidos:** Para fins de demonstração, os números para as operações (25.0 e 5.0) são definidos diretamente no código, facilitando o teste rápido.
* **Tratamento de Divisão por Zero:** Inclui uma lógica para identificar e informar quando uma divisão por zero ocorreria.

### Como Visualizar e Executar a Calculadora em Python:

Este é um arquivo Jupyter Notebook (`.ipynb`), que é melhor visualizado e executado em ambientes como o Google Colab ou Jupyter Lab/Notebook.

1.  **Via Google Colab (Recomendado para visualização rápida):**
    Clique no badge abaixo para abrir e explorar o notebook diretamente no Google Colab:
https://colab.research.google.com/drive/1dSBTfclJ1OSvk7tWrgE1ONUkPmZfC7dq?usp=share_link
    
3.  **Localmente (com Jupyter instalado):**
    * Clone este repositório para o seu computador.
    * Abra seu terminal e navegue até o diretório do projeto.
    * Execute `jupyter notebook` ou `jupyter lab` no terminal.
    * No navegador, localize e abra o arquivo `Projeto_de_Lógica_de_Programação_com_Python.ipynb`.
    * Você pode então executar as células do notebook para ver os resultados.

### Explicação do Código Python (`Projeto_de_Lógica_de_Programação_com_Python.ipynb`):

O notebook começa com comentários que explicam o propósito do projeto e a intenção de aplicar o conhecimento adquirido. Define dois números (`numero1` e `numero2`) diretamente no código para facilitar a demonstração. Em seguida, realiza as quatro operações matemáticas básicas (soma, subtração, multiplicação e divisão) com esses valores.

Um ponto importante é o tratamento para a divisão: antes de realizar a operação, há uma verificação (`if numero2 != 0:`) para garantir que o divisor não seja zero, exibindo uma mensagem informativa caso seja. Os resultados são então impressos de forma clara no console, utilizando f-strings para uma apresentação organizada. O notebook conclui com mensagens de finalização, indicando a natureza demonstrativa do projeto.

---

**Desenvolvido por:Matheus Coutinho de oliveira 
