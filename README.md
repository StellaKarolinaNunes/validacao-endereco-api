# validacao-endereco-api

![flutter](https://img.shields.io/static/v1?label=flutter&message=flutter&color=blue&style=for-the-badge&logo=flutter)
![License](http://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge)
![Status](http://img.shields.io/static/v1?label=STATUS&message=CONCLUIDO&color=GREEN&style=for-the-badge)
> Status do Projeto: :heavy_check_mark:


## Descrição do Projeto

> Este projeto é um aplicativo em Flutter que permite aos usuários preencher um Formulário de Matrícula, utilizando a API do ViaCEP para busca automática de endereço com base no CEP digitado. O formulário inclui campos para nome, CEP, rua, número, cidade, estado e opções para aceitação de termos.

## Funcionalidades

✅ Busca automática de endereço pelo CEP (API ViaCEP)
✅ Campos dinâmicos e interativos
✅ Validação de formulário
✅ Limpar formulário
✅ Interface amigável 

## Como Rodar a Aplicação :arrow_forward:

### Pré-requisitos

- **Flutter:** (Framework de desenvolvimento)
- **Dart:** (Linguagem de programação)
- **API ViaCEP:**  (Consulta de endereço pelo CEP)
  
### Passo a Passo da Instalação

#### 1. Clone o repositório  
Abra o terminal e execute o comando abaixo para clonar o projeto:  
```bash  
https://github.com/StellaKarolinaNunes/validacao-endereco-api.git 
```

#### 2. Acesse o diretório do projeto

```bash  
cd validacao-endereco-api
```

#### 3. Dependências Utilizadas


```pubspec.yaml  
dependencies:
  flutter:
    sdk: flutter
  http: ^0.13.4 # Para chamadas HTTP
```

#### 3. Instale as dependências do Flutter

```bash  
 flutter pub get
```

#### 4. Execute o projeto

```bash  
  flutter run
```

# Estrutura de Pastas

```bash  
formulario-matricula-flutter/
│-- lib/
│   ├── components/
│   │   ├── custom_widgets.dart  # Componentes reutilizáveis
│   ├── services/
│   │   ├── cep_service.dart      # Serviço de busca de CEP
│   ├── main.dart                 # Arquivo principal
│   ├── screens/
│   │   ├── matricula_form.dart   # Tela formulário
```

## fotos 

![Tela_formulario](https://github.com/user-attachments/assets/4f5a80ce-67d4-4660-b312-bbe85ace263e)

## FAQ/Perguntas Frequentes ❓❔  

### 1. O que é este aplicativo?
> **R:** Este é um aplicativo de formulário de matrícula desenvolvido em Flutter. Ele permite que os usuários preencham seus dados e realizem a matrícula de forma simples e intuitiva.

### 2.  O que acontece se eu digitar um CEP inválido?
> **R:** O aplicativo tenta buscar os dados do endereço automaticamente através da API ViaCEP. Se o CEP informado for inválido, uma mensagem de erro será exibida na tela.

### 3. Posso limpar o formulário após preencher os dados?
> **R:** Sim, a funcionalidade de busca automática de endereço pelo CEP requer uma conexão com a internet, pois os dados são obtidos através de uma API externa.

### 4. Preciso de conexão com a internet para usar o app?
> **R:** O DJ SoundPad **não é responsivo para dispositivos móveis**, então a experiência pode não ser otimizada. Para uma experiência completa, é recomendável usar em telas maiores, como computadores ou tablets.

### 5. Como posso contribuir para o projeto?
> **R:** Você pode contribuir abrindo issues e pull requests no repositório do projeto no GitHub. Toda ajuda é bem-vinda!

## License/Licença do Projeto  

> [MIT](./License)

## Programador

| [<img loading="lazy" src="https://github.com/StellaKarolinaNunes.png" width="115"><br><sub>STELLA KAROLINA</sub>](https://github.com/StellaKarolinaNunes) |
| :---: |



