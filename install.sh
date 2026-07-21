#!/bin/bash
# Instalador das skills do Salto para o Dolar (/portfolio e /proposta)
# Uso:  curl -fsSL https://raw.githubusercontent.com/pivo-curso/salto-skills/main/install.sh | bash
set -e
echo ""
echo "Instalando as skills do Salto para o Dolar..."
TMP="$(mktemp -d)"
curl -fsSL https://github.com/pivo-curso/salto-skills/archive/refs/heads/main.tar.gz | tar -xz -C "$TMP"
mkdir -p "$HOME/.claude/skills"
rm -rf "$HOME/.claude/skills/portfolio" "$HOME/.claude/skills/proposta"
cp -R "$TMP/salto-skills-main/plugins/salto/skills/portfolio" "$HOME/.claude/skills/portfolio"
cp -R "$TMP/salto-skills-main/plugins/salto/skills/proposta"  "$HOME/.claude/skills/proposta"
rm -rf "$TMP"
echo ""
echo "=========================================="
echo "  Instalado com sucesso!"
echo "  Skills disponiveis: /portfolio e /proposta"
echo "  Agora FECHE e ABRA o Claude Code de novo"
echo "  e teste digitando /portfolio numa conversa nova."
echo "=========================================="
