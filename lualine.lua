require('lualine').setup {
  options = {
    theme = 'gruvbox',  -- Puedes cambiar el tema
    section_separators = '',  -- Opcional: Personalización de separadores
    component_separators = ''
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},  -- Esto muestra la rama de Git en la barra inferior
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}

