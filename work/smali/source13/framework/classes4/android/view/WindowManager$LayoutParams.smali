.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams$InputFeatureFlags;,
        Landroid/view/WindowManager$LayoutParams$LayoutInDisplayCutoutMode;,
        Landroid/view/WindowManager$LayoutParams$SystemUiVisibilityFlags;,
        Landroid/view/WindowManager$LayoutParams$SoftInputModeFlags;,
        Landroid/view/WindowManager$LayoutParams$PrivateFlags;,
        Landroid/view/WindowManager$LayoutParams$SystemFlags;,
        Landroid/view/WindowManager$LayoutParams$Flags;,
        Landroid/view/WindowManager$LayoutParams$WindowType;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACCESSIBILITY_ANCHOR_CHANGED:I = 0x1000000

.field public static final blacklist ACCESSIBILITY_TITLE_CHANGED:I = 0x2000000

.field public static final whitelist ALPHA_CHANGED:I = 0x80

.field public static final whitelist ANIMATION_CHANGED:I = 0x10

.field public static final blacklist BLUR_BEHIND_RADIUS_CHANGED:I = 0x20000000

.field public static final whitelist BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final whitelist BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final whitelist BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final greylist-max-o BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final greylist-max-o COLOR_MODE_CHANGED:I = 0x4000000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIM_AMOUNT_CHANGED:I = 0x20

.field public static final blacklist DISABLE_CUTOUT_MODE:Z = false

.field public static final whitelist FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final whitelist FIRST_SUB_WINDOW:I = 0x3e8

.field public static final whitelist FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final whitelist FLAGS_CHANGED:I = 0x4

.field public static final whitelist FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final whitelist FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final whitelist FLAG_BLUR_BEHIND:I = 0x4

.field public static final whitelist FLAG_DIM_BEHIND:I = 0x2

.field public static final whitelist FLAG_DISMISS_KEYGUARD:I = 0x400000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final whitelist FLAG_FORCE_NOT_FULLSCREEN:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_FULLSCREEN:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final whitelist FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final whitelist FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final whitelist FLAG_LAYOUT_ATTACHED_IN_DECOR:I = 0x40000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_LAYOUT_INSET_DECOR:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final whitelist FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final whitelist FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final whitelist FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final whitelist FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final whitelist FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final whitelist FLAG_SCALED:I = 0x4000

.field public static final whitelist FLAG_SECURE:I = 0x2000

.field public static final whitelist FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final whitelist FLAG_SHOW_WHEN_LOCKED:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist FLAG_SLIPPERY:I = 0x20000000

.field public static final whitelist FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final whitelist FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_TRANSLUCENT_STATUS:I = 0x4000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_TURN_SCREEN_ON:I = 0x200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final whitelist FORMAT_CHANGED:I = 0x8

.field public static final greylist-max-o INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final greylist-max-r INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x2

.field public static final blacklist INPUT_FEATURE_INTERCEPTS_STYLUS:I = 0x40000000

.field public static final greylist-max-o INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x1

.field public static final blacklist INPUT_FEATURE_SKIP_HANDWRITING_INJECT_MOTION_EVENT:I = -0x80000000

.field public static final blacklist INPUT_FEATURE_SPY:I = 0x4

.field public static final blacklist INPUT_FEATURE_TRANSFER_ANY_TOUCH_FOR_DRAG:I = 0x20000000

.field public static final blacklist INSET_FLAGS_CHANGED:I = 0x8000000

.field public static final greylist-max-o INVALID_WINDOW_TYPE:I = -0x1

.field public static final whitelist LAST_APPLICATION_WINDOW:I = 0x63

.field public static final whitelist LAST_SUB_WINDOW:I = 0x7cf

.field public static final whitelist LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final whitelist LAYOUT_CHANGED:I = 0x1

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_ALWAYS:I = 0x3

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_DEFAULT:I = 0x0

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_NEVER:I = 0x2

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES:I = 0x1

.field public static final whitelist MEMORY_TYPE_CHANGED:I = 0x100

.field public static final whitelist MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MINIMAL_POST_PROCESSING_PREFERENCE_CHANGED:I = 0x10000000

.field public static final blacklist MIUI_FLAG_IS_MIUI_FREEFORM_OVERLAY:I = -0x80000000

.field public static final greylist-max-o PREFERRED_DISPLAY_MODE_ID:I = 0x800000

.field public static final blacklist PREFERRED_MAX_DISPLAY_REFRESH_RATE:I = -0x80000000

.field public static final blacklist PREFERRED_MIN_DISPLAY_REFRESH_RATE:I = 0x40000000

.field public static final greylist-max-o PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final greylist-max-o PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final blacklist PRIVATE_FLAG_APPEARANCE_CONTROLLED:I = 0x4000000

.field public static final blacklist PRIVATE_FLAG_BEHAVIOR_CONTROLLED:I = 0x8000000

.field public static final blacklist PRIVATE_FLAG_COLOR_SPACE_AGNOSTIC:I = 0x1000000

.field public static final greylist-max-o PRIVATE_FLAG_COMPATIBLE_WINDOW:I = 0x80

.field public static final greylist-max-o PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS:I = 0x800

.field public static final blacklist PRIVATE_FLAG_EXCLUDE_FROM_SCREEN_MAGNIFICATION:I = 0x200000

.field public static final blacklist PRIVATE_FLAG_FIT_INSETS_CONTROLLED:I = 0x10000000

.field public static final greylist-max-o PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY:I = 0x4000

.field public static final blacklist PRIVATE_FLAG_FORCE_DRAW_BAR_BACKGROUNDS:I = 0x20000

.field public static final greylist-max-o PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final blacklist PRIVATE_FLAG_FORCE_SHOW_STATUS_BAR:I = 0x1000

.field public static final blacklist PRIVATE_FLAG_INSET_PARENT_FRAME_BY_IME:I = 0x40000000

.field public static final blacklist PRIVATE_FLAG_INTERCEPT_GLOBAL_DRAG_AND_DROP:I = -0x80000000

.field public static final greylist-max-o PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY:I = 0x100000

.field public static final greylist-max-o PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME:I = 0x10000

.field public static final blacklist PRIVATE_FLAG_LAYOUT_SIZE_EXTENDED_BY_CUTOUT:I = 0x2000

