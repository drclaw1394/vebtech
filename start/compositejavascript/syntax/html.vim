"syn region htmlInline start="`" end="'" contains=htmlTag
"hi def link htmlInline Structure

"Element
syn region htmlElement start="<" end=">" contains=htmlTagHtml contained
hi def link htmlElement Error

syn region htmlElement start="<html\+\(\s*\i\+\(=["']\p\+["']\)\?\)*\s*>" end="</html>" contains=htmlTagHtml contained
hi def link htmlElement Error

"HTML
"syn region htmlTagHtml start="html" end=">" contains=htmlTagName,htmlTagAttrName,htmlTagAttrValue contained
"hi def link htmlTagHtml Keyword

""DIV
"syn region htmlStartTagDiv start="<div" end=">" contains=htmlTagName,htmlTagAttrName,htmlTagAttrValue contained
"hi def link htmlStartTagDiv Keyword
"
"syn region htmlStopTag start="</" end=">" contained
"hi def link htmlStopTag Keyword
"
""syn region htmlTagEnd start="</html" end=">" contained
""hi def link htmlTagEnd Constant
"
""syn match htmlTagName "\(html\)\|\(body\)\|\(head\)\|\(div\)" contained
""syn match htmlTagName "</\?\zs\(\(span\)\|\(ul\)\|\(li\)\|\(ol\)\|\(a\)\)" contained
""hi def link htmlTagName Constant
""
"syn match htmlTagAttrName /\i\+=/me=e-1 contained
"hi def link htmlTagAttrName Special
""
"syn match htmlTagAttrValue /=\zs["']\i\+["']/hs=s+1,he=e-1 contained
"hi def link htmlTagAttrValue Constant
"
