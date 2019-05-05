
Simple script to download all of the Freescale i.MX SDMA firmwares that are currently [missing from the official linux-firmware repository](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/imx/sdma) and convert them from the `.ihex` format used for firmware in older linux kernels to the `.bin` format used in modern kernels.

To use simply run:

```
make
```

All `.ihex` files are downloaded from Freescale's own git repository at this URL:

http://git.freescale.com/git/cgit.cgi/imx/linux-2.6-imx.git/plain/firmware/imx/sdma/?h=imx_3.0.35_3.0.0