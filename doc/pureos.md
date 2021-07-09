Notes for using this project on PureOS.

Using Ubuntu OS with PureOS debootstrap
=======================================
In order to use Ubuntu systems with debootstrap on PureOS, a mirror must be
specified.

```
export PSI_MIRROR=http://mirror.enzu.com/ubuntu/
```

E: No such script: ...
----------------------
If you get an error saying "No such script", you may need to download or link
the appropriate suite script in `/usr/share/debootstrap/scripts`.  For example,
on a recent PureOS release, the Ubuntu "focal" suite does not work out of the
box, but this can be fixed by adding "focal" to the scripts directory as a link
to "gutsy".
