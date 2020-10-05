# Git

## Installation

git has been already installed on the Raspberry pi platform. If not, please running the following command:

```
$ sudo apt-get install git
```

## Setting Global Git Username and Password 

The global git username and password are associated with commits on all repositories on your system that don’t have repository-specific values.

To set your global commit name and email address run the git config command with the --global option:

```
$ git config --global user.name "Your Name"
$ git config --global user.email "youremail@yourdomain.com"
```

Once done, you can confirm that the information is set by running:

```
$ git config --list
```
