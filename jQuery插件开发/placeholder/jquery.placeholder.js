
!function(window, document, $, undefined) {
    
    /*
     * ie678 placeholder属性修复
     */
    $.fn.placeholder = function() {
    	var input = document.createElement('input');
    	
    	if ('placeholder' in input) {
    		return;
    	}
    	
        this.each(function() {
            var $this = $(this),
            	txt = $this.attr('placeholder');
            	
            $this.wrap('<span class="input"></span>');
            $this
            	.on('keyup', function() {
	    			var $this = $(this), 
	    				val = this.value;
	    			if (val.length > 0) {
	    				$this.next('.wbc-placeholder').hide();
	    			} else {
	    				$this.next('.wbc-placeholder').show();
	    			}
		    	})
            	.after('<span class="wbc-placeholder">' + txt + '</span>')
            	.next('.wbc-placeholder')
            	.on('click', function() {
            		$(this).prev().focus();
            	});
        });        
    };
    
    $('input').placeholder();

}(window, document, jQuery);
