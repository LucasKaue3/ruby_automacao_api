#language: pt

@clientes
@regressao
Funcionalidade: Clientes Api

  @post_api_clientes
  Esquema do Cenario: POST - Grava Cliente na Base Consignado e Atualiza dados no IPC
    Dado que realize um post valido para api - Clientes
    Então retorna o código <responseCode> com sucesso
  Exemplos:
    | responseCode  |
    | "200"         |

  @post_api_clientes_negativo
  Esquema do Cenario: POST - Grava Cliente na Base Consignado e Atualiza dados no IPC - Negativo
    Dado que realize um post invalido sem preencher o campo <dado> para api - Clientes
    Então retorna o código <responseCode> com sucesso
  Exemplos:
    | dado                        |
    | "cpf"                       |
    | "nome"                      |
    | "dataNascimento"            |
    | "naturalidadeId"            |
    | "valorRenda"                | "400"         |
    | "usuarioId"                 | "500"         |
    | "tipoCredencial"            | "400"         |
    | "tipoDocumento"             | "400"         |
    | "dataEmissao"               | "400"         |
    | "cep"                       | "400"         |
    | "tipoLogradouro"            | "400"         |
    | "logradouro"                | "400"         |
    | "bairro"                    | "400"         |
    | "localidadeId"              | "400"         |
    | "dddCelular"                | "400"         |
    | "numeroCelular"             | "400"         |
    | "dddTelefoneResidencial"    | "400"         |
    | "numeroTelefoneResidencial" | "400"         |


  @patch_api_clientes
  Esquema do Cenario: PATCH - Atualiza dados de contato do cliente nas bases consignado e IPC.
    Dado que realize um post valido para api - Clientes
    E que realize um patch valido para api - Clientes
    E retorna o código <responseCode> com sucesso
    Quando validar que a alteração foi realizada dando um get na api Clientes
    Então retorna o código <responseCodeGet> com sucesso

  Exemplos:
    | responseCode  | responseCodeGet |
    | "200"         | "200"           |


  @patch_api_clientes_negativo
  Esquema do Cenario: PATCH - Atualiza dados de contato do cliente nas bases consignado e IPC - Invalido
    Dado que realize um post valido para api - Clientes
    E que realize um patch informando o dado <dado> invalido para api - Clientes
    E retorna o código <responseCode> com sucesso

  Exemplos:
    | dado                        | responseCode  |
    | "dddCelular"                | "400"         |
    | "numeroCelular"             | "400"         |
    | "dddTelefoneResidencial"    | "400"         |
    | "numeroTelefoneResidencial" | "400"         |
    | "usuarioId"                 | "500"         |

  @get_api_receita_federal
  Esquema do Cenario: GET - Retorna dados do cliente na receita federal pelo IRF e realiza pré cadastro no IPC.
  Dado que realize um get na api da receita federal informando o cpf <cpf>
  Então retorna o código <responseCodeGet> com sucesso

  Exemplos:
    | cpf           | responseCodeGet |
    | "1782478639"  | "200"           |
    | ""            | "404"           |
    | "17824786399" | "400"           |
    | "178247863"   | "400"           |
    | "99999999999" | "400"           |
    | "abcdefghijk" | "400"           |
    | "178247863b"  | "400"           |

  @get_api_consulta_basica
  Esquema do Cenario: GET - Retorna dados de identificacao do cliente por cpf.
  Dado que realize um get na api consulta basica informando o cpf <cpf>
  Então retorna o código <responseCodeGet> com sucesso

  Exemplos:
    | cpf           | responseCodeGet |
    | "1782478639"  | "200"           |
    | ""            | "404"           |
    | "17824786399" | "204"           |
    | "178247863"   | "204"           |
    | "99999999999" | "204"           |
    | "abcdefghijk" | "400"           |
    | "178247863b"  | "400"           |

  @get_api_identificacao
  Esquema do Cenario: GET - Retorna dados de identificacao do cliente por id.
  Dado que realize um post valido para api - Clientes
  E que realize um get na api identificacao informando o id do cliente
  Então retorna o código <responseCodeGet> com sucesso

  Exemplos:
    | responseCodeGet |
    | "200"           |

  @get_api_identificacao_negativo
  Esquema do Cenario: GET - Retorna dados de identificacao do cliente por id - Negativo
  Dado que realize um get invalido na api identificacao informando o id <id> do cliente
  Então retorna o código <responseCodeGet> com sucesso

  Exemplos:
    | id                                       | responseCodeGet |
    | "2bfbb81a-366c-464e-9c68-37e1713097ab"   | "204"           |
    | ""                                       | "404"           |
    | "2bfbb81a-366c-464e-9c68-37e171309714a"  | "400"           |

  @get_api_localidades_sigla_uf
  Esquema do Cenario: GET - Retorna localidades pelo estado UF
  Dado que realize um get na api de localidades pesquisando por UF <uf>
  Então retorna o código <responseCodeGet> com sucesso

  Exemplos:
    | uf    | responseCodeGet |
    | "RO"  | "200"           |
    | "AC"  | "200"           |
    | "AM"  | "200"           |
    | "RR"  | "200"           |
    | "PA"  | "200"           |
    | "AP"  | "200"           |
    | "TO"  | "200"           |
    | "MA"  | "200"           |
    | "PI"  | "200"           |
    | "CE"  | "200"           |
    | "RN"  | "200"           |
    | "PB"  | "200"           |
    | "PE"  | "200"           |
    | "AL"  | "200"           |
    | "SE"  | "200"           |
    | "BA"  | "200"           |
    | "MG"  | "200"           |
    | "ES"  | "200"           |
    | "RJ"  | "200"           |
    | "SP"  | "200"           |
    | "PR"  | "200"           |
    | "SC"  | "200"           |
    | "RS"  | "200"           |
    | "MS"  | "200"           |
    | "MT"  | "200"           |
    | "GO"  | "200"           |
    | "DF"  | "200"           |

  @get_api_localidades_texto_pesquisa
  Esquema do Cenario: GET - Retorna localidades a partir do texto da pesquisa
  Dado que realize um get na api de localidades pesquisando por texto <texto>
  Então retorna o código <responseCodeGet> com sucesso

  Exemplos:
    | texto         | responseCodeGet |
    | "sao%20paulo" | "200"           |
