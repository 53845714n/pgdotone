CKEDITOR.editorConfig = function(config) {
	config.toolbar = [
    	{ 
    		// name: 'others', 
    		// items: [ 
    		// 	'Youtube' 
    		// ],
    		name: 'insert', 
    		items : [ 
	    		'Youtube',
    			'Image', 
    			'Flash', 
    			'Table', 
    			'Iframe',
    			'Source',
    			'Source',
    			'Undo',
    			'Redo',
    			'-',
    			'Find',
    			'Replace',
    			'-',
    			'SelectAll',
    			'RemoveFormat',
    			'Bold',
    			'Italic',
    			'Underline',
    			'Strike',
    			'-',
    			'Subscript',
    			'Superscript',

    			'NumberedList',
    			'BulletedList',
    			'-',
    			'Outdent',
    			'Indent',

    			'JustifyLeft',
    			'JustifyCenter',
    			'JustifyRight',
    			'JustifyBlock',

    			'Link',
    			'Unlink',
    			 'MediaEmbed',

    			'Image',
    			'Table',
    			'HorizontalRule',

    			'Styles',
    			'Format',
    			'Font',
    			'FontSize',

    			'TextColor',
    			'BGColor'
    		] 
    	}
    ];

    config.extraPlugins = 'mediaembed';
    config.extraPlugins = 'youtube';

};


