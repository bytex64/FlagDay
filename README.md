FlagDay
=======

FlagDay is a tool to help you organize and work through reinstalling
machines, changing passwords, SSH keys.  It'll help you inventory,
change, and redeploy these items on machines you specify.

Running
-------

FlagDay is driven by a Makefile in the root directory.  Just type 'make'
to get a brief help message.  FlagDay has three main modes:

- **Inventory**

  In inventory mode, FlagDay fetches items defined in your configuration
  file, saving them for later.

- **Generate**

  In generate mode, FlagDay regenerates new passwords and keys

- **Push**

  In push mode, FlagDay pushes backed up files and generated keys to
  freshly-installed hosts.

Individual modules can be run by appending - and the module name.  For
example, you can run all inventory tasks defined in your config.yml
with:

$ make inventory

Or you can run only the ssh module by typing:

$ make inventory-ssh

Configuration
-------------

The master configuration is in config.yml.  An example file is included
in config.yml-example.
