# auto-attend
Just a attendance automation script for my office attendance.

### Setup
please set: 

```bash
export BASE_URL="api_base_url" 
export STATUS_ROUTE="status base url
export ATTENDANCE_ROUTE="attendance url"
EXPORT USERNAME="your username"
export PASSWORD="your password"
export FCM_TOKEN="your fcm token"

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
