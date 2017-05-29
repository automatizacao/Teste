Dado(/^que esteja na home da loja$/) do
 find('webstore home.class')
 click_button('Procurar')
end

Quando(/^buscar o item$/) do
  fill_in('ft', :with => 'TV')
end

Então(/^validar que a busca foi realizada com sucesso$/) do
   find('webstore search.class')
   assert_text('Resultados de busca para TV')
end

Dado(/^que esteja na pagina de busca pelo termo$/) do
   find('webstore search.class')
   
end

Quando(/^clicar em algum item da pagina$/) do
  find('column item-0 shelf-product-item.class').click
end

Então(/^validar que carregou a pagina de detalhe do produto$/) do
   find('webstore product skupage.class')

end

Dado(/^que esteja na pagina detalhada do produto$/) do
  find('webstore product skupage.class')
  has_link?('/categoria/informatica/tv/?fq=C:4699/4703/4864/')

end

Quando(/^adicionar o produto ao carrinho$/) do
  click_button('Adicionar ao carrinho')
end

Então(/^validar que o produto foi adicionado ao carrinho com sucesso\.$/) do
 find('label-minicart-buttom.class').click 
 find('link link-description.class')
end
