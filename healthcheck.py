import urllib.request
import urllib.error

# The address of your local Nginx container
URL = "http://localhost"

def check_server():
    try:
        # Tries to connect to the server
        response = urllib.request.urlopen(URL, timeout=5)
        print(f"SUCCESS: The server is UP. Status Code: {response.getcode()}")
    except urllib.error.URLError as error:
        # Triggers an alert if it fails
        print(f"CRITICAL ALERT: The server is DOWN. Reason: {error.reason}")

if __name__ == "__main__":
    check_server()