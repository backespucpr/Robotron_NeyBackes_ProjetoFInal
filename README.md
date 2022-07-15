<div align="center">
  
  # Robotron
  ## Programa de Bolsas - Sprint 5
   <img src="https://user-images.githubusercontent.com/105370199/175322070-dd22d534-56a9-403a-8a21-9831c7f4901e.png" width="500px" />
</div>
  
 #
  
<div align="center">
   <a href="https://www.python.org/doc/" target="_blank"><img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"></a>
   <a href="https://www.w3schools.com/html/" target="_blank"><img src="https://img.shields.io/badge/HTML-239120?style=for-the-badge&logo=html5&logoColor=white"></a>
   <a href="https://www.markdownguide.org/getting-started" target="_blank"><img src="https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white"></a>
   <a href="https://git-scm.com/doc" target="_blank"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a>
   <a href="https://git-scm.com/doc" target="_blank"><img src="https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white"></a>
</div>

#

 <div style="display: inline_block" align="center">   
   <a href="" target="_blank"><img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Robot-framework-logo.png" width="50px"></a>
   <a href="" target="_blank"><img src="https://user-images.githubusercontent.com/105370199/175366115-5504e3c2-804e-4f9c-aa78-8e66896fcb54.png" width="50px"></a>
  
 </div>

 
<div align="center">
  
  ## Querido Compasser, seja bem vindo!

## Este repositório contém as atividades realizadas durante as duas semanas da Sprint 5. Aqui você vai encontrar as atividades das Master Classes além de um exemplo desenvolvido por min com o objetivo de fixar o aprendizado.

  
 </div>
 <div style="display: inline_block" align="center">
 
 <table width="100px">
<tr><th> Atividades </a></th></tr>
<tr><td>

