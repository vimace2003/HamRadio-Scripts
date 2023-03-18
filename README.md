Reprodução de áudio via porta serial

Este script reproduz um arquivo de áudio através do player VLC e envia mensagens via porta serial antes e depois da reprodução.
Uso

O script deve ser executado na linha de comando, passando a porta serial como argumento, por exemplo:

bash

./reproduz-audio.sh /dev/ttyS0

Pré-requisitos

    Player VLC instalado na máquina.
    Porta serial disponível e configurada.

Fluxo de execução

    O script verifica se a porta serial foi especificada como argumento.
    Em seguida, inicia a reprodução do arquivo de áudio usando o player VLC.
    Abre a porta serial e envia uma mensagem antes do início do áudio.
    Aguarda até que a reprodução do áudio termine.
    Envia uma mensagem após o término do áudio e fecha a porta serial.
    Por fim, remove o arquivo de áudio.

Observações

    O arquivo de áudio utilizado está hospedado em um servidor externo (https://ciram.epagri.sc.gov.br/ciram_arquivos/midia/met/lit14.mp3), mas pode ser substituído por outro arquivo local ou remoto.
    Certifique-se de que a porta serial especificada está disponível e configurada corretamente antes de executar o script.