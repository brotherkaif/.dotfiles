# dotfiles
The dotfiles of Brother Kaif.

## Setup
The `bootstrap.sh` script can be run to setup a basic development environment. The scripts within the `scripts` directory can be run individually if only specific setup needs to occur.

## Keymaps
### General
| Mode     | Mapping        | Effect                      |
|----------|----------------|-----------------------------|
| terminal | '<Esc><Esc>'   | Normal mode within terminal |
| normal   | '<Leader><CR>' | Open Command Palette        |
| normal   | '<leader>t'    | Open terminal               |



### Windows
| Mode     | Mapping           | Effect                     |
|----------|-------------------|----------------------------|
| normal   | '<leader>h'       | cursor left                |
| normal   | '<leader>j'       | cursor down                |
| normal   | '<leader>k'       | cursor up                  |
| normal   | '<leader>l'       | cursor right               |
| normal   | '<leader>H'       | window left                |
| normal   | '<leader>J'       | window down                |
| normal   | '<leader>K'       | window up                  |
| normal   | '<leader>L'       | window right               |
| normal   | "<leader><Left>"  | decrease horizontal size   |
| normal   | "<leader><Down>"  | decrease vertical size     |
| normal   | "<leader><Up>"    | increase vertical size     |
| normal   | "<leader><Right>" | increase horizontal size   |
| normal   | '<leader>wx'      | split horizontal           |
| normal   | '<leader>wv'      | split vertical             |
| normal   | '<leader>wt'      | window to tab              |
| normal   | '<leader>we'      | equalise buffer windows    |
| normal   | '<leader>wo'      | close other buffer windows |
| normal   | '<leader>wm'      | maximise buffer window     |

### Buffers
| normal   | '<leader>bw'      | write buffer                     |
| normal   | '<leader>br'      | reload buffer                    |
| normal   | '<Leader>bs'      | toggle spellcheck                |
| normal   | '<Leader>/b'      | grep buffer                      |
| normal   | "]b"              | next buffer                      |
| normal   | "[b"              | previous buffer                  |

### Navigation
| normal   | '-'               | file browser (current directory) |
| normal   | '<leader>p'       | find file                        |
| normal   | '<Leader>/p'      | grep files                       |
| normal   | ']q'              | next quick fix                   |
| normal   | '[q'              | previous quick fix               |

| normal   | '<leader>g'       | git status                       |

### Interface
| normal   | '<leader>il'      | set theme to light               |
| normal   | '<leader>id'      | set theme to dark                |
| normal   | '<leader>in'      | toggle relative line numbers     |
| normal   | '<leader>ic'      | toggle display unprintable chars |

### LSP
| Mode   | Mapping     | Effect                  |
|--------|-------------|-------------------------|
| normal | 'gD'        | go to declaration       |
| normal | 'gd'        | go to definition        |
| normal | 'K'         | cursor hover            |
| normal | 'gi'        | go to implementation    |
| normal | '<C-k>'     | signature help          |
| normal | '<space>wa' | add workspace folder    |
| normal | '<space>wr' | remove workspace folder |
| normal | '<space>wl' | list workspace folders  |
| normal | '<space>D'  | go to type definition   |
| normal | '<space>rn' | rename                  |
| normal | '<space>ca' | code action             |
| normal | 'gr'        | go to references        |
| normal | '<space>f'  | format                  |

### VISUAL MODE
#### Shift Lines
| Mode   | Mapping | Effect            |
|--------|---------|-------------------|
| visual | '<'     | shift lines left  |
| visual | 'J'     | shift lines down  |
| visual | 'K'     | shift lines up    |
| visual | '>'     | shift lines right |

### INSERT MODE
#### Copilot
| Mode   | Mapping | Effect                   |
|--------|---------|--------------------------|
| insert | '<C-h>' | show previous suggestion |
| insert | '<C-j>' | accept suggestion        |
| insert | '<C-k>' | dismiss suggestion       |
| insert | '<C-l>' | show next suggestion     |
