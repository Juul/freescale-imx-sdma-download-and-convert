

ifeq (, $(shell which objcopy))
$(error "This makefile requires the `objcopy` command")
$(error "You will need to install the binutils package to proceed")
endif

outputs = sdma-imx25-to1.bin sdma-imx31-to1.bin sdma-imx31-to2.bin sdma-imx35-to1.bin sdma-imx35-to2.bin sdma-imx50-to1.bin sdma-imx51-to3.bin sdma-imx53-to1.bin
inputs = $(addsuffix .ihex, $(outputs))

all: $(outputs)

$(outputs): $(inputs)
	objcopy -Iihex -Obinary ${@}.ihex $@

$(inputs):
	wget "http://git.freescale.com/git/cgit.cgi/imx/linux-2.6-imx.git/plain/firmware/imx/sdma/${@}?h=imx_3.0.35_3.0.0" -O $@

clean:
	rm -f *.ihex *.bin