Atividade | Data | Obs |
---- | ---- | ----  
[Master Class Robot](https://github.com/backespucpr/Robotron_NeyBackes_ProjetoFInal/tree/DEVOLOP/masterclasses_sprint_5 "Sprint 5") | 14/07 | Estas são todas atividades realizadas durantes as Masterclasses desta Sprint. |

 </table>
</div>
 

  





### Conteúdo programático - Sprint 5

- Módulo 01 - <strong>01. Introdução ao Robot Framework para testes em API</strong>
- Módulo 01 - <strong>02. Configuração de ambiente</strong>
- Módulo 01 - <strong>03. Abordagem Keyword Driven</strong>
- Módulo 01 - <strong>04. Escrevendo casos e cenários de testes para API</strong>
- Módulo 01 - <strong>05. Escrita TDD baseada em ações</strong>
- Módulo 01 - <strong>06. Doc Requests Library</strong>
- Módulo 01 - <strong>07. Estrutura para testes de API</strong>
- Módulo 02 - <strong>01. Lidando com Requests e Responses</strong>
- Módulo 02 - <strong>02. Manipulando Responses e Tageando testes</strong>
- Módulo 02 - <strong>03. Apresentando Responses e Reports</strong>
- Módulo 02 - <strong>04. Revisao da estrutura simples para testes de API</strong>
- Módulo 03 - <strong>01. Organização básica para Pré-Auth de projeto</strong>
- Módulo 03 - <strong>02. Autenticação simples de API</strong>
- Módulo 03 - <strong>03. Encadeado requisições com Auth</strong>
- Módulo 03 - <strong>04. Revisão da estrutura de encadeamento</strong>
- Módulo 04 - <strong>01. Introdução ao Json e criaçao de arquivo</strong>
- Módulo 04 - <strong>02. Manipulando Json com Robot</strong>


.

## Mas o que é robot?  

 <div> 
   <img src="https://user-images.githubusercontent.com/105370199/178865528-2159ef69-2c2e-44b1-a475-07badad775d7.gif" width="50px" />
</div>
<br>

O Robot Framework é uma estrutura de automação de código aberto genérica para desenvolvimento orientado a testes de aceitação (ATDD) e automação de processos robóticos (RPA).

Seus recursos de teste podem ser estendidos por bibliotecas de teste implementadas como Python ou Java, e os usuários podem criar novas palavras-chave de nível mais alto a partir de palavras-chave existentes usando a mesma sintaxe usada para criar casos de teste.

O projeto do Robot Framework está hospedado no GitHub, onde você pode encontrar mais documentação, código-fonte e rastreador de problemas.

<div>   
   <a href="https://auditeste.com.br/o-que-e-ferramenta-robot-framework-e-como-ela-funciona/" target="_blank">Saiba Mais</a><br>
</div>
   


## Estrutura Robot Exemplo

```python
#Sessão para configuração, documentacao, imports de arquivos e librarys
* Settings *
Documentation   Nome do documento para explicar o que o programa faz.  
Library             RequestsLibrary

#Sessão para setagem de variáveis
* Variables *

#utilizando variaves para armazenar informações repetidas
${nome_de_sua_variavel}    valor da variavel 



#Sessão para criacao dos cenários de teste
* Test Cases *


#Sessão para criacao de Keywords Personalizadas
* Keywords *



```


## Ferramentas

|Ferramenta | Versão     | Instalação                                                    |
| -------- | ---------- | ------------------------------------------------------------ |
| Python | 3.10 | - <a href="https://www.python.org/downloads/" target="_blank">- Download Windows</a><br /> - Para a instalação baixe a versão correspondente e siga as intruções de instalação.<br /> <strong>Instalação Linux via terminal</strong>. <br /> - Verifique se você tem o python instalado: "which python" ou "which python3" <br /> - Instalação: sudo apt-get install python3 <br />  |
|Git   | 2.34,1 | - Acesse a documentação oficial <br /> <a href="https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git" target="_blank">- Guia de instalaçao</a>  <br /> |
|Vscode | 1.68.1 | - <br /> <a href="https://code.visualstudio.com/Download" target="_blank">- Download Windows</a><br /> - Para a instalação baixe a versão correspondente e siga as intruções de instalação.<br /><strong>Instalação Linux via terminal</strong> <br />- Instalação: "sudo snap install code --classic"<br /> - Não se esqueca de atualizar: "sudo snap refresh code"|
|Node | 16.16.0 Lts| -<a href="https://code.visualstudio.com/Download" target="_blank"> Download Site Oficial</a><br />``


## Instalando as dependências necessárias via PIP:



- Digite no seu prompt ou terminal ou comando: "pip install <nome_da_dependência>"

<div> 
   <img src="https://user-images.githubusercontent.com/105370199/178847667-8d4b59c8-8324-4987-b8f2-0a87b8168bfd.png" width="800px" />
</div>





<br>
<strong>Dependências utilizadas</strong>
<br>


 </div>
 
 <table width="100px">
<tr><a href="" target="_blank"></th></tr>
<tr><td>

<td>

Biblioteca | Versão | Utilização |
---- | ---- | ---- |
 Robot Framework | 5.0.1 | Robot Framework é uma estrutura de automação genérica open source, ou seja, de código aberto que pode ser usado para testar e automatizar processos de software. |
 Robot Framework Browser| 0.1.0 | O Robot Framework Browser utiliza uma tecnologia baseada em JavaScript chamada Playwright. O dramaturgo se conecta diretamente à API do navegador e tem controle total do navegador e de seu conteúdo. |
 Robot Framework Request| 2.25.1 | RequestsLibrary é uma biblioteca Robot Framework destinada a fornecer funcionalidades de teste de API HTTP, envolvendo a conhecida Biblioteca de Solicitações Python.|


</td></tr> </table>

## Rodando o Serverest localmente

Para evitar problemas ou falhas utilizando o servidor você pode rodar uma versão local do Serverest para utilizar em seus testes.
 - Utilze o comando no seu terminal: npx serverest (mantenha o terminal aberto)
 

<div> 
   <img src="https://user-images.githubusercontent.com/105370199/178840558-a437af82-f045-46f6-9bee-7dd647086f86.png" width="800px" />
</div>

## Comandos úteis para execução dos arquivos Robot

- Executanto todos os testes
  - Digite robot -d ./<pasta_destino> arquivo.robot
  
 <div> 
   <img src="https://user-images.githubusercontent.com/105370199/178848894-3ac66569-d4e7-4ce6-ac5a-b137d6642c4f.png" width="800px" />
</div>
  
- Executando teste com tags
  - Digite robot -d ./<pasta_destino> -i <tag> arquivo.robot 
  
 <div> 
   <img src="https://user-images.githubusercontent.com/105370199/178848826-210d6528-9c47-4b7b-91fa-1c2873cf4e3c.png" width="800px" />
</div>

## Na prática

 <div> 
   <img src="https://user-images.githubusercontent.com/105370199/178871934-8bab8f20-7173-4134-835f-5715369da3fe.gif" width="800px" />
</div>
  
  ## Test Case
  
  ### Abaixo estão os casos de teste desenvolvidos para serem utilizadas nos teste com a API Serverest.
  
```python


-----------------------------------


- LOGIN
    - POST 

        Validações Positivas        
            - Validar Login 
            - Status Code "200"
            - Mensagem de retorno "realizado com sucesso"            
        Validações Negativas
            - Requisição com senha inválida
            - Requisicao com email inválido 
            - Status com "400"
- Usuarios
    - GET
        - Listar todos os usuarios
        - Listar usuario pela id  "200"
        - Validações Negativas
            - Validar Usuario não encontrado "400"
    - POST
        - Cadastrar usuario "201"
        
   - DELETE
        - Deletar um usuario  "200"
    
    - PUT 
        - Atualizar dados de um usuario "200" 
- Produtos
    - GET
        - LIstar todos os produtos
        - Listar usuario pela id  "200"
    - POST
        - Cadastrar produto "201"
    - DELETE
        - Deletar um produto "200"
    - PUT 
        - Atualizar dados de um produto "200"
- Carrinho
    - GET 
        - Listar todos os carrinho "200"
        



```

## Agradecimentos


<strong>Mentoria</strong>

<div>   
   <a href="https://github.com/DemetrioWebber" target="_blank">Demetrio Webber </a><br>
   <a href="https://github.com/matheuslocatelli" target="_blank">Matheus Locatelli</a><br>   
</div>

<br>

<strong>Colegas que ajudaram na resolução das atividades e na elaboração deste projeto</strong>

<br>

<div>   
   <a href="https://github.com/manuel-valdes" target="_blank">Manuel Valdes </a><br>   
</div>

<br>


<br>
<strong>Referências Bibliográfica Complementares</strong>
<br>
<br>

<div>   
   <a href="https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html" target="_blank">- Reques Library</a><br>
   <a href="https://robotframework.org/robotframework/latest/libraries/BuiltIn.html" target="_blank">- Bult in</a><br>
   <a href="https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html" target="_blank">- Robot User Guide</a><br>
 <br>
   
</div>

## Em caso de dúvidas ou sugestões entre em contato
   
   </div>
<div style="display: inline_block">
  <a href="https://www.linkedin.com/in/silvioney-backes-27673b214/" target="_blank"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a>
  <a href="backesney@gmail.com" target="_blank"><img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white"></a>  
  </div>
  <br>
  <br>
