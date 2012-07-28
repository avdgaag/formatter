h_preview = document.getElementById 'h_preview'
h_code    = document.getElementById 'h_code'
title     = document.getElementById 'title'
preview   = document.getElementById 'preview'
code      = document.getElementById 'code'

if h_preview && h_code
  
  tabs = document.createElement 'ol'
  tabs.setAttribute 'id', 'tabs'
  
  li_preview = document.createElement 'li'
  li_preview.appendChild document.createTextNode(h_preview.innerHTML)

  li_code = document.createElement 'li'
  li_code.appendChild document.createTextNode(h_code.innerHTML)

  tabs.appendChild li_preview
  tabs.appendChild li_code

  h_preview.parentNode.removeChild h_preview
  h_code.parentNode.removeChild h_code
  code.className = 'hidden'

  title.parentNode.insertBefore tabs, title.nextSibling

  show_preview = (e) ->
    preview.className    = ''
    code.className       = 'hidden'
    li_preview.className = 'current'
    li_code.className    = ''

  show_code = (e) ->
    preview.className    = 'hidden'
    code.className       = ''
    li_preview.className = ''
    li_code.className    = 'current'

  li_preview.addEventListener 'click', show_preview, true
  li_code.addEventListener 'click', show_code, true

