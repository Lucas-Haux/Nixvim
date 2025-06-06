{
  colorschemes = {
    nord = {
      enable = true;
      settings = {
        transparent_background = true;
        disable_background = true;
        # contrast = true;
        integrations = {
          cmp = true;
          notify = true;
          gitsigns = true;
          neotree = true;
          which_key = true;
          illuminate = {
            enabled = true;
            lsp = true;
          };
          navic = {
            enabled = true;
            custom_bg = "NONE";
          };
          treesitter = true;
          telescope.enabled = true;
          indent_blankline.enabled = true;
          mini = {
            enabled = true;
            indentscope_color = "rosewater";
          };
          native_lsp = {
            enabled = true;
            inlay_hints = {
              background = true;
            };
            virtual_text = {
              errors = [ "italic" ];
              hints = [ "italic" ];
              information = [ "italic" ];
              warnings = [ "italic" ];
              ok = [ "italic" ];
            };
            underlines = {
              errors = [ "underline" ];
              hints = [ "underline" ];
              information = [ "underline" ];
              warnings = [ "underline" ];
            };
          };
        };
      };
    };
  };
  highlightOverride = {
    "@boolean" = {
      fg = "#b48ead";
    };
    "@type" = {
      fg = "#8fbcbb";
    };
    type = {
      fg = "#8fbcbb";
    };
  };
}
