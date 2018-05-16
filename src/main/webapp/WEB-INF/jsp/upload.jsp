<!DOCTYPE html>
<!-- release v4.1.8, copyright 2014 - 2015 Kartik Visweswaran -->
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>Upload</title>
        <link href="../../static/css/bootstrap.css" rel="stylesheet">
        <link href="../../static/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
        <script src="../../static/js/jquery-3.3.1.slim.min.js"></script>
        <script src="../../static/js/fileinput.min.js" type="text/javascript"></script>
        <script src="../../static/js/bootstrap.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container kv-main">
            
            <br>
            <form enctype="multipart/form-data">
                
                <div class="form-group">
                    <input id="file-1" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="2">
                </div>
                
            </form>
        </div>
    </body>
	<script>
  
    $("#file-1").fileinput({
        uploadUrl: '#', // you must set a valid URL here else you will get an error
        allowedFileExtensions : ['jpg', 'png','gif','mp4'],
        overwriteInitial: false,
        maxFileSize: 1000,
        maxFilesNum: 10,
        //allowedFileTypes: ['image', 'video', 'flash'],
        slugCallback: function(filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
	});
   
	</script>
</html>