require 'rubygems'
require 'bundler/setup'
require 'palette'


vim_colors 'nova_rb' do
  COLOR_VALUES = {
    colors: {
      cyan:   '7FC1CA',
      blue:   '83AFE5',
      purple: '9A93E1',
      pink:   'D18EC2',
      red:    'DF8C8C',
      orange: 'F2C38F',
      yellow: 'DADA93',
      green:  'A8CE93',
    },
    grays: {
      gray0: darken('1E272C', 10),
      gray1: darken('3C4C55', 10),
      gray2: darken('556873', 10),
      gray3: darken('6A7D89', 10),
      gray4: darken('899BA6', 10),
      gray5: darken('C5D4DD', 10),
      gray6: darken('E6EEF3', 10),
    },
  }

  UI_GROUPS = {
    user_action_needed: COLOR_VALUES[:colors][:red],
    user_current_state: COLOR_VALUES[:colors][:cyan],
    background_shade:   COLOR_VALUES[:grays][:gray0],
    background:         COLOR_VALUES[:grays][:gray1],
    foreground:         COLOR_VALUES[:grays][:gray5],
  }.merge(COLOR_VALUES[:grays])

  SYNTAX_GROUPS = {
    constant:   COLOR_VALUES[:colors][:cyan],
    identifier: COLOR_VALUES[:colors][:blue],
    statement:  COLOR_VALUES[:colors][:yellow],
    type:       COLOR_VALUES[:colors][:green],
    global:     COLOR_VALUES[:colors][:purple],
    emphasis:   COLOR_VALUES[:colors][:pink],
    special:    COLOR_VALUES[:colors][:orange],
    trivial:    COLOR_VALUES[:grays][:gray4],
  }

  VERSION_CONTROL_GROUPS = {
    added:    COLOR_VALUES[:colors][:green],
    modified: COLOR_VALUES[:colors][:orange],
    removed:  COLOR_VALUES[:colors][:red],
    renamed:  COLOR_VALUES[:colors][:blue],
  }

  ANSI_GROUPS = {
    normal: {
      red:     COLOR_VALUES[:colors][:red],
      green:   COLOR_VALUES[:colors][:green],
      yellow:  COLOR_VALUES[:colors][:yellow],
      blue:    COLOR_VALUES[:colors][:blue],
      magenta: COLOR_VALUES[:colors][:purple],
      cyan:    COLOR_VALUES[:colors][:cyan],
      black:   UI_GROUPS[:background],
      white:   UI_GROUPS[:foreground],
    },
    bright: {
      red:     COLOR_VALUES[:colors][:orange],
      green:   COLOR_VALUES[:colors][:green],
      yellow:  COLOR_VALUES[:colors][:yellow],
      blue:    COLOR_VALUES[:colors][:blue],
      magenta: COLOR_VALUES[:colors][:pink],
      cyan:    COLOR_VALUES[:colors][:cyan],
      black:   COLOR_VALUES[:grays][:gray4],
      white:   COLOR_VALUES[:grays][:gray6],
    },
  }

  reset true
  background :dark

  Normal             fg: UI_GROUPS[:foreground],         bg: UI_GROUPS[:background]
  Error              fg: UI_GROUPS[:user_action_needed], bg: UI_GROUPS[:background]
  ErrorMsg           fg: UI_GROUPS[:user_action_needed], bg: UI_GROUPS[:background]
  WarningMsg         fg: UI_GROUPS[:user_action_needed], bg: UI_GROUPS[:background]
  SpellBad           fg: UI_GROUPS[:user_action_needed], bg: UI_GROUPS[:background]
  SpellCap           fg: UI_GROUPS[:user_action_needed], bg: UI_GROUPS[:background]
  Todo               fg: UI_GROUPS[:user_action_needed], bg: UI_GROUPS[:background]
  NeomakeErrorSign   fg: UI_GROUPS[:user_action_needed], bg: UI_GROUPS[:background]
  NeomakeWarningSign fg: UI_GROUPS[:user_action_needed], bg: UI_GROUPS[:background]

  MatchParen     fg: UI_GROUPS[:user_current_state], bg: 'NONE'
  CursorLineNr   fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background]
  Visual         fg: UI_GROUPS[:background],         bg: UI_GROUPS[:user_current_state]
  VisualNOS      fg: UI_GROUPS[:background],         bg: UI_GROUPS[:user_current_state]
  Folded         fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background]
  FoldColumn     fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background]
  IncSearch      fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background_shade]
  Search         fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background_shade]
  WildMenu       fg: UI_GROUPS[:background_shade],   bg: UI_GROUPS[:user_current_state]
  ToolbarButton  fg: UI_GROUPS[:background_shade],   bg: UI_GROUPS[:user_current_state]
  Question       fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background]
  MoreMsg        fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background]
  ModeMsg        fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background]
  StatusLine     fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background_shade]
  StatusLineTerm fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background_shade]
  TabLineSel     fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:background]
  PmenuSel       fg: UI_GROUPS[:gray2],              bg: UI_GROUPS[:user_current_state]
  PmenuThumb     fg: UI_GROUPS[:user_current_state], bg: UI_GROUPS[:user_current_state]
  CtrlPMatch     fg: UI_GROUPS[:background],         bg: UI_GROUPS[:user_current_state]

  DiffAdd               fg: UI_GROUPS[:background],            bg: VERSION_CONTROL_GROUPS[:added]
  DiffChange            fg: UI_GROUPS[:background],            bg: VERSION_CONTROL_GROUPS[:modified]
  DiffDelete            fg: VERSION_CONTROL_GROUPS[:removed],  bg: UI_GROUPS[:background]
  DiffText              fg: UI_GROUPS[:background],            bg: VERSION_CONTROL_GROUPS[:modified], gui: 'BOLD'
  GitGutterAdd          fg: VERSION_CONTROL_GROUPS[:added],    bg: UI_GROUPS[:background]
  GitGutterChange       fg: VERSION_CONTROL_GROUPS[:modified], bg: UI_GROUPS[:background]
  GitGutterChangeDelete fg: VERSION_CONTROL_GROUPS[:modified], bg: UI_GROUPS[:background]
  GitGutterDelete       fg: VERSION_CONTROL_GROUPS[:removed],  bg: UI_GROUPS[:background]

  SignColumn              fg: 'NONE',                        bg: UI_GROUPS[:background]
  LineNr                  fg: UI_GROUPS[:gray3],             bg: UI_GROUPS[:background]
  CursorLine              fg: 'NONE',                        bg: UI_GROUPS[:gray2]
  CursorColumn            fg: 'NONE',                        bg: UI_GROUPS[:gray2]
  EndOfBuffer             fg: UI_GROUPS[:gray2],             bg: UI_GROUPS[:background]
  VertSplit               fg: UI_GROUPS[:background_shade],  bg: UI_GROUPS[:background]
  StatusLineNC            fg: UI_GROUPS[:gray3],             bg: UI_GROUPS[:background_shade]
  StatusLineTermNC        fg: UI_GROUPS[:gray3],             bg: UI_GROUPS[:background_shade]
  TabLine                 fg: UI_GROUPS[:gray3],             bg: UI_GROUPS[:background_shade]
  TabLineFill             fg: UI_GROUPS[:background_shade],  bg: UI_GROUPS[:background_shade]
  ToolbarLine             fg: UI_GROUPS[:gray3],             bg: UI_GROUPS[:background_shade]
  Pmenu                   fg: UI_GROUPS[:foreground],        bg: UI_GROUPS[:gray2]
  PmenuSbar               fg: UI_GROUPS[:gray4],             bg: UI_GROUPS[:gray4]
  ColorColumn             fg: UI_GROUPS[:gray2],             bg: UI_GROUPS[:background]
  CtrlPStats              fg: SYNTAX_GROUPS[:special],       bg: UI_GROUPS[:background]
  fzf1                    fg: UI_GROUPS[:background],        bg: UI_GROUPS[:gray2]
  fzf2                    fg: UI_GROUPS[:background],        bg: UI_GROUPS[:gray2]
  fzf3                    fg: UI_GROUPS[:background],        bg: UI_GROUPS[:gray2]
  EasyMotionTarget        fg: ANSI_GROUPS[:normal][:red],    bg: UI_GROUPS[:background],      gui: 'BOLD'
  EasyMotionTarget2First  fg: ANSI_GROUPS[:bright][:red],    bg: UI_GROUPS[:background]
  EasyMotionTarget2Second fg: ANSI_GROUPS[:normal][:yellow], bg: UI_GROUPS[:background]
  EasyMotionShade         fg: SYNTAX_GROUPS[:trivial],       bg: UI_GROUPS[:background]

  Constant             fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  Directory            fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsObjectBraces       fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsBrackets           fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsBlock              fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsFuncBlock          fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsClassBlock         fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsTryCatchBlock      fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsIfElseBlock        fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsFinallyBlock       fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsSwitchBlock        fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsRepeatBlock        fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsObjectValue        fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsClassValue         fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsParen              fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsParenSwitch        fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsParenCatch         fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsParenIfElse        fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsParenRepeat        fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsBracket            fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsTernaryIf          fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsTemplateString     fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  jsTemplateVar        fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  cssAttr              fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  cssAttrRegion        fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  cssAttributeSelector fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  htmlTitle            fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  htmlH1               fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  htmlH2               fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  htmlH3               fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  htmlH4               fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  htmlH5               fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  htmlH6               fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  htmlLink             fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  markdownCode         fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  markdownCodeBlock    fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  xmlString            fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  netrwPlain           fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  netrwDir             fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]
  shDerefSimple        fg: SYNTAX_GROUPS[:constant], bg: UI_GROUPS[:background]

  Identifier                      fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  enjsVariableDef                 fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsObject                        fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsObjectKey                     fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsObjectKeyComputed             fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsClassPropertyComputed         fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsDestructuringPropertyComputed fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsDestructuringValue            fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsFutureKeys                    fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsObjectProp                    fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsPrototype                     fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsObjectStringKey               fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsFuncArgs                      fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsTaggedTemplate                fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsDestructuringBlock            fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsDestructuringArray            fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsDestructuringPropertyValue    fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsImportContainer               fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsExportContainer               fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsModuleGroup                   fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsModuleKeyword                 fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  javascriptHtmlEvents            fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  javascriptDomElemAttrs          fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  javascriptDomElemFuncs          fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  cssClassName                    fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  cssIdentifier                   fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  htmlTagName                     fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  htmlSpecialTagName              fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  htmlTag                         fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  htmlEndTag                      fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  jsonKeyword                     fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  xmlAttrib                       fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  netrwExe                        fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  shFunction                      fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  typescriptVariableDeclaration   fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]
  typescriptCall                  fg: SYNTAX_GROUPS[:identifier], bg: UI_GROUPS[:background]

  Statement            fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  jsFuncCall           fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  jsOperator           fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  jsSpreadOperator     fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  jsTemplateExpression fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  jsFuncArgExpression  fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  jsSpreadExpression   fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  jsRestExpression     fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  cssFunctionName      fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  cssProp              fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  htmlArg              fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  jsxRegion            fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  xmlTag               fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  xmlEndTag            fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  xmlTagName           fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  xmlEqual             fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  shCmdSubRegion       fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  typescriptOperator   fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  typescriptOpSymbols  fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]
  typescriptProp       fg: SYNTAX_GROUPS[:statement], bg: UI_GROUPS[:background]

  Type                  fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFunction            fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFunctionKey         fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsStorageClass        fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsExportDefault       fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsNan                 fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  shFunctionKey         fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFlowDefinition      fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFlowClassDef        fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFlowTypeStatement   fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFlowTypeKeyword     fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFlowImportType      fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFlowArgumentDef     fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFlowReturn          fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFlowFunctionGroup   fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  jsFlowClassGroup      fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  typescriptEnumKeyword fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  typescriptVariable    fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  typescriptFuncKeyword fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]
  typescriptDefault     fg: SYNTAX_GROUPS[:type], bg: UI_GROUPS[:background]

  PreProc             fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  Keyword             fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  jsGlobalObjects     fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  jsThis              fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  jsSwitchCase        fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  jsParenDecorator    fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  cssTagName          fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  jsGlobalNodeObjects fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  cssFontDescriptor   fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  typescriptGlobal    fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  typescriptExport    fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]
  typescriptImport    fg: SYNTAX_GROUPS[:global], bg: UI_GROUPS[:background]

  Underlined         fg: SYNTAX_GROUPS[:emphasis], bg: UI_GROUPS[:background]
  markdownItalic     fg: SYNTAX_GROUPS[:emphasis], bg: UI_GROUPS[:background]
  markdownBold       fg: SYNTAX_GROUPS[:emphasis], bg: UI_GROUPS[:background]
  markdownBoldItalic fg: SYNTAX_GROUPS[:emphasis], bg: UI_GROUPS[:background]

  Special                   fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  SpecialKey                fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  NonText                   fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  Title                     fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  jsBraces                  fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  jsFuncBraces              fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  jsDestructuringBraces     fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  jsClassBraces             fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  jsParens                  fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  jsFuncParens              fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  jsArrowFunction           fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  jsModuleAsterisk          fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  cssBraces                 fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  cssBraces                 fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownHeadingDelimiter  fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownH1                fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownH2                fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownH3                fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownH4                fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownH5                fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownH6                fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownRule              fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownListMarker        fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownOrderedListMarker fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownLinkText          fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  markdownCodeDelimiter     fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  netrwClassify             fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  netrwVersion              fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  typescriptParens          fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  typescriptBraces          fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]
  typescriptArrowFunc       fg: SYNTAX_GROUPS[:special], bg: UI_GROUPS[:background]

  Comment              fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
  Ignore               fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
  Conceal              fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
  Noise                fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
  jsNoise              fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
  jsFuncArgCommas      fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
  cssClassNameDot      fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
  jsonQuote            fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
  shQuote              fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
  typescriptEndColons  fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
  typescriptTemplateSB fg: SYNTAX_GROUPS[:trivial], bg: UI_GROUPS[:background]
end
