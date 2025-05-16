#!/bin/bash

ARTIGO_ORIGINAL=$1
ARTIGO_FINAL=$2
CDN_BASE="https://raw.githubusercontent.com/usuario/repositorio/main/static"

if [[ -z "$ARTIGO_ORIGINAL" || -z "$ARTIGO_FINAL" ]]; then
  echo "Uso: ./export.sh entrada.md saida.md"
  exit 1
fi

sed "s|/img/|$CDN_BASE/img/|g" "$ARTIGO_ORIGINAL" > "$ARTIGO_FINAL"
echo "Artigo exportado para $ARTIGO_FINAL com URLs convertidas."
