<span align="center">

# Dart-Week-9

App para pedir seu lanche de forma simples e intuitiva! Com o padrão de projeto MVC, usando BloC, shared Preferences, Integração com Json rest server, provider, singletons e diversos packages auxiliares!

![logo](https://user-images.githubusercontent.com/101995042/217827180-d64f3288-875d-4d61-883a-fbf8759cb697.png)

<span align="start">

## Sobre
Esse projeto foi desenvolvido na DartWeek dos dias 30 de janeiro ao dia 04 de fevereiro, uma semana intensa, com muito foco e apoio da comunidade da academia do flutter.

## Json rest server files

[json-server.zip](https://github.com/Gustavobeckr/Dart-Week-9/files/10697728/json-server.zip)

## Funcionalidades
  - Splash screen
  - Login e cadastro com autenticação
  - Home Page
  - Detail page
  - Padrão de projeto MVC
  - Persistindo informações sharedPrefereces
  - Gerenciamento de estado com bloc
  - Injeção de dependêcias com provider
  - Integração com Json rest server
  
 ## Telas
 
 ### Splash Page
 
  <img src="https://user-images.githubusercontent.com/101995042/217851257-776d975b-9ac4-45fe-97b2-e1e7d0294465.png" width="200px" height="400" />
  </div>

### Home Page

<img src="https://user-images.githubusercontent.com/101995042/217851702-22d7e056-df6f-4f72-a9bd-28fec0d05222.png" width="200px" height="400" />
  </div>
  

### Details Page

<img src="https://user-images.githubusercontent.com/101995042/217851760-63e60a26-0faf-485b-9cd8-ca31537fb2f5.png" width="200px" height="400" />
  </div>


### Authentication Page

<img src="https://user-images.githubusercontent.com/101995042/217851969-b6697773-5052-4ba1-9e27-e77168c9c8ea.png" width="200px" height="400" />
  </div>

### Order Page

<img src="https://user-images.githubusercontent.com/101995042/217869251-49c0588c-68b2-4fa5-9e0c-f5fe7d7c479c.png" width="200px" height="400" />
  </div>
  
### Order Completed Page 

<img src="https://user-images.githubusercontent.com/101995042/217869277-684eef94-7a9c-417a-92ea-a2dad999e7d9.png" width="200px" height="400" />
  </div>

 
 ## Como usar
- Com o git instalado no computador, clone o repositório usando o:
$ git clone https://github.com/Gustavobeckr/Dart-Week-9.git
- Entre no diretório com:
$ cd .\Dart-Week-9
- Vá para o VSCode com: 
$ code .
- Obtenha os packages:
$ flutter pub get
- Crie um servidor com json rest server a partir dos arquivos disponíveis na publicação
- Adicione um arquivo .env na raíz da aplicação com a seguinte configuração:  
backend_base_url=http://SEUIP:8080
- Finalmente rode o app no dispositivo desejado:
$ flutter run  