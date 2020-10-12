--	Sublimate for Textadept.
--	Author:	iivii	|	https://odd.codes
--	Format styled after Dark Theme for Textadept by Mitchell.
--	Date:	10/11/2020
--[[INCLUDE THE FOLLOWING IN `init.lua`:

	--  Adjust to Sublimate Theme and Fira Code Font
	if not CURSES then
		--view:set_theme('sublimate', {font = "Fira Code", size=14})
		view:set_theme('sublimate')
	end

	--	Always use tabs.
	buffer.use_tabs = true
	buffer.tab_width = 2
]]--


theme = {}
local view, colors, styles = view, lexer.colors, lexer.styles

--	THEME
--	=================================================================

--	Theme (Format)
theme.font						=	'Fira Code'
theme.size						= 13
theme.fg							=	0xCB9D95	--"#959DCB"	--0xCB9D95	--"#959DCB"--0xCB9D95--0x959DCB
theme.bg							=	0x3E2D29	--"#292D3E"	--0x3E2D29	--"#292D3E"--0x3E2D29--0x292D3E
theme.lineNumbers			= 0x5092FF--"#FF9250"	--0xFF9250


--	Theme (Main)

theme.foreground			=	0x959DCB	--0xCB9D95	--"#959DCB"	--0x959DCB
theme.background			=	0x3E2D29	--"#292D3E"	--0x292D3E
theme.caret						=	0x00CCFF	--0xFFCC00
theme.lineHighlight		=	0x000000	--0x010102	--0x00000030--0x010101--
theme.find						=	0x1CE7F8	--0XF8E71C
theme.bracematch			=	0x6BCBFF

theme.gutter					=	0x583F3A	--0x3A3F58
theme.invisible				=	0x79554E	--0X4E5579
theme.shadow					=	0x010101	--0x00000010--0x020202
theme.fold						= 0x583F3A	--0xDAA67A	--0x7AA6DA


--	Theme (Guides)
theme.activeGuide			= 0xD58E82	--717CB4
theme.stackGuide			=	0x79554E	--0x4E5579
theme.guide						=	{
	foreground	=	0x4E5579,
	alpha				=	0x80
}


--	Theme	(Selection Highlights)
theme.selection				= {
	fore	=	0xB47C71,
	back	=	0xB47C71,
	alpha	= 0x42,--0xC0,
	
	border	= {
		fore	=	0xB47C71,
		alpha	=	0x40
	}
}

theme.line						=	{
	fore	= nil,
	back	=	0x000000,
	alpha	=	0xff--0xC0
}


--	Theme (Program)
theme.calltip					=	0xC48219


--	Theme (Syntax Highlight)
theme.normal					=	0xCB9D95
theme.operator				=	0xFFDD89
theme.variable				=	0xFFA880
theme.comment					=	0x956E67	--	Italic
theme.localvar				=	0x6C8CF7	--	Italic
theme.globalvar				=	0xFD91FF	--	Bold
theme.colors					=	0xFFFFFF
theme.keyword					=	0x7053FF	--	Bold
theme.parenthesis			=	0xD6CCB2
theme.constant				=	0x69D5FF
theme.macro						=	0x45E8C3	--	Bold
theme.string					=	0x8DE8C3	--	Italic
theme.number					=	0x7871F0
theme.func						=	0x6BCBFF
theme.method					=	0xEA92C7
theme.class						=	0xEA92C7
theme.script					=	0xE36BFF
theme.enum						=	0x5A35F9
theme.field						=	0xFFAA82
theme.type						=	0x6BCBFF


--	Theme	(Other)

theme.preprocessor		= 0xFF91FD

theme.error		=	{
	back	=	0xFF5370,
	fore	=	0xFFFFFF
}

theme.invalid = {
	back	= 0xC792EA,
	fore	=	0xFFFFFF
}
theme.warning = theme.invalid

theme.unimplemented	= {
	back	=	0xC3E88D,
	fore	=	0xFFFFFF
}


--	Theme	(Bookmark and Find)
theme.bookmark	=	{
	fore	=	0x4E5579,
	back	=	0x45E8C3
}

--	COLORS
--	=================================================================
--[[
	-- Greyscale colors.
	colors.dark_black			= 0x000000 
	colors.black					=	0x1A1A1A 
	colors.light_black		= 0x333333 
	colors.grey_black			= 0x2D2C2C 
	colors.dark_grey			= 0x3E2D29 
	colors.grey						= 0x808080 
	colors.light_grey			= 0xCB9D95 
	colors.grey_white			= 0xB3B3B3 
	colors.dark_white			= 0xC0C0C0 
	colors.white					= 0xF7F2F1 
	colors.light_white		= 0xFFFFFF 

	-- Dark colors.
	colors.dark_red				= 0xFF5370
	colors.dark_yellow		= 0xFFAA6B
	colors.dark_green			= 0x1A661A
	colors.dark_teal			= 0x66661A
	colors.dark_purple		= 0x661A66
	colors.dark_orange		= 0xED9209
	colors.dark_pink			= 0xF9355A
	colors.dark_lavender	= 0xB36666
	colors.dark_blue			= 0x292D3E

	-- Normal colors.
	colors.red						= 0xFF5370
	colors.yellow					= 0x4D9999
	colors.green					= 0x4D994D
	colors.teal						= 0xB2CCD6
	colors.purple					= 0x994D99
	colors.orange					= 0xF78C6C
	colors.pink						= 0xFF6BE3
	colors.lavender				= 0xE69999
	colors.blue						= 0x40C3F4

	-- Light colors.
	colors.light_red			= 0xF07178
	colors.light_yellow		= 0xFFCB6B
	colors.light_green		= 0xC3E88D
	colors.light_teal			= 0xB2CCD6
	colors.light_purple		= 0xC792EA
	colors.light_orange		= 0xFFCB6B
	colors.light_pink			= 0xFF91FD
	colors.light_lavender	= 0xFFCCCC
	colors.light_blue			= 0xB9E769
]]--

