"Inline
syn region cssInline start="`" end="`" contains=cssRule,cssSelectorTag,cssSelectorClass
hi def link cssInline Structure
"CSS Rule
syn region cssRule start="{" end="}" contains=cssKeyword,cssAll,cssFont,cssPosition,cssBox,cssBackgroundColor,cssDisplay contained

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
syn region cssBox start="\(left\)\|\(top\)\|\(right\)\|\(bottom\)\|\(width\)\|\(height\)" end=";" contains=cssValueBox,cssLabelBox
syn region cssBox start="\(margin-left\)\|\(margin-right\)\|\(margin-top\)\|\(margin-bottom\)" end=";" contains=cssValueBox,cssLabelBox
syn match cssValueBox "\(auto\)\|\(inherit\)\|\(initial\)" contained
syn match cssValueBox "\(\d\+\(\(%\)\|\(px\)\|\(em\)\|\(rem\)\|\(pt\)\|\(cm\)\)\)" contained

syn match cssLabelBox "\(left\)\|\(top\)\|\(right\)\|\(bottom\)\|\(width\)\|\(height\)"  contained
syn match cssLabelBox "\(margin-left\)\|\(margin-right\)\|\(margin-top\)\|\(margin-bottom\)" contained
hi def link cssValueBox Comment
hi def link cssLabelBox Special

"Background
syn region cssBackgroundColor start="background-color" end=";" contains=cssValueBackgroundColor,cssLabelBackgroundColor
syn match cssValueBackgroundColor "\(transparent\)\|\(inherit\)\|\(initial\)" contained
syn match cssValueBackgroundColor "\(#\x\{6}\)" contained
syn match cssValueBackgroundColor "\(rgb\s*(\s*\d\+\s*,\s*\d\+\s*,\s*\d\+\s*)\)" contained
syn match cssValueBackgroundColor "\(rgba\s*(\s*\d\+\s*,\s*\d\+\s*,\s*\d\+\s*,\s*\(\(\d\+\)\|\(\d*\(\.\d\+\)\)\)\s*)\)" contained
syn match cssLabelBackgroundColor "background-color"  contained
hi def link cssValueBackgroundColor Comment
hi def link cssLabelBackgroundColor Special

"Display
syn region cssDisplay start="display" end=";" contains=cssValueDisplay,cssLabelDisplay
syn match cssValueDisplay "\(inline\)\|\(block\)\|\(flex\)\|\(inline-block\)\|\(inline-flex\)" contained
syn keyword cssLabelDisplay display contained
hi def link cssValueDisplay Comment
hi def link cssLableDisplay Special
"syn match cssPropertyValue "background-\i\+\s*\:\s*\zs\i\+" contained

"Selectors
syn match cssSelectorClass "\.\i\+" contained
syn keyword cssSelectorTag  div li lu img p body html table tr td span contained


hi def link cssKeyword Macro
hi def link cssRule Structure
hi def link cssSelectorTag Type
hi def link cssSelectorClass Comment
