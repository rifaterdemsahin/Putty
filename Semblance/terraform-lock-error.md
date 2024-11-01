PS C:\projects\Putty\Symbols> terraform apply
╷
│ Error: Error acquiring the state lock
│
│ Error message: Failed to read state file: The state file could not be read: read terraform.tfstate: The process cannot access the file because another   
│ process has locked a portion of the file.
│
│ Terraform acquires a state lock to protect the state from being written
│ by multiple users at the same time. Please resolve the issue above and try
│ again. For most commands, you can disable locking with the "-lock=false"
│ flag, but this is not recommended.
╵
PS C:\projects\Putty\Symbols>

ReAASON
 Warning: Value for undeclared variable
│
│ The root module does not declare a variable named "region" but a value was found in file "terraform.tfvars". If you meant to use this value, add a       
│ "variable" block to the configuration.
│
│ To silence these warnings, use TF_VAR_... environment variables to provide certain "global" settings to all configurations in your organization. To      
│ reduce the verbosity of these warnings, use the -compact-warnings option.
╵
╷
│ Warning: Value for undeclared variable
│
│ The root module does not declare a variable named "access_key" but a value was found in file "terraform.tfvars". If you meant to use this value, add a   
│ "variable" block to the configuration.
│
│ To silence these warnings, use TF_VAR_... environment variables to provide certain "global" settings to all configurations in your organization. To      
│ reduce the verbosity of these warnings, use the -compact-warnings option.
╵
╷
│ Warning: Values for undeclared variables
│
│ In addition to the other similar warnings shown, 1 other variable(s) defined without being declared.
╵
╷
│ Warning: Argument is deprecated
│
│   with aws_eip.poc_eip,
│   on main.tf line 62, in resource "aws_eip" "poc_eip":
│   62:   vpc = true
│
│ use domain attribute instead
╵

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes



