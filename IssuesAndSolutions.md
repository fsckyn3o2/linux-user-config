# Issues & solution


## Intellij with sway

IntelliJ window loose the focus in sway / wayland.<br/>


- [Source - Problems with Java applications](https://wiki.archlinux.org/title/Bspwm#Problems_with_Java_applications)
- Install package 'wmname'
- Add environment variable `_JAVA_AWT_NONREPARENTING=1`
- Call `wmname LG3D` before to open IntelliJ


If previous solution don't work try OpenJdk :
- `IDEA_JDK=/usr/lib/jvm/java-20-openjdk/`
