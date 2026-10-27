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
        Landroid/view/WindowManager$LayoutParams$DisplayFlags;,
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

.field public static final blacklist DISPLAY_FLAGS_CHANGED:I = 0x400000

.field public static final whitelist DISPLAY_FLAG_DISABLE_HDR_CONVERSION:I = 0x1

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

.field public static final blacklist INPUT_FEATURE_CAPTURE_KEYBOARD:I = 0x20

.field public static final greylist-max-r INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x2

.field public static final blacklist INPUT_FEATURE_DISPLAY_TOPOLOGY_AWARE:I = 0x10

.field public static final greylist-max-o INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x1

.field public static final blacklist INPUT_FEATURE_SENSITIVE_FOR_PRIVACY:I = 0x8

.field public static final blacklist INPUT_FEATURE_SPY:I = 0x4

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

.field public static final greylist-max-o PREFERRED_DISPLAY_MODE_ID:I = 0x800000

.field public static final blacklist PREFERRED_MAX_DISPLAY_REFRESH_RATE:I = -0x80000000

.field public static final blacklist PREFERRED_MIN_DISPLAY_REFRESH_RATE:I = 0x40000000

.field public static final greylist-max-o PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final greylist-max-o PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final blacklist PRIVATE_FLAG_ALLOW_ACTION_KEY_EVENTS:I = 0x800000

.field public static final blacklist PRIVATE_FLAG_APP_PROGRESS_GENERATION_ALLOWED:I = 0x80

.field public static final blacklist PRIVATE_FLAG_COLOR_SPACE_AGNOSTIC:I = 0x1000000

.field public static final blacklist PRIVATE_FLAG_CONSUME_IME_INSETS:I = 0x2000000

.field public static final greylist-max-o PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS:I = 0x400

.field public static final blacklist PRIVATE_FLAG_EDGE_TO_EDGE_ENFORCED:I = 0x800

.field public static final blacklist PRIVATE_FLAG_EXCLUDE_FROM_SCREEN_MAGNIFICATION:I = 0x200000

.field public static final blacklist PRIVATE_FLAG_FIT_INSETS_CONTROLLED:I = 0x10000000

.field public static final greylist-max-o PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY:I = 0x2000

.field public static final blacklist PRIVATE_FLAG_FORCE_DRAW_BAR_BACKGROUNDS:I = 0x8000

.field public static final greylist-max-o PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final blacklist PRIVATE_FLAG_IMMERSIVE_CONFIRMATION_WINDOW:I = 0x20000

.field public static final blacklist PRIVATE_FLAG_INPUT_METHOD_WINDOW:I = 0x8000000

.field public static final blacklist PRIVATE_FLAG_INSET_PARENT_FRAME_BY_IME:I = 0x40000000

.field public static final blacklist PRIVATE_FLAG_INTERCEPT_GLOBAL_DRAG_AND_DROP:I = -0x80000000

.field public static final greylist-max-o PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY:I = 0x100000

.field public static final greylist-max-o PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME:I = 0x4000

.field public static final blacklist PRIVATE_FLAG_LAYOUT_SIZE_EXTENDED_BY_CUTOUT:I = 0x1000

.field public static final blacklist PRIVATE_FLAG_NOT_MAGNIFIABLE:I = 0x400000

.field public static final greylist PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final blacklist PRIVATE_FLAG_OPTIMIZE_MEASURE:I = 0x200

.field public static final blacklist PRIVATE_FLAG_OPT_OUT_EDGE_TO_EDGE:I = 0x4000000

.field public static final blacklist PRIVATE_FLAG_OVERRIDE_LAYOUT_IN_DISPLAY_CUTOUT_MODE:I = 0x40000

.field public static final greylist-max-o PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE:I = 0x10000

.field public static final blacklist PRIVATE_FLAG_SYSTEM_APPLICATION_OVERLAY:I = 0x8

.field public static final greylist-max-o PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final blacklist PRIVATE_FLAG_TRUSTED_OVERLAY:I = 0x20000000

.field public static final blacklist PRIVATE_FLAG_UNRESTRICTED_GESTURE_EXCLUSION:I = 0x20

.field public static final greylist-max-o PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

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

.field public static final whitelist TYPE_CHANGED:I = 0x2

.field public static final greylist-max-r TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final greylist-max-o TYPE_DOCK_DIVIDER:I = 0x7f2

.field public static final greylist-max-o TYPE_DRAG:I = 0x7e0

.field public static final whitelist TYPE_DRAWN_APPLICATION:I = 0x4

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

.field public static final greylist-max-o TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final greylist-max-o TYPE_VOICE_INTERACTION_STARTING:I = 0x7f1

.field public static final greylist-max-o TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final whitelist TYPE_WALLPAPER:I = 0x7dd

.field public static final greylist-max-o USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000

.field private static blacklist sToolkitSetFrameRateReadOnlyFlagValue:Z


# instance fields
.field public greylist-max-o accessibilityIdOfAnchor:J

.field public blacklist accessibilityTitle:Ljava/lang/CharSequence;

.field public whitelist alpha:F

.field public whitelist buttonBrightness:F

.field public whitelist dimAmount:F

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

.field public blacklist forciblyShownTypes:I

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

.field public whitelist layoutInDisplayCutoutMode:I

.field private blacklist mBlurBehindRadius:I

.field private greylist-max-o mColorMode:I

