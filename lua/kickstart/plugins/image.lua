return {
  '3rd/image.nvim',
  build = false,
  opts = {
    processor = 'magick_cli',
    integrations = {
      markdown = {
        -- floating_windows = true,
      },
    },
  },
}
