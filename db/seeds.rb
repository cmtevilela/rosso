# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Ordinary CASH entrances
ent_ord = ["Salário", "Salário - part-time", "Aposentadoria", "Previdência Privada", 
	"Previdência Privada FIP", "Profissional Autônomo", "13º", "Salário OBRA", 
	"Salário Cidadela", "Salário OBRA part-time", "Salário CENTROS", 
	"Sem trabalho fixo / Entradas Ocasionais", "Entrada Foc.o não convivente", 
	"Estudante com ou sem entrada", "Sem Entrada", "Salário Cidadela part-time", 
	"Salário CENTROS part-time", "Comunhão Bens Casado", "Comunhão Bens Externo Casado", 
	"Providência para o Focolare"]

#Extraordinary CASH entrances
ent_ext = ["Salário (fora zona)", "Aposentadoria (fora zona)", "Previdência Privada (fora zona)", 
	"Reembolso imposto trabalho", "Reembolso seguro móveis / imóveis", "Reembolso plano de saúde", 
	"Acerto Final de Trabalho", "Salário Atrasado", "Aposentadoria Atrasada", "Previdência Privada Atrasada"]

#Center CASH entrances
ent_cent = ["Sobra Mariápolis", "Providência para a Seção", "Reembolso Impostos  Ente Moral", 
	"Herança Foc.o Voto Perpétuo", "Herança Foc.o em Prova e com Voto Tempor", "Outras Entradas Conta Centro"]

#Ordinary Outgoings
desp_ord = ["Trabalho", "Impostos Trabalho", "Contributo INSS", "Contributo Previdência Privada", 
	"Ajuda a pais de focolarinos", "Ajuda a Foc Casados", "Saídas Foc não Convivente", "Vistos e Documentos", 
	"Presentes", "Oferta p/ Missa Sufrágios", "Médicos e Exames Gerais", "Medicamentos", "Plano de Saúde", 
	"Férias", "Esporte e Repouso", "Aluguél Focolare", "Taxa Hipoteca", "Condomínio", "Luz ou Água", 
	"Telefone / Internet", "Combustível / Transporte Focolare", "Multas"]

#Extraordinary Outgoings
desp_ext = ["Contributo INSS (f.z.)", 
"Contributo Previdência Privada (f.z.)", 
"Ajuda a Pais de Foc Vida Comum", 
"Viagem Visita Família", 
"Viagem e Encontro na G.Z.", 
"Retiro Anual", 
"Viagem ao Centro", 
"Viagem e Permanência Escola Possíveis", 
"Viagem e Permanência Escola 5º Ano", 
"Viagem e Permanência Escola Jó", 
"Viagem e Permanência Escola Formação Per", 
"Viagem e Permanência Capo Zonetta ou con", 
"Viagem e Permanência Escola Foc Casados ", 
"Viagem e Encontro com Centro da Obra na ", 
"Médico Especialista", 
"Medicamento ou Tratamento Especializado", 
"Dentista", 
"Plano de Saúde (f.z.)", 
"Oftalmo / Otorrino", 
"Alimentação Suplementar para Tratamento", 
"Profissional Externo", 
"Seguro Imóvel", 
"Decoração / Eletrodomésticos", 
"Manutenção Imóvel", 
"Manutenção Automóvel", 
"Seguro / Impostos Automóvel", 
"Impostos Focolare", 
"Estudos Religiosos", 
"Material Estudos Religiosos", 
"Estudo Línguas", 
"Material Estudo Línguas", 
"Estudo Profissional", 
"Material Estudo Profissional", 
"Atualização Profissional", 
"Livros e Revistas Profissionais", 
"Material Violeta", 
"Material Informática", 
"Assinatura Revistas / Papelaria"]

#Center Outgoings
desp_cent = ["Imóveis - Aquisição e Reformas", 
"Auto - Aquisição e Provisões", 
"Outras Saídas Conta Centro"]

#Focolare Outgoings
desp_foc = ["Verde", 
"Azul", 
"Extra Pessoal", 
"Extra Focolare", 
"Vestiário", 
"Alaranjado", 
"Outros"]

categories = ["Entradas Ordinárias", 
"Entradas Extraordinárias", 
"Entradas Contas Centro", 
"Saídas Ordinárias", 
"Saídas Extraordinárias", 
"Saídas Conta Centro", 
"Saídas Focolare"]

popos_vc = ["Jonas Vilela", 
"Marcos Beltramin", 
"Aloizio Santos", 
"Klésio Hamada", 
"Fabiano Segato", 
"Valdecir Quarcioni"]

popos_casados = ["João Fracisco", 
"Antenor Scalett", 
"Cesar Caetano", 
"Ricardo Caiuby", 
"Etelcles Mendes", 
"Carlos Tesini", 
"Marcelo Coelho", 
"Luiz Pierre", 
"Evilazio", 
"Sérgio Melquiades"]

categories.each do |category|
	Category.create(name: category)
end

popos_casados.each do |i|
	User.create(name:i, is_married:true)
end

popos_vc.each do |i|
	User.create(name:i, is_married:false)
end

ent_ord.each do |i|
	Kind.create(name:i, category_id:1)
end

ent_ext.each do |i|
	Kind.create(name:i, category_id:2)
end

ent_cent.each do |i|
	Kind.create(name:i, category_id:3)
end

desp_ord.each do |i|
	Kind.create(name:i, category_id:4)
end

desp_ext.each do |i|
	Kind.create(name:i, category_id:5)
end

desp_cent.each do |i|
	Kind.create(name:i, category_id:6)
end

desp_foc.each do |i|
	Kind.create(name:i, category_id:7)
end