.field private greylist-max-o mCompatibilityParamsBackup:[I

.field private blacklist mDesiredHdrHeadroom:F

.field private blacklist mDisplayFlags:I

.field private blacklist mFitInsetsIgnoringVisibility:Z

.field private blacklist mFitInsetsSides:I

.field private blacklist mFitInsetsTypes:I

.field private blacklist mFrameRateBoostOnTouch:Z

.field private blacklist mIsFrameRatePowerSavingsBalanced:Z

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private blacklist mWallpaperTouchEventsEnabled:Z

.field public blacklist mWindowContextToken:Landroid/os/IBinder;

.field public whitelist memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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
                equals = 0x20
                mask = 0x20
                name = "UNRESTRICTED_GESTURE_EXCLUSION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "NO_MOVE_ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "OPTIMIZE_MEASURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "DISABLE_WALLPAPER_TOUCH_EVENTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "EDGE_TO_EDGE_ENFORCED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "LAYOUT_SIZE_EXTENDED_BY_CUTOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "FORCE_DECOR_VIEW_VISIBILITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "FORCE_DRAW_STATUS_BAR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "SUSTAINED_PERFORMANCE_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "IMMERSIVE_CONFIRMATION_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "OVERRIDE_LAYOUT_IN_DISPLAY_CUTOUT_MODE"
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
                equals = 0x8000000
                mask = 0x8000000
                name = "INPUT_METHOD_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "NOT_MAGNIFIABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "COLOR_SPACE_AGNOSTIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "CONSUME_IME_INSETS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "OPTOUT_EDGE_TO_EDGE"
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
                name = "SYSTEM_APPLICATION_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public blacklist providedInsets:[Landroid/view/InsetsFrameProvider;

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
                from = 0x7d4
                to = "KEYGUARD"
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
                from = 0x7f0
                to = "ACCESSIBILITY_OVERLAY"
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
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f7
                to = "ACCESSIBILITY_MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f8
                to = "NOTIFICATION_SHADE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f9
                to = "STATUS_BAR_ADDITIONAL"
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

    .line 4701
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    .line 5327
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 9

    .line 4953
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3976
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4005
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4025
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4032
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4061
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4069
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4118
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4124
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4135
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4141
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4151
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4315
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4607
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4616
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4639
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4667
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4679
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4689
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4693
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4698
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4699
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4709
    new-instance v4, Landroid/view/InsetsFlags;

    invoke-direct {v4}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4711
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4712
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4713
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4777
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5458
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6081
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4954
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4955
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4956
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 10

    .line 4959
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3976
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4005
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4025
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4032
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4061
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4069
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4118
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4124
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4135
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4141
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4151
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4315
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4607
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4616
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4639
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4667
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4679
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4689
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4693
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4698
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4699
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4709
    new-instance v4, Landroid/view/InsetsFlags;

    invoke-direct {v4}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4711
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4712
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4713
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4777
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5458
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6081
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4960
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4961
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4962
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 11

    .line 4965
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3976
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4005
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4025
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4032
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4061
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4069
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4118
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4124
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4135
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4141
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4151
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4315
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4607
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4616
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4639
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4667
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4679
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4689
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4693
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4698
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4699
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4709
    new-instance v4, Landroid/view/InsetsFlags;

    invoke-direct {v4}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4711
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4712
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4713
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4777
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5458
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6081
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4966
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4967
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4968
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4969
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 12

    .line 4972
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3976
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4005
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4025
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4032
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4061
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4069
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4118
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4124
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4135
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4141
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4151
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4315
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4607
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4616
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4639
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4667
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4679
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4689
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4693
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4698
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4699
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4709
    new-instance v0, Landroid/view/InsetsFlags;

    invoke-direct {v0}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4711
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4712
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4713
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4777
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5458
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6081
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4973
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4974
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4975
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4976
    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 11

    .line 4979
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3976
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4005
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4025
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4032
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4061
    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4069
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4118
    const/4 p2, 0x0

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4124
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4135
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4141
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4151
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4315
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4607
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4616
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4639
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4667
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4679
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4689
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4693
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4698
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4699
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4709
    new-instance v1, Landroid/view/InsetsFlags;

    invoke-direct {v1}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4711
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4712
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4713
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4777
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5458
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6081
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4980
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4981
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4982
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4983
    return-void
.end method

.method public constructor whitelist <init>(IIIIIII)V
    .registers 13

    .line 4987
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3976
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4005
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4025
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4032
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4061
    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4069
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4118
    const/4 p2, 0x0

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4124
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4135
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4141
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4151
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4315
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4607
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4616
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4639
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4667
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4679
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4689
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4693
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4698
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4699
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4709
    new-instance v1, Landroid/view/InsetsFlags;

    invoke-direct {v1}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4711
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4712
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4713
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4777
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5458
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6081
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4988
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4989
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4990
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4991
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4992
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4993
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 5339
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 3976
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4005
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4025
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4032
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4061
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4069
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4118
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4124
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4135
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4141
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4151
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4315
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4607
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4616
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4639
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4667
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4679
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4689
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4693
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4698
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4699
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4709
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4711
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4712
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4713
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4777
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5458
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6081
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 5342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5350
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 5351
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 5352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 5354
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5355
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 5356
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5357
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 5358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 5359
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5360
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 5361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 5362
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 5364
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 5365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 5366
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 5367
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 5368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 5369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 5370
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 5371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 5372
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5373
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5374
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5375
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5376
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5377
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 5378
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 5379
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 5380
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 5381
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 5382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 5383
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 5384
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 5385
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 5386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 5387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 5388
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 5389
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 5390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 5391
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5392
    sget-object v0, Landroid/view/InsetsFrameProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/InsetsFrameProvider;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 5393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    .line 5394
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 5395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    .line 5396
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 5397
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_1dc

    .line 5398
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 5399
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 5401
    :cond_1dc
    return-void
.end method

.method private blacklist checkNonRecursiveParams()V
    .registers 3

    .line 4929
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_5

    .line 4930
    return-void

    .line 4932
    :cond_5
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1f

    .line 4933
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_17

    .line 4932
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 4934
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params cannot contain params recursively."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4938
    :cond_1f
    return-void
.end method

.method private static blacklist hasLayoutDiff(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4

    .line 5757
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 5761
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    if-ne v0, v1, :cond_53

    iget-boolean p0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    iget-boolean p1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eq p0, p1, :cond_51

    goto :goto_53

    :cond_51
    const/4 p0, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 p0, 0x1

    .line 5757
    :goto_54
    return p0
.end method

.method private static blacklist inputFeaturesToString(I)Ljava/lang/String;
    .registers 3

    .line 6197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6198
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 6199
    and-int/lit8 p0, p0, -0x2

    .line 6200
    const-string v1, "INPUT_FEATURE_NO_INPUT_CHANNEL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6202
    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1b

    .line 6203
    and-int/lit8 p0, p0, -0x3

    .line 6204
    const-string v1, "INPUT_FEATURE_DISABLE_USER_ACTIVITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6206
    :cond_1b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_26

    .line 6207
    and-int/lit8 p0, p0, -0x5

    .line 6208
    const-string v1, "INPUT_FEATURE_SPY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6210
    :cond_26
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_31

    .line 6211
    and-int/lit8 p0, p0, -0x11

    .line 6212
    const-string v1, "INPUT_FEATURE_DISPLAY_TOPOLOGY_AWARE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6214
    :cond_31
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3c

    .line 6215
    and-int/lit8 p0, p0, -0x21

    .line 6216
    const-string v1, "INPUT_FEATURE_CAPTURE_KEYBOARD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6218
    :cond_3c
    if-eqz p0, :cond_45

    .line 6219
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6221
    :cond_45
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isSubWindowType(I)Z
    .registers 2

    .line 2688
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static greylist-max-o isSystemAlertWindowType(I)Z
    .registers 1

    .line 2670
    sparse-switch p0, :sswitch_data_8

    .line 2679
    const/4 p0, 0x0

    return p0

    .line 2677
    :sswitch_5
    const/4 p0, 0x1

    return p0

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

.method public static greylist-max-o layoutInDisplayCutoutModeToString(I)Ljava/lang/String;
    .registers 3

    .line 6112
    packed-switch p0, :pswitch_data_2a

    .line 6122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6116
    :pswitch_1d
    const-string p0, "always"

    return-object p0

    .line 6118
    :pswitch_20
    const-string p0, "never"

    return-object p0

    .line 6120
    :pswitch_23
    const-string p0, "shortEdges"

    return-object p0

    .line 6114
    :pswitch_26
    const-string p0, "default"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static whitelist mayUseInputMethod(I)Z
    .registers 3

    .line 3780
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private static greylist-max-o rotationAnimationToString(I)Ljava/lang/String;
    .registers 1

    .line 6180
    packed-switch p0, :pswitch_data_18

    .line 6192
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6190
    :pswitch_8
    const-string p0, "SEAMLESS"

    return-object p0

    .line 6188
    :pswitch_b
    const-string p0, "JUMPCUT"

    return-object p0

    .line 6186
    :pswitch_e
    const-string p0, "CROSSFADE"

    return-object p0

    .line 6184
    :pswitch_11
    const-string p0, "ROTATE"

    return-object p0

    .line 6182
    :pswitch_14
    const-string p0, "UNSPECIFIED"

    return-object p0

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
    .registers 5

    .line 6127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6128
    and-int/lit8 v1, p0, 0xf

    .line 6129
    const/16 v2, 0x20

    if-eqz v1, :cond_38

    .line 6130
    const-string v3, "state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6131
    packed-switch v1, :pswitch_data_78

    .line 6148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 6145
    :pswitch_17
    const-string v1, "always_visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6146
    goto :goto_35

    .line 6142
    :pswitch_1d
    const-string v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6143
    goto :goto_35

    .line 6139
    :pswitch_23
    const-string v1, "always_hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6140
    goto :goto_35

    .line 6136
    :pswitch_29
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6137
    goto :goto_35

    .line 6133
    :pswitch_2f
    const-string v1, "unchanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6134
    nop

    .line 6151
    :goto_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6153
    :cond_38
    and-int/lit16 v1, p0, 0xf0

    .line 6154
    if-eqz v1, :cond_5d

    .line 6155
    const-string v3, "adjust="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6156
    sparse-switch v1, :sswitch_data_86

    .line 6167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 6164
    :sswitch_48
    const-string v1, "nothing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6165
    goto :goto_5a

    .line 6161
    :sswitch_4e
    const-string v1, "pan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6162
    goto :goto_5a

    .line 6158
    :sswitch_54
    const-string v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6159
    nop

    .line 6170
    :goto_5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6172
    :cond_5d
    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_6a

    .line 6173
    const-string p0, "forwardNavigation"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6175
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 6176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
    .end packed-switch

    :sswitch_data_86
    .sparse-switch
        0x10 -> :sswitch_54
        0x20 -> :sswitch_4e
        0x30 -> :sswitch_48
    .end sparse-switch
.end method


# virtual methods
.method public whitelist areWallpaperTouchEventsEnabled()Z
    .registers 2

    .line 4878
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    return v0
.end method

.method greylist backup()V
    .registers 4

    .line 6055
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6056
    if-nez v0, :cond_9

    .line 6058
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6060
    :cond_9
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    .line 6061
    const/4 v1, 0x1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    .line 6062
    const/4 v1, 0x2

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    aput v2, v0, v1

    .line 6063
    const/4 v1, 0x3

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    aput v2, v0, v1

    .line 6064
    return-void
.end method

.method public whitelist canPlayMoveAnimation()Z
    .registers 2

    .line 4903
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .registers 11

    .line 5461
    nop

    .line 5463
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_e

    .line 5464
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5465
    move v0, v2

    goto :goto_f

    .line 5463
    :cond_e
    const/4 v0, 0x0

    .line 5467
    :goto_f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, v3, :cond_1a

    .line 5468
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 5469
    move v0, v2

    .line 5471
    :cond_1a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v1, v3, :cond_25

    .line 5472
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5473
    move v0, v2

    .line 5475
    :cond_25
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v1, v3, :cond_30

    .line 5476
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5477
    move v0, v2

    .line 5479
    :cond_30
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3d

    .line 5480
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 5481
    move v0, v2

    .line 5483
    :cond_3d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4a

    .line 5484
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 5485
    move v0, v2

    .line 5487
    :cond_4a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_57

    .line 5488
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 5489
    move v0, v2

    .line 5491
    :cond_57
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_64

    .line 5492
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 5493
    move v0, v2

    .line 5495
    :cond_64
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_70

    .line 5496
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5497
    or-int/lit8 v0, v0, 0x2

    .line 5499
    :cond_70
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v3, :cond_89

    .line 5500
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v3

    .line 5501
    const/high16 v3, 0xc000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_83

    .line 5502
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 5504
    :cond_83
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5505
    or-int/lit8 v0, v0, 0x4

    .line 5507
    :cond_89
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    if-eq v1, v3, :cond_96

    .line 5508
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5509
    or-int/2addr v0, v4

    .line 5511
    :cond_96
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, v3, :cond_a2

    .line 5512
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5513
    or-int/lit16 v0, v0, 0x200

    .line 5515
    :cond_a2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v3, :cond_ae

    .line 5516
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5517
    or-int/lit8 v0, v0, 0x1

    .line 5519
    :cond_ae
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v1, v3, :cond_ba

    .line 5520
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5521
    or-int/lit8 v0, v0, 0x1

    .line 5523
    :cond_ba
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v1, v3, :cond_c6

    .line 5524
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5525
    or-int/lit8 v0, v0, 0x8

    .line 5527
    :cond_c6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v3, :cond_d2

    .line 5528
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 5529
    or-int/lit8 v0, v0, 0x10

    .line 5531
    :cond_d2
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_da

    .line 5534
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5536
    :cond_da
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    if-nez v1, :cond_e2

    .line 5539
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 5541
    :cond_e2
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_ea

    .line 5544
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 5546
    :cond_ea
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_fe

    .line 5548
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5549
    or-int/lit8 v0, v0, 0x40

    .line 5551
    :cond_fe
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_10c

    .line 5552
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5553
    or-int/lit16 v0, v0, 0x80

    .line 5555
    :cond_10c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_11a

    .line 5556
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 5557
    or-int/lit8 v0, v0, 0x20

    .line 5559
    :cond_11a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_128

    .line 5560
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5561
    or-int/lit16 v0, v0, 0x800

    .line 5563
    :cond_128
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_136

    .line 5564
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 5565
    or-int/lit16 v0, v0, 0x2000

    .line 5567
    :cond_136
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v1, v3, :cond_142

    .line 5568
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 5569
    or-int/lit16 v0, v0, 0x1000

    .line 5572
    :cond_142
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v3, :cond_14e

    .line 5573
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 5574
    or-int/lit16 v0, v0, 0x400

    .line 5577
    :cond_14e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_15d

    .line 5578
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 5579
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 5582
    :cond_15d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eq v1, v3, :cond_16a

    .line 5583
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 5584
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 5587
    :cond_16a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_179

    .line 5588
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 5589
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 5592
    :cond_179
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_188

    .line 5593
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 5594
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 5597
    :cond_188
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    if-eq v1, v3, :cond_195

    .line 5598
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    .line 5599
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 5602
    :cond_195
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-ne v1, v3, :cond_1a1

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v1, v3, :cond_1ab

    .line 5604
    :cond_1a1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 5605
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 5606
    or-int/lit16 v0, v0, 0x4000

    .line 5609
    :cond_1ab
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v1, v3, :cond_1b9

    .line 5610
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 5611
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 5614
    :cond_1b9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eq v1, v3, :cond_1c6

    .line 5615
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 5616
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 5619
    :cond_1c6
    iget-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-wide v7, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1d5

    .line 5620
    iget-wide v5, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5621
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 5624
    :cond_1d5
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x100000

    if-nez v1, :cond_1e9

    .line 5625
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v5, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5626
    or-int/2addr v0, v3

    .line 5629
    :cond_1e9
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget-boolean v5, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eq v1, v5, :cond_1f4

    .line 5630
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 5631
    or-int/2addr v0, v3

    .line 5634
    :cond_1f4
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    iget-boolean v5, p1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eq v1, v5, :cond_1ff

    .line 5635
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 5636
    or-int/2addr v0, v3

    .line 5639
    :cond_1ff
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iget-boolean v5, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eq v1, v5, :cond_20a

    .line 5640
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 5641
    or-int/2addr v0, v3

    .line 5644
    :cond_20a
    iget-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iget-wide v7, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_219

    .line 5645
    iget-wide v5, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 5646
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 5649
    :cond_219
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22e

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_22e

    .line 5652
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 5653
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 5656
    :cond_22e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    const/high16 v5, 0x4000000

    if-eq v1, v3, :cond_23b

    .line 5657
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 5658
    or-int/2addr v0, v5

    .line 5661
    :cond_23b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_248

    .line 5662
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 5663
    or-int/2addr v0, v5

    .line 5666
    :cond_248
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    if-eq v1, v3, :cond_255

    .line 5667
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 5668
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 5671
    :cond_255
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    if-eq v1, v3, :cond_262

    .line 5672
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 5673
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 5677
    :cond_262
    iget-wide v5, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 5679
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v3, v3, Landroid/view/InsetsFlags;->appearance:I

    const/high16 v5, 0x8000000

    if-eq v1, v3, :cond_27b

    .line 5680
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v3, v3, Landroid/view/InsetsFlags;->appearance:I

    iput v3, v1, Landroid/view/InsetsFlags;->appearance:I

    .line 5681
    or-int/2addr v0, v5

    .line 5684
    :cond_27b
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v3, v3, Landroid/view/InsetsFlags;->behavior:I

    if-eq v1, v3, :cond_28e

    .line 5685
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v3, v3, Landroid/view/InsetsFlags;->behavior:I

    iput v3, v1, Landroid/view/InsetsFlags;->behavior:I

    .line 5686
    or-int/2addr v0, v5

    .line 5689
    :cond_28e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-eq v1, v3, :cond_29a

    .line 5690
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 5691
    or-int/lit8 v0, v0, 0x1

    .line 5694
    :cond_29a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    if-eq v1, v3, :cond_2a6

    .line 5695
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 5696
    or-int/lit8 v0, v0, 0x1

    .line 5699
    :cond_2a6
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eq v1, v3, :cond_2b2

    .line 5700
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 5701
    or-int/lit8 v0, v0, 0x1

    .line 5704
    :cond_2b2
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c2

    .line 5705
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 5706
    or-int/lit8 v0, v0, 0x1

    .line 5709
    :cond_2c2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    if-eq v1, v3, :cond_2cd

    .line 5710
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    .line 5711
    or-int/2addr v0, v4

    .line 5714
    :cond_2cd
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eq v1, v3, :cond_30b

    .line 5715
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_304

    .line 5716
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_302

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_302

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v1, v1

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v3, v3

    if-ne v1, v3, :cond_302

    .line 5718
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v1, v1

    sub-int/2addr v1, v2

    :goto_2eb
    if-ltz v1, :cond_301

    .line 5719
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v2, v2, v1

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Landroid/view/WindowManager$LayoutParams;->hasLayoutDiff(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 5720
    or-int/lit8 v0, v0, 0x1

    .line 5721
    goto :goto_301

    .line 5718
    :cond_2fe
    add-int/lit8 v1, v1, -0x1

    goto :goto_2eb

    :cond_301
    :goto_301
    goto :goto_304

    .line 5725
    :cond_302
    or-int/lit8 v0, v0, 0x1

    .line 5728
    :cond_304
    :goto_304
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 5729
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;->checkNonRecursiveParams()V

    .line 5732
    :cond_30b
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    if-eq v1, v2, :cond_317

    .line 5733
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5734
    or-int/lit8 v0, v0, 0x1

    .line 5737
    :cond_317
    sget-boolean v1, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v1, :cond_327

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    if-eq v1, v2, :cond_327

    .line 5739
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 5740
    or-int/lit8 v0, v0, 0x1

    .line 5743
    :cond_327
    sget-boolean v1, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v1, :cond_337

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    if-eq v1, v2, :cond_337

    .line 5745
    iget-boolean p1, p1, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 5746
    or-int/lit8 v0, v0, 0x1

    .line 5749
    :cond_337
    return v0
.end method

.method public whitelist debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 5769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Contents of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5770
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    const-string p1, ""

    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5772
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5773
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.LayoutParams={title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5775
    return-object p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 5259
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 6000
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 6001
    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6002
    const-wide v0, 0x10500000002L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6003
    const-wide v0, 0x10500000003L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6004
    const-wide v0, 0x10500000004L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6005
    const-wide v0, 0x10500000005L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6006
    const-wide v0, 0x10200000006L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6007
    const-wide v0, 0x10200000007L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6008
    const-wide v0, 0x10500000008L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6009
    const-wide v0, 0x10500000009L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6010
    const-wide v0, 0x10e0000000aL

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6011
    const-wide v0, 0x1050000000bL

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6012
    const-wide v0, 0x1020000000cL

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6013
    const-wide v0, 0x1020000000dL

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6014
    const-wide v0, 0x1020000000eL

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6015
    const-wide v0, 0x10e0000000fL

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6016
    const-wide v0, 0x10200000010L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6017
    const-wide v0, 0x10500000011L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6018
    const-wide v0, 0x10800000012L

    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6019
    const-wide v0, 0x10d00000013L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6020
    const-wide v0, 0x10300000014L

    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 6021
    const-wide v0, 0x10e00000017L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6022
    const-wide v0, 0x10d00000018L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6023
    const-wide v0, 0x10d0000001aL

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6024
    const-wide v0, 0x10d0000001bL

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6025
    const-wide v0, 0x10d0000001cL

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6026
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    const-wide v1, 0x10d0000001dL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6027
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    const-wide v1, 0x10d0000001eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6028
    const-wide v0, 0x10d0000001fL

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6029
    const-wide v0, 0x10d00000020L

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6030
    const-wide v0, 0x10800000021L

    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6031
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6032
    return-void
.end method

.method public greylist-max-o dumpDimensions(Ljava/lang/StringBuilder;)V
    .registers 7

    .line 5787
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5788
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5789
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5790
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5791
    const-string v0, ")("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5792
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-string v1, "wrap"

    const-string v2, "fill"

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-ne v0, v4, :cond_25

    move-object v0, v2

    goto :goto_31

    :cond_25
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v3, :cond_2b

    .line 5793
    move-object v0, v1

    goto :goto_31

    :cond_2b
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5792
    :goto_31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5794
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5795
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v4, :cond_3f

    move-object v1, v2

    goto :goto_4a

    :cond_3f
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_44

    .line 5796
    goto :goto_4a

    :cond_44
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5795
    :goto_4a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5797
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5798
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 6086
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 6088
    const-string v0, "x"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6089
    const-string v0, "y"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6090
    const-string v0, "horizontalWeight"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 6091
    const-string v0, "verticalWeight"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 6092
    const-string v0, "type"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6093
    const-string v0, "flags"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6094
    return-void
.end method

.method public blacklist forRotation(I)Landroid/view/WindowManager$LayoutParams;
    .registers 3

    .line 4945
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v0, v0

    if-le v0, p1, :cond_15

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v0, v0, p1

    if-nez v0, :cond_10

    goto :goto_15

    .line 4949
    :cond_10
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object p1, v0, p1

    return-object p1

    .line 4947
    :cond_15
    :goto_15
    return-object p0
.end method

.method public whitelist getBlurBehindRadius()I
    .registers 2

    .line 5212
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    return v0
.end method

.method public whitelist getColorMode()I
    .registers 2

    .line 5080
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return v0
.end method

.method public whitelist getDesiredHdrHeadroom()F
    .registers 2

    .line 5111
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    return v0
.end method

.method public whitelist getFitInsetsSides()I
    .registers 2

    .line 4917
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    return v0
.end method

.method public whitelist getFitInsetsTypes()I
    .registers 2

    .line 4910
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    return v0
.end method

.method public whitelist getFrameRateBoostOnTouchEnabled()Z
    .registers 2

    .line 5134
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_7

    .line 5135
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    return v0

    .line 5137
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 5012
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public final whitelist getUserActivityTimeout()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5224
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-wide v0
.end method

.method public final blacklist getWindowContextToken()Landroid/os/IBinder;
    .registers 2

    .line 5255
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist hasKeyboardCapture()Z
    .registers 2

    .line 4591
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isFitInsetsIgnoringVisibility()Z
    .registers 2

    .line 4925
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    return v0
.end method

.method public whitelist isFrameRatePowerSavingsBalanced()Z
    .registers 2

    .line 5164
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_7

    .line 5165
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    return v0

    .line 5167
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o isFullscreen()Z
    .registers 3

    .line 6102
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

.method public whitelist isHdrConversionEnabled()Z
    .registers 3

    .line 5042
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isModal()Z
    .registers 2

    .line 6231
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

    .line 4852
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

    .line 6072
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6073
    if-eqz v0, :cond_18

    .line 6074
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6075
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6076
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6077
    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6079
    :cond_18
    return-void
.end method

.method public greylist-max-o scale(F)V
    .registers 4

    .line 6039
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6040
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6041
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v0, :cond_1e

    .line 6042
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6044
    :cond_1e
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v0, :cond_2a

    .line 6045
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6047
    :cond_2a
    return-void
.end method

.method public whitelist setBlurBehindRadius(I)V
    .registers 2

    .line 5203
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 5204
    return-void
.end method

.method public whitelist setCanPlayMoveAnimation(Z)V
    .registers 2

    .line 4888
    if-eqz p1, :cond_9

    .line 4889
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_f

    .line 4891
    :cond_9
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4893
    :goto_f
    return-void
.end method

.method public whitelist setColorMode(I)V
    .registers 2

    .line 5069
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 5070
    return-void
.end method

.method public whitelist setDesiredHdrHeadroom(F)V
    .registers 5

    .line 5094
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5098
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_32

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_19

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_19

    goto :goto_32

    .line 5099
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be 0.0 or in the range [1.0, 10000.0f], received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5103
    :cond_32
    :goto_32
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 5104
    return-void

    .line 5095
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be finite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFitInsetsIgnoringVisibility(Z)V
    .registers 3

    .line 4807
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4808
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4809
    return-void
.end method

.method public whitelist setFitInsetsSides(I)V
    .registers 3

    .line 4797
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4798
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4799
    return-void
.end method

.method public whitelist setFitInsetsTypes(I)V
    .registers 3

    .line 4786
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4787
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4788
    return-void
.end method

.method public whitelist setFrameRateBoostOnTouchEnabled(Z)V
    .registers 3

    .line 5121
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_6

    .line 5122
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 5124
    :cond_6
    return-void
.end method

.method public whitelist setFrameRatePowerSavingsBalanced(Z)V
    .registers 3

    .line 5149
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_6

    .line 5150
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 5152
    :cond_6
    return-void
.end method

.method public whitelist setHdrConversionEnabled(Z)V
    .registers 2

    .line 5051
    if-nez p1, :cond_9

    .line 5052
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    goto :goto_f

    .line 5054
    :cond_9
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    .line 5056
    :goto_f
    return-void
.end method

.method public whitelist setInsetsParams(Ljava/util/List;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowManager$InsetsParams;",
            ">;)V"
        }
    .end annotation

    .line 4738
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4739
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    goto :goto_37

    .line 4741
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/InsetsFrameProvider;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 4742
    const/4 v0, 0x0

    :goto_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 4743
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$InsetsParams;

    .line 4744
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    new-instance v3, Landroid/view/InsetsFrameProvider;

    .line 4746
    invoke-virtual {v1}, Landroid/view/WindowManager$InsetsParams;->getType()I

    move-result v4

    invoke-direct {v3, p0, v0, v4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 4747
    invoke-virtual {v1}, Landroid/view/WindowManager$InsetsParams;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    aput-object v1, v2, v0

    .line 4742
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 4750
    :cond_37
    :goto_37
    return-void
.end method

.method public whitelist setKeyboardCaptureEnabled(Z)V
    .registers 2

    .line 4576
    if-eqz p1, :cond_9

    .line 4577
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_f

    .line 4579
    :cond_9
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 4581
    :goto_f
    return-void
.end method

.method public final greylist-max-o setSurfaceInsets(Landroid/view/View;ZZ)V
    .registers 9

    .line 5020
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 5026
    if-nez p1, :cond_16

    .line 5028
    iget-object p1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3b

    .line 5030
    :cond_16
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 5031
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 5032
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 5033
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 5034
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5030
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 5036
    :goto_3b
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 5037
    iput-boolean p3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 5038
    return-void
.end method

.method public whitelist setSystemApplicationOverlay(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4834
    if-eqz p1, :cond_9

    .line 4835
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_f

    .line 4837
    :cond_9
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4839
    :goto_f
    return-void
.end method

.method public final whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 5005
    if-nez p1, :cond_4

    .line 5006
    const-string p1, ""

    .line 5008
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5009
    return-void
.end method

.method public blacklist setTrustedOverlay()V
    .registers 3

    .line 4822
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4823
    return-void
.end method

.method public final whitelist setUserActivityTimeout(J)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5218
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5219
    return-void
.end method

.method public whitelist setWallpaperTouchEventsEnabled(Z)V
    .registers 2

    .line 4866
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 4867
    return-void
.end method

.method public final blacklist setWindowContextToken(Landroid/os/IBinder;)V
    .registers 2

    .line 5236
    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 5237
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 5780
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 5804
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5805
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5806
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 5807
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_20

    .line 5808
    const-string v1, " hm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5809
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5811
    :cond_20
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_30

    .line 5812
    const-string v1, " vm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5813
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5815
    :cond_30
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v1, :cond_42

    .line 5816
    const-string v1, " gr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5817
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5819
    :cond_42
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v3, 0x7d

    if-eqz v1, :cond_59

    .line 5820
    const-string v1, " sim={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5821
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5822
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5824
    :cond_59
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz v1, :cond_6b

    .line 5825
    const-string v1, " layoutInDisplayCutoutMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5826
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5828
    :cond_6b
    const-string v1, " ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5829
    const-string v1, "type"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-class v5, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v5, v1, v4}, Landroid/view/ViewDebug;->intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5830
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_90

    .line 5831
    const-string v1, " fmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5832
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5834
    :cond_90
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v1, :cond_a2

    .line 5835
    const-string v1, " wanim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5836
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5838
    :cond_a2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v4, :cond_b4

    .line 5839
    const-string v1, " or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5840
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5842
    :cond_b4
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_c6

    .line 5843
    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5844
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5846
    :cond_c6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_d8

    .line 5847
    const-string v1, " sbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5848
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5850
    :cond_d8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_e8

    .line 5851
    const-string v1, " bbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5852
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5854
    :cond_e8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eqz v1, :cond_fa

    .line 5855
    const-string v1, " rotAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5856
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->rotationAnimationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5858
    :cond_fa
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_10a

    .line 5859
    const-string v1, " preferredRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5860
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5862
    :cond_10a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v1, :cond_118

    .line 5863
    const-string v1, " preferredDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5864
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5866
    :cond_118
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_128

    .line 5867
    const-string v1, " preferredMinDisplayRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5868
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5870
    :cond_128
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_138

    .line 5871
    const-string v1, " preferredMaxDisplayRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5872
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5874
    :cond_138
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    if-eqz v1, :cond_14a

    .line 5875
    const-string v1, " displayFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5876
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5878
    :cond_14a
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v1, :cond_158

    .line 5879
    const-string v1, " sysuil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5880
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5882
    :cond_158
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eqz v1, :cond_16b

    .line 5883
    const-string v1, " if="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->inputFeaturesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5885
    :cond_16b
    iget-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_17e

    .line 5886
    const-string v1, " userActivityTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5888
    :cond_17e
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_19e

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_19e

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_19e

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_19e

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v1, :cond_19e

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v1, :cond_1bb

    .line 5891
    :cond_19e
    const-string v1, " surfaceInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5892
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eqz v1, :cond_1b2

    .line 5893
    const-string v1, " (manual)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5895
    :cond_1b2
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v1, :cond_1bb

    .line 5896
    const-string v1, " (!preservePreviousSurfaceInsets)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5899
    :cond_1bb
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eqz v1, :cond_1c4

    .line 5900
    const-string v1, " receive insets ignoring z-order"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5902
    :cond_1c4
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eqz v1, :cond_1d7

    .line 5903
    const-string v1, " colorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->colorModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5905
    :cond_1d7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e8

    .line 5906
    const-string v1, " desiredHdrHeadroom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5908
    :cond_1e8
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    if-eqz v1, :cond_1f6

    .line 5909
    const-string v1, " preferMinimalPostProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5910
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5912
    :cond_1f6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    if-eqz v1, :cond_204

    .line 5913
    const-string v1, " blurBehindRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5914
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5916
    :cond_204
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5917
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5918
    const-string v4, "flags"

    invoke-static {v5, v4, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5917
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5919
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eqz v1, :cond_240

    .line 5920
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5921
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  pfl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "privateFlags"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v5, v2, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5924
    :cond_240
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-string v2, "mSystemUiVisibility"

    if-eqz v1, :cond_262

    .line 5925
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5926
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  sysui="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v4, Landroid/view/View;

    iget v5, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-static {v4, v2, v5}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5929
    :cond_262
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eqz v1, :cond_282

    .line 5930
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5931
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  vsysui="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v4, Landroid/view/View;

    iget v5, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-static {v4, v2, v5}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5934
    :cond_282
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    if-eqz v1, :cond_2a8

    .line 5935
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5936
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  apr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/view/InsetsFlags;

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->appearance:I

    const-string v5, "appearance"

    invoke-static {v2, v5, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5939
    :cond_2a8
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    if-eqz v1, :cond_2ce

    .line 5940
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5941
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  bhv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/view/InsetsFlags;

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->behavior:I

    const-string v5, "behavior"

    invoke-static {v2, v5, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5944
    :cond_2ce
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-eqz v1, :cond_2ec

    .line 5945
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5946
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fitTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 5947
    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 5946
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5949
    :cond_2ec
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v2

    if-eq v1, v2, :cond_30e

    .line 5950
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5951
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fitSides="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 5952
    invoke-static {v2}, Landroid/view/WindowInsets$Side;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 5951
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5954
    :cond_30e
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eqz v1, :cond_322

    .line 5955
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5956
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fitIgnoreVis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5958
    :cond_322
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const/4 v2, 0x0

    const-string v4, "    "

    if-eqz v1, :cond_358

    .line 5959
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5960
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  providedInsets:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5961
    move v1, v2

    :goto_33a
    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    array-length v5, v5

    if-ge v1, v5, :cond_358

    .line 5962
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5963
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5961
    add-int/lit8 v1, v1, 0x1

    goto :goto_33a

    .line 5966
    :cond_358
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    if-eqz v1, :cond_376

    .line 5967
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5968
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  forciblyShownTypes="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    .line 5969
    invoke-static {v5}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 5968
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5971
    :cond_376
    sget-boolean v1, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v1, :cond_393

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    if-eqz v1, :cond_393

    .line 5972
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5973
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  frameRateBoostOnTouch="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5974
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5976
    :cond_393
    sget-boolean v1, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v1, :cond_3b0

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    if-eqz v1, :cond_3b0

    .line 5977
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5978
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  dvrrWindowFrameRateHint="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5979
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5981
    :cond_3b0
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_40a

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v1, v1

    if-eqz v1, :cond_40a

    .line 5982
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5983
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  paramsForRotation:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5984
    nop

    :goto_3ca
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v1, v1

    if-ge v2, v1, :cond_40a

    .line 5986
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5987
    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5988
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v1, v1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5984
    add-int/lit8 v2, v2, 0x1

    goto :goto_3ca

    .line 5992
    :cond_40a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5993
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 5263
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5264
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5265
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5266
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5267
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5268
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5269
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5270
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5271
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5272
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5273
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5274
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5275
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5276
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5277
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5278
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5279
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5280
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5281
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5282
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5283
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5284
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5285
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 5286
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5287
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5288
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5289
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5290
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5291
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5292
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5293
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5294
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5295
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5296
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5297
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5298
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5299
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5300
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5301
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5302
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5303
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5304
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 5305
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5306
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5307
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p2, p2, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5308
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p2, p2, Landroid/view/InsetsFlags;->behavior:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5309
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5310
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5311
    iget-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5312
    iget-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5313
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5314
    iget-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5315
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5316
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5317
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;->checkNonRecursiveParams()V

    .line 5318
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5319
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5320
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5321
    sget-boolean p2, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz p2, :cond_13b

    .line 5322
    iget-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5323
    iget-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5325
    :cond_13b
    return-void
.end method
