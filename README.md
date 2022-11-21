# pihole-blocker

Schedule pi-hole blocks for espcific lists

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

## Usage

To block
```
pihole-blocker block youtube
```

To unblock
```
pihole-blocker unblock youtube
```