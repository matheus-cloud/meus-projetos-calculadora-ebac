#!/bin/bash

# Mensagem de boas-vindas para o professor
echo "Olá, Professor Rodrigo!"
echo "Esta é a minha calculadora de terminal para o projeto da EBAC."
echo "Feita com muito esforço e um pouco de café."
echo ""

# Loop para garantir que uma operação válida seja escolhida
operacao_valida=0
while [ $operacao_valida -eq 0 ]; do
    echo "Escolha a operação:"
    echo "1. Soma (+)"
    echo "2. Subtração (-)"
    echo "3. Multiplicação (*)"
    echo "4. Divisão (/)"
    echo ""

    read -p "Digite o número da operação desejada (1-4): " operacao

    if [[ "$operacao" =~ ^[1-4]$ ]]; then
        operacao_valida=1
    else
        echo "Ops! Operação inválida. Por favor, escolha um número de 1 a 4."
        echo ""
    fi
done

echo ""

# Função para validar se o número está entre 10 e 50
validar_numero() {
    local num=$1
    # Verifica se é um número e se está entre 10 e 50
    if [[ "$num" =~ ^[0-9]+$ ]] && (( num >= 10 && num <= 50 )); then
        return 0 # Número válido
    else
        return 1 # Número inválido
    fi
}

# Loop para obter e validar o primeiro número (num1)
num1_valido=0
while [ $num1_valido -eq 0 ]; do
    read -p "Digite o PRIMEIRO número (entre 10 e 50): " num1
    if validar_numero "$num1"; then
        num1_valido=1
    else
        echo "Número inválido! Por favor, digite um número inteiro entre 10 e 50."
    fi
done

# Loop para obter e validar o segundo número (num2)
num2_valido=0
while [ $num2_valido -eq 0 ]; do
    read -p "Digite o SEGUNDO número (entre 10 e 50): " num2
    if validar_numero "$num2"; then
        num2_valido=1
    else
        echo "Número inválido! Por favor, digite um número inteiro entre 10 e 50."
    fi
done

echo ""
echo "Realizando a operação com $num1 e $num2:"

# Estrutura de controle para executar a operação escolhida
case $operacao in
    1)
        resultado=$((num1 + num2))
        echo "A soma de $num1 e $num2 é: $resultado"
        ;;
    2)
        resultado=$((num1 - num2))
        echo "A subtração de $num1 e $num2 é: $resultado"
        ;;
    3)
        resultado=$((num1 * num2))
        echo "A multiplicação de $num1 e $num2 é: $resultado"
        ;;
    4)
        # Verifica se o segundo número é zero para evitar divisão por zero
        if [ "$num2" -eq 0 ]; then
            echo "Erro: Divisão por zero não é permitida, Professor!"
        else
            # Usa 'bc' para garantir precisão em divisões (saída com ponto flutuante)
            resultado=$(echo "scale=2; $num1 / $num2" | bc)
            echo "A divisão de $num1 e $num2 é: $resultado"
        fi
        ;;
esac

echo ""
# Mensagem de encerramento e identificação do aluno
echo "Obrigado por corrigir, Professor!"
echo "Matheus Coutinho de Oliveira - Aluno EBAC"

