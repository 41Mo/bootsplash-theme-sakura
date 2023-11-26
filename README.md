# Description
Bootsplash theme

# Installation & configuration

## Automatic method:
If you want to use automatic gui manager look at: [bootsplash-manager](`https://github.com/ANDRoid7890/bootsplash-manager`)
```bash 
$ pacman -Sy bootsplash-manager
...
$ pacman -S bootsplash-theme-sakura-git
...
$ bootsplash-manager -l
Found 4 themes:
arch
manjaro
manjaro-glitch
sakura
$ sudo bootsplash-manager -s sakura
$ sudo bootsplash-manager --status
Bootsplash status:
[ ok ] Bootsplash is enabled, current theme: sakura
[ ok ] Current kernel supports bootsplash
[ ok ] current theme is in hooks list
[ ok ] No 'quiet' option
```

## Manual installation:
```bash
 $ git clone https://github.com/LinAnsty/bootsplash-theme-sakura
 $ cd bootsplash-theme-sakura`
 $ makepkg -Csri
```
 Append `bootsplash-theme-sakura` hook in the end of `HOOKS` string of /etc/mkinitcpio.conf

 Add `bootsplash.bootfile=bootsplash-themes/sakura/bootsplash` into `GRUB_CMDLINE_LINUX` string of `/etc/default/grub`

 Run `sudo mkinitcpio -P && sudo update-grub` to update initial ram disk and grub configuration

# Some hints

The end result may vary on different configurations. For instance, it may be a good idea to add `intel_agp i915` to `MODULES` section of `mkinitcpio.conf` in case of Intel-based system, use modesetting kernel options, etc. The best result is achieved with the use of direct kernel booting (w/o any bootloader, using just linux efistub). A similar command will do the trick:

```bash
$ efibootmgr -c -d /dev/sda -p 1 -L "Manjaro Linux 5.4" \
-l /vmlinuz-5.4-x86_64 -u \
'ro initrd=\intel-ucode.img initrd=\initramfs-5.4-x86_64.img \
bootsplash.bootfile=bootsplash-themes/sakura/bootsplash \
<other options like cryptdevice, root, resume etc>' -v
```

## Making sutable gif for boot screen

All frames in gif should be the same size to check this run 
```bash
$ identify your_logo.gif
```

Convert gif to images 
```bash
convert -coalesce source.gif target.png
```

convert images to gif 
```bash
convert -resize 70% -delay 7 -loop 0 `ls -v *.png` logo.gif
```

Simple method:

Convert source gif 1920x1080, choosing only center blocks of 300x300.
With this method all blobs of logo.gif already the same lengthh and size

```bash
convert your_image.gif -gravity Center -crop 300x300+0 logo.gif
```

Then edit bootsplash-sakura.sh

# Original picture taken from kde store
https://store.kde.org/p/1433200
