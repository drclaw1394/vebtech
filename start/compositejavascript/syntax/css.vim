""Vebtech inline css highlighting.
"Copyright Ruben Westerberg 2018
"
"Inline
syn region cssInline start="`" end="`" contains=cssRule,cssSelectorTag,cssSelectorClass
hi def link cssInline Structure
"CSS Rule
syn region cssRule start="{" end="}" contains=cssKeyword,cssAll,cssFont,cssPosition,cssBox,cssBackgroundColor,cssBackgroundSize,cssDisplay,cssBackgroundRepeat,cssPadding,cssFlex contained

"Properties
"syn keyword cssKeyword bottom left right position z-index transition transform animation-name all display flex border min-height height width min-width align-items align-content contained
"syn match cssKeyword "font" contained
"syn match cssKeyword "background-\(\(color\)\|\(image\)\|\(size\)\)" contained
syn match cssAll /\(all:\)\(\(unset\)\|\(inherit\)\|\(initial\)\)/hs=s+4 contained
hi def link cssAll Type

"Units
"syn match  cssUnit "\d\(px\)\|\(em\)\|\(rem\)|\(pt\)"hs=s+1  contained
"hi def link cssUnit Function

"Value
"syn region cssValue start=":" end=";" contained contains=cssUnit
"hi def link cssValue Constant
syn region cssFont start="font" end=";" contains=cssValueFont,cssLabelFont
syn match cssValueFont "\(Helvetica\)\|\(Verdana\)" contained
syn keyword cssLabelFont font contained
hi def link cssValueFont Comment
hi def link cssLabelFont Special


"Positioning
syn region cssPosition start="position" end=";" contains=cssValuePosition,cssLabelPosition
syn match cssValuePosition "\(absolute\)\|\(relative\)\|\(fixed\)\|\(static\)\|\(sticky\)\|\(inherit\)\|\(initial\)" contained
syn keyword cssLabelPosition position contained
hi def link cssValuePosition Comment
hi def link cssLabelPosition Special

"Box values
syn region cssBox start="^\s\+\zs\(\(left\)\|\(top\)\|\(right\)\|\(bottom\)\|\(width\)\|\(height\)\)" end=";" contains=cssValueBox,cssLabelBox
syn region cssBox start="\(margin-left\)\|\(margin-right\)\|\(margin-top\)\|\(margin-bottom\)" end=";" contains=cssValueBox,cssLabelBox
syn match cssValueBox "\(auto\)\|\(inherit\)\|\(initial\)" contained
syn match cssValueBox "\(\d\+\(\(%\)\|\(px\)\|\(em\)\|\(rem\)\|\(pt\)\|\(cm\)\)\)" contained

syn match cssLabelBox "\(left\)\|\(top\)\|\(right\)\|\(bottom\)\|\(width\)\|\(height\)"  contained
syn match cssLabelBox "\(margin-left\)\|\(margin-right\)\|\(margin-top\)\|\(margin-bottom\)" contained
hi def link cssValueBox Comment
hi def link cssLabelBox Special

"Padding
syn region cssPadding start="\(padding-left\)\|\(padding-right\)\|\(padding-top\)\|\(padding-bottom\)" end=";" contains=cssValuePadding,cssLabelPadding
syn match cssValuePadding "\(inherit\)\|\(initial\)" contained
syn match cssValuePadding "\(\d\+\(\(%\)\|\(px\)\|\(em\)\|\(rem\)\|\(pt\)\|\(cm\)\)\)" contained

syn match cssLabelPadding "\(left\)\|\(top\)\|\(right\)\|\(bottom\)\|\(width\)\|\(height\)"  contained
syn match cssLabelPadding "\(padding-left\)\|\(padding-right\)\|\(padding-top\)\|\(padding-bottom\)" contained
hi def link cssValuePadding Comment
hi def link cssLabelPadding Special

"Background
syn region cssBackgroundColor start="background-color" end=";" contains=cssValueBackgroundColor,cssLabelBackgroundColor
syn match cssValueBackgroundColor "\(transparent\)\|\(inherit\)\|\(initial\)" contained
syn match cssValueBackgroundColor "\(#\x\{6}\)" contained
syn match cssValueBackgroundColor "\(rgb\s*(\s*\d\+\s*,\s*\d\+\s*,\s*\d\+\s*)\)" contained
syn match cssValueBackgroundColor "\(rgba\s*(\s*\d\+\s*,\s*\d\+\s*,\s*\d\+\s*,\s*\(\(\d\+\)\|\(\d*\(\.\d\+\)\)\)\s*)\)" contained
syn match cssLabelBackgroundColor "background-color"  contained
hi def link cssValueBackgroundColor Comment
hi def link cssLabelBackgroundColor Special

syn region cssBackgroundSize start="background-size" end=";" contains=cssValueBackgroundSize,cssLabelBackgroundSize
syn match cssValueBackgroundSize "\(auto\)\|\(inherit\)\|\(initial\)\|\(cover\)\|\(contain\)" contained
syn match cssValueBackgroundSize "\(\d\+\(\(%\)\|\(px\)\|\(em\)\|\(rem\)\|\(pt\)\|\(cm\)\)\)" contained
syn match cssLabelBackgroundSize "background-size"  contained
hi def link cssValueBackgroundSize Comment
hi def link cssLabelBackgroundSize Special

syn region cssBackgroundRepeat start="background-repeat" end=";" contains=cssValueBackgroundRepeat,cssLabelBackgroundRepeat
syn match cssValueBackgroundRepeat "\(repeat\)\|\(inherit\)\|\(initial\)\|\(repeat-x\)" contained
syn match cssValueBackgroundRepeat "\(repeat-y\)\|\(no-repeat\)\|\(space\)\|\(round\)" contained
syn match cssValueBackgroundRepeat "\(\d\+\(\(%\)\|\(px\)\|\(em\)\|\(rem\)\|\(pt\)\|\(cm\)\)\)" contained
syn match cssLabelBackgroundRepeat "background-repeat"  contained
hi def link cssValueBackgroundRepeat Comment
hi def link cssLabelBackgroundRepeat Special



"Display
syn region cssDisplay start="display" end=";" contains=cssValueDisplay,cssLabelDisplay
syn match cssValueDisplay "\(inline\)\|\(block\)\|\(flex\)\|\(inline-block\)\|\(inline-flex\)" contained
syn keyword cssLabelDisplay display contained
hi def link cssValueDisplay Comment
hi def link cssLabelDisplay Special
"syn match cssPropertyValue "background-\i\+\s*\:\s*\zs\i\+" contained

syn region cssFlex start="flex-direction" end=";" contains=cssValueFlex,cssLabelFlex
syn match cssValueFlex "\(row-reverse\)\|\(column-reverse\>\)\|\(row\)\|\(column\)\|\(inherit\)\|\(initial\)" contained
syn match cssLabelFlex "flex-direction"  contained
hi def link cssValueFlex Comment
hi def link cssLabelFlex Special
"Selectors
syn match cssSelectorClass "\.\i\+" contained
syn keyword cssSelectorTag  div li lu img p body html table tr td span contained


hi def link cssKeyword Macro
hi def link cssRule Structure
hi def link cssSelectorTag Macro
hi def link cssSelectorClass Comment
