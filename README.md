# Introduction

This git repository contains my dotfiles repository. The idea of dotfiles is to store your config of your system in a remote git repository. If something happens to your machine, your config is safe and your system is back customized to your needs with a push on the button.

# Dotfiles

If you want to start with dotfiles, take a look at [https://dotfiles.github.io/](https://dotfiles.github.io/). There you can find a list of dotfiles repositories of people that go very extreme in this method. The most popular are the repositories of [Zach Holman](https://github.com/holman/dotfiles) and [Mathias Bynens]([https://github.com/mathiasbynens/dotfiles).

The github page also lists possible dotfile utilities that give you features to automatically synchronize your system with the config in the dotfiles repository. The one I use is [Dotbot](https://github.com/anishathalye/dotbot).

# Dotbot

The concept of Dotbot is simple. 

1. Step one: Add Dotbot as a Git Submodule. This way you have the Dotbot scripts available. 
1. Step two: Setup your config: install.conf.yaml. See mine for an example.
1. Step three: Add an install script that will call points to your config file, updates dotbot to the latest version and calls the dotbot script.

For more detailed information, visit [https://github.com/anishathalye/dotbot](https://github.com/anishathalye/dotbot)

To trigger Dobot, simply call the install script. This will create symbolic links in your home directory to the dotfiles git repo. Open a new terminal or type 'bash' and your all set!

# References

I didn't start from scratch to create my Dotfiles. I used the repositories of Mathias Bynens as starting point and threw away everything I didn't need or didn't understand.
