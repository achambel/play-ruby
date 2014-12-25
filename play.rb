# coding: utf-8

# Inferencia de tipos

# No momento da execucao, o interpretador determina o tipo da variavel
idade = 32
# Como tudo em Ruby é objeto, vejamos a qual classe(tipo) a variavel com o metodo class
puts idade.class
# >> Retorna Fixnum, Classe de numeros inteiros. puts é o método para imprimir a saída

# Tipagem dinâmica forte

#	Quer dizer que podemos alterar o tipo de dado contido na variavel durante a execucao(Tipagem Dinâmica).
#	Porém não conseguimos realizar operações entre tipos diferentes (Tipagem forte)

#idade = "32" # mudamos o conteúdo da variavel idade que agora é do tipo String
#puts idade

#ano = 2014

#nascimento = ano - idade # não é possível realizar a operação, porque idade agora é do tipo String e ano do tipo Fixnum
# >> in `-': String can't be coerced into Fixnum (TypeError)

# Declaração de variavel

#	Não precisa definir o tipo por causa da inferencia
#	Não pode começar com números
# >> 1 = "Minha variavel" # Não funciona
my_var = "Minha variavel"
$outra = "Outra variavel"
_salario = 778.10
@variavel_de_instancia = 75
CONSTANTE = "Constante comeca com letra maiuscula"
# >> CONSTANTE = "Outro valor" # Imutavel, não funciona

# Convenção para variavel de nomes compostos, separar por underscore
# >> idade_minima = 18

# Comentários

# Comentário de única linha usa-se o caracter #

=begin
	isto é um comentário
	de múltiplas linhas. Envolve-se as linhas com =begin =end
=end

# String

#	Pode-se declarar com aspas simples
str1 = 'Minha string com aspas simples'
puts str1

#	- Pode-se declarar com aspas duplas, o mais recomendável para uso da interpolação (Concatenar Strings)
str2 = "Minha string com aspas duplas, assim posso usar interpolação. Inter...o quê?"

#	- O uso de #{variavel} dentro da string chama-se interpolação de variavel. Funciona somente quando a string é definida com aspas duplas ""
puts "#{str2} Ah, então, isso é interpolação."

# Usar aspas simples ou duplas dentro da String
str3 = %{Uma string legal, aqui posso usar 'isso' ou "isso" que o scape acontece automaticamente }
puts str3 # O carecter % seguido de outro caracter nao alfanumerico como delimitador

str4 = %{Declaração de variável
	em 'varias' linhas}
puts str4

# Trabalhando com Números

nascimento = 1982
ano = 2014
idade = ano - nascimento
peso = 74.5
puts "Sua Idade é #{idade}. Esta variavel é do tipo #{idade.class}. Seu peso é #{peso}. Esta variavel é do tipo #{peso.class}"

# Milhares podem ser separdor com underscore para favorecer a legibilidade do codigo
valor_megasena = 7_000_000_000_000 # Numeros muito grandes serão do tipo Bignum
puts "O valor da megasena foi de R$ #{valor_megasena}. Esta variavel é do tipo #{valor_megasena.class}"

# Estruturas de controle

# Bom e velho if.

if (idade > 18)
	puts "Maioridade alcançada"
end

# Melhorando a legibilidade. 
# Nessa expressão não precisamos dos parenteses e se o corpo do if contiver apenas uma linha, prefira esta sintaxe
puts "Maioridade alcançada" if idade > 18

# O valor NULO no ruby é representado pela keyword nil. Significa ausencia de valor
# Quando avaliado em expressão, a ausencia de conteudo retorna false e o inverso true.
# Desta forma podemos simplificar desta forma
nome = nil
puts "Seu nome é #{nome}" if nome # Só imprime se nome conter algum valor

# Negação
# 1a. forma
puts "Seu nome é #{nome}" if not nome.nil? # Só imprime se nome não é nulo
# 2a forma - Mais elegante e utilizada
puts "Seu nome é #{nome}" unless nome.nil? # Imprime nome a menos que nome seja nulo

# Iterações - Há várias formas, algumas delas

# 1a forma - Iterando numa sequencia de 1 até 10
puts "Taboada do 2"
for i in (1..10)
	puts "#{i} x 2 = #{i * 2}"
end

# 2a forma - Usando o método each
puts "Taboada do 7"
(1..10).each do |i|
	puts "#{i} x 7 = #{i * 7}"
end
# Outra variacao do each, numa unica linha
(1..10).each { |i| puts "#{i} x 7 = #{i * 7}" }

# While - Enquanto ... é verdadeiro, espera uma condição falsa seja alcançada para sair do loop
puts "While - Contando até 10 a cada 1 segundo:"
i = 1
while i <= 10
	puts "#{i} ..."
	i += 1
	sleep 1
end

# Until - Até que ... espera uma condição verdadeira para sair do loop
# Executa ao menos uma vez
x = 1
puts "Until - Contando até 10 a cada 1 segundo:"
until x == 10
	puts "#{x} ..."
	x += 1
	sleep 1
end

# 