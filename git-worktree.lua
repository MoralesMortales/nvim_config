
require("git-worktree").setup({
    -- Opciones de configuración (puedes dejar la configuración predeterminada)
    change_directory_command = "cd", -- Comando para cambiar de directorio
    update_on_change = true,         -- Actualizar cuando cambias de worktree
    update_on_change_command = "Telescope find_files", -- Comando a ejecutar cuando cambies de worktree
    clearjumps_on_change = true,     -- Limpia los saltos de navegación cuando cambies de worktree
})
