#!/bin/make -f

BUILD=build
APP_PARTS=\
  $(BUILD)/wxPerl.app/Contents/Info.plist \
  $(BUILD)/wxPerl.app/Contents/MacOS/wxPerl \
  $(BUILD)/wxPerl.app/Contents/Resources/wxPerl.rsrc \
  $(BUILD)/wxPerl.app/Contents/PkgInfo

all: $(BUILD)/wxPerl.app

clean:
	rm -rf $(BUILD)

$(BUILD)/wxPerl.app: $(APP_PARTS)

$(BUILD)/wxPerl.app/Contents:
	mkdir -p $@

$(BUILD)/wxPerl.app/Contents/MacOS:
	mkdir -p $@

$(BUILD)/wxPerl.app/Contents/Resources:
	mkdir -p $@

$(BUILD)/wxPerl.app/Contents/PkgInfo: $(BUILD)/wxPerl.app/Contents
	echo -n "BNDL????" > $@

$(BUILD)/wxPerl.app/Contents/Info.plist: $(BUILD)/wxPerl.app/Contents
	cp Info.plist $@

$(BUILD)/wxPerl.app/Contents/MacOS/wxPerl: $(BUILD)/wxPerl.app/Contents/MacOS
	gcc -o $@ $(ARCH_FLAGS) main.c

$(BUILD)/wxPerl.app/Contents/Resources/wxPerl.rsrc: $(BUILD)/wxPerl.app/Contents/Resources
	echo "Skipping Rez call"
	#$(RESTOOLDIR)/Rez -F /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/Carbon.framework/Versions/A/Headers/ -F /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/System/Library/Frameworks/Carbon.framework/Versions/A/Headers -d __DARWIN__ -useDF -o $(BUILD)/wxPerl.rsrc $(ARCH_FLAGS) wxPerl.r
	#$(RESTOOLDIR)/ResMerger -dstIs DF $(BUILD)/wxPerl.rsrc -o $@
