# Automação de Serviço - TesteVR

## Requisitos:

* Ruby (versão v2.5 ou superior)
* Bundler (Gem)

**Ruby (versão v2.5 ou superior)** - Linguagem a qual utilizaremos para realizar automação Web.  
https://github.com/ruby/ruby  

**Bundler** - Gem para instalar, listar e gerenciar as depêndencias do projeto atual.  
https://github.com/bundler/bundler  

## Principais depêndencias utilizadas:

* Capybara       - Gem
* Cucumber       - Gem 
* Pry            - Gem 
* Report_builder - Gem 
* Rspec          - Gem


**Capybara** - Gem para efetuar as interações com os navegadores.  
https://github.com/teamcapybara/capybara  

**Cucumber** - Gem para a organização e execução dos casos de testes (Além das configurações referentes ao ambiente).  
https://github.com/cucumber/cucumber  

**YAML** - Módulo para criar properties, mapear elementos e outros (Facilita a leitura)  
http://ruby-doc.org/stdlib-2.4.0/libdoc/yaml/rdoc/YAML.html  


**Para rodar os testes localmente (executar na branch Master - CLI no diretorio raiz do projeto):** 

* Homolog Headless (com report): 
    * ``cucumber -p default_headless -t 'not @wip and @smoke'``
* Preprod (com report): 
    * ``cucumber -p preprod -t 'not @wip and @smoke'``
* Preprod Headless (com report): 
    * ``cucumber -p preprod_headless -t 'not @wip and @smoke'``

**Para rodar os testes localmente (executar na branch Master - CLI no diretorio raiz do projeto):** 

* Homolog Headless (com report): 
    * ``cucumber -p default_headless -t 'not @wip and @smoke'``
* Preprod (com report): 
    * ``cucumber -p preprod -t 'not @wip and @smoke'``
* Preprod Headless (com report): 
    * ``cucumber -p preprod_headless -t 'not @wip and @smoke'``
