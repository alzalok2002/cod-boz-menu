ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:12.2
DEBUG = 0
FINALPACKAGE = 1

# السطر التالي ضروري جداً لكي يعرف الميكرو ما هو الـ package
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CODBozMenu
CODBozMenu_FILES = Tweak.x
CODBozMenu_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
