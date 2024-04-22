# KEYBOARDS

## Ubuntu

Add the following to `/usr/share/X11/xkb/rules/evdev.xml`:

```xml
    <layout>
      <configItem>
        <name>io</name>
        <shortDescription>iosd</shortDescription>
        <description>Interdictor custom layout</description>
        <vendor>Interdictor</vendor>
      </configItem>
      <variantList/>
    </layout>
```

copy the file `io` to `~/.config/xkb/io`

setxkbmap -layout test
