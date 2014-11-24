About.create(body: 'O Recol sistema web que tem como principal objetivo 
		auxiliar a coleta de equipamentos eletrônicos. Você pode colaborar 
		com o sistema doando seus equipamentos eletrônicos que não são mais 
		utilizados (Funcionando ou Danificado). O Recol também visa unir as 
		empresas de coleta e as pessoas.')

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