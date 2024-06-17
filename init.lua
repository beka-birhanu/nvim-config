require "romareo.plugins.utils.launch"
require "romareo.core.options"
require "romareo.core.keymaps"
require "romareo.plugins.autohelpers.autocmds"

--UI
spec "romareo.plugins.ui.colorscheme"
spec "romareo.plugins.ui.devicons"
spec "romareo.plugins.ui.breadcrumbs"
spec "romareo.plugins.ui.illuminate"
spec "romareo.plugins.ui.lualine"
spec "romareo.plugins.ui.navic"
spec "romareo.plugins.ui.treesittercontext"

-- autohelpers
spec "romareo.plugins.autohelpers.treesitter"
spec "romareo.plugins.autohelpers.lspconfig"
spec "romareo.plugins.autohelpers.cmp"
spec "romareo.plugins.autohelpers.none-ls"
spec "romareo.plugins.autohelpers.mason"
spec "romareo.plugins.autohelpers.schemastore"
spec "romareo.plugins.autohelpers.autoclose"
spec "romareo.plugins.autohelpers.comment"
spec "romareo.plugins.autohelpers.oil"
spec "romareo.plugins.autohelpers.ufo"

-- movement
spec "romareo.plugins.movement.whichkey"
spec "romareo.plugins.movement.nvimtree"
spec "romareo.plugins.movement.fterm"
spec "romareo.plugins.movement.toggleterm"
spec "romareo.plugins.movement.telescope"
spec "romareo.plugins.movement.harpoon"
spec "romareo.plugins.movement.neoscroll"
spec "romareo.plugins.movement.neotab"

-- CPH
spec "romareo.plugins.cph.cph"

-- git
spec "romareo.plugins.git.gitsign"
spec "romareo.plugins.git.gitfugitive"

require "romareo.plugins.utils.lazy"
