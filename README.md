# Configurazione di tmux per macOS

Tema **Tokyo Night**, prefix rimappato e gestione plugin con TPM.

## Punti chiave

- Prefix: **`C-a`** (al posto di `C-b`)
- `default-terminal "tmux-256color"` con truecolor (`:Tc`); indici finestre/pane da 1
- Tema in `themes/tokyo-night.tmux` (status bar `#292e42`, staccata dallo sfondo Ghostty)

## Plugin

Gestiti da TPM e **non versionati** in questo repo (`plugins/` è in `.gitignore`):
vengono scaricati automaticamente al primo avvio di tmux, grazie al bootstrap nel
`tmux.conf` che clona TPM e lancia l'installazione — stesso principio di lazy.nvim.

- `tpm`, `tmux-sensible`, `tmux-resurrect`, `tmux-yank`, `tmux-continuum`
- `@continuum-restore 'on'`: salvataggio/ripristino automatico delle sessioni

## Prerequisito: fix del bug URL di TPM

TPM clona i plugin con l'URL `https://git::@github.com/...`, che le versioni recenti
di git rifiutano ("download fail"). **Va impostato una volta, prima del primo avvio**,
altrimenti il bootstrap fallisce:

```sh
git config --global url."https://github.com/".insteadOf "https://git::@github.com/"
```

## Installazione

```sh
git config --global url."https://github.com/".insteadOf "https://git::@github.com/"
git clone git@github.com:frpiana/tmux.git ~/.config/tmux
tmux        # al primo avvio TPM e i plugin si installano da soli
```
