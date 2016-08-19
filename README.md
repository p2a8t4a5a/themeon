# themeon
Manage your themes with ease. Licensed under MIT license.

## Install themeon
```shell
cd ~
git clone https://github.com/vinctux/themeon.git
cd themeon
sudo make install
```

## Features
- 100% `bash` only
- Whole system under 20 kB and roughly 300 lines of code
- No _real_ external dependencies (look at [Dependencies](#dependencies))
- Automated theme install, update and uninstall for the user
- Automated theme distribution, without overhead for theme developers = means only a simple `.tconf` file is enough!
- Tightened security with hash sum verification

## Usage
Run:
```shell
themeon --help
```
All params in all processes are required by themeon. The `--user` and `--sys` are **self-excluding**, meaning you can't take both but **must one**.

## Distributing your theme
As a theme developer, you shouldn't make you a mind on how to distribute your theme.
```shell
themeon build THEME OUTPUT_TCONF
```
Change `THEME` with the name of your theme and specify the output via `OUTPUT_TCONF`. After `nano` opens up in terminal, update the config accordingly. **Do not alter any variable's name or add/delete variables.** Only fill required data in.

Be careful with the pre-/post-install commands - write them as a normal shell script, **between the last comment and `EOL`**.

When you're done, <kbd>Ctrl</kbd> + <kbd>X</kbd> to exit `nano`, then <kbd>Y</kbd> + <kbd>Enter</kbd>. Finally, add the `.tconf` file to your repository, copy the given hash from the terminal and update your `README` with something like:

> Install our theme (which we named SuperTheme) with themeon
> ```shell
> themeon install --user https://raw.githubusercontent.com/BestThemesEver/SuperTheme/master/SuperTheme.tconf e1bc4a387fe617f875ba2c67b70a88857f911aa9c53962cd678ea4dd73cd47ea
> ```
> Update SuperTheme
> ```shell
> themeon update SuperTheme
> ```
> Uninstall SuperTheme (we-are-sorry-to-see-you-go stuff)
> ```shell
> themeon remove SuperTheme
> ```

And. You. Are. DONE.

It seems like the install command is a long command. But themeon reduced **a lot** of _long_ commands into **one** _long_ command. And away from that you'll have to agree that the update and uninstall commands are super-short.

## Dependencies
themeon hasn't any _real_ dependencies, such as external programming languages. It's 100% shell only. But in its current stage you'll still need the following.

- `apt-get` for fetching external dependencies for the theme (support for other PMs will follow)
- `sha256sum` (part of `coreutils`) for SHA 256-bit hash sum verification
- `wget` for fetching themeon configuration files (`.tconf`)
- `nano` for editing the template `.tconf`

On Ubuntu (TTBOMK, all recent versions and flavors included), you'll have no worries as all dependencies should already be there by default. If you're on another Linux distro and these dependencies aren't there by default (fresh/clean install), open up a PR and change this README accordingly. I would be very happy if you do that. (But please don't mess things up :P)

## Uninstall themeon
I'm sorry to see you go. But hey, what can I do about it ¯\\_(ツ)_/¯ OK, I indeed can try to make it better ;)
```shell
sudo make uninstall
```

## License
MIT. Whatever happens to you, remember: it's not my fault but the code you used is. ¯\\_(ツ)_/¯
