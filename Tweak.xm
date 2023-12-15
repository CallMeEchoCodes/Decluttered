#import "Tweak.h"
#import <rootless.h>

#import <UIKit/UIKit.h>
#import <Preferences/PSSpecifier.h>

//  █ █ █▀█ █▄█ █▀▀   █▀▀ █▀▀ █▀▄ █▀▀ █▀▀ █▀█
//  █▀█ █ █ █ █ █▀▀   ▀▀█ █   █▀▄ █▀▀ █▀▀ █ █
//  ▀ ▀ ▀▀▀ ▀ ▀ ▀▀▀   ▀▀▀ ▀▀▀ ▀ ▀ ▀▀▀ ▀▀▀ ▀ ▀

// Disable beta dots
%hook SBIconBetaLabelAccessoryView
- (void)didMoveToWindow { %orig; if (disableBetaDots) { self.hidden = YES; } }
%end

// Disable dock background
%hook SBDockView
- (void)setBackgroundAlpha:(CGFloat)arg0 { if (disableDockBackground) { %orig(0); } else { %orig(arg0); } }
%end

%hook SBFloatingDockPlatterView
- (void)didMoveToWindow { %orig; if (disableDockBackground) { self.backgroundView.hidden = YES; } }
%end

// Disable folder background
%hook SBFolderBackgroundView
- (void)didMoveToWindow { %orig; if (disableFolderBackground) { self.hidden = YES; } }
%end

%hook SBFolderIconImageView
- (void)setBackgroundView:(id)arg0 { if (disableFolderBackground) { %orig(nil); } else { %orig(arg0); } }
%end

// Disable pagedots
%hook SBIconListPageControl
- (id)initWithFrame:(struct CGRect )arg0 { if (disablePageDots) { return nil; } else { return %orig(arg0); } }
%end

// Disable update dots
%hook SBIconRecentlyUpdatedLabelAccessoryView
- (void)didMoveToWindow { %orig; if (disableUpdateDots) { self.hidden = YES; } }
%end

// Disable widget label
%hook WGWidgetListFooterView
- (void)didMoveToWindow { %orig; if (disableWidgetLabels) { self.hidden = YES; } }
%end

//  █   █▀█ █▀▀ █ █ █▀▀ █▀▀ █▀▄ █▀▀ █▀▀ █▀█
//  █   █ █ █   █▀▄ ▀▀█ █   █▀▄ █▀▀ █▀▀ █ █
//  ▀▀▀ ▀▀▀ ▀▀▀ ▀ ▀ ▀▀▀ ▀▀▀ ▀ ▀ ▀▀▀ ▀▀▀ ▀ ▀

// Disable "Press home to unlock" label
%hook SBUICallToActionLabel
- (void)didMoveToWindow { %orig; if (disableHomeToUnlockLabel) { self.hidden = YES; } }
%end

// Disable lockscreen pagedots
%hook CSPageControl
- (void)didMoveToWindow { %orig; if (disableLockscreenPagedots) { self.hidden = YES; } }
%end

// Empty password buttons
%hook TPNumberPadButton
+(id)imageForCharacter:(long long)arg1 { if (emptyPasswordButtons) { return nil; } else { return %orig(arg1); } }
+(id)imageForCharacter:(long long)arg1 highlighted:(BOOL)arg2 { if (emptyPasswordButtons) { return nil; } else { return %orig(arg1, arg2); } }
+(id)imageForCharacter:(long long)arg1 highlighted:(BOOL)arg2 whiteVersion:(BOOL)arg3 { if (emptyPasswordButtons) { return nil; } else { return %orig(arg1, arg2, arg3); } }
%end


//  █▀▀ █ █ █▀▀ ▀█▀ █▀▀ █▄█     █ █ ▀█▀ █▀▄ █▀▀
//  ▀▀█  █  ▀▀█  █  █▀▀ █ █ ▄▄▄ █▄█  █  █ █ █▀▀
//  ▀▀▀  ▀  ▀▀▀  ▀  ▀▀▀ ▀ ▀     ▀ ▀ ▀▀▀ ▀▀  ▀▀▀

