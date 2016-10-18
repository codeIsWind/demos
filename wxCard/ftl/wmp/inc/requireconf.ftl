<script>
    var require = {
        baseUrl: '${staticurl!}',	//"static/wmp"
		text: {
			env: 'xhr'
		},
        paths: {
            common: 'common',
            modules: 'modules',
			pagescript: 'pagescript',
            jquery: 'common/jquery/jquery-2.1.4.min',
			"jquery/browser": 'common/jquery-plugins/jquery.browser.min',
			wxapi: 'common/jweixin-1.0.0',
			swig: 'common/tplprocess/swig.min',
            crop: 'common/cropper-2.2.4/cropper.min',
            hammerjs: 'common/hammer-2.0.6/hammer.min',
            'jquery-hammer': 'common/hammer-2.0.6/jquery.hammer'
        }
    };
</script>
