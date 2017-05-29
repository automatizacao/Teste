Feature: Validate api of company correios.com.br


Scenario Outline: Invalid CEP
  Given the URL to be validated is "http://viacep.com.br/ws/<<CEP_NUMBER>>/json/"
  When I send a request with "<CEP>"
  Then a incosistent response returned
    Examples:
      | CEP       |
      | 133333333 |

Scenario Outline: Valid CEP
  Given the URL to be validated is "http://viacep.com.br/ws/<<CEP_NUMBER>>/json/"
  When I send a request with "<CEP>"
  Then a cosistent response returned with following nodes
    | CEP         |
    | Logradouro  |
    | Complemento |
    | Bairro      |
    | UF          |
    | Unidade     |
    | Ibge        |
    | Gia         |
    Examples:
      | CEP       |
      | 13806303  |

Scenario Outline: Validate returned nodes
  Given the URL to be validated is "http://viacep.com.br/ws/<<CEP_NUMBER>>/json/"
  When I send a request with "<CEP>"
  Then validate node "CEP" equals "<CEP>"
  Then validate node "Logradouro" equals "<Logradouro>"
  Then validate node "Complemento" equals "<Complemento>"
  Then validate node "Bairro" equals "<Bairro>"
  Then validate node "Localidade" equals "<Localidade>"
  Then validate node "UF" equals "<UF>"
  Then validate node "Unidade" equals "<Unidade>"
  Then validate node "Ibge" equals "<Ibge>"
  Then validate node "Gia" equals "<Gia>"
    Examples:
      | CEP       | Logradouro            | Complemento   | Bairro        | Localidade  | UF | Unidade  | Ibge    | Gia   |
      | 13073010  | Rua Buarque de Macedo | até 1310/1311 | Jardim Brasil | Campinas    | SP |          | 3509502 | 2446  |