.field public static final blacklist PRIVATE_FLAG_NOT_MAGNIFIABLE:I = 0x400000

.field public static final greylist PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final blacklist PRIVATE_FLAG_STATUS_FORCE_SHOW_NAVIGATION:I = 0x800000

.field public static final greylist-max-o PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE:I = 0x40000

.field public static final blacklist PRIVATE_FLAG_SYSTEM_APPLICATION_OVERLAY:I = 0x8

.field public static final greylist-max-o PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final blacklist PRIVATE_FLAG_TRUSTED_OVERLAY:I = 0x20000000

.field public static final blacklist PRIVATE_FLAG_USE_BLAST:I = 0x2000000

.field public static final greylist-max-o PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final greylist-max-o PRIVATE_FLAG_WILL_NOT_REPLACE_ON_RELAUNCH:I = 0x8000

.field public static final whitelist ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final whitelist ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final whitelist ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final whitelist ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final whitelist ROTATION_ANIMATION_SEAMLESS:I = 0x3

.field public static final greylist-max-o ROTATION_ANIMATION_UNSPECIFIED:I = -0x1

.field public static final whitelist SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final whitelist SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final whitelist SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final whitelist SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final whitelist SOFT_INPUT_ADJUST_RESIZE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final whitelist SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final whitelist SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final whitelist SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final whitelist SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final whitelist SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final whitelist SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final whitelist SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final whitelist SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final whitelist SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final whitelist SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final greylist-max-o SURFACE_INSETS_CHANGED:I = 0x100000

.field public static final whitelist SYSTEM_FLAG_HIDE_NON_SYSTEM_OVERLAY_WINDOWS:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_FLAG_SHOW_FOR_ALL_USERS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final greylist-max-o SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final whitelist TITLE_CHANGED:I = 0x40

.field public static final greylist-max-o TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final blacklist TYPE_ACCESSIBILITY_MAGNIFICATION_OVERLAY:I = 0x7f7

.field public static final whitelist TYPE_ACCESSIBILITY_OVERLAY:I = 0x7f0

.field public static final whitelist TYPE_APPLICATION:I = 0x2

.field public static final greylist-max-o TYPE_APPLICATION_ABOVE_SUB_PANEL:I = 0x3ed

.field public static final whitelist TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final whitelist TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final greylist TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final whitelist TYPE_APPLICATION_OVERLAY:I = 0x7f6

.field public static final whitelist TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final whitelist TYPE_APPLICATION_STARTING:I = 0x3

.field public static final whitelist TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final whitelist TYPE_BASE_APPLICATION:I = 0x1

.field public static final greylist-max-o TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final greylist TYPE_CARWITH_NAVIGATION_BAR:I = 0xbb6

.field public static final whitelist TYPE_CHANGED:I = 0x2

.field public static final greylist-max-r TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final greylist-max-o TYPE_DOCK_DIVIDER:I = 0x7f2

.field public static final greylist-max-o TYPE_DRAG:I = 0x7e0

.field public static final whitelist TYPE_DRAWN_APPLICATION:I = 0x4

.field public static final blacklist TYPE_HOVER_MODE_GUIDE_PANEL:I = 0x9c5

.field public static final greylist-max-o TYPE_INPUT_CONSUMER:I = 0x7e6

.field public static final whitelist TYPE_INPUT_METHOD:I = 0x7db

.field public static final whitelist TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final greylist TYPE_KEYGUARD:I = 0x7d4

.field public static final whitelist TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final greylist-max-o TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final greylist-max-o TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final greylist-max-o TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final blacklist TYPE_NOTIFICATION_SHADE:I = 0x7f8

.field public static final whitelist TYPE_PHONE:I = 0x7d2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TYPE_POINTER:I = 0x7e2

.field public static final greylist-max-o TYPE_PRESENTATION:I = 0x7f5

.field public static final whitelist TYPE_PRIORITY_PHONE:I = 0x7d7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final greylist-max-o TYPE_QS_DIALOG:I = 0x7f3

.field public static final greylist-max-o TYPE_SCREENSHOT:I = 0x7f4

.field public static final whitelist TYPE_SEARCH_BAR:I = 0x7d1

.field public static final greylist-max-r TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final whitelist TYPE_STATUS_BAR:I = 0x7d0

.field public static final blacklist TYPE_STATUS_BAR_ADDITIONAL:I = 0x7f9

.field public static final greylist TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final greylist-max-o TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final whitelist TYPE_SYSTEM_ALERT:I = 0x7d3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final whitelist TYPE_SYSTEM_ERROR:I = 0x7da
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_SYSTEM_OVERLAY:I = 0x7d6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_TOAST:I = 0x7d5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_TOP_MOST_TOAST:I = 0x9c4

.field public static final greylist-max-o TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final greylist-max-o TYPE_VOICE_INTERACTION_STARTING:I = 0x7f1

.field public static final greylist-max-o TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final whitelist TYPE_WALLPAPER:I = 0x7dd

.field public static final greylist-max-o USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000


# instance fields
.field public greylist-max-o accessibilityIdOfAnchor:J

.field public blacklist accessibilityTitle:Ljava/lang/CharSequence;

.field public whitelist alpha:F

.field public whitelist buttonBrightness:F

.field public whitelist dimAmount:F

.field public blacklist disableCutout:Z

.field public blacklist extraFlags:I

.field public whitelist flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "TRANSLUCENT_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "FLAG_SLIPPERY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "FLAG_LAYOUT_ATTACHED_IN_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "DRAWS_SYSTEM_BAR_BACKGROUNDS"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public whitelist format:I

.field public whitelist gravity:I

.field public greylist-max-o hasManualSurfaceInsets:Z

.field public greylist hasSystemUiListeners:Z

.field public greylist hideTimeoutMilliseconds:J

.field public whitelist horizontalMargin:F

.field public whitelist horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public greylist inputFeatures:I

.field public final blacklist insetsFlags:Landroid/view/InsetsFlags;

.field public blacklist insetsRoundedCornerFrame:Z

.field public whitelist layoutInDisplayCutoutMode:I

.field private blacklist mBlurBehindRadius:I

.field private greylist-max-o mColorMode:I