--	STYLES
--	=================================================================


-- Check for defined font in init.lua
-- If it doesn't exist, set the defaults.
if not font then	
	font = 
		WIN32 and 'Fira Code' or 'Consolas' or 
		OSX and 'Monaco' or 'Bitstream Vera Sans Mono'
end

-- Check for defined font size.
if not size then size = not OSX and 13 or 12 end

-- Predefined styles.
styles.default = {
	font = theme.font, 
	size = theme.size, 
	fore = theme.fg, 
	back = theme.bg
}
--	Line Numbers
styles.line_number = {
	fore = theme.lineNumbers, 
	back = theme.bg
}

--styles.control_char =

--	Indent Guides
styles.indent_guide = {
	fore = theme.invisible
}

--	Tool Tip
styles.call_tip = {
	fore = theme.colors,
	back = theme.stackGuide
}

--	Folded Text
styles.fold_display_text = {
	fore = theme.fold
}


--	SYNTAX HIGHLIGHTING
--	=================================================================

-- Token styles.
styles.class					= {fore = theme.class}
styles.comment				= {fore = theme.comment}
styles.constant				= {fore = theme.constant}
styles.embedded				= {
	fore = theme.normal,
	back = theme.stackGuide
}
styles.error					= {
	fore = theme.error.foreground,
	italics = true
}
styles['function']		= {fore = theme.func}
styles.identifier			= {fore = theme.normal}
styles.keyword				= {fore = theme.keyword,	bold=true}
styles.label					= {fore = theme.label}
styles.number					= {fore = theme.number}
styles.operator				= {fore = theme.operator}
styles.preprocessor		= {fore = theme.preprocessor}
styles.regex					= {fore = theme.findHighlight}
styles.string					= {fore = theme.string,		italics=true}
styles.type						= {fore = theme.type}
styles.variable				= {fore = theme.variable}
styles.whitespace			= {}




--	SOFTWARE FUNCTIONALITY COLORS
--	=================================================================

--	Multiple Selection and Virtual Space
--	**********************************

view.additional_sel_alpha 	= 0x40
view.additional_sel_fore		=	0x00
view.additional_sel_back		=	theme.selection.back
view.additional_caret_fore	=	theme.string


--	SINGLE SELECTION
--	**********************************
--	Selection Foreground
view:set_sel_fore(true, theme.selection.fore)
--view:set_sel_fore(false)
--	Selection Background
--view:set_sel_back(true, theme.selection.back)
--	Selection Alpha
view.sel_alpha = theme.selection.alpha


--	CARET
--	**********************************

--	Caret Style (Make Block)
--	Other options are CARETSTYLE_LINE and CARETSTYLE_INVISIBLE
view.caret_style = view.CARETSTYLE_BLOCK

--	Caret Color
view.caret_fore =	theme.caret

--	Color of Line Containing Caret
view.caret_line_back = theme.line.back

--	Alpha of Line Containing Caret
--view.caret_line_back_alpha	=	theme.line.alpha


--	FOLDING
--	**********************************

-- Fold Margin.
view:set_fold_margin_color(true, theme.normal)
view:set_fold_margin_hi_color(true, theme.bg)


--	MARKERS
--	**********************************

--	Bookmark
--view.marker_fore[textadept.bookmarks.MARK_BOOKMARK] = colors.black
view.marker_back[textadept.bookmarks.MARK_BOOKMARK]	= theme.bookmark.back

--	Warning Mark
--view.marker_fore[textadept.run.MARK_WARNING] =	colors.black
view.marker_back[textadept.run.MARK_WARNING] =	theme.warning.back

--	Error Mark
--view.marker_fore[textadept.run.MARK_ERROR] = colors.black
view.marker_back[textadept.run.MARK_ERROR] = theme.error.back



--	FOLDING MARGIN
--	**********************************

for i = buffer.MARKNUM_FOLDEREND, buffer.MARKNUM_FOLDEROPEN do
	view.marker_fore[i]						= theme.fold
	view.marker_back[i]						= theme.gutter
	view.marker_back_selected[i]	= theme.find
end

-- Indicators.

--	Find Color
view.indic_fore[ui.find.INDIC_FIND] = theme.find
--	Find Alpha
view.indic_alpha[ui.find.INDIC_FIND] = 128

--	Brace Match Color
view.indic_fore[textadept.editing.INDIC_BRACEMATCH] = theme.bracematch

--	Editing Highlight Color
view.indic_fore[textadept.editing.INDIC_HIGHLIGHT] = theme.enum
--	Editing Highlight Alpha
view.indic_alpha[textadept.editing.INDIC_HIGHLIGHT] = 128

--	Placeholder Color
view.indic_fore[textadept.snippets.INDIC_PLACEHOLDER] = theme.colors



-- Call tips.
view.call_tip_fore_hlt	=	theme.calltip

-- Long Lines.
view.edge_color					=	theme.activeGuide

