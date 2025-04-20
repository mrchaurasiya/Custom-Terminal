#!/usr/bin/env python3
import requests
from colorama import init, Fore, Style

# Initialize colorama for Windows color support
init()

def check_connection():
    url = "http://www.google.com"
    timeout = 5

    try:
        request = requests.get(url, timeout=timeout)
        if request.status_code == 200:
            print(f"         {Style.BRIGHT}{Fore.GREEN}⚡Connected To {Fore.RED}Internet⚡{Style.RESET_ALL}")
            return True
    except (requests.ConnectionError, requests.Timeout) as exception:
        print(f"         {Style.BRIGHT}{Fore.YELLOW}🌦Unable To {Fore.RED}Connect🌦{Style.RESET_ALL}")
        return False

if __name__ == "__main__":
    check_connection()
