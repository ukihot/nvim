return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    cmd = { "Oil" },
    keys = {
      { "-", "<cmd>Oil<CR>", desc = "親ディレクトリを開く" },
      { "<leader>e", "<cmd>Oil<CR>", desc = "ファイルエクスプローラーを開く" },
      { "<leader>E", "<cmd>Oil --float<CR>", desc = "フローティングエクスプローラー" },
    },
    opts = {
      default_file_explorer = true,
      -- 表示する列の設定
      columns = {
        "icon",
        -- "permissions", -- 権限表示は非表示にしてスッキリと
        "size",
        "mtime",
      },
      -- バッファ設定
      buf_options = {
        buflisted = false,
        bufhidden = "hide",
      },
      -- ウィンドウ設定
      win_options = {
        wrap = false,
        signcolumn = "no",
        cursorcolumn = false,
        foldcolumn = "0",
        spell = false,
        list = false,
        conceallevel = 3,
        concealcursor = "nvic",
      },
      -- 削除確認
      delete_to_trash = true,
      skip_confirm_for_simple_edits = false,
      -- プロンプト設定
      prompt_save_on_select_new_entry = true,
      -- 表示オプション
      view_options = {
        show_hidden = false, -- デフォルトは隠しファイルを非表示
        is_hidden_file = function(name, bufnr)
          return vim.startswith(name, ".")
        end,
        is_always_hidden = function(name, bufnr)
          return false
        end,
        natural_order = true, -- 自然順序でソート
        sort = {
          { "type", "asc" }, -- ディレクトリを先に
          { "name", "asc" },
        },
      },
      -- フローティングウィンドウ設定
      float = {
        padding = 2,
        max_width = 90,
        max_height = 30,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
      },
      -- プレビュー設定
      preview = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = 0.9,
        min_height = { 5, 0.1 },
        height = nil,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
      },
      -- プログレス設定
      progress = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = { 10, 0.9 },
        min_height = { 5, 0.1 },
        height = nil,
        border = "rounded",
        minimized_border = "none",
        win_options = {
          winblend = 0,
        },
      },
      -- キーマップ設定
      keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select_tab",
        ["<C-s>"] = "actions.select_vsplit",
        ["<C-h>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = "actions.close",
        ["<C-l>"] = "actions.refresh",
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = "actions.tcd",
        ["gs"] = "actions.change_sort",
        ["gx"] = "actions.open_external",
        ["g."] = "actions.toggle_hidden", -- 隠しファイル表示切り替え
        ["g\\"] = "actions.toggle_trash", -- ゴミ箱表示切り替え
        -- コピー・移動・削除
        ["yy"] = "actions.copy_entry_path",
        ["yn"] = "actions.copy_entry_filename",
        -- 便利なキーマップ
        ["<leader>r"] = "actions.refresh",
        ["<leader>h"] = "actions.toggle_hidden",
      },
      -- 外部プログラム設定
      use_default_keymaps = true,
      -- 確認ダイアログ
      confirmation = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = 0.9,
        min_height = { 5, 0.1 },
        height = nil,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}

