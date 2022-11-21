# pihole-blocker

Command line to add predefined lists to pi-hole.

* It can be used for parental control enabling and disabling sites at any specific time.
* It can be secheduled via linux crontab


## Requeriments

1. pihole (linux / pi)

```
sudo curl -sSL https://install.pi-hole.net | bash
```

## Installation


```
./install.sh
```

Files will be copied into /usr/lib/pihole-blocker

## Usage / Examples (Lists defined as a text file in /lists)

Blocking / Unblocking specific lists

```
pihole-blocker block youtube
```

To unblock
```
pihole-blocker unblock youtube
```