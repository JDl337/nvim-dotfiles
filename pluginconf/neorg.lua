require('neorg').setup {
    load = {
        ["core.defaults"] = {},

        ["core.norg.concealer"] = {
            config = { -- table is optional
               -- Configuration here
            }
        },

        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    gtd = "~/norg/gtd",
                }
            }
        },

        ["core.gtd.base"] = {
            config = {
                workspace = "gtd"
            }
        },

        ["core.norg.journal"] = {
            config = {
                --config go here
            }
        },

        ["core.norg.qol.toc"] = {
            config = {
                --config go here
            }
        },


        ["core.norg.completion"] = {
            config = {
               -- Configuration here
               engine = "nvim-cmp"
            }
        },

        ["core.keybinds"] = {
            config = {
                neorg_leader = "<Leader>",
            }
        }
    }
}
