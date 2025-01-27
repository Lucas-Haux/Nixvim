{
  plugins = {
    flutter-tools = {
      enable = true;
      settings = {
        closing_tags = {
          enable = true;
          prefix = ">";
        };
        lsp = {
          color = {
            enabled = true;
            background = false;
            background_color = null;
          };
          settings = {
            showTodos = true;
            completeFunctionCalls = true;
            enableSnippets = true;
            updateImportsOnRename = true;
            renameFilesWithClasses = "prompt";
            virtual_text = true;
          };
        };
        widget_guides = {
          enabled = true;
        };
      };
    };
  };
}