.field private greylist-max-o mCompatibilityParamsBackup:[I

.field private blacklist mFitInsetsIgnoringVisibility:Z

.field private blacklist mFitInsetsSides:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "BOTTOM"
            .end subannotation
        }
    .end annotation
.end field

.field private blacklist mFitInsetsTypes:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "STATUS_BARS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "NAVIGATION_BARS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "CAPTION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "IME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "SYSTEM_GESTURES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "MANDATORY_SYSTEM_GESTURES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "TAPPABLE_ELEMENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "WINDOW_DECOR"
            .end subannotation
        }
    .end annotation
.end field

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field public blacklist mWindowContextToken:Landroid/os/IBinder;

.field public whitelist memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist miuiAlwaysDisplayInCutout:Z

.field public blacklist miuiFlags:I

.field public greylist oldSystemUiFlags:I

.field public whitelist packageName:Ljava/lang/String;

.field public blacklist paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

.field public whitelist preferMinimalPostProcessing:Z

.field public whitelist preferredDisplayModeId:I

.field public blacklist preferredMaxDisplayRefreshRate:F

.field public blacklist preferredMinDisplayRefreshRate:F

.field public whitelist preferredRefreshRate:F

.field public greylist-max-o preservePreviousSurfaceInsets:Z

