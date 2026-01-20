{
  plugins.yazi = {
    enable = true;
    settings = {
      enable_mouse_support = true;
      floating_window_scaling_factor = 0.9;
      yazi_floating_window_border = "none";
      open_for_directories = true;
    };
  };

  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>e";
      action = "<cmd>Yazi<cr>";
      options = {
        desc = "Open/Close Yazi";
      };
    }
  ];
}
