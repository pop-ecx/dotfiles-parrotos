## Customizing Parrot os
Since I daily drive this OS, I decided to use some tiling window manager. Bspwm was the first that came to mind.
I had used tiling wm for the first time on arch (It was i3 and I use arch btw) 😆.

I still do use Arch daily for work though I interchange it with Parrot when I need to put on my security hat.

The motivation for this was I wanted to replicate my same workflows I use on arch on parrot. I have remapped some of my keybindings to be similar to the ones I use in i3 (curse you muscle memory).

Behold:

![bspwm on Parrot OS](rice-polyb.png)

> P.S. I'm very happy with my polybar.

## Potential errors
When using bspwm, I noticed I couldn't open Ghidra successfully. To solve this run:
```bash
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
```


wallpaper from [wallhaven.cc](https://whvn.cc/3led2d)
