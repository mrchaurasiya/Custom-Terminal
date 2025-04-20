import random 
import os 
import sys
from colorama import init, Fore, Style

# Initialize colorama for Windows
init()

# Get the directory where the script is located
script_dir = os.path.dirname(os.path.abspath(__file__))

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def play_sound(filename):
    sound_path = os.path.join(script_dir, filename)
    if os.path.exists(sound_path):
        os.system(f'mpv "{sound_path}"')
    else:
        print(f"{Fore.RED}Error: Sound file {filename} not found!{Style.RESET_ALL}")

def main():
    num = random.randint(1, 3)
    clear_screen()
    print(f"{Fore.YELLOW}{Style.BRIGHT}[{Fore.GREEN}─────────────────Booting Termux Terminal─────────────────{Fore.YELLOW}]{Style.RESET_ALL}")

    # Sound file mapping
    sound_files = {
        1: "Access-Granted.mp3",
        2: "Jarvis2.mp3",
        3: "JARVIS.mp3"
    }

    if num in sound_files:
        play_sound(sound_files[num])
    
if __name__ == "__main__":
    main()
