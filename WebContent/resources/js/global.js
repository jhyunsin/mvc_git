var global = {
	context : '',
	setContext : function(param) {
		this.context = param;
	},
	init : function(param) {
		alert('global init ===')
		this.setContext(param);
		var bt = document.querySelector('#bt_js_go');
		bt.onclick = this.move(this.context);
	},
	move : function() {
		location.href = this.context + "/douglas.do?";
	}
};
