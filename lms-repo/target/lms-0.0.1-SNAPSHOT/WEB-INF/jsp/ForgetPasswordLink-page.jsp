<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<head>
<style>
body {
	margin: 0;
	padding: 0;
	background-color: #FC7117;
	height: 100vh;
}

#login .container #login-row #login-column #login-box {
	margin-top: 120px;
	max-width: 600px;
	height: 320px;
	border: 1px solid #9C9C9C;
	background-color: #EAEAEA;
}

#login .container #login-row #login-column #login-box #login-form {
	padding: 20px;
}

#login .container #login-row #login-column #login-box #login-form #register-link
	{
	margin-top: -85px;
}
</style>
</head>
<body>
	<form action="savePassword"
		oninput='up2.setCustomValidity(up2.value != up.value ? "Passwords do not match." : "")'>
		 <input type="hidden" value="${email}" name="email">
		<div id="login">
			<h3 class="text-center text-white pt-5">Reset Password Form</h3>
			<div class="container">
				<div id="login-row"
					class="row justify-content-center align-items-center">
					<div id="login-column" class="col-md-6">
						<div id="login-box" class="col-md-12" align="center">
							<h3 class="text-center text-info">Reset Password</h3>
							<label for="password1"> &nbsp; &nbsp; &nbsp; New Password:</label> <input
								id="password1" type=password required name=up>
							<p>
								<label for="password2">Confirm password:</label> <input
									id="password2" type=password name=up2>
								  <div class="form-group">
                     
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
					</div>
				</div>
			</div>
		  </div>
		</div>
	</form>
</body>