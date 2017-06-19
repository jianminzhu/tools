if(typeof(widgets)== "undefined" ){
	widgets={}
}
if(typeof(console)== "undefined" ){
	console={
		log:function( ){
			try{ alert(arguments.join(","))}catch(e){alert(e.toString())}
		}
	} 
}
(function(wparam,$){
	var w=wparam;
	if(w==null){
		widgets=w={}
	}
	w.tpl={
		tp:function (tplStr, data) {
			try {
				return TrimPath.parseTemplate(tplStr).process(data);
			} catch (e) {
				console.log("trimpath error", e)
				return "";
			}
		}
		,init:function(sel){
			var rsel=sel||"";
			if($.trim(rsel)!=""){
				var tpl=['<table class="widget_tpl">'
				,'	<tr>'
				,'		<td>模板<button name="b_run">测试</button></td>'
				,'		<td>数据</td>'
				,'		<td>结果</td>'
				,'	</tr>'
				,'	<tr>'
				,'		<td><textarea name="t_tpl" >${name}</textarea></td>'
				,'		<td><textarea name="t_json" >{name:"test"}</textarea></td>'
				,'		<td><textarea name="t_out" ></textarea></td>'
				,'	</tr>'
				,'	<tr><td colspan="3"><div name="d_out"></div></td></tr>'
				,'</table>'].join("\n");

				$(sel).each(function(){
					$(this).html("").append($(tpl));
				})
			}
		}
	}
	$("html").delegate('.widget_tpl  [name=b_run]', 'click', function(event) {
		var jit = $(this);
		var jp = jit.closest('table'),
			jtpl = jp.find("[name=t_tpl]"),
			jtjson = jp.find("[name=t_json]"),
			jtout = jp.find("[name=t_out]"),
			jdout = jp.find("[name=d_out]"),
			tpl = jtpl.val(),
			tjson = jtjson.val();
		try {
			var data={};
			eval("data=" + tjson);
			console.log(data)
			var out = widgets.tpl.tp(tpl, data);
			jtout.val(out);
			$("<span>"+out+"</span>").appendTo(jdout);
		} catch (e) {
			console.log(e.toString())
		}
	});
})(widgets||null,jQuery);
