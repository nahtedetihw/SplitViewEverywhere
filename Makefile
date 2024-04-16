ARCHS = arm64 arm64e
TARGET := iphone:clang:14.5:14.5
DEBUG = 0
FINALPACKAGE = 1
INSTALL_TARGET_PROCESSES = SpringBoard
#THEOS_PACKAGE_SCHEME=rootless

SYSROOT=$(THEOS)/sdks/iPhoneOS14.5.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SplitViewEverywhere

SplitViewEverywhere_FILES = Tweak.xm
SplitViewEverywhere_FRAMEWORKS = UIKit SwiftUI
SplitViewEverywhere_CFLAGS = -fobjc-arc
SplitViewEverywhere_LDFLAGS = -ld_classic

include $(THEOS_MAKE_PATH)/tweak.mk
