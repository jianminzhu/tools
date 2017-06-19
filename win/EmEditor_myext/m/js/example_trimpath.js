trmipath_demo=function(){
	return TrimPath.tp("{for it in items}${it.name},${test_date},{if it.name=='sogou'}it's belong to sohu{/if}<br>{/for}", {
		test_date: "2014-12-12",
		items: [{name: "google"}
			,{name: "baidu"}
			,{name: "sogou"}
			,{name: "360"}
		]
	})
}