// Disable homebar
%hook MTLumaDodgePillSettings
- (void)setHeight:(double)arg0 { if (disableHomebar) { %orig(0); } else { %orig(arg0); }  }
- (void)setMinWidth:(double)arg0 { if (disableHomebar) { %orig(0); } else { %orig(arg0); }  }
%end

// Disable scrollbars
%hook _UIScrollViewScrollIndicator
- (void)didMoveToWindow { %orig; if (disableScrollbar) { self.hidden = YES; } }
%end

// Disable separators
%hook _UIInterfaceActionVibrantSeparatorView
- (void)didMoveToWindow { %orig; if (disableSeparators) { self.hidden = YES; } }
%end

%hook _UITableViewCellSeparatorView
- (void)didMoveToWindow { %orig; if (disableSeparators) { self.hidden = YES; } }
%end

%hook _UIInterfaceActionBlankSeparatorView
- (void)didMoveToWindow { %orig; if (disableSeparators) { self.hidden = YES; } }
%end

%hook UITableView
- (void)setSeparatorStyle:(long long)arg1 { if (disableSeparators) { %orig(0); } else { %orig(arg1); } }
%end

// Disable statusbar
%hook _UIStatusBar
- (void)didMoveToWindow { %orig; if (disableStatusbar) { self.hidden = YES; } }
%end

// Disable Volume HUD
%hook SBVolumeControl
- (void)_presentVolumeHUDWithVolume:(float)arg0 { if (!disableVolumeHUD) { %orig(arg0); } }
%end

//  █▀▀ █▀▀ ▀█▀ ▀█▀ ▀█▀ █▀█ █▀▀ █▀▀   █▀█ █▀█ █▀█
//  ▀▀█ █▀▀  █   █   █  █ █ █ █ ▀▀█   █▀█ █▀▀ █▀▀
//  ▀▀▀ ▀▀▀  ▀   ▀  ▀▀▀ ▀ ▀ ▀▀▀ ▀▀▀   ▀ ▀ ▀   ▀

// Disable settings chevrons
%hook _UITableCellAccessoryButton
- (void)layoutSubviews { %orig; if (disableSettingsChevrons) { self.subviews[0].hidden = YES; } }
%end

// Disable settings icons
%hook PSTableCell
- (void)setIcon:(id)arg0 { if (disableSettingsIcons) { %orig(nil); } else { %orig(arg0); } }
%end

// Preferences
static void loadPreferences() {
    NSUserDefaults *preferences = [[NSUserDefaults alloc] initWithSuiteName:@"dev.callmeecho.decluttered.preferences"];
    if (preferences) {
        disableBetaDots = [[preferences objectForKey:@"disableBetaDots"] boolValue];
        disableDockBackground = [[preferences objectForKey:@"disableDockBackground"] boolValue];
        disableFolderBackground = [[preferences objectForKey:@"disableFolderBackground"] boolValue];
        disablePageDots = [[preferences objectForKey:@"disablePageDots"] boolValue];
        disableUpdateDots = [[preferences objectForKey:@"disableUpdateDots"] boolValue];
        disableWidgetLabels = [[preferences objectForKey:@"disableWidgetLabels"] boolValue];

        disableHomeToUnlockLabel = [[preferences objectForKey:@"disableHomeToUnlockLabel"] boolValue];
        disableLockscreenPagedots = [[preferences objectForKey:@"disableLockscreenPagedots"] boolValue];
        emptyPasswordButtons = [[preferences objectForKey:@"emptyPasswordButtons"] boolValue];

        disableHomebar = [[preferences objectForKey:@"disableHomebar"] boolValue];
        disableVolumeHUD = [[preferences objectForKey:@"disableVolumeHUD"] boolValue];
        disableScrollbar = [[preferences objectForKey:@"disableScrollbar"] boolValue];
        disableSeparators = [[preferences objectForKey:@"disableSeparators"] boolValue];
        disableStatusbar = [[preferences objectForKey:@"disableStatusbar"] boolValue];

        disableSettingsChevrons = [[preferences objectForKey:@"disableSettingsChevrons"] boolValue];
        disableSettingsIcons = [[preferences objectForKey:@"disableSettingsIcons"] boolValue];
    }
}

%ctor {
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPreferences, CFSTR("dev.callmeecho.decluttered.preferences/reload"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPreferences();
}
