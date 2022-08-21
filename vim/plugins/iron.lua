local iron = require("iron.core")

iron.setup {
    config = {
        -- Your repl definitions come here
        repl_definition = {
            sh = {
                command = {"zsh"}
            },
            -- forcing a default
            python = require("iron.fts.python").ipython
        },
    },
    keymaps = {
        send_motion = "<localleader>t",
        visual_send = "<localleader>v",
        send_file = "<localleader>f",
        send_line = "<localleader>l",
        send_mark = "<localleader>m",
        mark_motion = "<localleader>mc",
        mark_visual = "<localleader>mc",
        remove_mark = "<localleader>md",
        cr = "<localleader>s<cr>",
        interrupt = "<localleader>s<localleader>",
        exit = "<localleader>q",
        clear = "<localleader>cl",
    },
    -- If the highlight is on, you can change how it looks
    -- For the available options, check nvim_set_hl
    highlight = {
        italic = true
    }
}
