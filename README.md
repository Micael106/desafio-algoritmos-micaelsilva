![Context LMS](logo.png)

# Desafio de Algoritmos

O desafio consiste em resolver 2 problemas diferentes de algoritmos, que são definidos abaixo.

Você deve fazer commits do código fonte diretamente neste repositório durante sua evolução para que possamos acompanhar, ou seja, evite commitar toda a solução de uma única vez.

Solucione cada problema em arquivos separados e forneça todas as instruções necessárias para sua execução em `/COMMENTS.md`.

Queremos ver tudo o que você conhece sobre desenvolvimento de software. Alguns dos aspectos que serão observados nesse desafio são:

* clareza/objetividade/simplicidade
* estilo do código
* performance
* documentação
* testes

## Problema 1: Conjectura de Collatz

A seguinte sequência iterativa é definida pelo conjunto de inteiros positivos onde:

n -> n/2 (se n é **par**)
n -> 3n + 1 (se n é **impar**)

Usando as regras acima e começando pelo número 13, nós geraríamos a seguinte sequência:

13 40 20 10 5 16 8 4 2 1

O que pode ser observado dessa sequência (começando no 13 e terminando no 1) é que ela contém 10 items. Embora ainda não esteja matematicamente provado, é esperando que, dado um numero inteiro positivo qualquer, a sequencia sempre chegará em 1.

**Pergunta: Qual inteiro positivo abaixo de 1 milhão, produz a sequencia com mais items?**

**Desafio: Seu código executar em menos de 5 segundos, para o caso de 1 milhão.**

_Fonte: http://en.wikipedia.org/wiki/Collatz_conjecture_

## Problema 2: Sequência de Caracteres

Dada uma palavra, escreva um algoritmo que retorne a(s) sequência(s) de caracteres iguais que mais se repetem um após o outro. Caso queira, disponibilizamos uma pequena massa de dados (`/words.txt`) para te ajudar com os testes.

Exemplos:

* Para "Gol", o retorno deve ser `null` (vazio).
* Para "Goool", o retorno deve ser ["ooo"]
* Para "Gooooolaaaaaçooo", o retorno deve ser ["ooooo", "aaaaa"]
