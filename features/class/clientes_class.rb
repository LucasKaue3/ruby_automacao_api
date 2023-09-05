# encode: UTF-8

class Clientes

  ############## Request ##############
  def request_api_clientes
    $cpf_api_clientes = 1782478639
    $request = {
    cpf: $cpf_api_clientes,
    nome: "QA QA QA",
    dataNascimento: "2022-01-24T12:37:54.052Z",
    sexo: "Masculino",
    estadoCivil: "Solteiro",
    nomeMae: "QA QA",
    naturalidadeId: 1,
    naturalidade: "Brasileiro",
    valorRenda: 20000,
    nomeConjuge: "qa qa",
    usuarioId: "X047895",
    tipoCredencial: "Restrita",
    documentoIdentificacao: {
      tipoDocumento: "RG",
      numero: "418757896",
      orgaoExpeditor: "SSP",
      numeroSerie: "2",
      dataEmissao: "2022-01-24T12:37:54.052Z",
      ufOrgaoExpeditor: "SP"
    },
    enderecoResidencial: {
        cep: "30575700",
        tipoLogradouro: "Rua",
        logradouro: "CARNOT MELO",
        numero: "75",
        complemento: "CASA",
        bairro: "PLAMEIRAS",
        localidadeId: 2578,
        cidade: "BELO HORIZONTE",
        uf: "MG"
    },
  contatos: {
    dddCelular: 11,
    numeroCelular: 944444444,
    dddTelefoneResidencial: 11,
    numeroTelefoneResidencial: 41111111,
    email: "emailHere"
    }
  }
  end


  def request_api_clientes_negativo(dado)

    ## variavel com dados corretor ##
    cpf = 1782478639
    nome = "QA QA QA"
    dataNascimento = "2022-01-24T12:37:54.052Z"
    naturalidadeId = 1
    valorRenda = 20000
    usuarioId = "X047895"
    tipoCredencial = "Restrita"
    tipoDocumento = "RG"
    dataEmissao = "2022-01-24T12:37:54.052Z"
    cep = "30575700"
    tipoLogradouro = "Rua"
    logradouro = "CARNOT MELO"
    bairro = "PLAMEIRAS"
    localidadeId = 2578
    dddCelular = 11
    numeroCelular = 944444444
    dddTelefoneResidencial = 11
    numeroTelefoneResidencial = 41111111

    ## Condição com dados nulos ou inválidos ##

    cpf = nil if dado == "cpf"
    nome = "QA" if dado == "nome"
    dataNascimento = "" if dado == "dataNascimento"
    naturalidadeId = nil if dado == "naturalidadeId"
    valorRenda = 1 if dado == "valorRenda"
    usuarioId = "" if dado == "usuarioId"
    tipoCredencial = "" if dado == "tipoCredencial"
    tipoDocumento = "" if dado == "tipoDocumento"
    dataEmissao = "" if dado == "dataEmissao"
    cep = "" if dado == "cep"
    tipoLogradouro = "" if dado == "tipoLogradouro"
    logradouro = "" if dado == "logradouro"
    bairro = "" if dado == "bairro"
    localidadeId = nil if dado == "localidadeId"
    dddCelular = nil if dado == "dddCelular"
    numeroCelular = "1" if dado == "numeroCelular"
    dddTelefoneResidencial = nil if dado == "dddTelefoneResidencial"
    numeroTelefoneResidencial = "1" if dado == "numeroTelefoneResidencial"

    $request = {
    cpf: cpf,
    nome: nome,
    dataNascimento: dataNascimento,
    sexo: "Masculino",
    estadoCivil: "Solteiro",
    nomeMae: "QA QA",
    naturalidadeId: naturalidadeId,
    naturalidade: "Brasileiro",
    valorRenda: valorRenda,
    nomeConjuge: "qa qa",
    usuarioId: usuarioId,
    tipoCredencial: tipoCredencial,
    documentoIdentificacao: {
      tipoDocumento: tipoDocumento,
      numero: "418757896",
      orgaoExpeditor: "SSP",
      numeroSerie: "2",
      dataEmissao: dataEmissao,
      ufOrgaoExpeditor: "SP"
    },
    enderecoResidencial: {
        cep: cep,
        tipoLogradouro: tipoLogradouro,
        logradouro: logradouro,
        numero: "75",
        complemento: "CASA",
        bairro: bairro,
        localidadeId: localidadeId,
        cidade: "BELO HORIZONTE",
        uf: "MG"
    },
  contatos: {
    dddCelular: dddCelular,
    numeroCelular: numeroCelular,
    dddTelefoneResidencial: dddTelefoneResidencial,
    numeroTelefoneResidencial: numeroTelefoneResidencial,
    email: "emailHere"
    }
  }
  end

  def request_patch_api_clientes
    $ddd = [11, 12, 13, 15, 21].sample
    $numeroCelular = [989895060, 989895062, 989895064, 989895066, 989895068].sample
    $dddTelefoneResidencial = [11, 12, 13, 15, 21].sample
    $numeroTelefoneResidencial = [41888898, 41888896, 41888894, 41888892, 41888890].sample
    $email = Faker::Internet.email

    $request = {
      dddCelular: $ddd,
      numeroCelular: $numeroCelular,
      dddTelefoneResidencial: $dddTelefoneResidencial,
      numeroTelefoneResidencial: $numeroTelefoneResidencial,
      email: $email,
      usuarioId: "userHere"
    }
  end

  def request_patch_api_clientes_invalido(dado)

    ## variavel com dados corretor ##
    ddd = [11, 12, 13, 15, 21].sample
    numeroCelular = [989895060, 989895062, 989895064, 989895066, 989895068].sample
    dddTelefoneResidencial = [11, 12, 13, 15, 21].sample
    numeroTelefoneResidencial = [41888898, 41888896, 41888894, 41888892, 41888890].sample
    email = Faker::Internet.email
    usuarioId = "userHere"
    ## Condição com dados nulos ou inválidos ##
    ddd = "" if dado == "dddCelular"
    numeroCelular = "" if dado == "numeroCelular"
    dddTelefoneResidencial = "" if dado == "dddTelefoneResidencial"
    numeroTelefoneResidencial = "" if dado == "numeroTelefoneResidencial"
    usuarioId = "" if dado == "usuarioId"

    $request = {
      dddCelular: ddd,
      numeroCelular: numeroCelular,
      dddTelefoneResidencial: dddTelefoneResidencial,
      numeroTelefoneResidencial: numeroTelefoneResidencial,
      email: "emailHere",
      usuarioId: usuarioId
    }
  end

