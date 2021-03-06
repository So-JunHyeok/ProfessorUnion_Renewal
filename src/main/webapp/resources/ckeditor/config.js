/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	config.filebrowserUploadMethod = 'form';
	config.language = 'ko';
	config.fillEmptyBlocks = false; 
	config.uiColor = '#eeeeee';
	config.filebrowserUploadUrl = '/Space/Upload.ashx?type=Images';
	config.removeButtons = 'image,uploadimage';
	/*config.filebrowserUploadUrl = '/ckupload';*/

//	config.removePlugins = 'Underline,uploadimage';
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
};
