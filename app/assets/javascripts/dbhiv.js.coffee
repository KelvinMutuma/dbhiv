dbhiv = {}

dbhiv.autoSelectSearch = ->
	window.onload = ->
		keyword = document.getElementById 'keyword'
		keyword.onclick = ->
			@select()

dbhiv.autoSelectSearch()