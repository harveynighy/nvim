require('lualine').setup({
    options = {

        sections = {
            lualine_a = {
                { 'mode', fmt = function(str) return str:sub(1, 1) end }
            },
            lualine_b = { 'branch' }
        },

        section_separators = { left = ' ', right = ' ' },
        component_separators = { left = ' ', right = ' ' }

    }
})
