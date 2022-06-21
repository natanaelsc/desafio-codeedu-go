# Code Education

## Desafio

Publicar uma imagem de uma aplicação Go no [Docker Hub](https://hub.docker.com/).

Quando executarmos ```docker run <username>/codeeducation``` a imagem deve ser baixada e termos o seguinte resultado: "***Code.education Rocks!***".

Essa imagem apenas realiza um print da mensagem como resultado final.

A imagem precisa ter menos de 2MB.

## Resultado

[Imagem Go publicada no Docker Hub](https://hub.docker.com/r/natanaelsc/codeeducation)

Imprime na tela "***Code.education Rocks!***".

Tem em torno de 832KB

---

## Instruções

Para executar a imagem do meu repositório será necessário ter instalado o [Docker](https://www.docker.com/get-started/) em sua máquina.

    Após instalado abra o terminal e execute o comando a seguir:

    ```docker run natanaelsc/codeeducation```

Para construir sua própria imagem do projeto e executa-la digite os comandos a seguir no terminal dentro da raiz do projeto:

    ```docker build -t <image> .```

    ```docker run <image>```

Para publicar a imagem no Docker Hub será necessário [criar uma conta](https://hub.docker.com/signup), fazer [login no terminal](https://docs.docker.com/engine/reference/commandline/login/) digitando suas credencias e então o código abaixo:

    ```docker tag <image> <username>/<image>```

    ```docker push <username>/<image>```
