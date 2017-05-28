Configurando o ambiente de automação de testes Web.

Para que sua automação possa ser realizada é necessário instalar alguns recursos (Disponíveis na pasta Uteis desse projeto), conforme será descrito abaixo, para cada plataforma:

1. Instalar o Console do Cmder
Fazer o donwload do Console no link: https://github.com/cmderdev/cmder/releases/download/v1.3.2/cmder.zip.Descompactar 
Criar uma pasta chamada 'Tools' no disco C:
Copiar o arquivo baixado para a pasta C:\tools e deoius extrair o arquivo, após a extração criar um atalaho do executavel. 

2. Instalar o Ruby
Fazer o donwload no link:http://rubyinstaller.org/downloads/.Executar após o donwload executar a instalação e selecionar os 3 checkbox exibidos e continuar até o 'finish'. Após a instalação, abrir o console do Cmder, e digitar o comando o comando ruby –v, o esperadi é que seja carregado a versão do ruby instalado. 

3. instalar o DevKit
Fazer o donwload no link: http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe.Acesse No diretório onde foi instalado o Ruby C:\Ruby23-x64.Crie deve ser criado uma pasta chamada devKit e colocar  o arquivo baixado dentro dessa pasta. então extratir o arquivo nessa pasta, após a extração abrir o console e digitar os comandos: cd C:\Ruby23-x64\devkit > ruby dk.rb init > ruby dk.rb install

4. Ajustar Problemas de SSL
a) Abrir o Console do Cmder, didigtar  o comando: gem sources -a http://rubygems.org/
b) Em seguida, confirme a operação
c) Digitar depois o seguinte comando: gem sources -r https://rubygems.org/
d) Por fim, digite o comando: gem sources –u

5. Instalar o bundler
No Console do Cmder, digite o comando:  gem install bundler

6. Instalar o driver de internet
Fazer o donwload no link: http://www.seleniumhq.org/download/ copiar o e colar o executavel dentro da pasta "BIN" do diretorio de instalaçlão do Ruby. e executar o executavel para fibalizar a instalção. 

7. Instalar gem's;
No Console instalar as gems:
capybara
watir
cucumber

atraves do comando "gem install (Nome da gem).




*************************************************

Para desenvolver o "steps" foi utilizado como base a 
Lista de comandos:
https://gist.github.com/zhengjia/428105

