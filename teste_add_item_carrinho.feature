    # language: pt
    # encoding: utf-8

Funcionalidade: Adicionar produto no carrinho com sucesso
  Eu como cliente da loja
  Quero Procurar um produto no site
  Para realizar a compra 


    Cenario: Procurar Item
      Dado que esteja na home da loja
      Quando buscar o item
      Então validar que a busca foi realizada com sucesso

    Cenario: Pagina de resultado
      Dado que esteja na pagina de busca pelo termo
      Quando clicar em algum item da pagina 
      Então validar que carregou a pagina de detalhe do produto


    Cenario: adicionar ao carrinho
      Dado que esteja na pagina detalhada do produto
      Quando adicionar o produto ao carrinho
      Então validar que o produto foi adicionado ao carrinho com sucesso. 
