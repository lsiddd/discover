#!/usr/bin/env bash

# by Lee Baird (@discoverscripts)
# Adapted for Brazilian citizens by [Your Name]

f_runlocally
clear
f_banner

# Check if Firefox is running
if pgrep firefox > /dev/null; then
    echo
    echo "[!] Close Firefox before running script."
    echo
    exit 1
fi

echo -e "${BLUE}RECON BRASILEIRO${NC}"
echo
echo -n "Primeiro nome: "
read -r FIRST

# Check for no answer
if [ -z "$FIRST" ]; then
    f_error
fi

echo -n "Sobrenome:     "
read -r LAST

# Check for no answer
if [ -z "$LAST" ]; then
    f_error
fi

# Brazilian-specific resources
xdg-open "https://www.telelistas.net/busca?q=${FIRST}+${LAST}" &
sleep 2
xdg-open "https://www.jusbrasil.com.br/busca?q=${FIRST}+${LAST}" &
sleep 2
xdg-open "https://portaldatransparencia.gov.br/busca?termo=${FIRST}+${LAST}" &
sleep 2
xdg-open "https://www.apontador.com.br/resultados.html?q=${FIRST}+${LAST}" &
sleep 2
xdg-open "https://www.facebook.com/search/people/?q=${FIRST}%20${LAST}&location=Brazil" &
sleep 2
xdg-open "https://www.linkedin.com/search/results/people/?keywords=${FIRST}%20${LAST}&location=Brazil" &
sleep 2
xdg-open "https://www.google.com/search?q=site:.br+${FIRST}+${LAST}" &
sleep 2
xdg-open "https://www.youtube.com/results?search_query=${FIRST}+${LAST}+Brasil" &
