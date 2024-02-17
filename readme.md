# Cisco Secure Client CLI loging and MOTD

This is a fork of the existing Cisco AnyConnect Client CLI Login and MOTD. This works for Cisco Secure Client with a minor change on how the VPN connection state output is captured.

Create a new alias within bash/zsh to connect or disconnect from the VPN with ease. No clicking required!
___

## To install:
* Clone ```.vpnStatus.sh```, ```.motd.sh``` and ```.vpn_creds``` to ~/
* Run ```chmod +x ~/.vpnStatus.sh ~/.motd.sh && echo -e "alias vpn='~/.vpnStatus.sh'\n~/.motd.sh" | tee -a ~/.bashrc ~/.zshrc && source ~/.bashrc && source ~/.zshrc``` within your terminal
* Extra: Download a different terminal such as [iTerm2](iterm2.com/) or [Warp](https://www.warp.dev/) to not run into the issues that the default Mac terminal causes with this script
* * Also check out [iterm2's](https://blog.mestwin.net/drop-down-terminal-in-macos-with-iterm2/) and [Warp's](https://docs.warp.dev/features/windows/hotkey-window) drop-down terminals
* Edit ```.vpn_creds``` with your own information
* * ```username``` being the username you'd find when connecting to AnyConnect
* * ```password``` being the password you'd use to connect
* * Completely remove ```username``` and ```password``` and replace them with your own values. Leave ```y``` as is.

Within Warp or iTerm2, start a new terminal tab or exit and then open up a terminal instance again to see if you're connected to the vpn.

## To connect:

* Ensure that Cisco Secure Client is not running

* Enter ```vpn``` in the terminal to be prompted to connect ("y" or "n"). This will also notify you whether you're currently connected or not.