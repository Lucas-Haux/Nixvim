{ pkgs, ... }:
let
  theme = pkgs.vimPlugins.nord-nvim;
in
{
  extraConfigVim = # vimscript
    ''
      hi! link StatusLine Normal
      hi! link StatusLineNC Normal
    '';
  extraConfigLua = # lua
    ''
      local custom_vscode = require('lualine.themes.nord')
      custom_vscode.normal.c.bg = 'None'
      require('lualine').setup { options = { theme  = custom_vscode } }
    '';

  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
        extensions = [
          "fzf"
          "neo-tree"
        ];
        disabledFiletypes = {
          statusline = [
            "startup"
            "alpha"
          ];
        };
        componentSeparators = {
          left = "";
          right = "";
        };
        sectionSeparators = {
          left = "";
          right = "  ";

        };
      };
      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            separator.left = "";
            padding = 2;
            separator.right = "";

          }
        ];
        lualine_b = [
          {
            separator.left = "";
            __unkeyed-1 = "branch";
            separator.right = "";
            color = {
              bg = "#5e81ac";
            };
          }
          {
            __unkeyed-1 = "diff";
            symbols = {
              added = " ";
              modified = " ";
              removed = " ";
            };
            color = {
              bg = "#b48ead";
            };
            separator.right = "";
          }
          {
            __unkeyed-1 = "diagnostics";
            sources = [ "nvim_diagnostic" ];
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
            };
            color = {
              bg = "#d08770";
            };
            separator.right = "";
          }
        ];
        lualine_c = [ { } ];
        lualine_x = [
          {
            __unkeyed-1 = "filetype";
            separator.left = "";
            color = {
              bg = "#5e81ac";
            };
          }
        ];
        lualine_y = [
          {
            __unkeyed-1 = "progress";
            separator.left = "";
            color = {
              fg = "#2e3440";
              bg = "#88c0d0";
            };
          }

        ];
        lualine_z = [
          {
            __unkeyed-1 = "location";
            separator.right = "";
            padding = 2;
          }
        ];
      };
    };
    # highlight = with theme; {
    #   StatusLine = {
    #     bg = nord0;
    #   };
    #
    #   lualine_b_windows_active = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_windows_inactive = {
    #     fg = nord6;
    #     bg = nord1;
    #   };
    #   lualine_b_diff_modified_terminal = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_modified_inactive = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_removed_terminal = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_removed_inactive = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_modified_replace = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_modified_command = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_removed_replace = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_removed_command = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_modified_visual = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_modified_normal = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_modified_insert = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_removed_visual = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_removed_normal = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_removed_insert = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_added_terminal = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_added_inactive = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_added_replace = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_added_command = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_added_visual = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_added_normal = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    #   lualine_b_diff_added_insert = {
    #     fg = nord6;
    #     bg = nord10;
    #   };
    # };
    #
  };
}
