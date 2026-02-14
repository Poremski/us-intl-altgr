# kbd-us-intl-nodeadkeys

A US international keymap for the Linux virtual console that provides accented characters via Right-Alt / AltGr.

This is a **maintained fork** of the original keymap. The original upstream is no longer actively maintained, and this version fixes checksums and packaging to make it buildable on Arch Linux.

## Installation via AUR

You can install the package using your preferred AUR helper, e.g., `paru`:

```bash
paru -S kbd-us-intl-nodeadkeys
```

## Usage

To activate the keymap temporarily:

```bash
loadkeys us-altgr-intl-nodeadkeys
```

To make it persistent, add the keymap to `/etc/vconsole.conf`:

```bash
KEYMAP=us-altgr-intl-nodeadkeys
```
