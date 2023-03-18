#!/bin/bash

# Verifica se a porta serial foi passada como argumento
if [ -z "$1" ]; then
  echo "Porta serial não especificada. Uso: $0 <porta>"
  exit 1
fi

## Inicia a reprodução do arquivo de áudio
cvlc https://ciram.epagri.sc.gov.br/ciram_arquivos/midia/met/lit14.mp3  vlc://quit

# Abre a porta serial e envia uma mensagem antes do início do áudio
exec 3<> /dev/ttyS0
echo "Iniciando reprodução do áudio" >&3

# Aguarda até que a reprodução do áudio termine
wait

# Envia uma mensagem após o término do áudio e fecha a porta serial
echo "Reprodução do áudio terminada" >&3
exec 3>&-

# Apaga o arquivo de audio
rm audio.mp3
