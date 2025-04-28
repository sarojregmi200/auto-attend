# auto-attend
Just a attendance automation script for my office attendance.

### Setup
First, you will need to set this variable in your env to make this script run correctly.

```bash
export BASE_URL="api_base_url" 
export USERNAME="your username"
export PASSWORD="your password"

# If you have not set an access token then 
# It will be set automatically using your username and password.
# So, this is optional
export ACCESS_TOKEN="your access token"
```

After this is set then the script will be able to run correctly. 

### Running
```bash
./script.sh
```
