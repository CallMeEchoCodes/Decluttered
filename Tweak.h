#import <Foundation/Foundation.h>
#import <Preferences/PSListController.h>
#import <SpringBoard/SpringBoard.h>
#import <UIKit/UIKit.h>

@interface SBIconBetaLabelAccessoryView : UIView
@end

@interface SBFloatingDockPlatterView : UIView
@property(retain, nonatomic) UIView *backgroundView;
@end

@interface SBIconListPageControl : UIView
@end

@interface _UIInterfaceActionVibrantSeparatorView : UIView
@end
@interface _UITableViewCellSeparatorView : UIView
@end
@interface _UIInterfaceActionBlankSeparatorView : UIView
@end

@interface SBIconRecentlyUpdatedLabelAccessoryView : UIView
@end

@interface WGWidgetListFooterView : UIView
@end

@interface SBUICallToActionLabel : UIView
@end

@interface CSPageControl : UIView
@end

@interface _UIStatusBar : UIView
@end

@interface _UITableCellAccessoryButton : UIView
@end

@interface _UIScrollViewScrollIndicator : UIView
@end

@interface SBFolderBackgroundView : UIView
@end

@interface SBFolderIconImageView : UIView
@property(retain, nonatomic) UIView *backgroundView;
@end

// Preferences
static BOOL disableBetaDots = NO;
static BOOL disableDockBackground = NO;
static BOOL disableFolderBackground = NO;
static BOOL disablePageDots = NO;
static BOOL disableUpdateDots = NO;
static BOOL disableWidgetLabels = NO;

static BOOL disableHomeToUnlockLabel = NO;
static BOOL disableLockscreenPagedots = NO;
static BOOL emptyPasswordButtons = NO;

static BOOL disableHomebar = NO;
static BOOL disableSeparators = NO;
static BOOL disableScrollbar = NO;
static BOOL disableStatusbar = NO;
static BOOL disableVolumeHUD = NO;

static BOOL disableSettingsChevrons = NO;
static BOOL disableSettingsIcons = NO;
