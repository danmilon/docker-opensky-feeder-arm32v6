
It's not based on alpine, because the program is pre-compiled and it's linked
against libc, and I couldn't get it to work on alpine.

You'll need to provide a configuration file in
`/etc/conf.d/openskyd/10-custom.conf`. It should be something like:

```
[GPS]
Latitude=35.341145
Longitude=25.150615
Altitude=25

[DEVICE]
Type=default
Serial=-1408236308

[IDENT]
Username=danmilon

[INPUT]
Host=dump1090-host
Port=30005
```

The feeder serial number can be obtained at
https://opensky-network.org/receiver-profile .
