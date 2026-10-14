# Blog rodrigues-am.xyz — AGENTS.md

Projeto Hugo (tema PaperMod) com conteúdo canônico em `blog.org` (ox-hugo).
Domínio: rodrigues-am.xyz · Deploy: Netlify · Repo: github.com/rodrigues-am/blog

## Arquitetura

- `blog.org` é a fonte canônica de TODO o conteúdo. Os arquivos em
  `content/*.md` são GERADOS pelo ox-hugo a partir do `blog.org`.
- `config.yml` — configuração do Hugo (NÃO é afetado pelo ox-hugo).
- `layouts/partials/*` — templates customizados do PaperMod (NÃO afetados).
- `static/` — imagens, favicons, JS (NÃO afetado).
- `netlify.toml` — deploy config.
- `todo.org` — tarefas de SEO e manutenção do blog.

## Regras críticas

1. NUNCA editar diretamente arquivos em `content/posts/*.md`,
   `content/about.md`, ou `content/archives.md`. São gerados pelo ox-hugo.
   Edite o `blog.org` e re-exporte.

2. Arquivos seguros de editar diretamente (não sobrescritos pelo ox-hugo):
   - `config.yml`
   - `layouts/partials/*`
   - `layouts/_default/*`
   - `static/*`
   - `netlify.toml`
   - `archetypes/*`

3. Para re-exportar o conteúdo após editar `blog.org`:
   ```bash
   emacs --batch -l ox-hugo ~/notas/blog/blog.org \
     --eval '(org-hugo-export-wim-to-md :all)' 2>&1
   ```

4. Para testar o build do Hugo:
   ```bash
   # Hugo não está no PATH do servidor; usar via nix:
   nix run nixpkgs#hugo -- serve -D  # dev server
   nix run nixpkgs#hugo -- gc --minify  # build produção
   ```

5. Git: branch `master`, remote `origin` = `git@github.com:rodrigues-am/blog.git`.
   Deploy é automático via Netlify ao pushar para `master`.

6. Submódulos: `themes/PaperMod` (tema ativo). Os submódulos `themes/tale`
   e `themes/noteworthy` são temas antigos não utilizados.

## Estrutura de pastas

```
blog/
├── blog.org              # Fonte canônica (ox-hugo)
├── config.yml            # Config Hugo
├── netlify.toml          # Deploy config
├── todo.org              # Tarefas SEO/manutenção
├── .projectile           # Marca como projeto Emacs
├── .dir-locals.el        # Config local Emacs
├── AGENTS.md             # Este arquivo
├── readme.org            # Guia de navegação do projeto
├── archetypes/           # Templates para novos posts (Hugo)
├── content/              # Saída do ox-hugo (GERADO — não editar)
│   ├── about.md
│   ├── archives.md
│   └── posts/*.md
├── layouts/
│   ├── partials/          # Templates customizados PaperMod
│   └── shortcodes/
├── static/
│   ├── img/              # Imagens do site
│   ├── js/
│   └── ltximg/           # Imagens LaTeX renderizadas
├── themes/
│   └── PaperMod/         # Tema (submódulo git)
├── resources/            # Cache Hugo
└── public/               # Build output (gitignored)
```

## Org-capture

O Doom Emacs já tem um template de capture para blog:
- Tecla: `C-c o c b` (org-capture → "b" = Blog Post)
- Alvo: `~/notas/blog/blog.org` → heading "NO New ideas"
- Template: `~/sync/pessoal/emacs/org-capture-templates/post.org`

## ox-hugo no Emacs

O ox-hugo já está configurado no Doom Emacs (módulo `+hugo` em `init.el`).
Ao editar `blog.org` no Emacs, use `C-c C-e H h` para exportar um post
ou `C-c C-e H A` para exportar todos.

## SEO

O `todo.org` contém o plano de SEO em 6 fases. Consulte-o antes de
fazer alterações que possam afetar SEO (titles, schema, meta tags).