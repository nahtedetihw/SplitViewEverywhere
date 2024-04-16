#import <UIKit/UIKit.h>

%hook SBApplicationInfo
-(BOOL) wantsExclusiveForeground {
    return NO;
}

- (BOOL)wantsFullScreen {
    return NO;
}
/*
- (BOOL)_preventsLaunchInterfaceSplitting {
    return NO;
}
 */
- (BOOL)supports64Bit {
    return YES;
}

- (BOOL)supportsMultiwindow {
    return YES;
}

- (BOOL)requiresHiDPI {
    return YES;
}

- (NSUInteger)applicationSizeInBytes {
    return 38387712;
}

- (NSInteger)_currentClassicMode {
    return 0;
}
%end

%hook SBApplication
- (BOOL)iconAllowsLaunch:(id)arg {
    return YES;
}

-(BOOL)supportsMultiWindowLayoutsForSwitcherWindowManagementStyle:(unsigned long long)arg1 displayIdentity:(id)arg2 {
    return YES;
}

-(BOOL)supportsMultitaskingShelf {
    return YES;
}
%end
