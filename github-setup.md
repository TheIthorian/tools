# Github Setup

> Taken from https://kbroman.org/github_tutorial/pages/first_time.html. I like how consise the guide is so I've repeated it here.

If you’ve never used git or github before, there are a bunch of things that you need to do. It’s very well explained on github, but repeated here for completeness.

## Git Config

- Get a github account.
- Download and install git.
- Set up git with your user name and email.

Open a terminal/shell and type:

```sh
$ git config --global user.name "Your name here"
$ git config --global user.email "your_email@example.com"
```

> (Don’t type the $; that just indicates that you’re doing this at the command line.)

I also do:

```sh
$ git config --global color.ui true
```

This will enable colored output in the terminal.

## SSH

Set up ssh on your computer. [See github’s guide to generating SSH keys](https://help.github.com/articles/generating-ssh-keys).

Look to see if you have files `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub`.
If not, create such public/private keys: Open a terminal/shell and type:

```sh
$ ssh-keygen -t rsa -C "your_email@example.com"
```

Copy your public key (the contents of the newly-created `id_rsa.pub` file) into your clipboard. On a Mac, in the terminal/shell, type:

```sh
$ pbcopy < ~/.ssh/id_rsa.pub
```

### Paste your ssh public key into your github account settings.

Go to your github Account Settings

- Click “SSH Keys” on the left.
- Click “Add SSH Key” on the right.
- Add a label (like “My laptop”) and paste the public key into the big text box.
- In a terminal/shell, type the following to test it:

```sh
$ ssh -T git@github.com
```

If it says something like the following, it worked:

```sh
Hi username! You've successfully authenticated, but Github does
not provide shell access.
```
