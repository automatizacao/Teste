Feature: Validar API do fornecedor correios.com.br


Cenario: Testar com CEP invalido
  Dado a URL será validada "http://viacep.com.br/ws/<<CEP_NUMBER>>/json/"
  Quando  Eu enviar uma request de CEP
  Então a reposta deve ter retorno com erro
    Exemplo:
      | CEP       |
      | 133333333 |

Cenario: Testar com CEP Valido
 Dado a URL será validada "http://viacep.com.br/ws/<<CEP_NUMBER>>/json/"
  Quando  Eu enviar uma request de CEP
  Então a reposta deve ter retorno com sucesso
    | CEP         |
    | Logradouro  |
    | Complemento |
    | Bairro      |
    | UF          |
    | Unidade     |
    | Ibge        |
    | Gia         |
    Exemplo:
      | CEP       |
      | 13806303  |

Cenario: Validando resultado com sucesso. 
  Dado a URL será validada "http://viacep.com.br/ws/<<CEP_NUMBER>>/json/"
  Quando  Eu enviar uma request de CEP
  Então validar que "CEP" igual "<CEP>"
  Então validar que "Logradouro" igual "<Logradouro>"
  Então validar que "Complemento" igual "<Complemento>"
  Então validar que "Bairro" igual "<Bairro>"
  Então validar que "Localidade" igual "<Localidade>"
  Então validar que "UF" igual "<UF>"
  Então validar que "Unidade" igual "<Unidade>"
  Então validar que "Ibge" igual "<Ibge>"
  Então validar que "Gia" igual "<Gia>"
    Examples:
      | CEP       | Logradouro            | Complemento   | Bairro        | Localidade  | UF | Unidade  | Ibge    | Gia   |
      | 13073010  | Rua Buarque de Macedo | até 1310/1311 | Jardim Brasil | Campinas    | SP |          | 3509502 | 2446  |
