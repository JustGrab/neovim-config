return {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
--  root_markers = { "Cargo.toml", "Cargo.lock", ".git" },
    settings = {
        ["rust-analyzer"] = {
            checkOnSave = true, 
            check =  {
                command = "clippy"  -- use clippy instead of check, catches more issues
            },
        }
    }
}
