include $(srctree)/drivers/misc/mediatek/Makefile.custom

# Linux driver folder
ccflags-y += -I$(srctree)/drivers/input/touchscreen/mediatek/synaptics_3320_letv/
ccflags-y += -I$(srctree)/drivers/input/touchscreen/mediatek/

ifeq ($(TARGET_BUILD_VARIANT), eng)
    ccflags-y += -DBUILD_DEBUG=1
else
    ccflags-y += -DBUILD_DEBUG=0
endif

obj-y	+=  synaptics_dsx_fw_update.o
obj-y	+=  synaptics_dsx_i2c.o
obj-y	+=  synaptics_dsx_rmi_dev.o
obj-y	+=  synaptics_dsx_test_reporting.o
