# TermuX-Custom

A customized terminal environment with JARVIS-inspired sound effects, secure login system, and network status monitoring.

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
- MPV media player (v3.0 or higher)
- Required Python packages: requests, colorama

For Termux:
- Termux app installed on Android
- Required packages will be installed automatically via setup.sh

## Installation

1. Clone the repository:
```bash
git clone https://github.com/mrchaurasiya/Custom-Terminal.git
cd Custom-Terminal
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

Note: For Windows users, make sure to run Git Bash as administrator for proper permissions.

## Usage

1. Start the login system:
```bash
bash login.sh
```

2. Enter your username and password when prompted

3. Enjoy your customized terminal environment!

## File Structure

- `setup.sh` - Initial setup and package installation
- `login.sh` - Secure login system with customizable credentials
- `banner.sh` - Dynamic ASCII art animations and loading screens
- `update.sh` - Repository update and maintenance script
- `delete.sh` - Clean uninstall and reset script
- `Song/` - JARVIS-inspired sound effects
  - `sound_effect.py` - Random sound effect player with Windows/Termux compatibility
  - `JARVIS.mp3` - Main JARVIS welcome sound
  - `Jarvis2.mp3` - Alternative welcome sound
  - `Access-Granted.mp3` - Login success sound
- `NETWORK/` - Network utilities
  - `network.py` - Cross-platform network connectivity checker

## Customization

You can customize various aspects:
- Change login credentials in login.sh (default: configure during setup)
- Add new sound effects to Song/ directory (supports .mp3 format)
- Modify ASCII art in banner.sh
- Adjust shell prompt colors and format in login.sh
- Configure network check timeout in network.py

## Troubleshooting

1. Sound not working:
   - Ensure MPV is installed and in system PATH
   - For Windows: Add MPV to Environment Variables
   - For Termux: Run `pkg install mpv`
   - Check audio files exist in Song/ directory

2. Network checker fails:
   - Verify internet connection
   - Check Python requests module is installed
   - For Windows: Run `pip install requests colorama`
   - For Termux: Setup script will handle dependencies

3. Login issues:
   - Verify correct username/password
   - Check file permissions
   - For Windows: Run Git Bash as administrator
   - For Termux: Run `chmod +x *.sh`

## Security

- Credentials are stored locally
- Sound effects are played using secure MPV player
- Network checks use HTTPS
- No sensitive data is transmitted

## Contributing

Feel free to submit issues and enhancement requests! Pull requests are welcome.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Version

Current Version: 1.0.0
Last Updated: April 2025
Maintainer: @mrchaurasiya