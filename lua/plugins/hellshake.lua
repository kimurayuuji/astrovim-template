return {
  'nekowasabi/hellshake-yano.vim',
  config = function()
    -- Configuration here
    vim.g.hellshake_yano_trigger_count = 3
    vim.g.hellshake_yano = {
      hintPosition = "both",
      bothMinWordLength = 6,      -- Both-side hints for 6+ character words

      defaultMinWordLength = 3,   -- Show hints for 3+ character words
      perKeyMinLength = {
        w = 4,   -- Word motion - meaningful words only
        v = 2,   -- Visual mode - more precise hints
      },
      perKeyMotionCount = {
        w = 1,   -- Show hints immediately on word motion
        v = 1    -- Show hints immediately in visual mode
      }
    }
  end
}
