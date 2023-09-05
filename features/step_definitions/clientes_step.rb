Dado('que realize um post valido para api - Clientes') do
  clientes.request_api_clientes
  clientes.post_api_clientes
end

Dado('que realize um post invalido sem preencher o campo {string} para api - Clientes') do |dado|
  clientes.request_api_clientes_negativo(dado)
  clientes.post_api_clientes
end

Dado('que realize um patch valido para api - Clientes') do
  clientes.request_patch_api_clientes
  clientes.path_api_clientes
end

Quando('validar que a alteração foi realizada dando um get na api Clientes') do
  clientes.get_api_clientes_id
end

Dado('que realize um patch informando o dado {string} invalido para api - Clientes') do |dado|
  clientes.request_patch_api_clientes_invalido(dado)
  clientes.path_api_clientes
end

Dado('que realize um get na api da receita federal informando o cpf {string}') do |cpf|
  clientes.get_api_receita_federal(cpf)
end

Dado('que realize um get na api consulta basica informando o cpf {string}') do |cpf|
  clientes.get_api_consulta_basica(cpf)
end

Dado('que realize um get na api identificacao informando o id do cliente') do
  clientes.get_api_identificacao_id_cliente
end

Dado('que realize um get invalido na api identificacao informando o id {string} do cliente') do |id|
  clientes.get_api_identificacao_id_cliente_invalido(id)
end

Dado('que realize um get na api de localidades pesquisando por UF {string}') do |uf|
  clientes.get_api_localidade_uf(uf)
end

Dado('que realize um get na api de localidades pesquisando por texto {string}') do |texto|
  clientes.get_api_localidade_texto_pesquisa(texto)
end
