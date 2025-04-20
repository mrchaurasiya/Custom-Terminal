# TermuX-Custom

A customized terminal environment with login system, sound effects, and network status checking.

## Features

- Custom login system with username/password protection
- Beautiful ASCII art banners and animations
- Random sound effects on login (JARVIS-inspired)
- Network connectivity checker
- Custom shell prompt with username and working directory
- Regular repository updates
- Colorful terminal output

## Prerequisites

For Windows CMD:
- Git Bash or WSL installed
- Python 3.x
- MPV media player
- Required Python packages: requests, random

For Termux:
- Termux app installed on Android
- Required packages will be installed automatically via setup.sh

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/TermuX-Custom.git
cd TermuX-Custom
```

2. Run the setup script:
```bash
bash setup.sh
```

3. Follow the setup prompts to:
   - Install required packages
   - Set up storage permissions
   - Configure login credentials
   - Update repository (optional)

## Usage

1. Start the login system:
```bash
bash login.sh
```

2. Enter your username and password when prompted

3. Enjoy your customized terminal environment!

## File Structure

- `setup.sh` - Initial setup and package installation
- `login.sh` - Main login system and shell customization
- `banner.sh` - ASCII art animations and loading screens
- `update.sh` - Repository update script
- `delete.sh` - Reset terminal to default settings
- `Song/` - Directory containing sound effects
  - `sound_effect.py` - Random sound effect player
  - Various .mp3 files for login sounds
- `NETWORK/` - Network utilities
  - `network.py` - Network connectivity checker

## Customization

You can customize various aspects:
- Change login credentials in login.sh
- Add new sound effects to Song/ directory
- Modify ASCII art in banner.sh
- Adjust shell prompt colors and format in login.sh

## Troubleshooting

1. Sound not working:
   - Ensure MPV is installed and in system PATH
   - Check audio files exist in Song/ directory

2. Network checker fails:
   - Verify internet connection
   - Check Python requests module is installed

3. Login issues:
   - Verify correct username/password
   - Check file permissions

## Contributing

Feel free to submit issues and enhancement requests!