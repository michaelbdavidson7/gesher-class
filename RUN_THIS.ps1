$GithubUrl = "https://github.com/michaelbdavidson7/gesher-class"

# Get the username
$User = Read-Host -Prompt 'Input your name with no spaces'
Write-Host "Hello '$User'"

# Create the folders and download the code using the username
iex "cd C:\Users\Administrator\Desktop"
iex "serverless create --template-url $GithubUrl --name $User --path $User"
iex "cd $User"

# Deploy the code 
iex "serverless deploy -v" 

# Wait then delete the stack
Read-Host -Prompt "Press Enter to delete the uploaded stuff"
iex "serverless remove"

Read-Host -Prompt "Press Enter to exit"
