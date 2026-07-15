# Salto para o Dólar — Skills

Ferramentas prontas de **Claude Code** do curso **Salto para o Dólar / Pivô**: `/portfolio` e `/proposta`. Instala uma vez e usa direto no seu Claude.

## ⚠️ Antes de tudo
Você precisa do **Claude Code** — no **app desktop** ou no **terminal**.
No **claude.ai/code (web) não funciona** — use o app desktop ou o terminal.

E lembre da regra de ouro: depois de instalar, **abra uma conversa/sessão NOVA**. As skills só aparecem em sessão nova (a lista é montada quando o Claude abre).

## Instalar

### Jeito 1 — rápido (recomendado)
Cole estas **2 linhas** no Claude Code (uma mensagem só) e envie:

```
/plugin marketplace add pivo-curso/salto-skills
/plugin install salto@salto-skills
```

O Claude instala as duas skills. Depois **abra uma sessão nova** e digite `/portfolio` pra confirmar.

### Jeito 2 — garantido (se o Jeito 1 não pegar)
Cole isto numa mensagem pro Claude Code:

> Crie ou edite o arquivo `~/.claude/settings.json` adicionando estas chaves (sem apagar o que já existir), e depois me diga pra reiniciar:
> ```json
> {
>   "extraKnownMarketplaces": {
>     "salto-skills": { "source": { "source": "github", "repo": "pivo-curso/salto-skills" } }
>   },
>   "enabledPlugins": { "salto@salto-skills": true }
> }
> ```

Salve, **reinicie o Claude Code**, e as skills carregam sozinhas — sem comando nenhum.

## As skills
- **`/portfolio`** — monta seu portfólio no padrão gringo (que fecha em dólar): em inglês nativo, posicionado por resultado, com o método da Clarisse (as 7 coisas).
- **`/proposta`** — proposta comercial vencedora em inglês pra vaga/cliente gringo (pesquisa o cliente → SPIN → anatomia 30/20/30/20 → preço ancorado no resultado).

## Atualizar (quando sair melhoria)
Cole no Claude Code:
```
/plugin marketplace update salto-skills
```

---
Feito para os alunos do **Salto para o Dólar**. © Thiago Medeiros.
