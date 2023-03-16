from pypresence import Presence
import time

client_id = '1079547038007570432'
RPC = Presence(client_id)
RPC.connect()
RPC.update(state="Playing FunkinFD", details="Friday Night Funkin' Modding", large_image="biglogo", large_text="FFD 1.2V", small_image="downloading", small_text="Downloading HaxeFlixel files...", start=time.time())
while True:
    time.sleep(15)