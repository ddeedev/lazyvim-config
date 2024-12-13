return {
  {
    "JavaHello/spring-boot.nvim",
    ft = "java",
    dependencies = {
      "mfussenegger/nvim-jdtls", -- or nvim-java, nvim-lspconfig
      "ibhagwan/fzf-lua", -- optional
    },
    config = function()
      vim.g.spring_boot = {
        jdt_extensions_path = nil, -- defaults to ~/.vscode/extensions/vmware.vscode-spring-boot-x.xx.x
        jdt_extensions_jars = {
          "io.projectreactor.reactor-core.jar",
          "org.reactivestreams.reactive-streams.jar",
          "jdt-ls-commons.jar",
          "jdt-ls-extension.jar",
        },
      }
      require("spring_boot").setup({
        ls_path = nil, -- defaults to ~/.vscode/extensions/vmware.vscode-spring-boot-x.xx.x
        jdtls_name = "jdtls",
        log_file = nil,
        java_cmd = "~/Library/Java/JavaVirtualMachines/jdk-21.jdk/Contents/Home/", -- by default will try to get java 17+ path by using JAVA_HOME. If set, this will use the value here as the java command
      })
    end,
  },
}