############## POST Response ##############

  def post_api_clientes
    $response = HTTParty.post(
      $clientes_url[$env] + "/api/Clientes",
      # obrigatorio usar o verify abaixo para acessar as apis do banco sem certificado
      :verify => false,
      body: $request.to_json,
      headers: { "Content-Type": "application/json" }
    )
    $id_cliente = $response
  end

############## PATCH Response ##############

def path_api_clientes
  $response = HTTParty.patch(
    $clientes_url[$env] + "/api/Clientes/#{$cpf_api_clientes}/Contato",
    # obrigatorio usar o verify abaixo para acessar as apis do banco sem certificado
    :verify => false,
    body: $request.to_json,
    headers: { "Content-Type": "application/json" }
  )
end

############## GET Response ##############

  def get_api_clientes_id
    $response = HTTParty.get(
      $clientes_url[$env] + "/api/Clientes/#{$id_cliente.gsub(/[^0-9A-Za-z]/, '')}",
      # obrigatorio usar o verify abaixo para acessar as apis do banco sem certificado
      :verify => false,
      body: $request.to_json,
      headers: { "Content-Type": "application/json" }
    )
    ddd = $response["contatos"]["dddCelular"]
    numeroCelular = $response["contatos"]["numeroCelular"]
    dddTelefoneResidencial = $response["contatos"]["dddTelefoneResidencial"]
    numeroTelefoneResidencial = $response["contatos"]["numeroTelefoneResidencial"]
    email = $response["contatos"]["email"]
    # a varial global retornar os dados do path que foi alterado comparando com a variavel obtida do get
    raise "Não foi localizado a alteração do ddd" if $ddd != ddd
    raise "Não foi localizado a alteração do numeroCelular" if $numeroCelular != numeroCelular
    raise "Não foi localizado a alteração do dddTelefoneResidencial" if $dddTelefoneResidencial != dddTelefoneResidencial
    raise "Não foi localizado a alteração do numeroTelefoneResidencial" if $numeroTelefoneResidencial != numeroTelefoneResidencial
    raise "Não foi localizado a alteração do email" if $email != email

  end


  def get_api_receita_federal(cpf)
    $response = HTTParty.get(
      $clientes_url[$env] + "/api/Clientes/#{cpf}/ReceitaFederal",
      # obrigatorio usar o verify abaixo para acessar as apis do banco sem certificado
      :verify => false,
      body: $request.to_json,
      headers: { "Content-Type": "application/json" }
    )
  end

  def get_api_consulta_basica(cpf)
    $response = HTTParty.get(
      $clientes_url[$env] + "/api/Clientes/#{cpf}/ConsultaBasica",
      # obrigatorio usar o verify abaixo para acessar as apis do banco sem certificado
      :verify => false,
      body: $request.to_json,
      headers: { "Content-Type": "application/json" }
    )
  end

  def get_api_identificacao_id_cliente
    $response = HTTParty.get(
      $clientes_url[$env] + "/api/Clientes/#{$id_cliente.gsub(/[^0-9A-Za-z]/, '')}/Identificacao",
      # obrigatorio usar o verify abaixo para acessar as apis do banco sem certificado
      :verify => false,
      body: $request.to_json,
      headers: { "Content-Type": "application/json" }
    )
  end

  def get_api_identificacao_id_cliente_invalido(id)
    $response = HTTParty.get(
      $clientes_url[$env] + "/api/Clientes/#{id}/Identificacao",
      # obrigatorio usar o verify abaixo para acessar as apis do banco sem certificado
      :verify => false,
      body: $request.to_json,
      headers: { "Content-Type": "application/json" }
    )
  end

  def get_api_localidade_uf(uf)
    $response = HTTParty.get(
      $clientes_url[$env] + "/api/Localidades/Uf/#{uf}",
      # obrigatorio usar o verify abaixo para acessar as apis do banco sem certificado
      :verify => false,
      body: $request.to_json,
      headers: { "Content-Type": "application/json" }
    )
  end

  def get_api_localidade_texto_pesquisa(texto)
    $response = HTTParty.get(
      $clientes_url[$env] + "/api/Localidades/Pesquisa/#{texto}",
      # obrigatorio usar o verify abaixo para acessar as apis do banco sem certificado
      :verify => false,
      body: $request.to_json,
      headers: { "Content-Type": "application/json" }
    )
  end
############## Result ##############


end
