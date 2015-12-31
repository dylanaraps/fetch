# fetch.sh

This is the home of my fetch script! This script gathers info <br\>
about your system and prints it to the terminal.

I've spent the past few days rewriting this and it now supports <br\>
other distros as well as a ton of new features and bug fixes.

If you're having any issues or have any ideas, please open an issue! <br\>
I can't test on many other distros and I want this to work <br\>
for as many people as possible.

![1](https://sr.ht/xL9f.png)


<!-- {{{ -->


## Dependencies

These are the script's required dependencies

-  Text formatting, dynamic image size and padding: tput

These are the script's optional dependencies:

-  Displaying Images: w3m
-  Image Cropping: ImageMagick
-  Display Wallpaper: feh
-  Current Song: mpc


<!-- }}} -->


<!-- {{{ -->


## Usage

The script now supports dynamic image sizing and padding,
<br\> they're enabled by default and there's a variable you
<br\> need to set for it to work correctly.

You can either change the variable $fontwidth inside of the
<br\> script or launch it with "--fontwidth num".

Once you set the var the script will scale the image and padding
<br\> to fit your terminal window.

You can disable this by changing the var "$img_auto" or by launching
<br\> the script with "--size px".

Please report any bugs or issues you're having with this as I can't
<br\> test with many configurations.


```
usage: scrot.sh [--colors 1 2 4 5] [--kernel "$(uname -rs)"]

Info:
--title string         Change the title at the top
--distro string/cmd    Manually set the distro
--kernel string/cmd    Manually set the kernel
--uptime string/cmd    Manually set the uptime
--packages string/cmd  Manually set the package count
--shell string/cmd     Manually set the shell
--winman string/cmd    Manually set the window manager
--cpu string/cmd       Manually set the cpu name
--memory string/cmd    Manually set the memory
--speed string/cmd     Manually set the cpu speed
--speed_type           Change the type of cpu speed to get
                       Possible values: current, min, max
--song string/cmd      Manually set the current song

Text Colors:
--colors 1 2 3 4       Change the color of text
                       (title, subtitle, colon, info)
--titlecol num         Change the color of the title
--subtitlecol num      Change the color of the subtitle
--coloncol num         Change the color of the colons
--infocol num          Change the color of the info

Text Formatting:
--underline on/off     Enable/Disable title underline
--underline_char char  Character to use when underlineing title
--linewrap on/off      Enable/Disable line wrapping
--bold on/off          Enable/Disable bold text

Color Blocks:
--printcols start end  Range of colors to print as blocks
--blockwidth num       Width of color blocks
--color_blocks on/off  Enable/Disable the color blocks

Image:
--image                Image to display with the script
                       The image gets priority over other
                       images: (wallpaper, \$img)

--fontwidth            Used to automatically size the image
--size px              Change the size of the image
--smart_crop on/off    Smart crop images with plain color backgrounds
--smart_crop_mode      Which mode to use with smart crop
                       Takes the values: fit, fill
--img_auto on/off      Enable/Disable automatic i mage sizing
--cropoffset value     Change the crop offset. Possible values:
                       northwest, north, northeast, west, center
                       east, southwest, south, southeast
--padding num          How many spaces to pad the text
                       to the right
--xoffset px           How close the image will be
                       to the left edge of the window
--yoffset px           How close the image will be
                       to the top edge of the window

--gap num              Gap between image and text right side
--images on/off        Enable/Disable all images"
--wall on/off          Enable/Disable the wallpaper function
                       and fallback to \$img
--clean                Remove all cropped images

Other:
--help                 Print this text and exit
```


<!-- }}} -->


<!-- {{{ -->


## TODO

Here's what's on my todo list

- Add an easy way to define info prefixes at launch.
- Cleanup
- Add options to bold other text in the script (info, underline, colons)
- Fix linewrapping flag with tmux
- Fix issues with multiline prompts


<!-- }}} -->


### Smart Crop mode comparison

#### Fit
![fit](https://imgur.com/MI0UtSV.png)

#### Fill
![fill](https://imgur.com/LvxYwki.png)
