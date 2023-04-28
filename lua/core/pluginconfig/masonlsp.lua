-- The installer is just kept here for other languages.
-- We now have lua lsp, and java lsp, but nvim-lsp-installer is great if you
-- need or want to explore them too... I am commenting it; just
-- for the fact that java-lsp do not work with lombok by just
-- including  -- require("nvim-lsp-installer").setup {}
-- ??? But anyway... sometimes it works:
require("mason-lspconfig").setup({
    ensure_installed = { "jdtls", "marksman", "lua_ls", "kotlin_language_server", "groovyls"},

   -- We do not need 'jdtls' server here... we juse jdtls-nvim from mfussenegger
   -- WELL THIS LAZY VERSION DO!

    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    --install_root_dir = spades_lsp_directory,
    --max_concurrent_installers = 8,
})

