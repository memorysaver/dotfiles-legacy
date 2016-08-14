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


### Reference
- [Mathias Bynens's macOS etting] (https://mths.be/osx)
- [driesvints's dotfile config](https://driesvints.com/blog/getting-started-with-dotfiles/)
- [solarized](http://ethanschoonover.com/solarized)

