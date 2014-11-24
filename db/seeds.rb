About.create(body: '<h1>O QUE É O RECOL?</h1>
	<br>O Recol é um sistema web que tem como principal objetivo auxiliar a
	 coleta de equipamentos eletrônicos, por isso, temos como missão prover 
	 às pessoas que possuem lixo eletrônico uma forma de parceria: Você pode 
	 colaborar com o sistema doando seus equipamentos eletrônicos que não 
	 são mais utilizados (Funcionando ou Danificado). O Recol também visa 
	 unir as empresas de coleta e as pessoas.
	<br>
	<h1>COMO FUNCIONA</h1>
	<br>
	O Recol funciona com dois papeis, <b>Doador</b> e <b>Coletor</b>, o Doador pode procurar 
	por pontos de coleta e verificar a quantidade de pontos ganhos até o 
	momento e o Coletor pode cadastrar o seu ponto de coleta.
	<br>
	<h1>O QUE COLETAMOS</h1>
	<br>
	A visão do Recol é totalmente voltada para Lixo Eletrônico (Equipamento 
		eletrônicos descartados ou obsoletos), ou seja, computadores, televisores, telemóveis/celulares, entre outros dispositivos.  
	<br>
	<h1>POR QUE DOAR</h1>
	Você sabia que a coleta indevida de lixo, além de causar grandes 
	danos ao meio ambiente, está entre as principais causas de enchentes 
	nos grandes centros urbanos.
	<br>
	<h1>METAS</h1>
	<br>
	Nosso sistema web tem como meta tornar-se um dos melhores sistemas 
	web para auxilio em coleta de lixo eletrônico, assim então dando um 
	destino correto para os materiais recicláveis.
	<br><br><br><br><br>')

r = Role.create(name: "Donator")
r2 = Role.create(name: "Collector")
r3 = Role.create(name: "Manager")

b1 = Bonu.create(name: "Monitores de Computadores", points: 1)
b2 = Bonu.create(name: "Telefones Celulares e Baterias", points: 2)
b3 = Bonu.create(name: "Computadores e peças", points: 3)
b4 = Bonu.create(name: "Televisores", points: 4)
b5 = Bonu.create(name: "Câmeras Fotográficas", points: 5)
b6 = Bonu.create(name: "Impressoras", points: 6)
b7 = Bonu.create(name: "Outro", points: 1)