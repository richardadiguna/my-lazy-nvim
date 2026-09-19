return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {

        -- Python
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                -- Don't enforce Python type annotations
                typeCheckingMode = "off",

                -- Only analyze files you currently have open
                diagnosticMode = "openFilesOnly",

                -- Better autocomplete/type information for libraries
                useLibraryCodeForTypes = true,

                -- Suggest imports automatically
                autoImportCompletions = true,

                -- Automatically recognize common paths like src/
                autoSearchPaths = true,

                -- Optional: reduce visual noise
                inlayHints = {
                  variableTypes = false,
                  callArgumentNames = false,
                  functionReturnTypes = false,
                  genericTypes = false,
                },
              },
            },
          },
        },
        ruff = {
          init_options = {
            settings = {
              logLevel = "error",
            },
          },
        },

        -- C / C++
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
          },

          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
        },
      },
    },
  },
}
