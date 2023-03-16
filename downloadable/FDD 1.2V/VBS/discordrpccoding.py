import getpass
from pypresence import Presence
import time

# This is only for MooMan but if you are editing the code open it if you want.

owner_username = 'Owner'  # Replace with your own username

# Get the username of the current user
current_username = getpass.getuser()

# Check if the current user is the owner
if current_username != owner_username:
    print("Sorry, this program can only be run on the owner's computer.")
    exit()

# Your code here
client_id = '1079547038007570432'
RPC = Presence(client_id)
RPC.connect()
RPC.update(state="Playing FunkinFD", details="Coding BATCH and VBS", large_image="biglogo", large_text="FFD 1.2V", small_image="vscode", small_text="Using Visual Studio Code", start=time.time())
while True:
    time.sleep(15)