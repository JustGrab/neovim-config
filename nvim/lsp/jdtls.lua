return {
    vim.lsp.config("jdtls", {
        root_markers = {".git", ".classpath"},
        init_options = {
            settings = {
                java = {
                    import = {
                        gradle = { enabled = false },
                        maven = { enabled = false },
                    },
                },
            },
        },
    })
}
