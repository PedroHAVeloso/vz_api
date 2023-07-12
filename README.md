# VZ API

API em Dart, utilizando o framework [Dart Frog](https://dartfrog.vgv.dev/), que retorna frases aleatórias de 'velha do zap'.

Parte do [VZ APP](https://github.com/PedroHAVeloso/vz_app), aplicativo em Flutter que exibe frases aleatórias de 'velha do zap'.

### Funcionalidades:
>- Retorna uma frase.
>- Retorna várias frases, entre o minímo de 1 e máximo de 10.

# Rodando a API:

Após clonar o repositório, abra o terminal dentro da pasta `vz_api` e siga os seguintes passos:

### Usando Docker

Se o [Docker Desktop](https://www.docker.com/) estiver rodando, execute no terminal:

	$ docker build . -t dart-frog-vz-api
    
    $ docker run -i -t -p 8080:8080 dart-frog-vz-api
    
    Running on http://localhost:8080

### Usando o Dart Frog

Se você tiver o [Dart SDK](https://dart.dev/get-dart) e o [Dart Frog](https://dartfrog.vgv.dev/) instalados, execute no terminal:

	$ dart pub get
	
    $ dart_frog dev
    
    Running on http://localhost:8080
	

# Rotas da API

## Informações gerais `GET /`

#### Request

`GET /`

#### Response OK

    {
        "STATUS": "OK",
        "NUMBER_OF_PHRASES": 800,
        "ROUTES": {
            "/phrases": "[GET] Gets a phrase",
            "/phrases/{number}": "[GET] Gets N phrases (min: 1; max: 10)"
        }
    }
    
    
## Obter uma frase `GET /phrases`

#### Request

`GET /phrases`

#### Response OK

    {
        "STATUS": "OK",
        "PHRASE": [
            "Vi um video amigos que mostro que fazer caretas previne o envelhecimento da pele rsrs."
        ]
	}


## Obter várias frases `GET /phrases/{number}`

#### Request

`GET /phrases/3`

#### Response OK

    {
        "STATUS": "OK",
        "PHRASE": [
            "Compartilhem essa notiça amigos: um parque aquático com tobogãs radicais explodiu na Coreai...",
            "Vi uns medicos que indicam que cheirar café torrado melhora a atenção amores.",
            "Fiquem atentos em, tem golpe em que os bandidos te ligam e se você disser 'alô' eles clonam seu zap."
        ]
    }