.field public greylist privateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FORCE_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "WANTS_OFFSET_NOTIFICATIONS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "SHOW_FOR_ALL_USERS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "NO_MOVE_ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "COMPATIBLE_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "DISABLE_WALLPAPER_TOUCH_EVENTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_STATUS_BAR_VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "FORCE_DECOR_VIEW_VISIBILITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "WILL_NOT_REPLACE_ON_RELAUNCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FORCE_DRAW_STATUS_BAR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "SUSTAINED_PERFORMANCE_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "HIDE_NON_SYSTEM_OVERLAY_WINDOWS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "IS_ROUNDED_CORNERS_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "EXCLUDE_FROM_SCREEN_MAGNIFICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "NOT_MAGNIFIABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "STATUS_FORCE_SHOW_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "COLOR_SPACE_AGNOSTIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "USE_BLAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "APPEARANCE_CONTROLLED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "BEHAVIOR_CONTROLLED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "FIT_INSETS_CONTROLLED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "TRUSTED_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "INSET_PARENT_FRAME_BY_IME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "INTERCEPT_GLOBAL_DRAG_AND_DROP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "PRIVATE_FLAG_SYSTEM_APPLICATION_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public blacklist providedInternalImeInsets:[Landroid/graphics/Insets;

.field public blacklist providedInternalInsets:[Landroid/graphics/Insets;

.field public blacklist providesInsetsTypes:[I

.field public blacklist receiveInsetsIgnoringZOrder:Z

.field public whitelist rotationAnimation:I

.field public whitelist screenBrightness:F

.field public whitelist screenOrientation:I

.field public whitelist softInputMode:I

.field public greylist-max-r subtreeSystemUiVisibility:I

.field public final greylist-max-o surfaceInsets:Landroid/graphics/Rect;

.field public whitelist systemUiVisibility:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist token:Landroid/os/IBinder;

.field public whitelist type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "DRAWN_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ed
                to = "APPLICATION_ABOVE_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "INPUT_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f5
                to = "PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "PRIVATE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ef
                to = "VOICE_INTERACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f1
                to = "VOICE_INTERACTION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f2
                to = "DOCK_DIVIDER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f3
                to = "QS_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f4
                to = "SCREENSHOT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f6
                to = "APPLICATION_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public greylist userActivityTimeout:J

.field public whitelist verticalMargin:F

.field public whitelist verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public whitelist windowAnimations:I

.field public whitelist x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public whitelist y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4142
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 8

    .line 3851
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2384
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    .line 3009
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3038
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3058
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3065
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3094
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3102
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3150
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3156
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3167
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3173
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3183
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3316
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3539
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3548
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3571
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3599
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3611
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3621
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3630
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3632
    nop

    .line 3666
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3668
    nop

    .line 3686
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3688
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3729
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 4288
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4893
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3852
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3853
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3854
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 9
    .param p1, "_type"    # I

    .line 3857
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2384
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    .line 3009
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3038
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3058
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3065
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3094
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3102
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3150
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3156
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3167
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3173
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3183
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3316
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3539
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3548
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3571
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3599
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3611
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3621
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3630
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3632
    nop

    .line 3666
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3668
    nop

    .line 3686
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3688
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3729
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 4288
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4893
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3858
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3859
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3860
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 10
    .param p1, "_type"    # I
    .param p2, "_flags"    # I

    .line 3863
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2384
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    .line 3009
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3038
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3058
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3065
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3094
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3102
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3150
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3156
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3167
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3173
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3183
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3316
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3539
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3548
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3571
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3599
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3611
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3621
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3630
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3632
    nop

    .line 3666
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3668
    nop

    .line 3686
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3688
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3729
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 4288
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4893
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3864
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3865
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3866
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3867
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 11
    .param p1, "_type"    # I
    .param p2, "_flags"    # I
    .param p3, "_format"    # I

    .line 3870
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2384
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    .line 3009
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3038
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3058
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3065
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3094
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3102
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3150
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3156
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3167
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3173
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3183
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3316
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3539
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3548
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3571
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3599
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3611
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3621
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3630
    new-instance v0, Landroid/view/InsetsFlags;

    invoke-direct {v0}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3632
    nop

    .line 3666
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3668
    nop

    .line 3686
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3688
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3729
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 4288
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4893
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3871
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3872
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3873
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3874
    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "_type"    # I
    .param p4, "_flags"    # I
    .param p5, "_format"    # I

    .line 3877
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2384
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    .line 3009
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3038
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3058
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3065
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3094
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3102
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3150
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3156
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3167
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3173
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3183
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3316
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3539
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3548
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3571
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3599
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3611
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3621
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3630
    new-instance v2, Landroid/view/InsetsFlags;

    invoke-direct {v2}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3632
    nop

    .line 3666
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3668
    nop

    .line 3686
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3688
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3729
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 4288
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4893
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3878
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3879
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3880
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3881
    return-void
.end method

.method public constructor whitelist <init>(IIIIIII)V
    .registers 14
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "xpos"    # I
    .param p4, "ypos"    # I
    .param p5, "_type"    # I
    .param p6, "_flags"    # I
    .param p7, "_format"    # I

    .line 3885
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2384
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    .line 3009
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3038
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3058
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3065
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3094
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3102
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3150
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3156
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3167
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3173
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3183
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3316
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3539
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3548
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3571
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3599
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3611
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3621
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3630
    new-instance v2, Landroid/view/InsetsFlags;

    invoke-direct {v2}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3632
    nop

    .line 3666
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3668
    nop

    .line 3686
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3688
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3729
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 4288
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4893
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3886
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3887
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3888
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3889
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3890
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3891
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4154
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 2384
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    .line 3009
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3038
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3058
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3065
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3094
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3102
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3150
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3156
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3167
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3173
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3183
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3316
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3539
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3548
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3571
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3599
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3611
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3621
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3630
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3632
    nop

    .line 3666
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3668
    nop

    .line 3686
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3688
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3729
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 4288
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4893
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 4163
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    .line 4164
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    .line 4165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->miuiFlags:I

    .line 4167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4171
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 4172
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 4173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 4175
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4176
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4177
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4178
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4180
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4181
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4183
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4185
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 4186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 4187
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 4188
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 4189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 4190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 4191
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 4192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 4193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 4195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 4196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 4197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 4198
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 4199
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 4200
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4202
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 4203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4204
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Landroid/view/InsetsFlags;->appearance:I

    .line 4206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Landroid/view/InsetsFlags;->behavior:I

    .line 4207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4209
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4210
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4213
    .local v0, "insetsTypesLength":I
    if-lez v0, :cond_1b6

    .line 4214
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    .line 4215
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 4217
    :cond_1b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4218
    .local v1, "providedInternalInsetsLength":I
    if-lez v1, :cond_1c5

    .line 4219
    new-array v2, v1, [Landroid/graphics/Insets;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    .line 4220
    sget-object v3, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 4222
    :cond_1c5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4223
    .local v2, "providedInternalImeInsetsLength":I
    if-lez v2, :cond_1d4

    .line 4224
    new-array v3, v2, [Landroid/graphics/Insets;

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    .line 4225
    sget-object v4, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 4227
    :cond_1d4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 4228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4229
    .local v3, "paramsForRotationLength":I
    if-lez v3, :cond_1e9

    .line 4230
    new-array v4, v3, [Landroid/view/WindowManager$LayoutParams;

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 4231
    sget-object v5, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 4233
    :cond_1e9
    return-void
.end method

.method private blacklist checkNonRecursiveParams()V
    .registers 4

    .line 3839
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_5

    .line 3840
    return-void

    .line 3842
    :cond_5
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 3843
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_15

    .line 3842
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3844
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Params cannot contain params recursively."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3848
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private static blacklist inputFeaturesToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "inputFeatures"    # I

    .line 5006
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5007
    .local v0, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 5008
    and-int/lit8 p0, p0, -0x2

    .line 5009
    const-string v1, "INPUT_FEATURE_NO_INPUT_CHANNEL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5011
    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1b

    .line 5012
    and-int/lit8 p0, p0, -0x3

    .line 5013
    const-string v1, "INPUT_FEATURE_DISABLE_USER_ACTIVITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5015
    :cond_1b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_26

    .line 5016
    and-int/lit8 p0, p0, -0x5

    .line 5017
    const-string v1, "INPUT_FEATURE_SPY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5020
    :cond_26
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_34

    .line 5021
    const v1, -0x20000001

    and-int/2addr p0, v1

    .line 5022
    const-string v1, "INPUT_FEATURE_TRANSFER_ANY_TOUCH_FOR_DRAG"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5024
    :cond_34
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_42

    .line 5025
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr p0, v1

    .line 5026
    const-string v1, "INPUT_FEATURE_INTERCEPTS_STYLUS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5028
    :cond_42
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_50

    .line 5029
    const v1, 0x7fffffff

    and-int/2addr p0, v1

    .line 5030
    const-string v1, "INPUT_FEATURE_SKIP_HANDWRITING_INJECT_MOTION_EVENT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5033
    :cond_50
    if-eqz p0, :cond_59

    .line 5034
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5036
    :cond_59
    const-string v1, " | "

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o isSystemAlertWindowType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 1710
    sparse-switch p0, :sswitch_data_8

    .line 1719
    const/4 v0, 0x0

    return v0

    .line 1717
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x7d2 -> :sswitch_5
        0x7d3 -> :sswitch_5
        0x7d6 -> :sswitch_5
        0x7d7 -> :sswitch_5
        0x7da -> :sswitch_5
        0x7f6 -> :sswitch_5
    .end sparse-switch
.end method

.method private static greylist-max-o layoutInDisplayCutoutModeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 4921
    packed-switch p0, :pswitch_data_2c

    .line 4931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4925
    :pswitch_1e
    const-string v0, "always"

    return-object v0

    .line 4927
    :pswitch_21
    const-string/jumbo v0, "never"

    return-object v0

    .line 4929
    :pswitch_25
    const-string/jumbo v0, "shortEdges"

    return-object v0

    .line 4923
    :pswitch_29
    const-string v0, "default"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public static whitelist mayUseInputMethod(I)Z
    .registers 3
    .param p0, "flags"    # I

    .line 2813
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_e

    const/high16 v0, 0x20000

    and-int v1, p0, v0

    if-eq v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static greylist-max-o rotationAnimationToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "rotationAnimation"    # I

    .line 4989
    packed-switch p0, :pswitch_data_18

    .line 5001
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4999
    :pswitch_8
    const-string v0, "SEAMLESS"

    return-object v0

    .line 4997
    :pswitch_b
    const-string v0, "JUMPCUT"

    return-object v0

    .line 4995
    :pswitch_e
    const-string v0, "CROSSFADE"

    return-object v0

    .line 4993
    :pswitch_11
    const-string v0, "ROTATE"

    return-object v0

    .line 4991
    :pswitch_14
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static greylist-max-o softInputModeToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "softInputMode"    # I

    .line 4936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4937
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0xf

    .line 4938
    .local v1, "state":I
    const/16 v2, 0x20

    if-eqz v1, :cond_3b

    .line 4939
    const-string/jumbo v3, "state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4940
    packed-switch v1, :pswitch_data_7e

    .line 4957
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 4954
    :pswitch_18
    const-string v3, "always_visible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4955
    goto :goto_38

    .line 4951
    :pswitch_1e
    const-string/jumbo v3, "visible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4952
    goto :goto_38

    .line 4948
    :pswitch_25
    const-string v3, "always_hidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4949
    goto :goto_38

    .line 4945
    :pswitch_2b
    const-string v3, "hidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4946
    goto :goto_38

    .line 4942
    :pswitch_31
    const-string/jumbo v3, "unchanged"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4943
    nop

    .line 4960
    :goto_38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4962
    :cond_3b
    and-int/lit16 v3, p0, 0xf0

    .line 4963
    .local v3, "adjust":I
    if-eqz v3, :cond_63

    .line 4964
    const-string v4, "adjust="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4965
    sparse-switch v3, :sswitch_data_8c

    .line 4976
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 4973
    :sswitch_4b
    const-string/jumbo v4, "nothing"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4974
    goto :goto_60

    .line 4970
    :sswitch_52
    const-string/jumbo v4, "pan"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4971
    goto :goto_60

    .line 4967
    :sswitch_59
    const-string/jumbo v4, "resize"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4968
    nop

    .line 4979
    :goto_60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4981
    :cond_63
    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_70

    .line 4982
    const-string v4, "forwardNavigation"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4984
    :cond_70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4985
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1e
        :pswitch_18
    .end packed-switch

    :sswitch_data_8c
    .sparse-switch
        0x10 -> :sswitch_59
        0x20 -> :sswitch_52
        0x30 -> :sswitch_4b
    .end sparse-switch
.end method


# virtual methods
.method greylist backup()V
    .registers 4

    .line 4867
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4868
    .local v0, "backup":[I
    if-nez v0, :cond_a

    .line 4870
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    move-object v0, v1

    .line 4872
    :cond_a
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    .line 4873
    const/4 v1, 0x1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    .line 4874
    const/4 v1, 0x2

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    aput v2, v0, v1

    .line 4875
    const/4 v1, 0x3

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    aput v2, v0, v1

    .line 4876
    return-void
.end method

.method public final whitelist copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .registers 7
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;

    .line 4291
    const/4 v0, 0x0

    .line 4293
    .local v0, "changes":I
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, v2, :cond_d

    .line 4294
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4295
    or-int/lit8 v0, v0, 0x1

    .line 4297
    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, v2, :cond_19

    .line 4298
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4299
    or-int/lit8 v0, v0, 0x1

    .line 4301
    :cond_19
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v1, v2, :cond_23

    .line 4302
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4303
    or-int/lit8 v0, v0, 0x1

    .line 4305
    :cond_23
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v1, v2, :cond_2d

    .line 4306
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4307
    or-int/lit8 v0, v0, 0x1

    .line 4309
    :cond_2d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_39

    .line 4310
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 4311
    or-int/lit8 v0, v0, 0x1

    .line 4313
    :cond_39
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_45

    .line 4314
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 4315
    or-int/lit8 v0, v0, 0x1

    .line 4317
    :cond_45
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_51

    .line 4318
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 4319
    or-int/lit8 v0, v0, 0x1

    .line 4321
    :cond_51
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5d

    .line 4322
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 4323
    or-int/lit8 v0, v0, 0x1

    .line 4325
    :cond_5d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_67

    .line 4326
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4327
    or-int/lit8 v0, v0, 0x2

    .line 4329
    :cond_67
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_7a

    .line 4330
    xor-int/2addr v1, v2

    .line 4331
    .local v1, "diff":I
    const/high16 v3, 0xc000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_76

    .line 4332
    const/high16 v3, 0x80000

    or-int/2addr v0, v3

    .line 4334
    :cond_76
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4335
    or-int/lit8 v0, v0, 0x4

    .line 4338
    .end local v1    # "diff":I
    :cond_7a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    if-eq v1, v2, :cond_84

    .line 4339
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 4340
    or-int/lit8 v0, v0, 0x4

    .line 4342
    :cond_84
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    if-eq v1, v2, :cond_8e

    .line 4343
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    .line 4344
    or-int/lit8 v0, v0, 0x1

    .line 4346
    :cond_8e
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    if-eq v1, v2, :cond_98

    .line 4347
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    .line 4348
    or-int/lit8 v0, v0, 0x1

    .line 4350
    :cond_98
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->miuiFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->miuiFlags:I

    if-eq v1, v2, :cond_a2

    .line 4351
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->miuiFlags:I

    .line 4352
    or-int/lit8 v0, v0, 0x4

    .line 4355
    :cond_a2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eq v1, v2, :cond_ad

    .line 4356
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4357
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 4359
    :cond_ad
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, v2, :cond_b7

    .line 4360
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4361
    or-int/lit16 v0, v0, 0x200

    .line 4363
    :cond_b7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v2, :cond_c1

    .line 4364
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4365
    or-int/lit8 v0, v0, 0x1

    .line 4367
    :cond_c1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_cb

    .line 4368
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4369
    or-int/lit8 v0, v0, 0x1

    .line 4371
    :cond_cb
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v1, v2, :cond_d5

    .line 4372
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4373
    or-int/lit8 v0, v0, 0x8

    .line 4375
    :cond_d5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v2, :cond_df

    .line 4376
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 4377
    or-int/lit8 v0, v0, 0x10

    .line 4379
    :cond_df
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_e7

    .line 4382
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4384
    :cond_e7
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    if-nez v1, :cond_ef

    .line 4387
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4389
    :cond_ef
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_f7

    .line 4392
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4394
    :cond_f7
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_109

    .line 4396
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4397
    or-int/lit8 v0, v0, 0x40

    .line 4399
    :cond_109
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_115

    .line 4400
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4401
    or-int/lit16 v0, v0, 0x80

    .line 4403
    :cond_115
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_121

    .line 4404
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4405
    or-int/lit8 v0, v0, 0x20

    .line 4407
    :cond_121
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_12d

    .line 4408
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4409
    or-int/lit16 v0, v0, 0x800

    .line 4411
    :cond_12d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_139

    .line 4412
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4413
    or-int/lit16 v0, v0, 0x2000

    .line 4415
    :cond_139
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v1, v2, :cond_143

    .line 4416
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4417
    or-int/lit16 v0, v0, 0x1000

    .line 4420
    :cond_143
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v2, :cond_14d

    .line 4421
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4422
    or-int/lit16 v0, v0, 0x400

    .line 4425
    :cond_14d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15a

    .line 4426
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 4427
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 4430
    :cond_15a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eq v1, v2, :cond_165

    .line 4431
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 4432
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 4435
    :cond_165
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_172

    .line 4436
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 4437
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 4440
    :cond_172
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_17f

    .line 4441
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 4442
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 4445
    :cond_17f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-ne v1, v2, :cond_18b

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v1, v3, :cond_193

    .line 4447
    :cond_18b
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 4448
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 4449
    or-int/lit16 v0, v0, 0x4000

    .line 4452
    :cond_193
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v1, v2, :cond_19f

    .line 4453
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 4454
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 4457
    :cond_19f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eq v1, v2, :cond_1aa

    .line 4458
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 4459
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 4462
    :cond_1aa
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b7

    .line 4463
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4464
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 4467
    :cond_1b7
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x100000

    if-nez v1, :cond_1cb

    .line 4468
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4469
    or-int/2addr v0, v2

    .line 4472
    :cond_1cb
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eq v1, v3, :cond_1d4

    .line 4473
    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 4474
    or-int/2addr v0, v2

    .line 4477
    :cond_1d4
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eq v1, v3, :cond_1dd

    .line 4478
    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 4479
    or-int/2addr v0, v2

    .line 4482
    :cond_1dd
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eq v1, v3, :cond_1e6

    .line 4483
    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4484
    or-int/2addr v0, v2

    .line 4487
    :cond_1e6
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1f3

    .line 4488
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4489
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 4492
    :cond_1f3
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_206

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_206

    .line 4495
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 4496
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 4499
    :cond_206
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eq v1, v2, :cond_211

    .line 4500
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4501
    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    .line 4504
    :cond_211
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    if-eq v1, v2, :cond_21c

    .line 4505
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4506
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 4509
    :cond_21c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    if-eq v1, v2, :cond_227

    .line 4510
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4511
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 4515
    :cond_227
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4517
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    const/high16 v3, 0x8000000

    if-eq v1, v2, :cond_240

    .line 4518
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    iput v2, v1, Landroid/view/InsetsFlags;->appearance:I

    .line 4519
    or-int/2addr v0, v3

    .line 4522
    :cond_240
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    if-eq v1, v2, :cond_253

    .line 4523
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    iput v2, v1, Landroid/view/InsetsFlags;->behavior:I

    .line 4524
    or-int/2addr v0, v3

    .line 4527
    :cond_253
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-eq v1, v2, :cond_25d

    .line 4528
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4529
    or-int/lit8 v0, v0, 0x1

    .line 4532
    :cond_25d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    if-eq v1, v2, :cond_267

    .line 4533
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4534
    or-int/lit8 v0, v0, 0x1

    .line 4537
    :cond_267
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eq v1, v2, :cond_271

    .line 4538
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4539
    or-int/lit8 v0, v0, 0x1

    .line 4542
    :cond_271
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_281

    .line 4543
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    .line 4544
    or-int/lit8 v0, v0, 0x1

    .line 4547
    :cond_281
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_291

    .line 4548
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    .line 4549
    or-int/lit8 v0, v0, 0x1

    .line 4552
    :cond_291
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a1

    .line 4553
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    .line 4554
    or-int/lit8 v0, v0, 0x1

    .line 4557
    :cond_2a1
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    if-eq v1, v2, :cond_2ab

    .line 4558
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 4559
    or-int/lit8 v0, v0, 0x1

    .line 4562
    :cond_2ab
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2be

    .line 4563
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 4564
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;->checkNonRecursiveParams()V

    .line 4565
    or-int/lit8 v0, v0, 0x1

    .line 4568
    :cond_2be
    return v0
.end method

.method public whitelist debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "output"    # Ljava/lang/String;

    .line 4573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Contents of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4574
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4575
    const-string v1, ""

    invoke-super {p0, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4576
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4577
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowManager.LayoutParams={title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 4053
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 4812
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4813
    .local v0, "token":J
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4814
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4815
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4816
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4817
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4818
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const-wide v3, 0x10200000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4819
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    const-wide v3, 0x10200000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4820
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4821
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4822
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-wide v3, 0x10e0000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4823
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4824
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-wide v3, 0x1020000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4825
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const-wide v3, 0x1020000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4826
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const-wide v3, 0x1020000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4827
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const-wide v3, 0x10e0000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4828
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const-wide v3, 0x10200000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4829
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    const-wide v3, 0x10500000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4830
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    const-wide v3, 0x10800000012L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4831
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const-wide v3, 0x10d00000013L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4832
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide v4, 0x10300000014L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4833
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    const-wide v3, 0x10e00000017L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4834
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-wide v3, 0x10d00000018L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4835
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-wide v3, 0x10d0000001aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4836
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-wide v3, 0x10d0000001bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4837
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    const-wide v3, 0x10d0000001cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4838
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    const-wide v3, 0x10d0000001dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4839
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    const-wide v3, 0x10d0000001eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4840
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    const-wide v3, 0x10d0000001fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4841
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    const-wide v3, 0x10d00000020L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4842
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    const-wide v3, 0x10800000021L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4843
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4844
    return-void
.end method

.method public greylist-max-o dumpDimensions(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 4591
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4592
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4593
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4594
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4595
    const-string v0, ")("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4596
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-string/jumbo v1, "wrap"

    const-string v2, "fill"

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-ne v0, v4, :cond_26

    move-object v0, v2

    goto :goto_32

    :cond_26
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v3, :cond_2c

    .line 4597
    move-object v0, v1

    goto :goto_32

    :cond_2c
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4596
    :goto_32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4598
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4599
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v4, :cond_40

    move-object v1, v2

    goto :goto_4b

    :cond_40
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_45

    .line 4600
    goto :goto_4b

    :cond_45
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 4599
    :goto_4b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4601
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4602
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 4898
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4900
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 4901
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string/jumbo v1, "y"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 4902
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const-string v1, "horizontalWeight"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 4903
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const-string/jumbo v1, "verticalWeight"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 4904
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 4905
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 4906
    return-void
.end method

.method public whitelist getBlurBehindRadius()I
    .registers 2

    .line 4006
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    return v0
.end method

.method public whitelist getColorMode()I
    .registers 2

    .line 3961
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return v0
.end method

.method public whitelist getFitInsetsSides()I
    .registers 2

    .line 3827
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    return v0
.end method

.method public whitelist getFitInsetsTypes()I
    .registers 2

    .line 3820
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    return v0
.end method

.method public final whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 3901
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0
.end method

.method public final whitelist getUserActivityTimeout()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4018
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-wide v0
.end method

.method public final blacklist getWindowContextToken()Landroid/os/IBinder;
    .registers 2

    .line 4049
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist isFitInsetsIgnoringVisibility()Z
    .registers 2

    .line 3835
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    return v0
.end method

.method public greylist-max-o isFullscreen()Z
    .registers 3

    .line 4914
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_13

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_13

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public blacklist isModal()Z
    .registers 2

    .line 5046
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isSystemApplicationOverlay()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3812
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist restore()V
    .registers 3

    .line 4884
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4885
    .local v0, "backup":[I
    if-eqz v0, :cond_18

    .line 4886
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4887
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4888
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4889
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4891
    :cond_18
    return-void
.end method

.method public greylist-max-o scale(F)V
    .registers 4
    .param p1, "scale"    # F

    .line 4851
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4852
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4853
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v0, :cond_1e

    .line 4854
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4856
    :cond_1e
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v0, :cond_2a

    .line 4857
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4859
    :cond_2a
    return-void
.end method

.method public whitelist setBlurBehindRadius(I)V
    .registers 2
    .param p1, "blurBehindRadius"    # I

    .line 3997
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3998
    return-void
.end method

.method public whitelist setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .line 3950
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3951
    return-void
.end method

.method public whitelist setFitInsetsIgnoringVisibility(Z)V
    .registers 4
    .param p1, "ignore"    # Z

    .line 3767
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3768
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3769
    return-void
.end method

.method public whitelist setFitInsetsSides(I)V
    .registers 4
    .param p1, "sides"    # I

    .line 3757
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3758
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3759
    return-void
.end method

.method public whitelist setFitInsetsTypes(I)V
    .registers 4
    .param p1, "types"    # I

    .line 3746
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3747
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3748
    return-void
.end method

.method public final greylist-max-o setSurfaceInsets(Landroid/view/View;ZZ)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "manual"    # Z
    .param p3, "preservePrevious"    # Z

    .line 3909
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 3917
    .local v0, "surfaceInset":I
    const/4 v1, 0x0

    .line 3919
    .local v1, "windowMode":I
    :try_start_e
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3920
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_1e

    move v1, v2

    .line 3923
    goto :goto_22

    .line 3921
    :catch_1e
    move-exception v2

    .line 3922
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3924
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_22
    if-eqz v0, :cond_4c

    const/4 v2, 0x5

    if-ne v1, v2, :cond_28

    goto :goto_4c

    .line 3929
    :cond_28
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 3930
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3931
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 3932
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 3933
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3929
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_52

    .line 3927
    :cond_4c
    :goto_4c
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3935
    :goto_52
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 3936
    iput-boolean p3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3937
    return-void
.end method

.method public whitelist setSystemApplicationOverlay(Z)V
    .registers 3
    .param p1, "isSystemApplicationOverlay"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3794
    if-eqz p1, :cond_9

    .line 3795
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_f

    .line 3797
    :cond_9
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3799
    :goto_f
    return-void
.end method

.method public final whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 3894
    if-nez p1, :cond_4

    .line 3895
    const-string p1, ""

    .line 3897
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3898
    return-void
.end method

.method public blacklist setTrustedOverlay()V
    .registers 3

    .line 3782
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3783
    return-void
.end method

.method public final whitelist setUserActivityTimeout(J)V
    .registers 3
    .param p1, "timeout"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4012
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4013
    return-void
.end method

.method public final blacklist setWindowContextToken(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4030
    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4031
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 4584
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;

    .line 4608
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4609
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4610
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 4611
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_22

    .line 4612
    const-string v2, " hm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4613
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4615
    :cond_22
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_32

    .line 4616
    const-string v2, " vm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4617
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4619
    :cond_32
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v2, :cond_44

    .line 4620
    const-string v2, " gr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4621
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4623
    :cond_44
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v4, 0x7d

    if-eqz v2, :cond_5b

    .line 4624
    const-string v2, " sim={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4625
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4626
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4628
    :cond_5b
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz v2, :cond_6d

    .line 4629
    const-string v2, " layoutInDisplayCutoutMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4630
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4633
    :cond_6d
    const-string v2, " disableCutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4634
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4635
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    if-eqz v2, :cond_80

    .line 4636
    const-string v2, " mi_adic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4639
    :cond_80
    const-string v2, " ty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4640
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string/jumbo v5, "type"

    invoke-static {v0, v5, v2}, Landroid/view/ViewDebug;->intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4641
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_a4

    .line 4642
    const-string v2, " fmt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4643
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4645
    :cond_a4
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_b6

    .line 4646
    const-string v2, " wanim=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4647
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4649
    :cond_b6
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v2, v5, :cond_c8

    .line 4650
    const-string v2, " or="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4651
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4653
    :cond_c8
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_da

    .line 4654
    const-string v2, " alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4655
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4657
    :cond_da
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_ec

    .line 4658
    const-string v2, " sbrt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4659
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4661
    :cond_ec
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_fc

    .line 4662
    const-string v2, " bbrt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4663
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4665
    :cond_fc
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eqz v2, :cond_10e

    .line 4666
    const-string v2, " rotAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4667
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->rotationAnimationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4669
    :cond_10e
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_11e

    .line 4670
    const-string v2, " preferredRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4671
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4673
    :cond_11e
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v2, :cond_12c

    .line 4674
    const-string v2, " preferredDisplayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4675
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4677
    :cond_12c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_13c

    .line 4678
    const-string v2, " preferredMinDisplayRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4679
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4681
    :cond_13c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_14c

    .line 4682
    const-string v2, " preferredMaxDisplayRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4683
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4685
    :cond_14c
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v2, :cond_15a

    .line 4686
    const-string v2, " sysuil="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4687
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4689
    :cond_15a
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eqz v2, :cond_16d

    .line 4690
    const-string v2, " if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->inputFeaturesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4692
    :cond_16d
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-ltz v2, :cond_180

    .line 4693
    const-string v2, " userActivityTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4695
    :cond_180
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1a0

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1a0

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_1a0

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_1a0

    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v2, :cond_1a0

    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v2, :cond_1bd

    .line 4698
    :cond_1a0
    const-string v2, " surfaceInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4699
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eqz v2, :cond_1b4

    .line 4700
    const-string v2, " (manual)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4702
    :cond_1b4
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v2, :cond_1bd

    .line 4703
    const-string v2, " (!preservePreviousSurfaceInsets)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4706
    :cond_1bd
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eqz v2, :cond_1c6

    .line 4707
    const-string v2, " receive insets ignoring z-order"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4709
    :cond_1c6
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eqz v2, :cond_1d9

    .line 4710
    const-string v2, " colorMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->colorModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4712
    :cond_1d9
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    if-eqz v2, :cond_1e7

    .line 4713
    const-string v2, " preferMinimalPostProcessing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4714
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4716
    :cond_1e7
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    if-eqz v2, :cond_1f5

    .line 4717
    const-string v2, " blurBehindRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4718
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4720
    :cond_1f5
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4721
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  fl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4722
    const-string v5, "flags"

    invoke-static {v0, v5, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4721
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4724
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4725
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Extra fl=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 4726
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 4725
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4728
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eqz v2, :cond_24c

    .line 4729
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4730
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pfl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string/jumbo v5, "privateFlags"

    invoke-static {v0, v5, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4733
    :cond_24c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-string/jumbo v3, "mSystemUiVisibility"

    if-eqz v2, :cond_26f

    .line 4734
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4735
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  sysui="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v5, Landroid/view/View;

    iget v6, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-static {v5, v3, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4738
    :cond_26f
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eqz v2, :cond_28f

    .line 4739
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4740
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  vsysui="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v5, Landroid/view/View;

    iget v6, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-static {v5, v3, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4743
    :cond_28f
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    if-eqz v2, :cond_2b5

    .line 4744
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4745
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  apr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/InsetsFlags;

    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v5, v5, Landroid/view/InsetsFlags;->appearance:I

    const-string v6, "appearance"

    invoke-static {v3, v6, v5}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4748
    :cond_2b5
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    if-eqz v2, :cond_2db

    .line 4749
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4750
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  bhv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/InsetsFlags;

    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v5, v5, Landroid/view/InsetsFlags;->behavior:I

    const-string v6, "behavior"

    invoke-static {v3, v6, v5}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4753
    :cond_2db
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-eqz v2, :cond_2fc

    .line 4754
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4755
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  fitTypes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    const-string/jumbo v5, "mFitInsetsTypes"

    invoke-static {v0, v5, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4758
    :cond_2fc
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    if-eq v2, v3, :cond_321

    .line 4759
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4760
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  fitSides="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    const-string/jumbo v5, "mFitInsetsSides"

    invoke-static {v0, v5, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4763
    :cond_321
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eqz v0, :cond_335

    .line 4764
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4765
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  fitIgnoreVis"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4767
    :cond_335
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/16 v2, 0x20

    if-eqz v0, :cond_364

    .line 4768
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4769
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  insetsTypes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_34c
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_364

    .line 4771
    if-lez v0, :cond_356

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4772
    :cond_356
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4770
    add-int/lit8 v0, v0, 0x1

    goto :goto_34c

    .line 4775
    .end local v0    # "i":I
    :cond_364
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz v0, :cond_389

    .line 4776
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4777
    const-string v0, " providedInternalInsets="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4778
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_375
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    array-length v3, v3

    if-ge v0, v3, :cond_389

    .line 4779
    if-lez v0, :cond_37f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4780
    :cond_37f
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4778
    add-int/lit8 v0, v0, 0x1

    goto :goto_375

    .line 4783
    .end local v0    # "i":I
    :cond_389
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    if-eqz v0, :cond_3ae

    .line 4784
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4785
    const-string v0, " providedInternalImeInsets="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4786
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_39a
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    array-length v3, v3

    if-ge v0, v3, :cond_3ae

    .line 4787
    if-lez v0, :cond_3a4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4788
    :cond_3a4
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4786
    add-int/lit8 v0, v0, 0x1

    goto :goto_39a

    .line 4791
    .end local v0    # "i":I
    :cond_3ae
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    if-eqz v0, :cond_3bc

    .line 4792
    const-string v0, " insetsRoundedCornerFrame="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4793
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4795
    :cond_3bc
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3ec

    array-length v0, v0

    if-eqz v0, :cond_3ec

    .line 4796
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4797
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  paramsForRotation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4798
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3d4
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v3, v3

    if-ge v0, v3, :cond_3ec

    .line 4799
    if-lez v0, :cond_3de

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4800
    :cond_3de
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4798
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d4

    .line 4804
    .end local v0    # "i":I
    :cond_3ec
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4805
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 4057
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4058
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4059
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4060
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4061
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4062
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4064
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4065
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4066
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4067
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->miuiFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4069
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4070
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4071
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4072
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4073
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4074
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4075
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4076
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4077
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4078
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4079
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4080
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4081
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4082
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4083
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4084
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4085
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 4086
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4087
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4088
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4089
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4090
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4091
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4092
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4093
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4094
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4095
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4096
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4097
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4098
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4099
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4100
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4101
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4102
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4103
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4104
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 4105
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4106
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4107
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4108
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4109
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4110
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4111
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4112
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4113
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4114
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_12e

    .line 4115
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4116
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_131

    .line 4118
    :cond_12e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4120
    :goto_131
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz v0, :cond_13f

    .line 4121
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4122
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_142

    .line 4124
    :cond_13f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4126
    :goto_142
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    if-eqz v0, :cond_150

    .line 4127
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4128
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_153

    .line 4130
    :cond_150
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4132
    :goto_153
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4133
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_16b

    .line 4134
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;->checkNonRecursiveParams()V

    .line 4135
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4136
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_16e

    .line 4138
    :cond_16b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4140
    :goto_16e
    return-void
.end method
