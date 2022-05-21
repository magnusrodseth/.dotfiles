
lua << EOF
require'lspconfig'.clangd.setup{}
require'lspconfig'.cssmodules_ls.setup{}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.eslint.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.graphql.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.java_language_server.setup{}
require'lspconfig'.kotlin_language_server.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.terraformls.setup{}
require'lspconfig'.tsserver.setup{}
EOF

