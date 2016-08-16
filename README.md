# Memorysaver's dotfiles
Memorysaver's dotfiles

## Installation Guide
### Run Installation scrips

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/memorysaver/dotfiles/master/install.sh)"
```

### Sign in Dropbox and Restore Mackup

```bach
mackup restore
```

### Setup Github

```bash

# copy ssh key to clipboard for adding to github.com
pbcopy < ~/.ssh/id_rsa.pub

# test connection
ssh -T git@github.com

```

## Maintain your configuration
### mackup configure

You can maintain your version of `.mackup.cfg` that should link at `/.dotfiles/mackup/.mackup.cfg`.

### backup your mackup to dropbox

``` bash
mackup backup
```

## More stuff
### Solarized Theme
- iterm
- tmux
- terminal

### Git Message
1. Separate subject from body with a blank line
2. Limit the subject line to 50 characters
3. Capitalize the subject line
4. Do not end the subject line with a period
5. Use the imperative mood in the subject line


### Reference
- [Mathias Bynens's macOS etting] (https://mths.be/osx)
- [driesvints's dotfile config](https://driesvints.com/blog/getting-started-with-dotfiles/)
- [solarized](http://ethanschoonover.com/solarized)
- [Chris Beam's How to write a commit message](http://chris.beams.io/posts/git-commit/)
- [Git message template](http://codeinthehole.com/writing/a-useful-template-for-commit-messages/)
