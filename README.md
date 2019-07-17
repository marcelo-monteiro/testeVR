# Automação de Serviço - TesteVR

## Requisitos:

* Ruby (versão v2.5 ou superior)
* Bundler (Gem)

**Ruby (versão v2.5 ou superior)** - Linguagem a qual utilizaremos para realizar automação Web.  
https://github.com/ruby/ruby  

**Bundler** - Gem para instalar, listar e gerenciar as depêndencias do projeto atual.  
https://github.com/bundler/bundler  

## Principais depêndencias utilizadas:

* Cucumber       - Gem 
* Pry            - Gem 
* Report_builder - Gem 
* Rspec          - Gem

**Cucumber** - Gem para a organização e execução dos casos de testes (Além das configurações referentes ao ambiente).  
https://github.com/cucumber/cucumber  

**YAML** - Módulo para criar properties, mapear elementos e outros (Facilita a leitura)  
http://ruby-doc.org/stdlib-2.4.0/libdoc/yaml/rdoc/YAML.html  


**Para instalar linguagem e bibliotecas (para Linux):** 

* Rodar Update da O.S:
    * ``sudo apt-get update``
* Instalar gerenciador de versões do Ruby (Rbenv e plugin): 
    * ``git clone "https://github.com/rbenv/rbenv.git" /usr/local/rben``
    * ``git clone "https://github.com/rbenv/ruby-build.git" /usr/local/rbenv/plugins/ruby-build``
* Configurar Paths: 
    * ``echo 'export RBENV_ROOT="/usr/local/rbenv"' >> $HOME/.bashrc``
    * ``echo 'export PATH="${RBENV_ROOT}/bin:${RBENV_ROOT}/shims:$PATH"' >> $HOME/.bashrc``
* Instalar o Ruby: 
    * ``rbenv install -v 2.5.3``
    * ``rbenv rehash``
    * ``rbenv global 2.5.3``
* Instalar o Bundler: 
    * ``gem install bundler``
* Copiar o repositório e instalar as dependências: 
    * ``git clone https://github.com/marcelo-monteiro/testeVR.git``
    * Na raiz do projeto rodar o comando: ``bundle install`` 

**Para rodar os testes localmente (executar na branch Master - CLI no diretorio raiz do projeto):** 

* Todos os Cenários: 
    * ``cucumber`` ou ``cucumber -t @consulta_cep``
* Apenas cenário válido: 
    * ``cucumber -t @cep_valido``
* Apenas cenário inválido: 
    * ``cucumber -t @cep_invalido``
* Apenas cenário inexistente: 
    * ``cucumber -t @cep_inexistente``
