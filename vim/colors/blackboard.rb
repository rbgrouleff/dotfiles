# vim: nowrap fdm=marker
# # colors {{{1
red            = "FF3B00"
bright_orange  = "FF5600"
yolk_yellow    = "FFDE00"
lemon_yellow   = "D8FA3C"
green          = "61CE3C"
light_blue     = "84A7C1"
lighter_grey   = "C9C9C9"
medium_grey    = "AEAEAE"
deep_navy      = "0B1022"
white          = "FFFFFF"
black          = "000000"
off_black      = "070a15"
navy           = "191E2F"
blue1          = "1C3B79"
blue2          = "283A76"
deep_blue      = "1d2652"
dark_grey      = "323232"
blue_grey      = "4a4a59"
light_grey     = "888888"
terracotta     = "C23621"
light_orange   = "f0b016"
pale_orange    = "fad680"
pale_yellow    = "ffffaf"
primary_yellow = "ffff00"
# }}}
vim_colors "blackboard" do
  author "Drew Neil"
  notes  "Based on the 'Blackboard' theme from TextMate."

  reset true
  background :dark

  # GUI colors
  Normal white, deep_navy
  Cursor :fg => black,   :bg => primary_yellow
  CursorLine :bg => navy
  LineNr :bg => dark_grey, :fg => light_grey
  Folded :fg => light_blue, :bg => off_black
  Pmenu :bg => light_blue
  Visual :bg => blue2
  Directory :fg => light_blue

  # General syntax
  Comment :fg => medium_grey
  Constant :fg => lemon_yellow
  Keyword :fg => yolk_yellow
  String :fg => green
  Type :fg => light_blue
  Identifier :fg => green, :gui => "NONE"
  Function :fg => bright_orange, :gui => "NONE"
  #clear Search
  IncSearch :fg => black, :bg => light_orange, :gui => "NONE"
  Search :fg => black, :bg => pale_orange
  PreProc :fg => bright_orange
  Special :fg => light_orange  # Ruby string interpolation, NERDTree.
  Todo :fg => white, :bg => bright_orange

  # Diffs
  DiffAdd :bg => green, :fg => black
  DiffDelete :bg => red, :fg => white
  DiffChange :bg => light_blue, :fg => black
  DiffText :bg => yolk_yellow, :fg => black

  # StatusLine
  StatusLine  :fg => white, :bg => bright_orange, :gui => "italic"
  StatusLineNC  :fg => black, :bg => white, :gui => "NONE"

  #Invisible character colors
  #NonText :fg => blue_grey
  NonText :fg => lighter_grey
  SpecialKey :fg => blue_grey

  #HTML Colors
  link :htmlTag, :htmlEndTag, :htmlTagName, :to => :Type

  # Ruby colors
  link :rubyClass, :rubyDefine, :rubyInclude, :rubyAttribute, :to => :Keyword
  link :rubyConstant, :to => :Type
  link :rubySymbol, :to => :Constant
  #link :rubyInstanceVariable, :to => :Normal
  rubyInstanceVariable :fg => terracotta
  link :rubyString, :rubyStringDelimiter, :to => :String

  #Rails Colors
  link :railsMethod, :to => :Type

  #Sass colors
  link :sassMixin, :to => :Keyword
  link :sassMixing, :to => :Constant

  #Outliner colors
  OL1 :fg => bright_orange
  OL2 :fg => green
  OL3 :fg => light_blue
  OL4 :fg => lemon_yellow
  BT1 :fg => medium_grey
  link :BT2, :to => :BT1
  link :BT3, :to => :BT1
  link :BT4, :to => :BT1

  #Markdown colors
  markdownCode :fg => green, :bg => off_black
  link :markdownCodeBlock, :to => :markdownCode

  #Git colors
  gitcommitSelectedFile :fg => green
  gitcommitDiscardedFile :fg => terracotta
  gitcommitWarning :fg => terracotta
  gitcommitBranch :fg => yolk_yellow
  gitcommitHeader :fg => light_blue

  #netrw colors
  #netrwDir :fg => blue2
end
