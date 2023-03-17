--DQL

USE MedGroup

-- mostrar tudo da tabela
select*from Clinica
select*from Situacao
select*from Consulta
select*from Cliente
select*from Especializacao
select*from Medico
select*from TipoUsuario
select*from Usuario

-- O m�dico poder� ver os agendamentos (consultas) associados a ele
select NomeMedico M�dico, NomeCliente Cliente, RG, CPF, Endereco, DataNascimento Nascimento, TelefoneCliente Telefone, NomeSituacao Situa��o, DataConsulta Data, SobreConsulta Descri��o  from Consulta
inner join Medico
on Medico.IdMedico = Consulta.IdMedico
inner join Cliente
on Cliente.IdCliente = Consulta.IdCliente
inner join Situacao
on Situacao.IdSituacao = Consulta.IdSituacao

-- O paciente poder� visualizar suas pr�prias consultas 
select NomeCliente Paciente, NomeMedico M�dico, NomeSituacao Situa��o, DataConsulta Data, SobreConsulta Descri��o from Consulta
inner join Medico
on Medico.IdMedico = Consulta.IdMedico
inner join Cliente
on Cliente.IdCliente = Consulta.IdCliente
inner join Situacao
on Situacao.IdSituacao = Consulta.IdSituacao

-- Ver o que o m�dico � (especialidade)
select NomeMedico, NomeEspecializacao from Medico
inner join Especializacao
on Especializacao.IdEspecializacao = Medico.IdEspecializacao

-- Solicitar o email e a senha de cada tipo de usu�rio
select Nome Tipo, Email, Senha from Usuario
inner join TipoUsuario
on TipoUsuario.IdTipo = Usuario.IdTipo
