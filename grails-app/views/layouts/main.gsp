<!DOCTYPE html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<r:require modules="jquery, bootstrap" />
	<r:layoutResources />
	<g:layoutHead />
</head>
<body>
	<div class="footer" role="contentinfo"></div>
	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
	<r:layoutResources/>
	<g:layoutBody />
</body>
</html>
