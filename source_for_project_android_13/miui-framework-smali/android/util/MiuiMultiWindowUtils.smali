.class public Landroid/util/MiuiMultiWindowUtils;
.super Ljava/lang/Object;
.source "MiuiMultiWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MiuiMultiWindowUtils$RoundedRectF;,
        Landroid/util/MiuiMultiWindowUtils$QuadraticEaseOutInterpolator;,
        Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVITY_FOR_DOUBLE_APPLICATION:Ljava/lang/String; = "com.miui.securitycore/com.miui.xspace.ui.activity.XSpaceResolveActivity"

.field public static final blacklist ACTIVITY_ORIENTATION_LANDSCAPE:I = 0x1

.field public static final blacklist ACTIVITY_ORIENTATION_PORTRAIT:I = 0x0

.field public static final blacklist ACTIVITY_ORIENTATION_UNSET:I = -0x1

.field public static final blacklist ADDITIONAL_FREEFORM_ASPECT_RATIO_1:F = 1.333333f

.field public static final blacklist ADDITIONAL_FREEFORM_ASPECT_RATIO_2:F = 0.75f

.field private static final blacklist ADDITIONAL_FREEFORM_RESOLUTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist ADDITIONAL_FREEFORM_RESOLUTION_1:[I

.field private static final blacklist ADDITIONAL_FREEFORM_RESOLUTION_2:[I

.field public static final blacklist ALREADY_IN_SMALL_FREEFORM:I = 0x3

.field public static final blacklist APPLICATION_LOCK_NAME:Ljava/lang/String; = "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

.field private static final blacklist ASPECT_RATIO_ARG:I = 0x0

.field public static final blacklist AUTOLAYOUT_SEQUENCE_CENTRAL:I = 0x1

.field public static final blacklist AUTOLAYOUT_SEQUENCE_LAST:I = 0x2

.field public static final blacklist AUTOLAYOUT_SEQUENCE_UNDIFINED:I = 0x0

.field public static final blacklist AUTO_LAYOUT_BASELINE_RATIO:F = 0.138f

.field public static final blacklist AUTO_LAYOUT_FREEFORM_EXPAND:I

.field public static final blacklist AUTO_LAYOUT_FREEFORM_GAP:I

.field public static final blacklist AVOIDING_STRATEGY_APPLIED_MAX_FREEFORM_COUNT:I = 0x2

.field static final blacklist BACKGROUND_START_SWITCH_DEFAULT_STATE:I = 0x0

.field public static final blacklist BOTTOM_BAR_HEIGHT:I = 0x36

.field public static final blacklist BOTTOM_BAR_HEIGHT_PAD:I = 0x2d

.field public static final blacklist BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

.field public static final blacklist BOTTOM_DOT_BOTTOM_MARGIN:I = 0x16

.field public static final blacklist BOTTOM_DOT_HORIZONTAL_MARGIN:I = 0x1c

.field public static final blacklist BOUNDS_LEFT_UNSET:I = -0x1

.field public static final blacklist BOUNDS_TOP_UNSET:I = -0x1

.field private static final blacklist BUFFE_READER_SIZE:I = 0x2000

.field public static final blacklist CAMERA_ONESHORT_NAME:Ljava/lang/String; = "com.android.camera/.OneShotCamera"

.field public static final blacklist CORNER_LIMIT:I

.field public static final blacklist CORNER_STEP:I

.field public static final blacklist DEBUG_MODE_FOR_ABNORMAL_FREEFORM:Ljava/lang/String; = "enable_debug_mode_for_abnormal_freeform"

.field public static final blacklist DEBUG_MODE_FOR_FREEFORM_BLACKLIST:Ljava/lang/String; = "enable_debug_mode_for_freeform_black_list"

.field public static final blacklist DECOR_CAPTIONVIEW_HEIGHT:F = 36.36f

.field public static final blacklist DESKTOP_ELUDE_BAR:I

.field public static final blacklist DESKTOP_SMALL_FREEFORM_ELUDE_MARGIN:I

.field public static blacklist DEVICES_SUPPORT_MULTI_FREEFORM:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DISABLE_MODE_FOR_ABNORMAL_FREEFORM:I = 0x0

.field public static final blacklist DISABLE_REVERT_LOCATION_FOR_FREEFORM:Ljava/lang/String; = "persist.sys.disable_revert_location"

.field public static final blacklist DISABLE_SPLASH_SCREEN_IN_FREEFORM_TASK_SWITCH:Ljava/lang/String; = "com.tencent.qqlive/com.tencent.tauth.AuthActivity"

.field public static final blacklist EDGE_FRICTION:F = 3.0f

.field public static final blacklist ENABLE_KEEP_FREEFORM_STATE:Z = false

.field static final blacklist ENABLE_WHITELIST:Z = false

.field static final blacklist FLASHBACK_BACKGROUND_START_SWITCH:Ljava/lang/String; = "FlashBackBackgroundStartSwitch"

.field private static final blacklist FLASHBACK_GET_TASK_NUM:I = 0x32

.field public static final blacklist FLASHBACK_LAUNCH_FROM_BACKGROUND:I = 0x4

.field private static final blacklist FORCE_FSG_NAV_BAR:Ljava/lang/String; = "force_fsg_nav_bar"

.field public static final blacklist FREEFORM_BOTTOM_CENTER_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_BOTTOM_CENTER_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_REMINDER_LANDCAPE_RADIUS:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_REMINDER_PORTRAIT_RADIUS:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_TRIGGER_LANDCAPE_RADIUS:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_TRIGGER_PORTRAIT_RADIUS:F

.field public static final blacklist FREEFORM_BOTTOM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_LEFT_BOTTOM:I = 0x3

.field public static final blacklist FREEFORM_HOTSPOT_LEFT_TOP:I = 0x1

.field public static final blacklist FREEFORM_HOTSPOT_NONE:I = -0x1

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_LANDCAPE_RADIUS:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_LANDCAPE_RADIUS_FOLD:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_BOTTOM_MARGIN_FOLD:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN_FOLD:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_PORTRAIT_RADIUS:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_PORTRAIT_RADIUS_FOLD:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_BOTTOM_MARGIN_FOLD:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN_FLOD:F

.field public static final blacklist FREEFORM_HOTSPOT_RIGHT_BOTTOM:I = 0x4

.field public static final blacklist FREEFORM_HOTSPOT_RIGHT_TOP:I = 0x2

.field public static final blacklist FREEFORM_HOTSPOT_TOP_CENTER:I = 0x5

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_RADIUS:F

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_RADIUS:F

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

.field public static final blacklist FREEFORM_HOTSPOT_TRIGGER_TOP_MARGIN:F = 80.0f

.field public static final blacklist FREEFORM_HOT_MARGIN:F

.field public static final blacklist FREEFORM_LANDCAPE_LANDCAPE_RESERVE_MARGINS:F

.field public static final blacklist FREEFORM_LANDCAPE_RESERVE_MARGINS:F

.field public static final blacklist FREEFORM_PACKAGE_NAME:Ljava/lang/String; = "freeform_package_name"

.field public static final blacklist FREEFORM_RECT_OFFSET_X_ZIZHAN:I

.field public static final blacklist FREEFORM_RECT_OFFSET_Y_ZIZHAN:I

.field private static final blacklist FREEFORM_RESOLUTION_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist FREEFORM_RESOLUTION_ARGS_ALL:Lorg/json/JSONObject; = null

.field private static final blacklist FREEFORM_RESOLUTION_ARGS_INNER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist FREEFORM_RESOLUTION_ARGS_OF_DEVICE:Lorg/json/JSONObject; = null

.field private static final blacklist FREEFORM_RESOLUTION_ARGS_OUTER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist FREEFORM_ROUND_CORNER:F

.field public static final blacklist FREEFORM_ROUND_CORNER_DIP:F = 25.8f

.field public static final blacklist FREEFORM_WINDOW_CHANGED_SCALE:Ljava/lang/String; = "freeform_window_changed_scale"

.field public static final blacklist FREEFORM_WINDOW_SCALE:Ljava/lang/String; = "freeform_scale"

.field public static final blacklist FRICTION:F = 1.2f

.field public static final blacklist FROM_SPLIT:Ljava/lang/String; = "from_split"

.field public static final blacklist GLOBAL_LAUNCHER_PKG_NAME:Ljava/lang/String; = "com.mi.android.globallauncher"

.field private static final blacklist HIDE_GESTURE_LINE:Ljava/lang/String; = "hide_gesture_line"

.field public static final blacklist HOT_SPACE_BOTTOM_CAPTION:I = 0x1

.field public static final blacklist HOT_SPACE_BOTTOM_CAPTION_DOWNWARDS_OFFSET:I = 0x23

.field public static final blacklist HOT_SPACE_BOTTOM_CAPTION_UPWARDS_OFFSET:I = 0xa

.field public static final blacklist HOT_SPACE_CVW_LEFT_RESIZE:I = 0x4

.field public static final blacklist HOT_SPACE_CVW_RIGHT_RESIZE:I = 0x5

.field public static final blacklist HOT_SPACE_LEFT_RESIZE_REGION:I = 0x2

.field public static final blacklist HOT_SPACE_OFFSITE:I

.field public static final blacklist HOT_SPACE_RESIZE_CENTER_HORIZONTAL_MARGIN:I = 0x21

.field public static final blacklist HOT_SPACE_RESIZE_CENTER_VERTICAL_MARGIN:I = 0x21

.field public static final blacklist HOT_SPACE_RESIZE_CENTRAL_MARGIN_PAD:I = 0x18

.field public static final blacklist HOT_SPACE_RESIZE_HEIGHT:I = 0x84

.field public static final blacklist HOT_SPACE_RESIZE_OFFSET_PAD:I = 0x21

.field public static final blacklist HOT_SPACE_RESIZE_RADIUS:I = 0x32

.field public static final blacklist HOT_SPACE_RESIZE_WIDTH:I = 0x84

.field public static final blacklist HOT_SPACE_RIGHT_RESIZE_REGION:I = 0x3

.field public static final blacklist HOT_SPACE_TOP_CAPTION:I = 0x0

.field public static final blacklist HOT_SPACE_TOP_CAPTION_DOWNWARDS_OFFSET:I = 0x12

.field public static final blacklist HOT_SPACE_TOP_CAPTION_HANDLE_VIEW_DOWNWARDS_OFFSET:F

.field public static final blacklist HOT_SPACE_TOP_CAPTION_HANDLE_VIEW_SHOW:I = 0x6

.field public static final blacklist HOT_SPACE_TOP_CAPTION_HANDLE_VIEW_TRIGGER:I = 0x5

.field public static final blacklist HOT_SPACE_TOP_CAPTION_UPWARDS_OFFSET:I = 0x16

.field public static final blacklist HOT_SPATE_TOP_CAPTION_HANDLE_VIEW_SHOWING_WIDTH_RATIO:F = 0.547f

.field public static final blacklist HOT_SPATE_TOP_CAPTION_HANDLE_VIEW_TRIGGER_WIDTH_RATIO:F = 0.258f

.field public static final blacklist HOT_SPATE_TOP_CAPTION_WIDTH_RATIO:F = 0.745f

.field public static final blacklist INTERNAL_DISPLAY_ACTIVITY_PKG_NAME:Ljava/lang/String; = "com.xiaomi.misubscreenui"

.field public static final blacklist INTERNAL_DISPLAY_ID:I = 0x2

.field public static blacklist IS_FOLD_SCREEN_DEVICE:Z = false

.field public static final blacklist KEY_APPLICATION_USED_FREEFORM:Ljava/lang/String; = "application_used_freeform"

.field public static final blacklist KEY_FIRST_USE_FREEFORM:Ljava/lang/String; = "first_use_freeform"

.field public static final blacklist KEY_FIRST_USE_TIP_CONFIRM_TIMES:Ljava/lang/String; = "first_use_tip_confirm_times"

.field public static final blacklist KEY_FREEFORM_TIMESTAMPS:Ljava/lang/String; = "freeform_timestamps"

.field public static final blacklist KEY_FREEFORM_WINDOW_STATE:Ljava/lang/String; = "freeform_window_state"

.field public static final blacklist KEY_QUICKREPLY:Ljava/lang/String; = "quick_reply"

.field public static final blacklist LANDCAPE_LANDCAPE_MAX_WIDTH_FOR_ORIGIN_WIDTH:F = 1.2796443f

.field public static final blacklist LANDCAPE_LANDCAPE_MIN_WIDTH_FOR_ORIGIN_WIDTH:F = 0.71146244f

.field public static final blacklist LANDCAPE_PORTRAIT_MAX_WIDTH_FOR_ORIGIN_WIDTH:F = 1.0f

.field public static final blacklist LANDCAPE_PORTRAIT_MIN_WIDTH_FOR_ORIGIN_WIDTH:F = 0.71146244f

.field public static final blacklist LANDCAPE_SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

.field public static final blacklist LANDCAPE_SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

.field public static final blacklist LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

.field public static final blacklist LANDCAPE_SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

.field private static final blacklist LEFT_MARGIN_ARG:I = 0x4

.field public static blacklist LONG_WAIT:I = 0x0

.field public static blacklist LONG_WAIT_TOAST:I = 0x0

.field public static final blacklist MAX_LANDCAPE_WIDTH_FOR_ORIGIN_WIDTH:F = 1.0f

.field public static final blacklist MAX_LANDCAPE_WIDTH_FOR_ORIGIN_WIDTH_FOLD:F = 1.3007915f

.field public static final blacklist MAX_PORTRAIT_WIDTH_FOR_ORIGIN_WIDTH:F = 1.3007915f

.field public static final blacklist MAX_WAITING_TIME_ON_CLICK:I = 0x5dc

.field private static final blacklist MINI_FREEFORM_RESOLUTION_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist MINI_FREEFORM_RESOLUTION_ARGS_INNER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist MINI_FREEFORM_RESOLUTION_ARGS_OUTER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist MIN_LANDCAPE_WIDTH_FOR_ORIGIN_WIDTH:F = 0.7259475f

.field public static final blacklist MIN_PORTRAIT_WIDTH_FOR_ORIGIN_WIDTH:F = 0.6569921f

.field public static final blacklist MIUI_BOUNDARY_SPATIAL:I = 0x0

.field public static final blacklist MIUI_FREEFORM_AMBIENT_COLOR:[F

.field public static final blacklist MIUI_FREEFORM_RESET_COLOR:[F

.field public static final blacklist MIUI_FREEFORM_SHADOW_RADIUS:F = 400.0f

.field public static final blacklist MIUI_FRICTION:F = 0.8f

.field public static final blacklist MIUI_MUSIC:Ljava/lang/String; = "com.miui.player"

.field public static final blacklist MONKEY_PACKAGE_NAME:Ljava/lang/String; = "com.android.commands.monkey"

.field public static final blacklist MTBF_PACKAGE_NAME:Ljava/lang/String; = "com.phonetest.stresstest"

.field public static volatile blacklist MULTIWIN_SWITCH_ENABLED:Z = false

.field public static blacklist MULTI_WINDOW_SWITCH_ENABLED:Z = false

.field public static final blacklist NARROW_SCREEN:I = 0x0

.field public static final blacklist NORMAL_MODE_FOR_ABNORMAL_FREEFORM:I = 0x1

.field public static final blacklist NOTCH_MARGIN:I

.field public static final blacklist NO_AVALIABLE_APPLICATION:I = 0x2

.field public static final blacklist OFFSET_LIMIT:I

.field public static final blacklist OFFSET_STEP:I

.field private static final blacklist ORIGINAL_CUT_RATIO_ARG:I = 0x1

.field private static final blacklist ORIGINAL_SCALE_ARG:I = 0x2

.field public static final blacklist PAD_BOTTOM_BAR_TOUCH_REGION_MARGIN:I = 0x7e

.field public static final blacklist PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN:I

.field public static final blacklist PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN_DESKTOP:I

.field public static final blacklist PAD_FREEFORM_ACCESSIBLE_AREA_HORIZONTAL_MARGIN:I

.field public static final blacklist PAD_FREEFORM_ROUND_CORNER:F

.field public static final blacklist PAD_FREEFORM_ROUND_CORNER_DIP:F = 16.9f

.field private static final blacklist PAD_LANDSCAPE_FREEFORM_HEIGHT_RATIO:F = 0.8f

.field private static final blacklist PAD_LANDSCAPE_MINI_FREEFORM_HEIGHT_RATIO:F = 0.26f

.field public static final blacklist PAD_MULTI_FREEFORM_DEFAULT_MARGIN:I = 0x24

.field private static final blacklist PAD_PORTRAIT_FREEFORM_HEIGHT_RATIO:F = 1.0f

.field private static final blacklist PAD_PORTRAIT_MINI_FREEFORM_HEIGHT_RATIO:F = 0.3f

.field private static final blacklist PAD_RIGHT_MARGIN:F

.field public static final blacklist PAD_SCREEN:I = 0x3

.field public static final blacklist PAD_SCREEN_INCH:F = 10.0f

.field public static final blacklist PAD_SMALL_FREEFORM_ROUND_CORNER:F

.field public static final blacklist PAD_SMALL_FREEFORM_ROUND_CORNER_DIP:F = 7.1f

.field private static final blacklist PAD_TARGET_SIDE_DIFF:F

.field public static final blacklist PREV_HAPTIC_FEEDBACK_ID_TO_NEW_ID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REGULAR_SCREEN:I = 0x1

.field public static final blacklist RESIZE_WIDTH:I

.field private static blacklist RESOLUTION_FILE:Ljava/lang/String; = null

.field public static final blacklist SCREEN_WIDTH_HEIGHT_RATIO_THRESHOLD_LOW:F = 0.33333334f

.field public static final blacklist SKIP_TOUCH_CLASSNAME:Ljava/lang/String; = "org.chromium.chrome.browser.firstrun.FirstRunActivity"

.field public static final blacklist SKIP_TOUCH_PACKAGENAME:Ljava/lang/String; = "com.android.chrome"

.field public static final blacklist SLIDE_OUT_FINAL_POSITION_OFFSITE:I

.field public static final blacklist SLIDE_OUT_POSITION_THRESHOLD:I

.field public static final blacklist SLIDE_OUT_VELOCITY_THRESHOLD:I

.field public static blacklist SLOWER_SPEED:I = 0x0

.field public static final blacklist SMALL_FREEFORM_DOWNWARD_RIGHT_MARGIN:I

.field public static final blacklist SMALL_FREEFORM_DOWNWARD_TOP_MARGIN:I

.field public static final blacklist SMALL_FREEFORM_EXIT_INNER_HOTSPOT:I = 0x6

.field public static final blacklist SMALL_FREEFORM_EXIT_INNER_HOTSPOT_HEIGHT:F = 198.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_INNER_HOTSPOT_RADIUS:F = 44.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_INNER_HOTSPOT_TOP_MARGIN:F = 67.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_INNER_HOTSPOT_WIDTH:F = 352.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_MIDDLE_HOTSPOT:I = 0x7

.field public static final blacklist SMALL_FREEFORM_EXIT_MIDDLE_HOTSPOT_HEIGHT:F = 316.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_MIDDLE_HOTSPOT_RADIUS:F = 44.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_MIDDLE_HOTSPOT_TOP_MARGIN:F = 8.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_MIDDLE_HOTSPOT_WIDTH:F = 483.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_OUTER_HOTSPOT:I = 0x8

.field public static final blacklist SMALL_FREEFORM_EXIT_OUTER_HOTSPOT_HEIGHT:F = 397.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_OUTER_HOTSPOT_RADIUS:F = 68.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_OUTER_HOTSPOT_TOP_MARGIN:F = 8.0f

.field public static final blacklist SMALL_FREEFORM_EXIT_OUTER_HOTSPOT_WIDTH:F = 638.0f

.field public static final blacklist SMALL_FREEFORM_HOTSPOT_NONE:I = -0x2

.field public static final blacklist SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

.field public static final blacklist SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

.field public static final blacklist SMALL_FREEFORM_MOVE_VELOCITY_X_THRESHOLD:F = 2000.0f

.field public static final blacklist SMALL_FREEFORM_MOVE_VELOCITY_Y_THRESHOLD:F = 4000.0f

.field public static final blacklist SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

.field public static final blacklist SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

.field public static final blacklist SMALL_FREEFORM_RIGHT_MARGIN:F

.field public static final blacklist SMALL_FREEFORM_TOP_MARGIN:F

.field public static final blacklist STABLE_DENSITY:F

.field public static final blacklist START_SAMLL_FREEFORM:I = 0x1

.field static final blacklist SWITCH_STATELESS:I = -0x1

.field static final blacklist TAG:Ljava/lang/String; = "MiuiMultiWindowUtils"

.field public static final blacklist TEST_MODE_FOR_ABNORMAL_FREEFORM:I = 0x2

.field private static final blacklist TIMESTAP_MAX_SIZE:I = 0xa

.field public static final blacklist TOP_DECOR_CAPTIONVIEW_HEIGHT:I

.field private static final blacklist TOP_MARGIN_ARG:I = 0x3

.field private static final blacklist UNDEFINED_ARG:F = -1.0f

.field public static final blacklist UNDEFINED_MODE_FOR_ABNORMAL_FREEFORM:I = -0x1

.field public static final blacklist WIDE_SCREEN:I = 0x2

.field public static final blacklist WIDE_SCREEN_DP:I = 0x258

.field public static final blacklist WIDE_SCREEN_INCH:F = 8.0f

.field public static blacklist mCurrentSmallWindowCorner:I

.field private static blacklist mTotalRamStr:I

.field private static blacklist sAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile blacklist sEnableBlackListAppFreeFormDebug:Ljava/lang/Boolean;

.field private static blacklist sFreeformSuggestionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sGetFreeformBlackListLock:Ljava/lang/Object;

.field private static blacklist sLastUpdateTime:J

.field private static blacklist sNotSupportFreeformDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile blacklist sScale:F

.field private static blacklist sSupportMultiSwitchDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsaveStartFreeform(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/MiuiMultiWindowUtils;->saveStartFreeform(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 123
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/util/MiuiMultiWindowUtils;->sLastUpdateTime:J

    .line 129
    nop

    .line 131
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    const/4 v1, 0x1

    const v2, 0x41ce6666    # 25.8f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_ROUND_CORNER:F

    .line 133
    nop

    .line 135
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 134
    const v2, 0x41873333    # 16.9f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ROUND_CORNER:F

    .line 137
    nop

    .line 139
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 138
    const v2, 0x40e33333    # 7.1f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->PAD_SMALL_FREEFORM_ROUND_CORNER:F

    .line 141
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    .line 142
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v2, 0x0

    .line 664
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 142
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4f

    move v0, v1

    goto :goto_50

    :cond_4f
    move v0, v2

    :goto_50
    sput-boolean v0, Landroid/util/MiuiMultiWindowUtils;->IS_FOLD_SCREEN_DEVICE:Z

    .line 161
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v0, v5

    sput v0, Landroid/util/MiuiMultiWindowUtils;->STABLE_DENSITY:F

    .line 178
    nop

    .line 179
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 178
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v1, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_HORIZONTAL_MARGIN:I

    .line 180
    const/high16 v0, 0x41d00000    # 26.0f

    .line 181
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 180
    invoke-static {v1, v0, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN:I

    .line 182
    nop

    .line 183
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 182
    const/high16 v7, 0x429c0000    # 78.0f

    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN_DESKTOP:I

    .line 186
    nop

    .line 187
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 186
    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v1, v8, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->PAD_RIGHT_MARGIN:F

    .line 190
    nop

    .line 191
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 190
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->PAD_TARGET_SIDE_DIFF:F

    .line 213
    const-string v0, "freeform_resolutions.json"

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->RESOLUTION_FILE:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS:Ljava/util/List;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS:Ljava/util/List;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_INNER:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS_INNER:Ljava/util/List;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_OUTER:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS_OUTER:Ljava/util/List;

    .line 231
    const-string v0, "ro.config.miui_multi_window_switch_enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/MiuiMultiWindowUtils;->MULTI_WINDOW_SWITCH_ENABLED:Z

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1103004f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->DEVICES_SUPPORT_MULTI_FREEFORM:Ljava/util/List;

    .line 234
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->initFreeFormResolutionArgs()V

    .line 240
    const v0, 0x4168a3d7    # 14.54f

    .line 242
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 241
    invoke-static {v1, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_RESERVE_MARGINS:F

    .line 244
    const v0, 0x423f3333    # 47.8f

    .line 246
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 245
    invoke-static {v1, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_LANDCAPE_LANDCAPE_RESERVE_MARGINS:F

    .line 259
    const v0, 0x413a3d71    # 11.64f

    .line 261
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 260
    invoke-static {v1, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->HOT_SPACE_OFFSITE:I

    .line 285
    const v0, 0x4145c28f    # 12.36f

    .line 287
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 286
    invoke-static {v1, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    .line 288
    nop

    .line 290
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 289
    const v9, 0x42a5199a    # 82.55f

    invoke-static {v1, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    .line 291
    nop

    .line 293
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 292
    const v10, 0x415170a4    # 13.09f

    invoke-static {v1, v10, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    .line 294
    nop

    .line 296
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 295
    invoke-static {v1, v10, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    .line 298
    nop

    .line 300
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 299
    const v11, 0x41ae8f5c    # 21.82f

    invoke-static {v1, v11, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    .line 301
    nop

    .line 303
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 302
    invoke-static {v1, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    .line 304
    nop

    .line 306
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 305
    invoke-static {v1, v11, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    .line 307
    nop

    .line 309
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 308
    invoke-static {v1, v10, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    .line 311
    const v0, 0x4367451f    # 231.27f

    .line 313
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 312
    invoke-static {v1, v0, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_DOWNWARD_TOP_MARGIN:I

    .line 314
    nop

    .line 316
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 315
    invoke-static {v1, v10, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_DOWNWARD_RIGHT_MARGIN:I

    .line 317
    const v0, 0x42968a3d    # 75.27f

    .line 319
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 318
    invoke-static {v1, v0, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_TOP_MARGIN:F

    .line 320
    const/high16 v0, 0x42000000    # 32.0f

    .line 322
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 321
    invoke-static {v1, v0, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_RIGHT_MARGIN:F

    .line 325
    nop

    .line 327
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 326
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RECT_OFFSET_X_ZIZHAN:I

    .line 328
    const/high16 v0, 0x42300000    # 44.0f

    .line 330
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 329
    invoke-static {v1, v0, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RECT_OFFSET_Y_ZIZHAN:I

    .line 332
    const/high16 v0, -0x3cd60000    # -170.0f

    .line 334
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 333
    invoke-static {v1, v0, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SLIDE_OUT_VELOCITY_THRESHOLD:I

    .line 335
    nop

    .line 337
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 336
    invoke-static {v1, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SLIDE_OUT_POSITION_THRESHOLD:I

    .line 338
    nop

    .line 340
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 339
    invoke-static {v1, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->SLIDE_OUT_FINAL_POSITION_OFFSITE:I

    .line 343
    nop

    .line 345
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 344
    const/4 v7, 0x0

    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOT_MARGIN:F

    .line 360
    const v0, 0x42cd199a    # 102.55f

    .line 362
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 361
    invoke-static {v1, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_RADIUS:F

    .line 363
    const v9, 0x42b747ae    # 91.64f

    .line 365
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 364
    invoke-static {v1, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    sput v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_RADIUS:F

    .line 366
    nop

    .line 368
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 367
    invoke-static {v1, v7, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    sput v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    .line 369
    const v10, 0x42b8b852    # 92.36f

    .line 371
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 370
    invoke-static {v1, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    sput v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

    .line 372
    nop

    .line 374
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 373
    invoke-static {v1, v7, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    sput v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    .line 375
    nop

    .line 377
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 376
    invoke-static {v1, v7, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    sput v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

    .line 378
    nop

    .line 380
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 379
    invoke-static {v1, v7, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    sput v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    .line 381
    const v10, 0x42ce8a3d    # 103.27f

    .line 383
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 382
    invoke-static {v1, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    sput v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

    .line 384
    nop

    .line 386
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 385
    invoke-static {v1, v7, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    sput v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    .line 387
    nop

    .line 389
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 388
    invoke-static {v1, v7, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    sput v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

    .line 390
    nop

    .line 392
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 391
    invoke-static {v1, v5, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    sput v5, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_RADIUS:F

    .line 393
    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_RADIUS_FOLD:F

    .line 394
    const v0, 0x4315170a    # 149.09f

    .line 396
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 395
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_RADIUS:F

    .line 397
    sput v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_RADIUS_FOLD:F

    .line 398
    const v0, 0x432e2e14    # 174.18f

    .line 400
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 399
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    .line 401
    const v0, 0x42ae2e14    # 87.09f

    .line 403
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 402
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN_FLOD:F

    .line 404
    const v0, 0x4371170a    # 241.09f

    .line 406
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 405
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

    .line 407
    const v0, 0x42f1199a    # 120.55f

    .line 409
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 408
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_BOTTOM_MARGIN_FOLD:F

    .line 410
    nop

    .line 412
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 411
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    .line 413
    nop

    .line 415
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 414
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

    .line 416
    nop

    .line 418
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 417
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    .line 419
    nop

    .line 421
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 420
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN_FOLD:F

    .line 422
    const v0, 0x42145c29    # 37.09f

    .line 424
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 423
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

    .line 425
    const v0, 0x41946666    # 18.55f

    .line 427
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 426
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_BOTTOM_MARGIN_FOLD:F

    .line 428
    nop

    .line 430
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 429
    const v5, 0x423747ae    # 45.82f

    invoke-static {v1, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    .line 431
    nop

    .line 433
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 432
    invoke-static {v1, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

    .line 437
    nop

    .line 439
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 438
    const v5, 0x431c5c29    # 156.36f

    invoke-static {v1, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_PORTRAIT_RADIUS:F

    .line 440
    const v0, 0x42845c29    # 66.18f

    .line 442
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 441
    invoke-static {v1, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_LANDCAPE_RADIUS:F

    .line 443
    nop

    .line 445
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 444
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    .line 446
    nop

    .line 448
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 447
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    .line 449
    nop

    .line 451
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 450
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_CENTER_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    .line 452
    nop

    .line 454
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 453
    const v9, 0x427a28f6    # 62.54f

    invoke-static {v1, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    .line 455
    nop

    .line 457
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 456
    invoke-static {v1, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    .line 459
    nop

    .line 461
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 460
    invoke-static {v1, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_PORTRAIT_RADIUS:F

    .line 462
    const v0, 0x43045c29    # 132.36f

    .line 464
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 463
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_LANDCAPE_RADIUS:F

    .line 465
    const v0, 0x4335d1ec    # 181.82f

    .line 467
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 466
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    .line 468
    nop

    .line 470
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 469
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_CENTER_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    .line 471
    nop

    .line 473
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 472
    invoke-static {v1, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    .line 474
    nop

    .line 476
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 475
    invoke-static {v1, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    .line 477
    nop

    .line 479
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 478
    invoke-static {v1, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    .line 500
    nop

    .line 501
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 500
    invoke-static {v1, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->DESKTOP_ELUDE_BAR:I

    .line 502
    const/high16 v0, 0x40c00000    # 6.0f

    .line 503
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 502
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->DESKTOP_SMALL_FREEFORM_ELUDE_MARGIN:I

    .line 504
    nop

    .line 506
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 505
    invoke-static {v1, v8, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->RESIZE_WIDTH:I

    .line 512
    const v0, 0x4222eb85    # 40.73f

    .line 514
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 513
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->NOTCH_MARGIN:I

    .line 516
    const/4 v0, -0x1

    sput v0, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 518
    const v0, 0x421747ae    # 37.82f

    .line 520
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 519
    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->sSupportMultiSwitchDeviceList:Ljava/util/List;

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->sFreeformSuggestionList:Ljava/util/Map;

    .line 531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    .line 535
    const/4 v0, 0x4

    new-array v5, v0, [F

    fill-array-data v5, :array_6dc

    sput-object v5, Landroid/util/MiuiMultiWindowUtils;->MIUI_FREEFORM_RESET_COLOR:[F

    .line 536
    new-array v5, v0, [F

    fill-array-data v5, :array_6e8

    sput-object v5, Landroid/util/MiuiMultiWindowUtils;->MIUI_FREEFORM_AMBIENT_COLOR:[F

    .line 538
    const/16 v5, 0x64

    sput v5, Landroid/util/MiuiMultiWindowUtils;->LONG_WAIT:I

    .line 539
    const/16 v5, 0x1e0

    sput v5, Landroid/util/MiuiMultiWindowUtils;->LONG_WAIT_TOAST:I

    .line 540
    const/16 v5, 0x1f4

    sput v5, Landroid/util/MiuiMultiWindowUtils;->SLOWER_SPEED:I

    .line 552
    const/high16 v5, 0x42580000    # 54.0f

    .line 553
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v1, v5, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    sput v5, Landroid/util/MiuiMultiWindowUtils;->HOT_SPACE_TOP_CAPTION_HANDLE_VIEW_DOWNWARDS_OFFSET:F

    .line 586
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Landroid/util/MiuiMultiWindowUtils;->ADDITIONAL_FREEFORM_RESOLUTIONS:Ljava/util/Map;

    .line 589
    new-array v7, v4, [I

    fill-array-data v7, :array_6f4

    sput-object v7, Landroid/util/MiuiMultiWindowUtils;->ADDITIONAL_FREEFORM_RESOLUTION_1:[I

    .line 592
    new-array v8, v4, [I

    fill-array-data v8, :array_6fc

    sput-object v8, Landroid/util/MiuiMultiWindowUtils;->ADDITIONAL_FREEFORM_RESOLUTION_2:[I

    .line 595
    sget-object v9, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "com.tencent.mm"

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v9, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, "com.tencent.mobileqq"

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v4, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "com.whatsapp"

    invoke-virtual {v4, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v4, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v9, "com.ss.android.lark.kami"

    invoke-virtual {v4, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "com.ss.android.lark"

    invoke-virtual {v0, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "com.android.mms"

    invoke-virtual {v0, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "com.alibaba.android.rimet"

    invoke-virtual {v0, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v4, "dandelion"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v4, "angelica"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v4, "angelicain"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v4, "cattail"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v4, "angelican"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    const-string v4, "frost"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sSupportMultiSwitchDeviceList:Ljava/util/List;

    const-string v4, "cetus"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isSupportMultiSwitchFeature()Z

    move-result v0

    sput-boolean v0, Landroid/util/MiuiMultiWindowUtils;->MULTIWIN_SWITCH_ENABLED:Z

    .line 613
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_61a

    .line 614
    const v0, 0x3faaaaa8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_61a
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isWideScreen()Z

    move-result v0

    if-eqz v0, :cond_630

    .line 622
    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_646

    .line 623
    :cond_630
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "status_bar_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_646
    sput v0, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    .line 635
    sput v2, Landroid/util/MiuiMultiWindowUtils;->mTotalRamStr:I

    .line 642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->PREV_HAPTIC_FEEDBACK_ID_TO_NEW_ID:Ljava/util/Map;

    .line 646
    nop

    .line 647
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 646
    invoke-static {v1, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    sput v2, Landroid/util/MiuiMultiWindowUtils;->AUTO_LAYOUT_FREEFORM_GAP:I

    .line 648
    const/high16 v2, 0x41200000    # 10.0f

    .line 649
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 648
    invoke-static {v1, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    sput v2, Landroid/util/MiuiMultiWindowUtils;->AUTO_LAYOUT_FREEFORM_EXPAND:I

    .line 650
    nop

    .line 651
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 650
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v1, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    sput v2, Landroid/util/MiuiMultiWindowUtils;->OFFSET_LIMIT:I

    .line 652
    nop

    .line 653
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 652
    invoke-static {v1, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    sput v2, Landroid/util/MiuiMultiWindowUtils;->OFFSET_STEP:I

    .line 654
    nop

    .line 655
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 654
    invoke-static {v1, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    sput v2, Landroid/util/MiuiMultiWindowUtils;->CORNER_STEP:I

    .line 656
    nop

    .line 657
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 656
    invoke-static {v1, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    sput v1, Landroid/util/MiuiMultiWindowUtils;->CORNER_LIMIT:I

    .line 664
    const v1, 0x1000000e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const v1, 0x10000005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3495
    const/4 v0, 0x0

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->sEnableBlackListAppFreeFormDebug:Ljava/lang/Boolean;

    .line 3496
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->sGetFreeformBlackListLock:Ljava/lang/Object;

    return-void

    nop

    :array_6dc
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6e8
    .array-data 4
        0x0
        0x0
        0x0
        0x3ecccccd    # 0.4f
    .end array-data

    :array_6f4
    .array-data 4
        0x855
        0x640
    .end array-data

    :array_6fc
    .array-data 4
        0x4b0
        0x640
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adjustFreeFormBounds(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;I)F
    .registers 12
    .param p0, "currentBounds"    # Landroid/graphics/Rect;
    .param p1, "currentScale"    # F
    .param p2, "accessibleAreaBefore"    # Landroid/graphics/Rect;
    .param p3, "accessibleAreaAfter"    # Landroid/graphics/Rect;
    .param p4, "maxWidthLimit"    # I

    .line 3171
    const/4 v0, 0x2

    new-array v1, v0, [F

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/4 v2, 0x1

    aput v0, v1, v2

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/util/MiuiMultiWindowUtils;->adjustFreeFormBounds([FLandroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result v0

    return v0
.end method

.method public static blacklist adjustFreeFormBounds([FLandroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;I)F
    .registers 24
    .param p0, "visualSizeBefore"    # [F
    .param p1, "currentBounds"    # Landroid/graphics/Rect;
    .param p2, "currentScale"    # F
    .param p3, "accessibleAreaBefore"    # Landroid/graphics/Rect;
    .param p4, "accessibleAreaAfter"    # Landroid/graphics/Rect;
    .param p5, "maxWidthLimit"    # I

    .line 3114
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    const/high16 v4, 0x3f800000    # 1.0f

    .line 3115
    .local v4, "scaleDown":F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3117
    .local v5, "newBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 3118
    .local v6, "availableWidthBefore":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 3119
    .local v7, "availableHeightBefore":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 3120
    .local v8, "availableWidthAfter":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 3122
    .local v9, "availableHeightAfter":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 3123
    .local v10, "boundsWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 3124
    .local v11, "boundsHeight":I
    int-to-float v12, v10

    mul-float v12, v12, p2

    .line 3125
    .local v12, "currentVisualWidth":F
    int-to-float v13, v11

    mul-float v13, v13, p2

    .line 3126
    .local v13, "currentVisualHeight":F
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    cmpl-float v14, v12, v14

    if-gtz v14, :cond_3b

    int-to-float v14, v9

    cmpl-float v14, v13, v14

    if-lez v14, :cond_47

    .line 3128
    :cond_3b
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v12

    int-to-float v15, v9

    div-float/2addr v15, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 3130
    :cond_47
    mul-float v14, v12, v4

    float-to-int v14, v14

    .line 3131
    .local v14, "newVisualWidth":I
    mul-float v15, v13, v4

    float-to-int v15, v15

    .line 3132
    .local v15, "newVisualHeight":I
    int-to-float v3, v7

    cmpl-float v3, v13, v3

    if-ltz v3, :cond_60

    .line 3133
    sub-int v3, v9, v15

    div-int/lit8 v3, v3, 0x2

    move/from16 v16, v13

    .end local v13    # "currentVisualHeight":F
    .local v16, "currentVisualHeight":F
    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v13

    iput v3, v5, Landroid/graphics/Rect;->top:I

    move/from16 v17, v9

    goto :goto_7a

    .line 3135
    .end local v16    # "currentVisualHeight":F
    .restart local v13    # "currentVisualHeight":F
    :cond_60
    move/from16 v16, v13

    .end local v13    # "currentVisualHeight":F
    .restart local v16    # "currentVisualHeight":F
    sub-int v3, v9, v15

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v9

    .end local v9    # "availableHeightAfter":I
    .local v17, "availableHeightAfter":I
    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v9

    mul-int/2addr v3, v13

    int-to-float v3, v3

    int-to-float v9, v7

    const/4 v13, 0x1

    aget v13, p0, v13

    sub-float/2addr v9, v13

    div-float/2addr v3, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 3138
    :goto_7a
    int-to-float v3, v6

    cmpl-float v3, v12, v3

    if-ltz v3, :cond_89

    .line 3139
    sub-int v3, v8, v14

    div-int/lit8 v3, v3, 0x2

    iget v9, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v9

    iput v3, v5, Landroid/graphics/Rect;->left:I

    goto :goto_9f

    .line 3141
    :cond_89
    sub-int v3, v8, v14

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v13

    mul-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v9, v6

    const/4 v13, 0x0

    aget v13, p0, v13

    sub-float/2addr v9, v13

    div-float/2addr v3, v9

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 3144
    :goto_9f
    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v10

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 3145
    iget v3, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v11

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 3147
    iget v3, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v15

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, v9, :cond_b8

    .line 3148
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v15

    invoke-virtual {v5, v3, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3150
    :cond_b8
    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v14

    iget v9, v2, Landroid/graphics/Rect;->right:I

    if-le v3, v9, :cond_c7

    .line 3151
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v14

    iget v9, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v3, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3153
    :cond_c7
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->left:I

    if-ge v3, v9, :cond_d4

    .line 3154
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v3, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3156
    :cond_d4
    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    if-ge v3, v9, :cond_e1

    .line 3157
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v3, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3160
    :cond_e1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjustFreeFormBounds:: bounds:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " scaleDown:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "MiuiMultiWindowUtils"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    if-ne v3, v9, :cond_10f

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    if-eq v3, v9, :cond_116

    .line 3163
    :cond_10f
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3165
    :cond_116
    return v4
.end method

.method public static blacklist adjustMiniFreeFormPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p0, "currentRect"    # Landroid/graphics/Rect;
    .param p1, "accessibleAreaBefore"    # Landroid/graphics/Rect;
    .param p2, "accessibleAreaAfter"    # Landroid/graphics/Rect;

    .line 3177
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, p1, p2, v0}, Landroid/util/MiuiMultiWindowUtils;->adjustFreeFormBounds(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 3178
    return-void
.end method

.method public static blacklist applyDip2Px(F)F
    .registers 3
    .param p0, "value"    # F

    .line 4319
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static blacklist avoidAsPossible(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p0, "mobile"    # Landroid/graphics/Rect;
    .param p1, "fixed"    # Landroid/graphics/Rect;
    .param p2, "restriction"    # Landroid/graphics/Rect;

    .line 2735
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2736
    invoke-static {p0, p1, p2}, Landroid/util/MiuiMultiWindowUtils;->avoidAsPossibleOnPad(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_d

    .line 2738
    :cond_a
    invoke-static {p0, p1, p2}, Landroid/util/MiuiMultiWindowUtils;->avoidIfNeeded(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2740
    :goto_d
    return-void
.end method

.method public static blacklist avoidAsPossibleOnPad(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9
    .param p0, "mobile"    # Landroid/graphics/Rect;
    .param p1, "fixed"    # Landroid/graphics/Rect;
    .param p2, "restriction"    # Landroid/graphics/Rect;

    .line 2613
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2614
    .local v0, "transactRegion":Landroid/graphics/Rect;
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2615
    return-void

    .line 2618
    :cond_c
    invoke-static {p0, p1, p2}, Landroid/util/MiuiMultiWindowUtils;->translateToBlankSpace(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2619
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2620
    return-void

    .line 2652
    :cond_16
    new-instance v1, Landroid/util/MiuiMultiWindowUtils$1PositionItem;

    .line 2653
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, p0, v2, v0}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;-><init>(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    .line 2656
    .local v1, "bestPosition":Landroid/util/MiuiMultiWindowUtils$1PositionItem;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2657
    .local v2, "temp":Landroid/graphics/Rect;
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2658
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2659
    new-instance v3, Landroid/util/MiuiMultiWindowUtils$1PositionItem;

    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-direct {v3, v2, v4, v0}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;-><init>(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    invoke-static {v1, v3}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->-$$Nest$mupdatePositionIfNeeded(Landroid/util/MiuiMultiWindowUtils$1PositionItem;Landroid/util/MiuiMultiWindowUtils$1PositionItem;)V

    .line 2662
    iget v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2663
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2664
    new-instance v3, Landroid/util/MiuiMultiWindowUtils$1PositionItem;

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-direct {v3, v2, v4, v0}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;-><init>(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    invoke-static {v1, v3}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->-$$Nest$mupdatePositionIfNeeded(Landroid/util/MiuiMultiWindowUtils$1PositionItem;Landroid/util/MiuiMultiWindowUtils$1PositionItem;)V

    .line 2667
    iget v3, p0, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2668
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2669
    new-instance v3, Landroid/util/MiuiMultiWindowUtils$1PositionItem;

    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-direct {v3, v2, v4, v0}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;-><init>(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    invoke-static {v1, v3}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->-$$Nest$mupdatePositionIfNeeded(Landroid/util/MiuiMultiWindowUtils$1PositionItem;Landroid/util/MiuiMultiWindowUtils$1PositionItem;)V

    .line 2672
    iget v3, p0, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2673
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2674
    new-instance v3, Landroid/util/MiuiMultiWindowUtils$1PositionItem;

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-direct {v3, v2, v4, v0}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;-><init>(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    invoke-static {v1, v3}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->-$$Nest$mupdatePositionIfNeeded(Landroid/util/MiuiMultiWindowUtils$1PositionItem;Landroid/util/MiuiMultiWindowUtils$1PositionItem;)V

    .line 2676
    invoke-static {v1}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->-$$Nest$fgetupdated(Landroid/util/MiuiMultiWindowUtils$1PositionItem;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 2677
    return-void

    .line 2679
    :cond_99
    invoke-static {v1}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->-$$Nest$fgetmPosition(Landroid/util/MiuiMultiWindowUtils$1PositionItem;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->-$$Nest$fgetmPosition(Landroid/util/MiuiMultiWindowUtils$1PositionItem;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2680
    return-void
.end method

.method public static blacklist avoidIfNeeded(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p0, "mobile"    # Landroid/graphics/Rect;
    .param p1, "fixed"    # Landroid/graphics/Rect;
    .param p2, "restriction"    # Landroid/graphics/Rect;

    .line 2687
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2688
    .local v0, "transactRegion":Landroid/graphics/Rect;
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2689
    return-void

    .line 2693
    :cond_c
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sget v2, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RECT_OFFSET_X_ZIZHAN:I

    if-ge v1, v2, :cond_9a

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_9a

    .line 2695
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_4b

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 2696
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v1, v3, :cond_4b

    .line 2697
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_43

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_43

    .line 2698
    iget v1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_4a

    :cond_43
    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    .local v1, "targetLeft":I
    :goto_4a
    goto :goto_95

    .line 2699
    .end local v1    # "targetLeft":I
    :cond_4b
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v1, v3, :cond_7d

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 2700
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v1, v3, :cond_7d

    .line 2701
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_78

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v1, v3, :cond_78

    .line 2702
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_7b

    .line 2703
    :cond_78
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    :goto_7b
    nop

    .restart local v1    # "targetLeft":I
    goto :goto_95

    .line 2704
    .end local v1    # "targetLeft":I
    :cond_7d
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v1, v3, :cond_92

    .line 2705
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    .restart local v1    # "targetLeft":I
    goto :goto_95

    .line 2707
    .end local v1    # "targetLeft":I
    :cond_92
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 2709
    .restart local v1    # "targetLeft":I
    :goto_95
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2712
    .end local v1    # "targetLeft":I
    :cond_9a
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sget v2, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RECT_OFFSET_Y_ZIZHAN:I

    if-ge v1, v2, :cond_134

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_134

    .line 2714
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_df

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 2715
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v3, :cond_df

    .line 2716
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_ce

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_d4

    :cond_ce
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 2717
    :cond_d4
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_de

    :cond_dc
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .local v1, "targetTop":I
    :goto_de
    goto :goto_12f

    .line 2718
    .end local v1    # "targetTop":I
    :cond_df
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v1, v3, :cond_117

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 2719
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v3, :cond_117

    .line 2721
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v3, :cond_103

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_109

    :cond_103
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 2722
    :cond_109
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    goto :goto_115

    .line 2723
    :cond_10d
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_115
    nop

    .restart local v1    # "targetTop":I
    goto :goto_12f

    .line 2724
    .end local v1    # "targetTop":I
    :cond_117
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v1, v3, :cond_12c

    .line 2725
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    .restart local v1    # "targetTop":I
    goto :goto_12f

    .line 2727
    .end local v1    # "targetTop":I
    :cond_12c
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 2729
    .restart local v1    # "targetTop":I
    :goto_12f
    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2731
    .end local v1    # "targetTop":I
    :cond_134
    return-void
.end method

.method public static blacklist bitmapZoomByScale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scaleWidth"    # F
    .param p2, "scaleHeight"    # F

    .line 3764
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 3765
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 3766
    .local v8, "height":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v0

    .line 3767
    .local v9, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3768
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v3, v7

    move v4, v8

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3769
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1f

    .line 3770
    return-object v0

    .line 3772
    :cond_1f
    return-object p0
.end method

.method private static blacklist calPredict(FFF)F
    .registers 5
    .param p0, "val"    # F
    .param p1, "speed"    # F
    .param p2, "friction"    # F

    .line 4221
    neg-float v0, p1

    const v1, -0x3f79999a    # -4.2f

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static blacklist calculateCornerBound(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outLeftTopWindowBounds"    # Landroid/graphics/Rect;
    .param p2, "outRightTopWindowBounds"    # Landroid/graphics/Rect;
    .param p3, "outLeftBottomWindowBounds"    # Landroid/graphics/Rect;
    .param p4, "outRightBottomWindowBounds"    # Landroid/graphics/Rect;
    .param p5, "isLandcapeFreeform"    # Z

    .line 1071
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/util/MiuiMultiWindowUtils;->calculateCornerBound(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/graphics/Rect;)V

    .line 1073
    return-void
.end method

.method public static blacklist calculateCornerBound(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/graphics/Rect;)V
    .registers 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outLeftTopWindowBounds"    # Landroid/graphics/Rect;
    .param p2, "outRightTopWindowBounds"    # Landroid/graphics/Rect;
    .param p3, "outLeftBottomWindowBounds"    # Landroid/graphics/Rect;
    .param p4, "outRightBottomWindowBounds"    # Landroid/graphics/Rect;
    .param p5, "isLandcapeFreeform"    # Z
    .param p6, "isNormalFreeForm"    # Z
    .param p7, "smallWindowBounds"    # Landroid/graphics/Rect;

    .line 1078
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-string v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1079
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 1080
    .local v7, "displayRotation":I
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isNotchScreen(Landroid/content/Context;)Z

    move-result v8

    .line 1082
    .local v8, "isNotchScreen":Z
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 1083
    .local v9, "screenWidth":I
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 1084
    .local v10, "screenHeight":I
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1085
    .local v11, "shortSide":I
    if-le v10, v9, :cond_38

    const/4 v14, 0x1

    goto :goto_39

    :cond_38
    const/4 v14, 0x0

    .line 1088
    .local v14, "isVertical":Z
    :goto_39
    if-eqz p7, :cond_4a

    .line 1089
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    .line 1090
    .local v15, "smallFreeformWidth":F
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    move v13, v15

    move v15, v12

    move/from16 v12, p6

    .local v12, "smallFreeformHeight":F
    goto :goto_5c

    .line 1092
    .end local v12    # "smallFreeformHeight":F
    .end local v15    # "smallFreeformWidth":F
    :cond_4a
    move/from16 v12, p6

    invoke-static {v0, v5, v11, v12}, Landroid/util/MiuiMultiWindowUtils;->getSmallFreeformRect(Landroid/content/Context;ZIZ)Landroid/graphics/RectF;

    move-result-object v15

    .line 1093
    .local v15, "smallFreeformRect":Landroid/graphics/RectF;
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v16

    .line 1094
    .local v16, "smallFreeformWidth":F
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v17

    move/from16 v13, v16

    move/from16 v15, v17

    .line 1098
    .end local v16    # "smallFreeformWidth":F
    .local v13, "smallFreeformWidth":F
    .local v15, "smallFreeformHeight":F
    :goto_5c
    if-eqz v14, :cond_dc

    .line 1099
    if-eqz v5, :cond_9e

    .line 1100
    move-object/from16 v17, v6

    .end local v6    # "wm":Landroid/view/WindowManager;
    .local v17, "wm":Landroid/view/WindowManager;
    sget v6, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    move/from16 v18, v11

    .end local v11    # "shortSide":I
    .local v18, "shortSide":I
    sget v11, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    int-to-float v12, v6

    add-float/2addr v12, v13

    float-to-int v12, v12

    move/from16 v19, v14

    .end local v14    # "isVertical":Z
    .local v19, "isVertical":Z
    int-to-float v14, v11

    add-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v1, v6, v11, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1106
    float-to-int v12, v15

    sub-int v12, v10, v12

    sub-int/2addr v12, v11

    int-to-float v14, v6

    add-float/2addr v14, v13

    float-to-int v14, v14

    sub-int v0, v10, v11

    invoke-virtual {v3, v6, v12, v14, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1112
    float-to-int v0, v13

    sub-int v0, v9, v0

    sub-int/2addr v0, v6

    sub-int v12, v9, v6

    int-to-float v14, v11

    add-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v2, v0, v11, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1118
    float-to-int v0, v13

    sub-int v0, v9, v0

    sub-int/2addr v0, v6

    float-to-int v12, v15

    sub-int v12, v10, v12

    sub-int/2addr v12, v11

    sub-int v6, v9, v6

    sub-int v11, v10, v11

    invoke-virtual {v4, v0, v12, v6, v11}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v11, p0

    goto/16 :goto_1de

    .line 1125
    .end local v17    # "wm":Landroid/view/WindowManager;
    .end local v18    # "shortSide":I
    .end local v19    # "isVertical":Z
    .restart local v6    # "wm":Landroid/view/WindowManager;
    .restart local v11    # "shortSide":I
    .restart local v14    # "isVertical":Z
    :cond_9e
    move-object/from16 v17, v6

    move/from16 v18, v11

    move/from16 v19, v14

    .end local v6    # "wm":Landroid/view/WindowManager;
    .end local v11    # "shortSide":I
    .end local v14    # "isVertical":Z
    .restart local v17    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "shortSide":I
    .restart local v19    # "isVertical":Z
    sget v0, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    sget v6, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_VERTICAL_MARGIN:I

    int-to-float v11, v0

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-float v12, v6

    add-float/2addr v12, v15

    float-to-int v12, v12

    invoke-virtual {v1, v0, v6, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1129
    float-to-int v11, v15

    sub-int v11, v10, v11

    sub-int/2addr v11, v6

    int-to-float v12, v0

    add-float/2addr v12, v13

    float-to-int v12, v12

    sub-int v14, v10, v6

    invoke-virtual {v3, v0, v11, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1134
    float-to-int v11, v13

    sub-int v11, v9, v11

    sub-int/2addr v11, v0

    sub-int v12, v9, v0

    int-to-float v14, v6

    add-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v2, v11, v6, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1139
    float-to-int v11, v13

    sub-int v11, v9, v11

    sub-int/2addr v11, v0

    float-to-int v12, v15

    sub-int v12, v10, v12

    sub-int/2addr v12, v6

    sub-int v0, v9, v0

    sub-int v6, v10, v6

    invoke-virtual {v4, v11, v12, v0, v6}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v11, p0

    goto/16 :goto_1de

    .line 1147
    .end local v17    # "wm":Landroid/view/WindowManager;
    .end local v18    # "shortSide":I
    .end local v19    # "isVertical":Z
    .restart local v6    # "wm":Landroid/view/WindowManager;
    .restart local v11    # "shortSide":I
    .restart local v14    # "isVertical":Z
    :cond_dc
    move-object/from16 v17, v6

    move/from16 v18, v11

    move/from16 v19, v14

    .end local v6    # "wm":Landroid/view/WindowManager;
    .end local v11    # "shortSide":I
    .end local v14    # "isVertical":Z
    .restart local v17    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "shortSide":I
    .restart local v19    # "isVertical":Z
    if-eqz v5, :cond_11b

    .line 1148
    sget v0, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    sget v6, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    int-to-float v11, v0

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-float v12, v6

    add-float/2addr v12, v15

    float-to-int v12, v12

    invoke-virtual {v1, v0, v6, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1154
    float-to-int v11, v15

    sub-int v11, v10, v11

    sub-int/2addr v11, v6

    sget v12, Landroid/util/MiuiMultiWindowUtils;->LANDCAPE_SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    int-to-float v12, v12

    add-float/2addr v12, v13

    float-to-int v12, v12

    sub-int v14, v10, v6

    invoke-virtual {v3, v0, v11, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1160
    float-to-int v11, v13

    sub-int v11, v9, v11

    sub-int/2addr v11, v0

    sub-int v12, v9, v0

    int-to-float v14, v6

    add-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v2, v11, v6, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1166
    float-to-int v11, v13

    sub-int v11, v9, v11

    sub-int/2addr v11, v0

    float-to-int v12, v15

    sub-int v12, v10, v12

    sub-int/2addr v12, v6

    sub-int v0, v9, v0

    sub-int v6, v10, v6

    invoke-virtual {v4, v11, v12, v0, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_151

    .line 1173
    :cond_11b
    sget v0, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_HORIZONTAL_MARGIN:I

    sget v6, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_LANDCAPE_VERTICAL_MARGIN:I

    int-to-float v11, v0

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-float v12, v6

    add-float/2addr v12, v15

    float-to-int v12, v12

    invoke-virtual {v1, v0, v6, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1177
    float-to-int v11, v15

    sub-int v11, v10, v11

    sub-int/2addr v11, v6

    sget v12, Landroid/util/MiuiMultiWindowUtils;->SMALL_FREEFORM_PORTRAIT_HORIZONTAL_MARGIN:I

    int-to-float v12, v12

    add-float/2addr v12, v13

    float-to-int v12, v12

    sub-int v14, v10, v6

    invoke-virtual {v3, v0, v11, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1182
    float-to-int v11, v13

    sub-int v11, v9, v11

    sub-int/2addr v11, v0

    sub-int v12, v9, v0

    int-to-float v14, v6

    add-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v2, v11, v6, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1187
    float-to-int v11, v13

    sub-int v11, v9, v11

    sub-int/2addr v11, v0

    float-to-int v12, v15

    sub-int v12, v10, v12

    sub-int/2addr v12, v6

    sub-int v0, v9, v0

    sub-int v6, v10, v6

    invoke-virtual {v4, v11, v12, v0, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1194
    :goto_151
    const/4 v0, 0x3

    if-eqz v8, :cond_17e

    .line 1195
    const/4 v6, 0x1

    if-ne v7, v6, :cond_16a

    .line 1196
    iget v6, v1, Landroid/graphics/Rect;->left:I

    sget v11, Landroid/util/MiuiMultiWindowUtils;->NOTCH_MARGIN:I

    add-int/2addr v6, v11

    iget v12, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v6, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1198
    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v11

    iget v11, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_17e

    .line 1200
    :cond_16a
    if-ne v7, v0, :cond_17e

    .line 1201
    iget v6, v2, Landroid/graphics/Rect;->left:I

    sget v11, Landroid/util/MiuiMultiWindowUtils;->NOTCH_MARGIN:I

    sub-int/2addr v6, v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v6, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1203
    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v11

    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1207
    :cond_17e
    :goto_17e
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isFullScreenGestureNav(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1b5

    .line 1208
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    move-object/from16 v11, p0

    invoke-static {v11, v6}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;I)I

    move-result v6

    .line 1209
    .local v6, "navHeight":I
    const/4 v12, 0x1

    if-ne v7, v12, :cond_1a2

    .line 1210
    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    iget v12, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v0, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1212
    iget v0, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v0, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1b7

    .line 1214
    :cond_1a2
    if-ne v7, v0, :cond_1b7

    .line 1215
    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v12, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1217
    iget v0, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v0, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1b7

    .line 1207
    .end local v6    # "navHeight":I
    :cond_1b5
    move-object/from16 v11, p0

    .line 1221
    :cond_1b7
    :goto_1b7
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {v11, v0}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v6

    const/4 v12, 0x0

    invoke-static {v11, v6, v12}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;IZ)I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1222
    .local v0, "statusBarHeight":I
    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-ge v6, v0, :cond_1d5

    .line 1223
    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v6, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1225
    :cond_1d5
    iget v6, v2, Landroid/graphics/Rect;->top:I

    if-ge v6, v0, :cond_1de

    .line 1226
    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v6, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1229
    .end local v0    # "statusBarHeight":I
    :cond_1de
    :goto_1de
    return-void
.end method

.method public static blacklist calculateScale(Landroid/content/Context;ZZLjava/lang/String;F)F
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertical"    # Z
    .param p2, "isFreeformLandscape"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "normalScale"    # F

    .line 2017
    invoke-static {p1, p2, p0, p3}, Landroid/util/MiuiMultiWindowUtils;->getAspectRatio(ZZLandroid/content/Context;Ljava/lang/String;)F

    move-result v0

    .line 2018
    .local v0, "windowAspectRatio":F
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v1

    .line 2019
    .local v1, "screenType":I
    invoke-static {p1, p2, v1}, Landroid/util/MiuiMultiWindowUtils;->getOriginalRatioBeforeScaling(ZZI)F

    move-result v2

    .line 2020
    .local v2, "originalRatio":F
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2021
    .local v3, "displayWidth":I
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2022
    .local v4, "displayHeight":I
    const/4 v5, 0x3

    if-nez p2, :cond_27

    if-ne v1, v5, :cond_22

    goto :goto_27

    .line 2023
    :cond_22
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_2b

    .line 2022
    :cond_27
    :goto_27
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2023
    :goto_2b
    nop

    .line 2024
    .local v6, "targetSide":I
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 2025
    .local v7, "normalBounds":Landroid/graphics/RectF;
    const/4 v8, 0x0

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 2026
    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 2027
    int-to-float v9, v6

    mul-float/2addr v9, v2

    iput v9, v7, Landroid/graphics/RectF;->right:F

    .line 2028
    iget v9, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v10, v0

    add-float/2addr v9, v10

    iput v9, v7, Landroid/graphics/RectF;->bottom:F

    .line 2029
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 2030
    .local v9, "scaledBounds":Landroid/graphics/RectF;
    iput v8, v9, Landroid/graphics/RectF;->left:F

    .line 2031
    iput v8, v9, Landroid/graphics/RectF;->top:F

    .line 2032
    if-eqz p2, :cond_54

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_58

    :cond_54
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_58
    int-to-float v8, v8

    iput v8, v9, Landroid/graphics/RectF;->right:F

    .line 2033
    if-eqz p2, :cond_62

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_66

    :cond_62
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_66
    int-to-float v8, v8

    iput v8, v9, Landroid/graphics/RectF;->bottom:F

    .line 2034
    move v8, p4

    .line 2035
    .local v8, "possibleScale":F
    if-ne v1, v5, :cond_7a

    .line 2036
    if-nez p2, :cond_87

    .line 2037
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, p4

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float v8, v5, v10

    goto :goto_87

    .line 2040
    :cond_7a
    if-eqz p2, :cond_87

    .line 2041
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v5, p4

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float v8, v5, v10

    .line 2044
    :cond_87
    :goto_87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calculated Scale = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "MiuiMultiWindowUtils"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return v8
.end method

.method public static varargs blacklist callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "target"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4181
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 4183
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4184
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-static {v1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4185
    .local v2, "declaredMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_14

    .line 4186
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4187
    invoke-virtual {v2, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_13} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    move-object v0, v3

    .line 4192
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v2    # "declaredMethod":Ljava/lang/reflect/Method;
    :cond_14
    :goto_14
    goto :goto_1c

    .line 4190
    :catch_15
    move-exception v1

    .line 4191
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 4189
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v1

    goto :goto_14

    .line 4193
    :goto_1c
    return-object v0
.end method

.method public static varargs blacklist callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p2, "method"    # Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4266
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4267
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4268
    invoke-virtual {v1, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    .line 4269
    .end local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    :catch_e
    move-exception v1

    .line 4270
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callStaticObjectMethod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiMultiWindowUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static blacklist checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3692
    const/4 v0, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_39

    .line 3697
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_12} :catch_13

    .line 3700
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_16

    .line 3698
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_13
    move-exception v1

    .line 3699
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    move-object v1, v2

    .line 3701
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_16
    if-nez v1, :cond_19

    .line 3702
    return v0

    .line 3704
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkAppInstalled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "is installed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiMultiWindowUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    const/4 v0, 0x1

    return v0

    .line 3693
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_39
    :goto_39
    return v0
.end method

.method public static blacklist checkAuthority(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1558
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->isThirdPartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 1559
    return v1

    .line 1561
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 1562
    invoke-static {v2}, Landroid/util/MiuiMultiWindowAdapter;->getAuthorisedFreeformList(Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    .line 1561
    :goto_27
    return v1
.end method

.method public static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 3737
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/util/MiuiMultiWindowUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 3741
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3742
    return-object v0

    .line 3744
    :cond_4
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_10

    .line 3745
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 3746
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_4a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_4a

    .line 3747
    nop

    .line 3749
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 3750
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 3751
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2f

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_31

    .line 3752
    :cond_2f
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 3748
    :goto_31
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3753
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3754
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 3755
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 3754
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3756
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3757
    return-object v0

    .line 3759
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_4a
    return-object v0
.end method

.method public static blacklist exitFreeFormWindowIfNeeded()V
    .registers 4

    .line 2743
    const/4 v0, 0x0

    .line 2745
    .local v0, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    .line 2746
    :cond_e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 2747
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 2748
    .local v2, "taskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    iget-object v3, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2e} :catch_30

    .line 2752
    .end local v2    # "taskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    goto :goto_1b

    .line 2755
    :cond_2f
    goto :goto_34

    .line 2753
    :catch_30
    move-exception v1

    .line 2754
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2756
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method public static blacklist findCVWNearestCorner(Landroid/content/Context;FFZLandroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isLandcapeFreeform"    # Z
    .param p4, "cvwMiniFreeformBounds"    # Landroid/graphics/Rect;
    .param p5, "isNormalFreeForm"    # Z

    .line 3965
    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/util/MiuiMultiWindowUtils;->findNearestCorner(Landroid/content/Context;FFIZZ)Landroid/graphics/Rect;

    move-result-object v0

    .line 3966
    .local v0, "cornerPoint":Landroid/graphics/Rect;
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3967
    .local v1, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 3968
    .local v2, "screenWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 3970
    .local v3, "screenHeight":I
    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_50

    .line 3971
    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3a

    .line 3972
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 3973
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 3974
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    .line 3972
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_86

    .line 3976
    :cond_3a
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 3977
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 3976
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_86

    .line 3980
    :cond_50
    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, v2, v4

    .line 3981
    .local v4, "rightMargin":I
    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_71

    .line 3982
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v2, v5

    sub-int/2addr v5, v4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 3983
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    .line 3982
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_86

    .line 3985
    :cond_71
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v2, v5

    sub-int/2addr v5, v4

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 3986
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 3985
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3989
    .end local v4    # "rightMargin":I
    :goto_86
    return-object v0
.end method

.method public static blacklist findNearestCorner(Landroid/content/Context;FFIFFZZ)Landroid/graphics/Rect;
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "position"    # I
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "isLandcapeFreeform"    # Z
    .param p7, "isNormalFreeForm"    # Z

    .line 912
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/util/MiuiMultiWindowUtils;->findNearestCorner(Landroid/content/Context;FFIFFZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist findNearestCorner(Landroid/content/Context;FFIFFZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "position"    # I
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "isLandcapeFreeform"    # Z
    .param p7, "isNormalFreeForm"    # Z
    .param p8, "smallWindowBounds"    # Landroid/graphics/Rect;

    .line 918
    move/from16 v0, p3

    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 919
    .local v1, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 920
    .local v2, "screenWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 922
    .local v3, "screenHeight":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 923
    .local v4, "leftTopWindowBounds":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v5

    .line 924
    .local v13, "rightTopWindowBounds":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v14, v5

    .line 925
    .local v14, "leftBottomWindowBounds":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v5

    .line 926
    .local v15, "rightBottomWindowBounds":Landroid/graphics/Rect;
    move-object/from16 v5, p0

    move-object v6, v4

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-static/range {v5 .. v12}, Landroid/util/MiuiMultiWindowUtils;->calculateCornerBound(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/graphics/Rect;)V

    .line 928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leftTopWindowBounds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rightTopWindowBounds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " leftBottomWindowBounds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rightBottomWindowBounds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiuiMultiWindowUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, -0x1

    if-eq v0, v9, :cond_8f

    .line 933
    if-ne v0, v7, :cond_80

    .line 934
    sput v7, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 935
    return-object v4

    .line 936
    :cond_80
    if-ne v0, v8, :cond_85

    .line 937
    sput v8, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 938
    return-object v13

    .line 939
    :cond_85
    if-ne v0, v6, :cond_8a

    .line 940
    sput v6, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 941
    return-object v15

    .line 942
    :cond_8a
    if-ne v0, v5, :cond_8f

    .line 943
    sput v5, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 944
    return-object v14

    .line 949
    :cond_8f
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x44fa0000    # 2000.0f

    cmpl-float v9, v9, v10

    const/high16 v11, 0x457a0000    # 4000.0f

    if-gtz v9, :cond_a3

    .line 950
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_127

    .line 951
    :cond_a3
    cmpl-float v9, p4, v10

    if-lez v9, :cond_ae

    cmpl-float v9, p5, v11

    if-lez v9, :cond_ae

    .line 953
    sput v6, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 954
    return-object v15

    .line 955
    :cond_ae
    const/high16 v9, -0x3b060000    # -2000.0f

    cmpg-float v12, p4, v9

    const/high16 v16, -0x3a860000    # -4000.0f

    if-gez v12, :cond_bd

    cmpg-float v12, p5, v16

    if-gez v12, :cond_bd

    .line 957
    sput v7, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 958
    return-object v4

    .line 959
    :cond_bd
    cmpl-float v12, p4, v10

    if-lez v12, :cond_c8

    cmpg-float v12, p5, v16

    if-gez v12, :cond_c8

    .line 961
    sput v8, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 962
    return-object v13

    .line 963
    :cond_c8
    cmpg-float v12, p4, v9

    if-gez v12, :cond_d3

    cmpl-float v12, p5, v11

    if-lez v12, :cond_d3

    .line 965
    sput v5, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 966
    return-object v14

    .line 968
    :cond_d3
    cmpl-float v10, p4, v10

    if-lez v10, :cond_e8

    .line 969
    sget v9, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    if-eq v9, v7, :cond_e5

    if-ne v9, v8, :cond_de

    goto :goto_e5

    .line 973
    :cond_de
    if-eq v9, v5, :cond_e2

    if-ne v9, v6, :cond_127

    .line 975
    :cond_e2
    sput v6, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 976
    return-object v15

    .line 971
    :cond_e5
    :goto_e5
    sput v8, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 972
    return-object v13

    .line 978
    :cond_e8
    cmpg-float v9, p4, v9

    if-gez v9, :cond_fd

    .line 979
    sget v9, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    if-eq v9, v7, :cond_fa

    if-ne v9, v8, :cond_f3

    goto :goto_fa

    .line 983
    :cond_f3
    if-eq v9, v5, :cond_f7

    if-ne v9, v6, :cond_127

    .line 985
    :cond_f7
    sput v5, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 986
    return-object v14

    .line 981
    :cond_fa
    :goto_fa
    sput v7, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 982
    return-object v4

    .line 988
    :cond_fd
    cmpl-float v9, p5, v11

    if-lez v9, :cond_112

    .line 989
    sget v9, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    if-eq v9, v7, :cond_10f

    if-ne v9, v5, :cond_108

    goto :goto_10f

    .line 993
    :cond_108
    if-eq v9, v8, :cond_10c

    if-ne v9, v6, :cond_127

    .line 995
    :cond_10c
    sput v6, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 996
    return-object v15

    .line 991
    :cond_10f
    :goto_10f
    sput v5, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 992
    return-object v14

    .line 998
    :cond_112
    cmpg-float v9, p5, v16

    if-gez v9, :cond_127

    .line 999
    sget v9, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    if-eq v9, v7, :cond_124

    if-ne v9, v5, :cond_11d

    goto :goto_124

    .line 1003
    :cond_11d
    if-eq v9, v8, :cond_121

    if-ne v9, v6, :cond_127

    .line 1005
    :cond_121
    sput v8, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 1006
    return-object v13

    .line 1001
    :cond_124
    :goto_124
    sput v7, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 1002
    return-object v4

    .line 1012
    :cond_127
    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_13b

    .line 1013
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_138

    .line 1014
    sput v7, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 1015
    return-object v4

    .line 1017
    :cond_138
    sput v5, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 1018
    return-object v14

    .line 1021
    :cond_13b
    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_145

    .line 1022
    sput v8, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 1023
    return-object v13

    .line 1025
    :cond_145
    sput v6, Landroid/util/MiuiMultiWindowUtils;->mCurrentSmallWindowCorner:I

    .line 1026
    return-object v15
.end method

.method public static blacklist findNearestCorner(Landroid/content/Context;FFIZ)Landroid/graphics/Rect;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "position"    # I
    .param p4, "isLandcapeFreeform"    # Z

    .line 896
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/util/MiuiMultiWindowUtils;->findNearestCorner(Landroid/content/Context;FFIZZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist findNearestCorner(Landroid/content/Context;FFIZZ)Landroid/graphics/Rect;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "position"    # I
    .param p4, "isLandcapeFreeform"    # Z
    .param p5, "isNormalFreeForm"    # Z

    .line 901
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v8}, Landroid/util/MiuiMultiWindowUtils;->findNearestCorner(Landroid/content/Context;FFIFFZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist findNearestCorner(Landroid/content/Context;FFIZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "position"    # I
    .param p4, "isLandcapeFreeform"    # Z
    .param p5, "isNormalFreeForm"    # Z
    .param p6, "smallWindowBounds"    # Landroid/graphics/Rect;

    .line 906
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Landroid/util/MiuiMultiWindowUtils;->findNearestCorner(Landroid/content/Context;FFIFFZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist formatSizeWith1024(J)I
    .registers 10
    .param p0, "number"    # J

    .line 3331
    const/16 v0, 0x400

    .line 3333
    .local v0, "UNIT":I
    long-to-float v1, p0

    .line 3335
    .local v1, "result":F
    float-to-double v2, v1

    const-wide v4, 0x408ccccccccccccdL    # 921.6

    cmpl-double v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_26

    .line 3337
    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    .line 3342
    float-to-double v6, v1

    cmpl-double v6, v6, v4

    if-lez v6, :cond_25

    .line 3344
    div-float/2addr v1, v2

    .line 3349
    float-to-double v6, v1

    cmpl-double v4, v6, v4

    if-lez v4, :cond_24

    .line 3351
    div-float/2addr v1, v2

    .line 3356
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    .line 3353
    :cond_24
    return v3

    .line 3346
    :cond_25
    return v3

    .line 3339
    :cond_26
    return v3
.end method

.method private static blacklist getActivityInfoResizeMode(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I
    .registers 8
    .param p0, "intentCategory"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 3669
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3670
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3671
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3672
    const v1, 0xc0040

    .line 3675
    .local v1, "flag":I
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3676
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 3675
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 3677
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_3b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3b

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_30

    goto :goto_3b

    .line 3680
    :cond_30
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    return v3

    .line 3678
    :cond_3b
    :goto_3b
    return v3
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;

    .line 1398
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1, v1}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/ActivityOptions;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "launchBoundsLeft"    # I
    .param p3, "launchBoundsTop"    # I

    .line 1403
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z

    .line 1407
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, v0}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "launchBoundsLeft"    # I
    .param p4, "launchBoundsTop"    # I

    .line 1432
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_dkt_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    move v8, v2

    .line 1434
    .local v8, "desktopModeActive":Z
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v3 .. v8}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZIIZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZIIZ)Landroid/app/ActivityOptions;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "launchBoundsLeft"    # I
    .param p4, "launchBoundsTop"    # I
    .param p5, "isDesktopModeActive"    # Z

    .line 1441
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZIIZI)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZIIZI)Landroid/app/ActivityOptions;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "launchBoundsLeft"    # I
    .param p4, "launchBoundsTop"    # I
    .param p5, "isDesktopModeActive"    # Z
    .param p6, "newTaskId"    # I

    .line 1449
    invoke-static {p0, p1}, Landroid/util/MiuiMultiWindowUtils;->isNormalFreeForm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 1450
    .local v8, "isNormalFreeForm":Z
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, v8

    invoke-static/range {v0 .. v7}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZIIZIZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZIIZIZ)Landroid/app/ActivityOptions;
    .registers 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "launchBoundsLeft"    # I
    .param p4, "launchBoundsTop"    # I
    .param p5, "isDesktopModeActive"    # Z
    .param p6, "newTaskId"    # I
    .param p7, "isNormalFreeForm"    # Z

    .line 1458
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p7

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isUserAMonkey()Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_282

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->supportFreeform()Z

    move-result v0

    if-eqz v0, :cond_282

    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->checkAuthority(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    move/from16 v3, p3

    move/from16 v4, p4

    goto/16 :goto_286

    .line 1461
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 1462
    .local v14, "outMetrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x0

    .line 1464
    .local v1, "gameKey":I
    const/4 v15, 0x0

    :try_start_2d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "quick_reply"

    const/4 v3, -0x2

    invoke-static {v0, v2, v15, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_3b

    move v1, v0

    .line 1468
    move v7, v1

    goto :goto_40

    .line 1466
    :catch_3b
    move-exception v0

    .line 1467
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v1

    .line 1469
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gameKey":I
    .local v7, "gameKey":I
    :goto_40
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_project_private_on"

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1471
    .local v6, "isScreenProjectionPrivace":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_project_in_screening"

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1474
    .local v5, "screenProjectionState":I
    invoke-static {v8, v13, v15}, Landroid/util/MiuiMultiWindowUtils;->getFreeformBlackList(Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v4

    .line 1476
    .local v4, "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    if-eq v7, v3, :cond_5f

    if-ne v6, v3, :cond_65

    if-ne v5, v3, :cond_65

    .line 1478
    :cond_5f
    invoke-static/range {p0 .. p1}, Landroid/util/MiuiMultiWindowUtils;->supportFreeFromWindow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    :cond_65
    if-eqz v10, :cond_a8

    .line 1479
    :cond_67
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isForceResizeable()Z

    move-result v0

    if-nez v0, :cond_aa

    invoke-static/range {p0 .. p1}, Landroid/util/MiuiMultiWindowUtils;->isPkgActivityResizeable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 1480
    :cond_79
    const-string v0, "com.miui.player"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 1481
    invoke-static/range {p1 .. p1}, Landroid/util/MiuiMultiWindowAdapter;->inFreeformWhiteListInSystem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 1482
    invoke-static {v9, v8}, Landroid/util/MiuiMultiWindowUtils;->isLandscapeGameApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_93

    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1483
    :cond_93
    invoke-static {v15}, Landroid/util/MiuiMultiWindowAdapter;->getAbnormalFreeformBlackList(Z)Ljava/util/List;

    move-result-object v0

    .line 1484
    invoke-static {v15}, Landroid/util/MiuiMultiWindowAdapter;->getAbnormalFreeformWhiteList(Z)Ljava/util/List;

    move-result-object v1

    .line 1485
    invoke-static {v15}, Landroid/util/MiuiMultiWindowAdapter;->getEnableAbnormalFreeFormDebug(Z)I

    move-result v2

    .line 1483
    invoke-static {v9, v8, v0, v1, v2}, Landroid/util/MiuiMultiWindowUtils;->isEnableAbnormalFreeform(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_aa

    :cond_a5
    if-eqz v11, :cond_a8

    goto :goto_aa

    :cond_a8
    move v0, v15

    goto :goto_ab

    :cond_aa
    :goto_aa
    move v0, v3

    :goto_ab
    move v1, v0

    .line 1488
    .local v1, "isLaunchMultiWindow":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLaunchMultiWindow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " gameKey:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "isScreenProjectionPrivace:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "screenProjectionState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " noCheck:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isNormalFreeForm:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isDesktopModeActive:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiMultiWindowUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    if-nez v1, :cond_11f

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " unsupported freeform mode"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-object v13

    .line 1497
    :cond_11f
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    new-array v3, v15, [Ljava/lang/Object;

    const-string v13, "isInSplitScreenWindowingMode"

    invoke-static {v0, v13, v3}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1500
    .local v13, "isInSplitScreenWindowingMode":Ljava/lang/Object;
    if-eqz v13, :cond_14b

    :try_start_12d
    move-object v0, v13

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 1501
    const-string v0, "current focusStack is DOCKED and will cancel freeform"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v0
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_13f} :catch_144

    if-nez v0, :cond_14b

    .line 1503
    const/4 v0, 0x0

    move v1, v0

    .end local v1    # "isLaunchMultiWindow":Z
    .local v0, "isLaunchMultiWindow":Z
    goto :goto_14b

    .line 1506
    .end local v0    # "isLaunchMultiWindow":Z
    .restart local v1    # "isLaunchMultiWindow":Z
    :catch_144
    move-exception v0

    .line 1507
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move/from16 v17, v1

    goto :goto_14d

    .line 1508
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14b
    :goto_14b
    move/from16 v17, v1

    .line 1510
    .end local v1    # "isLaunchMultiWindow":Z
    .local v17, "isLaunchMultiWindow":Z
    :goto_14d
    const/4 v0, 0x0

    .line 1511
    .local v0, "options":Landroid/app/ActivityOptions;
    if-eqz v17, :cond_271

    .line 1512
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 1514
    .end local v0    # "options":Landroid/app/ActivityOptions;
    .local v3, "options":Landroid/app/ActivityOptions;
    const/4 v0, 0x0

    .line 1515
    .local v0, "isFreeformLandscape":Z
    if-eqz v9, :cond_186

    .line 1516
    new-instance v1, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v1, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v1, "intent":Landroid/content/Intent;
    const-string v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 1521
    .local v15, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v15, :cond_17b

    .line 1522
    iget-object v2, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v2}, Landroid/util/MiuiMultiWindowUtils;->isOrientationLandscape(I)Z

    move-result v0

    .line 1524
    :cond_17b
    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->getForceLandscapeApplicationInSystem()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    move v15, v0

    goto :goto_189

    .line 1515
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v15    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_186
    move-object/from16 v18, v2

    move v15, v0

    .line 1526
    .end local v0    # "isFreeformLandscape":Z
    .local v15, "isFreeformLandscape":Z
    :goto_189
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 1527
    move-object/from16 v1, p0

    move-object/from16 v10, v18

    move/from16 v2, p3

    move-object/from16 v18, v13

    move-object/from16 v16, v14

    const/4 v14, 0x1

    move-object v13, v3

    .end local v3    # "options":Landroid/app/ActivityOptions;
    .end local v14    # "outMetrics":Landroid/util/DisplayMetrics;
    .local v13, "options":Landroid/app/ActivityOptions;
    .local v16, "outMetrics":Landroid/util/DisplayMetrics;
    .local v18, "isInSplitScreenWindowingMode":Ljava/lang/Object;
    move/from16 v3, p4

    move-object/from16 v19, v4

    .end local v4    # "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v4, v15

    move/from16 v20, v5

    .end local v5    # "screenProjectionState":I
    .local v20, "screenProjectionState":I
    move-object/from16 v5, p1

    move/from16 v21, v6

    .end local v6    # "isScreenProjectionPrivace":I
    .local v21, "isScreenProjectionPrivace":I
    move/from16 v6, p7

    move/from16 v22, v7

    .end local v7    # "gameKey":I
    .local v22, "gameKey":I
    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroid/util/MiuiMultiWindowUtils;->getCustomFreeformRect(Landroid/content/Context;IIZLjava/lang/String;ZI)Landroid/graphics/Rect;

    move-result-object v1

    .line 1529
    .local v1, "launchBounds":Landroid/graphics/Rect;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiMulti::getActivityOptions::launchBounds= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-virtual {v13, v1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 1532
    new-array v0, v14, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "setMiuiConfigFlag"

    invoke-static {v13, v2, v0}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    :try_start_1d6
    const-string v0, "getActivityOptionsInjector"

    const/4 v2, 0x0

    invoke-static {v13, v0, v2}, Landroid/util/MiuiMultiWindowUtils;->isMethodExist(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1536
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_241

    .line 1537
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v13, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "setFreeformScale"

    new-array v4, v14, [Ljava/lang/Object;

    .line 1538
    invoke-static {v8, v15, v12, v11, v9}, Landroid/util/MiuiMultiWindowUtils;->getOriFreeformScale(Landroid/content/Context;ZZZLjava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1537
    invoke-static {v2, v3, v4}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v13, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "setNormalFreeForm"

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_23c

    .line 1541
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v8, v2, v11}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormAccessibleArea(Landroid/content/Context;ZZ)Landroid/graphics/Rect;

    move-result-object v2
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_21a} :catch_246

    move/from16 v3, p3

    move/from16 v4, p4

    :try_start_21e
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_24b

    .line 1542
    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v13, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "setUseCustomLaunchBounds"

    new-array v6, v14, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v14, 0x0

    aput-object v7, v6, v14

    invoke-static {v2, v5, v6}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_239} :catch_23a

    goto :goto_24b

    .line 1545
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_23a
    move-exception v0

    goto :goto_24b

    .line 1540
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :cond_23c
    move/from16 v3, p3

    move/from16 v4, p4

    goto :goto_24b

    .line 1536
    :cond_241
    move/from16 v3, p3

    move/from16 v4, p4

    goto :goto_24b

    .line 1545
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_246
    move-exception v0

    move/from16 v3, p3

    move/from16 v4, p4

    :cond_24b
    :goto_24b
    nop

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiMulti options: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Landroid/util/MiuiMultiWindowUtils$1;

    invoke-direct {v2, v8, v9}, Landroid/util/MiuiMultiWindowUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1552
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move-object v0, v13

    goto :goto_281

    .line 1511
    .end local v1    # "launchBounds":Landroid/graphics/Rect;
    .end local v15    # "isFreeformLandscape":Z
    .end local v16    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v18    # "isInSplitScreenWindowingMode":Ljava/lang/Object;
    .end local v19    # "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "screenProjectionState":I
    .end local v21    # "isScreenProjectionPrivace":I
    .end local v22    # "gameKey":I
    .local v0, "options":Landroid/app/ActivityOptions;
    .restart local v4    # "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "screenProjectionState":I
    .restart local v6    # "isScreenProjectionPrivace":I
    .restart local v7    # "gameKey":I
    .local v13, "isInSplitScreenWindowingMode":Ljava/lang/Object;
    .restart local v14    # "outMetrics":Landroid/util/DisplayMetrics;
    :cond_271
    move/from16 v3, p3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v18, v13

    move-object/from16 v16, v14

    move/from16 v4, p4

    .line 1554
    .end local v4    # "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "screenProjectionState":I
    .end local v6    # "isScreenProjectionPrivace":I
    .end local v7    # "gameKey":I
    .end local v13    # "isInSplitScreenWindowingMode":Ljava/lang/Object;
    .end local v14    # "outMetrics":Landroid/util/DisplayMetrics;
    .restart local v16    # "outMetrics":Landroid/util/DisplayMetrics;
    .restart local v18    # "isInSplitScreenWindowingMode":Ljava/lang/Object;
    .restart local v19    # "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "screenProjectionState":I
    .restart local v21    # "isScreenProjectionPrivace":I
    .restart local v22    # "gameKey":I
    :goto_281
    return-object v0

    .line 1458
    .end local v0    # "options":Landroid/app/ActivityOptions;
    .end local v16    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v17    # "isLaunchMultiWindow":Z
    .end local v18    # "isInSplitScreenWindowingMode":Ljava/lang/Object;
    .end local v19    # "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "screenProjectionState":I
    .end local v21    # "isScreenProjectionPrivace":I
    .end local v22    # "gameKey":I
    :cond_282
    move/from16 v3, p3

    move/from16 v4, p4

    .line 1459
    :goto_286
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "isMiniFreeformMode"    # Z

    .line 1412
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, v0}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZ)Landroid/app/ActivityOptions;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isDesktopModeActive"    # Z

    .line 1418
    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZIIZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZIZ)Landroid/app/ActivityOptions;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isDesktopModeActive"    # Z
    .param p5, "newTaskId"    # I
    .param p6, "isNormalFreeForm"    # Z

    .line 1425
    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZIIZIZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getAspectRatio(ZZLandroid/content/Context;Ljava/lang/String;)F
    .registers 10
    .param p0, "vertical"    # Z
    .param p1, "landscape"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1959
    invoke-static {p3}, Landroid/util/MiuiMultiWindowUtils;->getRequestedAspectRatio(Ljava/lang/String;)F

    move-result v0

    .line 1960
    .local v0, "aspectRatio":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_a

    .line 1961
    return v0

    .line 1963
    :cond_a
    invoke-static {p2}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v1

    .line 1964
    .local v1, "screenType":I
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormArg(ZZII)F

    move-result v0

    .line 1965
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_25

    invoke-static {p2}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {p3, p2}, Landroid/util/MiuiMultiWindowUtils;->isGameApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1966
    :cond_25
    invoke-static {p2}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1967
    .local v2, "displayWidth":I
    invoke-static {p2}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1968
    .local v3, "displayHeight":I
    if-eqz p1, :cond_44

    .line 1969
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 1970
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    goto :goto_50

    .line 1972
    :cond_44
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 1973
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 1976
    .end local v2    # "displayWidth":I
    .end local v3    # "displayHeight":I
    :cond_50
    :goto_50
    return v0
.end method

.method public static blacklist getCustomFreeformRect(Landroid/content/Context;IIZLjava/lang/String;)Landroid/graphics/Rect;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "isFreeformLandscape"    # Z
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2466
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/util/MiuiMultiWindowUtils;->getCustomFreeformRect(Landroid/content/Context;IIZLjava/lang/String;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCustomFreeformRect(Landroid/content/Context;IIZLjava/lang/String;Z)Landroid/graphics/Rect;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "isFreeformLandscape"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isNormalFreeForm"    # Z

    .line 2471
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiMultiWindowUtils;->getCustomFreeformRect(Landroid/content/Context;IIZLjava/lang/String;ZI)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCustomFreeformRect(Landroid/content/Context;IIZLjava/lang/String;ZI)Landroid/graphics/Rect;
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "isFreeformLandscape"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isNormalFreeForm"    # Z
    .param p6, "newTaskId"    # I

    .line 2476
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_dkt_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    move v9, v2

    .line 2478
    .local v9, "desktopModeActive":Z
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Landroid/util/MiuiMultiWindowUtils;->getCustomFreeformRect(Landroid/content/Context;IIZLjava/lang/String;ZZI)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCustomFreeformRect(Landroid/content/Context;IIZLjava/lang/String;ZZI)Landroid/graphics/Rect;
    .registers 33
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "isFreeformLandscape"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isNormalFreeForm"    # Z
    .param p6, "desktopActive"    # Z
    .param p7, "newTaskId"    # I

    .line 2485
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    if-nez v8, :cond_10

    const/4 v0, 0x0

    return-object v0

    .line 2486
    :cond_10
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v14

    .line 2487
    .local v14, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 2488
    .local v15, "displayWidth":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 2489
    .local v7, "displayHeight":I
    const/16 v16, 0x1

    const/4 v6, 0x0

    if-le v15, v7, :cond_23

    move v0, v6

    goto :goto_25

    :cond_23
    move/from16 v0, v16

    :goto_25
    move v5, v0

    .line 2490
    .local v5, "vertical":Z
    invoke-static {v8, v6, v13}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormAccessibleArea(Landroid/content/Context;ZZ)Landroid/graphics/Rect;

    move-result-object v4

    .line 2491
    .local v4, "accessibleArea":Landroid/graphics/Rect;
    move/from16 v3, p3

    invoke-static {v8, v5, v3, v11, v12}, Landroid/util/MiuiMultiWindowUtils;->getPossibleBounds(Landroid/content/Context;ZZLjava/lang/String;Z)Landroid/graphics/RectF;

    move-result-object v2

    .line 2492
    .local v2, "possibleBounds":Landroid/graphics/RectF;
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v17

    .line 2493
    .local v17, "screenType":I
    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 2494
    .local v18, "shortSide":I
    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2495
    .local v19, "longSide":I
    move-object/from16 v0, p0

    move v1, v5

    move-object v8, v2

    .end local v2    # "possibleBounds":Landroid/graphics/RectF;
    .local v8, "possibleBounds":Landroid/graphics/RectF;
    move/from16 v2, p3

    move/from16 v3, v17

    move-object/from16 v20, v4

    .end local v4    # "accessibleArea":Landroid/graphics/Rect;
    .local v20, "accessibleArea":Landroid/graphics/Rect;
    move/from16 v4, p5

    move/from16 v21, v5

    .end local v5    # "vertical":Z
    .local v21, "vertical":Z
    move/from16 v5, p6

    move/from16 v22, v6

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormScale(Landroid/content/Context;ZZIZZLjava/lang/String;)F

    move-result v6

    .line 2497
    .local v6, "scale":F
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    .line 2498
    .local v5, "customLaunchBounds":Landroid/graphics/Rect;
    if-ltz v9, :cond_61

    if-gt v9, v15, :cond_61

    move/from16 v0, v16

    goto :goto_63

    :cond_61
    move/from16 v0, v22

    :goto_63
    move/from16 v23, v0

    .line 2499
    .local v23, "hasCustomLeft":Z
    if-ltz v10, :cond_6a

    if-gt v10, v7, :cond_6a

    goto :goto_6c

    :cond_6a
    move/from16 v16, v22

    .line 2500
    .local v16, "hasCustomTop":Z
    :goto_6c
    if-eqz v23, :cond_7b

    .line 2501
    int-to-float v0, v9

    iget v1, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    move v13, v6

    move/from16 v24, v15

    move-object v15, v5

    goto :goto_98

    .line 2502
    :cond_7b
    nop

    .line 2503
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v22, v0, v6

    .line 2502
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p3

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v24, v15

    move-object v15, v5

    .end local v5    # "customLaunchBounds":Landroid/graphics/Rect;
    .local v15, "customLaunchBounds":Landroid/graphics/Rect;
    .local v24, "displayWidth":I
    move/from16 v5, v19

    move v13, v6

    .end local v6    # "scale":F
    .local v13, "scale":F
    move/from16 v6, v22

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiMultiWindowUtils;->getLeftMargin(Landroid/content/Context;ZZIIIF)I

    move-result v0

    :goto_98
    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 2504
    if-eqz v16, :cond_a7

    .line 2505
    int-to-float v0, v10

    iget v1, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    move/from16 v22, v7

    goto :goto_c2

    .line 2506
    :cond_a7
    nop

    .line 2507
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v6, v0, v13

    .line 2506
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p3

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v22, v7

    .end local v7    # "displayHeight":I
    .local v22, "displayHeight":I
    move-object/from16 v7, v20

    invoke-static/range {v0 .. v7}, Landroid/util/MiuiMultiWindowUtils;->getTopMargin(Landroid/content/Context;ZZIIIFLandroid/graphics/Rect;)I

    move-result v0

    :goto_c2
    iput v0, v15, Landroid/graphics/Rect;->top:I

    .line 2508
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v15, Landroid/graphics/Rect;->right:I

    .line 2509
    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    .line 2510
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2511
    .local v0, "checkedBounds":Landroid/graphics/Rect;
    move-object/from16 v1, v20

    .end local v20    # "accessibleArea":Landroid/graphics/Rect;
    .local v1, "accessibleArea":Landroid/graphics/Rect;
    invoke-static {v15, v0, v13, v1}, Landroid/util/MiuiMultiWindowUtils;->reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F

    move-result v2

    .line 2512
    .end local v13    # "scale":F
    .local v2, "scale":F
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2513
    invoke-virtual {v14, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_120

    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 2514
    nop

    .line 2515
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 2514
    move/from16 v4, p7

    invoke-static {v3, v11, v4}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackToAvoid(ILjava/lang/String;I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v3

    .line 2516
    .local v3, "existingStackInfo":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    if-eqz v3, :cond_122

    .line 2517
    iget-object v5, v3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v6, v3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    invoke-static {v5, v6}, Landroid/util/MiuiMultiWindowUtils;->getVisualBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v5

    .line 2518
    .local v5, "existingVisualBounds":Landroid/graphics/Rect;
    invoke-static {v15, v2}, Landroid/util/MiuiMultiWindowUtils;->getVisualBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v6

    .line 2519
    .local v6, "customVisualBounds":Landroid/graphics/Rect;
    invoke-static {v6, v5, v1}, Landroid/util/MiuiMultiWindowUtils;->avoidAsPossible(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2520
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v13, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15, v7, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_122

    .line 2513
    .end local v3    # "existingStackInfo":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .end local v5    # "existingVisualBounds":Landroid/graphics/Rect;
    .end local v6    # "customVisualBounds":Landroid/graphics/Rect;
    :cond_120
    move/from16 v4, p7

    .line 2523
    :cond_122
    :goto_122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " packageName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " isNormalFreeForm:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " desktopActive:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v5, p6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " custom launchBounds:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " boundWidth:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2527
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " boundHeight:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2528
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " freeform size:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2529
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2523
    const-string v6, "MiuiMultiWindowUtils"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    return-object v15
.end method

.method public static blacklist getCvwResizeRegion(ILandroid/graphics/Rect;)Landroid/util/MiuiMultiWindowUtils$RoundedRectF;
    .registers 9
    .param p0, "resizeRegionType"    # I
    .param p1, "freeFormVisualRect"    # Landroid/graphics/Rect;

    .line 3784
    new-instance v0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;

    invoke-direct {v0}, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;-><init>()V

    .line 3785
    .local v0, "resizeRegion":Landroid/util/MiuiMultiWindowUtils$RoundedRectF;
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1d

    .line 3786
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x21

    int-to-float v2, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x21

    int-to-float v3, v1

    const/high16 v4, 0x43040000    # 132.0f

    const/high16 v5, 0x43040000    # 132.0f

    const/high16 v6, 0x42480000    # 50.0f

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->set(FFFFF)V

    goto :goto_34

    .line 3791
    :cond_1d
    const/4 v1, 0x5

    if-ne p0, v1, :cond_34

    .line 3792
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x21

    int-to-float v2, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x21

    int-to-float v3, v1

    const/high16 v4, 0x43040000    # 132.0f

    const/high16 v5, 0x43040000    # 132.0f

    const/high16 v6, 0x42480000    # 50.0f

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->set(FFFFF)V

    .line 3798
    :cond_34
    :goto_34
    return-object v0
.end method

.method public static blacklist getCvwResizeRegions(Landroid/util/MiuiMultiWindowUtils$RoundedRectF;Landroid/util/MiuiMultiWindowUtils$RoundedRectF;Landroid/graphics/Rect;)V
    .registers 4
    .param p0, "leftRegion"    # Landroid/util/MiuiMultiWindowUtils$RoundedRectF;
    .param p1, "rightRegion"    # Landroid/util/MiuiMultiWindowUtils$RoundedRectF;
    .param p2, "freeFormVisualRect"    # Landroid/graphics/Rect;

    .line 3778
    const/4 v0, 0x4

    invoke-static {v0, p2}, Landroid/util/MiuiMultiWindowUtils;->getCvwResizeRegion(ILandroid/graphics/Rect;)Landroid/util/MiuiMultiWindowUtils$RoundedRectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->set(Landroid/util/MiuiMultiWindowUtils$RoundedRectF;)V

    .line 3779
    const/4 v0, 0x5

    invoke-static {v0, p2}, Landroid/util/MiuiMultiWindowUtils;->getCvwResizeRegion(ILandroid/graphics/Rect;)Landroid/util/MiuiMultiWindowUtils$RoundedRectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->set(Landroid/util/MiuiMultiWindowUtils$RoundedRectF;)V

    .line 3780
    return-void
.end method

.method public static blacklist getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 4198
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 4200
    .local v0, "result":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_5} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 4205
    goto :goto_b

    .line 4203
    :catch_7
    move-exception v1

    .line 4204
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4206
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b
    return-object v0

    .line 4201
    :catch_c
    move-exception v1

    .line 4202
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    throw v1
.end method

.method public static blacklist getDisplayCutoutHeight(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defValue"    # I

    .line 1301
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1302
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    .line 1303
    .local v1, "maximumWindowMetrics":Landroid/view/WindowMetrics;
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 1304
    .local v2, "cutout":Landroid/graphics/Insets;
    iget v3, v2, Landroid/graphics/Insets;->top:I

    if-eqz v3, :cond_1f

    .line 1305
    iget v3, v2, Landroid/graphics/Insets;->top:I

    return v3

    .line 1306
    :cond_1f
    iget v3, v2, Landroid/graphics/Insets;->bottom:I

    if-eqz v3, :cond_26

    .line 1307
    iget v3, v2, Landroid/graphics/Insets;->bottom:I

    return v3

    .line 1308
    :cond_26
    iget v3, v2, Landroid/graphics/Insets;->left:I

    if-eqz v3, :cond_2d

    .line 1309
    iget v3, v2, Landroid/graphics/Insets;->left:I

    return v3

    .line 1310
    :cond_2d
    iget v3, v2, Landroid/graphics/Insets;->right:I

    if-eqz v3, :cond_34

    .line 1311
    iget v3, v2, Landroid/graphics/Insets;->right:I

    return v3

    .line 1313
    :cond_34
    return p1
.end method

.method public static blacklist getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 2136
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2137
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V

    .line 2138
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static blacklist getDisplaySizeForRotation(Landroid/content/Context;I)Landroid/graphics/Rect;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayRotation"    # I

    .line 2142
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2143
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V

    .line 2144
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2145
    .local v1, "displaySize":Landroid/graphics/Rect;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2146
    .local v2, "shortSide":I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2147
    .local v3, "longSide":I
    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_30

    goto :goto_2e

    .line 2151
    :pswitch_26
    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2152
    goto :goto_2e

    .line 2156
    :pswitch_2a
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2157
    nop

    .line 2160
    :goto_2e
    return-object v1

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_26
        :pswitch_2a
        :pswitch_26
    .end packed-switch
.end method

.method public static blacklist getDistance(FFFF)D
    .registers 8
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .line 1386
    sub-float v0, p0, p2

    sub-float v1, p0, p2

    mul-float/2addr v0, v1

    sub-float v1, p1, p3

    sub-float v2, p1, p3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 1387
    .local v0, "sum":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private static blacklist getFlashBackBackgroundStartSwitchState(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 3027
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FlashBackBackgroundStartSwitch"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3029
    .local v0, "flashBackBackgroundStartSwitchState":I
    if-ne v0, v2, :cond_e

    .line 3030
    const/4 v0, 0x0

    .line 3032
    :cond_e
    return v0
.end method

.method public static blacklist getFreeFormAccessibleArea(Landroid/content/Context;IIIIZ)Landroid/graphics/Rect;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayRotation"    # I
    .param p2, "statusBarHeight"    # I
    .param p3, "navBarHeight"    # I
    .param p4, "notchBar"    # I
    .param p5, "isDesktopActive"    # Z

    .line 2236
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    if-eq p1, v1, :cond_e

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_e
    move v3, v1

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormAccessibleAreaOnPad(Landroid/content/Context;ZIIIZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 2239
    :cond_19
    invoke-static {p0, p1}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySizeForRotation(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2240
    .local v0, "fullScreen":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2241
    .local v2, "accessibleArea":Landroid/graphics/Rect;
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isFullScreenGestureNav(Landroid/content/Context;)Z

    move-result v3

    .line 2242
    .local v3, "isFullScreenGestureNav":Z
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v4

    .line 2243
    .local v4, "screenType":I
    packed-switch p1, :pswitch_data_7c

    goto :goto_7b

    .line 2254
    :pswitch_2e
    if-nez v3, :cond_3b

    if-gt v4, v1, :cond_3b

    .line 2255
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, p3, p2, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7b

    .line 2258
    :cond_3b
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, p4

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, p3

    invoke-virtual {v2, v1, p2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2261
    goto :goto_7b

    .line 2267
    :pswitch_47
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 2268
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v6, v7

    .line 2267
    invoke-virtual {v2, v1, p2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2269
    goto :goto_7b

    .line 2245
    :pswitch_56
    if-nez v3, :cond_63

    if-gt v4, v1, :cond_63

    .line 2246
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, p4, p2, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7b

    .line 2249
    :cond_63
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, p3

    invoke-virtual {v2, p4, p2, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2252
    goto :goto_7b

    .line 2263
    :pswitch_6c
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, p3

    invoke-virtual {v2, v1, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2265
    nop

    .line 2272
    :goto_7b
    return-object v2

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_56
        :pswitch_47
        :pswitch_2e
    .end packed-switch
.end method

.method public static blacklist getFreeFormAccessibleArea(Landroid/content/Context;IZZ)Landroid/graphics/Rect;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayRotation"    # I
    .param p2, "ignoreVisibility"    # Z
    .param p3, "isDesktopModeActive"    # Z

    .line 2217
    nop

    .line 2218
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {p0, v0, p2}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;IZ)I

    move-result v3

    .line 2219
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-static {p0, v0, p2}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;IZ)I

    move-result v4

    .line 2220
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-static {p0, v0, p2}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;IZ)I

    move-result v5

    .line 2217
    move-object v1, p0

    move v2, p1

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormAccessibleArea(Landroid/content/Context;IIIIZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeFormAccessibleArea(Landroid/content/Context;Z)Landroid/graphics/Rect;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isDesktopModeActive"    # Z

    .line 2207
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormAccessibleArea(Landroid/content/Context;ZZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeFormAccessibleArea(Landroid/content/Context;ZIIZ)Landroid/graphics/Rect;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ignoreVisibility"    # Z
    .param p2, "statusBarHeight"    # I
    .param p3, "navBarHeight"    # I
    .param p4, "isDesktopActive"    # Z

    .line 2225
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2226
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 2227
    .local v1, "displayRotation":I
    nop

    .line 2228
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-static {p0, v2, p1}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;IZ)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2229
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-static {p0, v2, p1}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;IZ)I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2230
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-static {p0, v2, p1}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;IZ)I

    move-result v6

    .line 2227
    move-object v2, p0

    move v3, v1

    move v7, p4

    invoke-static/range {v2 .. v7}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormAccessibleArea(Landroid/content/Context;IIIIZ)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getFreeFormAccessibleArea(Landroid/content/Context;ZZ)Landroid/graphics/Rect;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ignoreVisibility"    # Z
    .param p2, "isDesktopModeActive"    # Z

    .line 2211
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2212
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {p0, v1, p1, p2}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormAccessibleArea(Landroid/content/Context;IZZ)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getFreeFormAccessibleAreaOnPad(Landroid/content/Context;ZIIIZ)Landroid/graphics/Rect;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLandscape"    # Z
    .param p2, "displayRotation"    # I
    .param p3, "statusBarHeight"    # I
    .param p4, "navBarHeight"    # I
    .param p5, "inDesktopMode"    # Z

    .line 2166
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_9

    const/4 v2, 0x3

    if-ne p2, v2, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 2167
    .local v0, "displayIsLandscape":Z
    :cond_9
    :goto_9
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    .line 2168
    .local v2, "displaySize":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2169
    .local v3, "fullScreen":Landroid/graphics/Rect;
    if-eq p1, v0, :cond_1f

    .line 2170
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2172
    :cond_1f
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2173
    .local v4, "accessibleArea":Landroid/graphics/Rect;
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isNotchScreen(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v5

    invoke-static {p0, v5, v1}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;IZ)I

    move-result v1

    .line 2174
    .local v1, "notchBarHeight":I
    :cond_32
    if-eqz p5, :cond_37

    sget v5, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN_DESKTOP:I

    goto :goto_39

    .line 2175
    :cond_37
    sget v5, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN:I

    .line 2174
    :goto_39
    invoke-static {v5, p4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2176
    .local v5, "bottomMargin":I
    packed-switch p2, :pswitch_data_9a

    goto :goto_81

    .line 2184
    :pswitch_41
    sget v6, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_HORIZONTAL_MARGIN:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    .line 2186
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v5

    .line 2184
    invoke-virtual {v4, v6, p3, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2188
    goto :goto_81

    .line 2196
    :pswitch_51
    sget v6, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_HORIZONTAL_MARGIN:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v6

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 2198
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int/2addr v8, v9

    .line 2196
    invoke-virtual {v4, v6, p3, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2199
    goto :goto_81

    .line 2178
    :pswitch_61
    sget v6, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_HORIZONTAL_MARGIN:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v6

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    invoke-virtual {v4, v7, p3, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2182
    goto :goto_81

    .line 2190
    :pswitch_71
    sget v6, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_HORIZONTAL_MARGIN:I

    .line 2191
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    .line 2190
    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2194
    nop

    .line 2202
    :goto_81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFreeFormAccessibleAreaOnPad::freeform accessibleArea on PAD:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MiuiMultiWindowUtils"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    return-object v4

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_71
        :pswitch_61
        :pswitch_51
        :pswitch_41
    .end packed-switch
.end method

.method public static blacklist getFreeFormArg(Landroid/content/Context;ZZIIZ)F
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertical"    # Z
    .param p2, "landscape"    # Z
    .param p3, "argType"    # I
    .param p4, "screenType"    # I
    .param p5, "isNormalFreeForm"    # Z

    .line 1849
    invoke-static {p1, p2, p3, p4}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormArg(ZZII)F

    move-result v0

    .line 1850
    .local v0, "freeFormArg":F
    const/4 v1, 0x2

    if-ne p3, v1, :cond_e

    if-nez p5, :cond_e

    .line 1851
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Landroid/util/MiuiMultiWindowUtils;->calculateScale(Landroid/content/Context;ZZLjava/lang/String;F)F

    move-result v0

    .line 1853
    :cond_e
    return v0
.end method

.method public static blacklist getFreeFormArg(ZZII)F
    .registers 11
    .param p0, "vertical"    # Z
    .param p1, "landscape"    # Z
    .param p2, "argType"    # I
    .param p3, "screenType"    # I

    .line 1857
    sget-boolean v0, Landroid/util/MiuiMultiWindowUtils;->IS_FOLD_SCREEN_DEVICE:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1d

    .line 1858
    if-lt p3, v1, :cond_f

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_INNER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_f
    if-ge p3, v1, :cond_28

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_OUTER:Ljava/util/List;

    .line 1859
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1860
    :cond_19
    invoke-static {p3}, Landroid/util/MiuiMultiWindowUtils;->initFreeFormResolutionArgsOfDefault(I)V

    goto :goto_28

    .line 1862
    :cond_1d
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1863
    invoke-static {p3}, Landroid/util/MiuiMultiWindowUtils;->initFreeFormResolutionArgsOfDefault(I)V

    .line 1866
    :cond_28
    :goto_28
    sget-boolean v0, Landroid/util/MiuiMultiWindowUtils;->IS_FOLD_SCREEN_DEVICE:Z

    if-eqz v0, :cond_34

    .line 1867
    if-lt p3, v1, :cond_31

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_INNER:Ljava/util/List;

    goto :goto_33

    :cond_31
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_OUTER:Ljava/util/List;

    .local v0, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    :goto_33
    goto :goto_36

    .line 1869
    .end local v0    # "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    :cond_34
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS:Ljava/util/List;

    .line 1871
    .restart local v0    # "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    :goto_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    const/high16 v4, -0x40800000    # -1.0f

    if-ge v2, v3, :cond_40

    .line 1872
    return v4

    .line 1873
    :cond_40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1874
    .local v3, "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_58

    return v4

    .line 1875
    .end local v3    # "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    :cond_58
    goto :goto_44

    .line 1876
    :cond_59
    if-eqz p0, :cond_73

    if-nez p1, :cond_73

    .line 1877
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 1878
    :cond_73
    if-nez p0, :cond_8d

    if-nez p1, :cond_8d

    .line 1879
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 1880
    :cond_8d
    if-eqz p0, :cond_a4

    .line 1881
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 1883
    :cond_a4
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static blacklist getFreeFormHotSpots(IILandroid/graphics/Rect;Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 13
    .param p0, "screenType"    # I
    .param p1, "hotSpotType"    # I
    .param p2, "freeFormVisualRect"    # Landroid/graphics/Rect;
    .param p3, "context"    # Landroid/content/Context;

    .line 3809
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3810
    .local v0, "hotSpotRec":Landroid/graphics/Rect;
    const/4 v1, 0x3

    if-ne p0, v1, :cond_e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_d

    if-ne p1, v1, :cond_e

    .line 3812
    :cond_d
    return-object v0

    .line 3815
    :cond_e
    const/4 v2, 0x0

    .line 3816
    .local v2, "left":I
    const/4 v3, 0x0

    .line 3817
    .local v3, "top":I
    const/4 v4, 0x0

    .line 3818
    .local v4, "right":I
    const/4 v5, 0x0

    .line 3819
    .local v5, "bottom":I
    if-ne p0, v1, :cond_b0

    .line 3820
    const/high16 v1, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_10c

    .line 3860
    :pswitch_19
    return-object v0

    .line 3849
    :pswitch_1a
    iget v6, p2, Landroid/graphics/Rect;->left:I

    .line 3850
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ee7ef9e    # 0.453f

    mul-float/2addr v7, v8

    div-float/2addr v7, v1

    float-to-int v7, v7

    add-int v2, v6, v7

    .line 3851
    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v6, -0x16

    .line 3852
    iget v6, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    .line 3853
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    div-float/2addr v7, v1

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 3854
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p3}, Landroid/util/MiuiMultiWindowUtils;->getTopCaptionViewHeight(Landroid/content/Context;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x12

    sget v6, Landroid/util/MiuiMultiWindowUtils;->HOT_SPACE_TOP_CAPTION_HANDLE_VIEW_DOWNWARDS_OFFSET:F

    float-to-int v6, v6

    add-int v5, v1, v6

    .line 3856
    goto/16 :goto_108

    .line 3839
    :pswitch_49
    iget v6, p2, Landroid/graphics/Rect;->left:I

    .line 3840
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f3df3b6    # 0.742f

    mul-float/2addr v7, v8

    div-float/2addr v7, v1

    float-to-int v7, v7

    add-int v2, v6, v7

    .line 3841
    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v6, -0x16

    .line 3842
    iget v6, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    .line 3843
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    div-float/2addr v7, v1

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 3844
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p3}, Landroid/util/MiuiMultiWindowUtils;->getTopCaptionViewHeight(Landroid/content/Context;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v5, v1, 0x12

    .line 3846
    goto/16 :goto_108

    .line 3831
    :pswitch_73
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v1, 0x7e

    .line 3832
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x2d

    add-int/lit8 v3, v1, -0xa

    .line 3834
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v1, -0x7e

    .line 3835
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v1, 0x23

    .line 3836
    goto/16 :goto_108

    .line 3822
    :pswitch_87
    iget v6, p2, Landroid/graphics/Rect;->left:I

    .line 3823
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e828f5c    # 0.255f

    mul-float/2addr v7, v8

    div-float/2addr v7, v1

    float-to-int v7, v7

    add-int v2, v6, v7

    .line 3824
    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v6, -0x16

    .line 3825
    iget v6, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    .line 3826
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    div-float/2addr v7, v1

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 3827
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p3}, Landroid/util/MiuiMultiWindowUtils;->getTopCaptionViewHeight(Landroid/content/Context;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v5, v1, 0x12

    .line 3829
    goto :goto_108

    .line 3863
    :cond_b0
    packed-switch p1, :pswitch_data_11e

    goto :goto_108

    .line 3883
    :pswitch_b4
    iget v1, p2, Landroid/graphics/Rect;->right:I

    sget v6, Landroid/util/MiuiMultiWindowUtils;->RESIZE_WIDTH:I

    sub-int v2, v1, v6

    .line 3884
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 3885
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v1, -0x36

    .line 3886
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sget v6, Landroid/util/MiuiMultiWindowUtils;->HOT_SPACE_OFFSITE:I

    add-int v5, v1, v6

    goto :goto_108

    .line 3877
    :pswitch_c7
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 3878
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v1, -0x36

    .line 3879
    sget v1, Landroid/util/MiuiMultiWindowUtils;->RESIZE_WIDTH:I

    add-int v4, v2, v1

    .line 3880
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sget v6, Landroid/util/MiuiMultiWindowUtils;->HOT_SPACE_OFFSITE:I

    add-int v5, v1, v6

    .line 3881
    goto :goto_108

    .line 3871
    :pswitch_d8
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sget v6, Landroid/util/MiuiMultiWindowUtils;->RESIZE_WIDTH:I

    add-int/2addr v1, v6

    add-int/lit8 v2, v1, 0x1

    .line 3872
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v1, -0x36

    .line 3873
    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v6

    add-int/lit8 v4, v1, -0x1

    .line 3874
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sget v6, Landroid/util/MiuiMultiWindowUtils;->HOT_SPACE_OFFSITE:I

    add-int v5, v1, v6

    .line 3875
    goto :goto_108

    .line 3865
    :pswitch_ef
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sget v6, Landroid/util/MiuiMultiWindowUtils;->RESIZE_WIDTH:I

    add-int v2, v1, v6

    .line 3866
    iget v1, p2, Landroid/graphics/Rect;->top:I

    sget v7, Landroid/util/MiuiMultiWindowUtils;->HOT_SPACE_OFFSITE:I

    sub-int v3, v1, v7

    .line 3867
    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int v4, v1, v6

    .line 3868
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p3}, Landroid/util/MiuiMultiWindowUtils;->getTopCaptionViewHeight(Landroid/content/Context;)I

    move-result v6

    add-int v5, v1, v6

    .line 3869
    nop

    .line 3890
    :goto_108
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3891
    return-object v0

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_87
        :pswitch_73
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_49
        :pswitch_1a
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_d8
        :pswitch_c7
        :pswitch_b4
    .end packed-switch
.end method

.method private static blacklist getFreeFormScale(Landroid/content/Context;ZZI)F
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertical"    # Z
    .param p2, "landscape"    # Z
    .param p3, "screenType"    # I

    .line 1984
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_dkt_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    move v8, v2

    .line 1986
    .local v8, "isDesktopModeActive":Z
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v3 .. v9}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormScale(Landroid/content/Context;ZZIZZLjava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static blacklist getFreeFormScale(Landroid/content/Context;ZZIZ)F
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertical"    # Z
    .param p2, "landscape"    # Z
    .param p3, "screenType"    # I
    .param p4, "isNormalFreeForm"    # Z

    .line 1990
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_dkt_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    move v8, v2

    .line 1992
    .local v8, "isDesktopModeActive":Z
    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v3 .. v9}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormScale(Landroid/content/Context;ZZIZZLjava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static blacklist getFreeFormScale(Landroid/content/Context;ZZIZZLjava/lang/String;)F
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertical"    # Z
    .param p2, "landscape"    # Z
    .param p3, "screenType"    # I
    .param p4, "isNormalFreeForm"    # Z
    .param p5, "isDesktopModeActive"    # Z
    .param p6, "packageName"    # Ljava/lang/String;

    .line 1998
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1999
    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p3}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormArg(ZZII)F

    move-result v0

    .line 2000
    .local v0, "preferredScale":F
    if-eqz p4, :cond_f

    move v1, v0

    goto :goto_14

    .line 2001
    :cond_f
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Landroid/util/MiuiMultiWindowUtils;->calculateScale(Landroid/content/Context;ZZLjava/lang/String;F)F

    move-result v1

    .line 2000
    :goto_14
    return v1

    .line 2003
    .end local v0    # "preferredScale":F
    :cond_15
    invoke-static {p0, p1, p2, p6}, Landroid/util/MiuiMultiWindowUtils;->getPossibleBounds(Landroid/content/Context;ZZLjava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    .line 2004
    .local v0, "possibleBounds":Landroid/graphics/RectF;
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2005
    .local v1, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Landroid/util/MiuiMultiWindowUtils;->PAD_TARGET_SIDE_DIFF:F

    sub-float/2addr v2, v3

    .line 2006
    .local v2, "target":F
    if-eqz p2, :cond_34

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v2

    goto :goto_37

    .line 2007
    :cond_34
    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v2

    :goto_37
    nop

    .line 2008
    .local v3, "preferredHeight":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v4, v3, v4

    .line 2009
    .local v4, "preferredScale":F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2010
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 2011
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    .line 2012
    invoke-static {p0, v7, p5}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormAccessibleArea(Landroid/content/Context;ZZ)Landroid/graphics/Rect;

    move-result-object v7

    .line 2011
    invoke-static {v5, v6, v4, v7}, Landroid/util/MiuiMultiWindowUtils;->reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F

    move-result v6

    return v6
.end method

.method public static blacklist getFreeFormWindowPosition(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # Landroid/graphics/Rect;

    .line 3389
    const/4 v0, 0x1

    .line 3390
    .local v0, "verticalScreen":Z
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    .line 3391
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 3392
    :cond_17
    const/4 v0, 0x0

    .line 3394
    :cond_18
    invoke-static {p0, p1, v0}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormWindowPositionOrientation(Landroid/content/Context;Landroid/graphics/Rect;Z)V

    .line 3395
    return-void
.end method

.method public static blacklist getFreeFormWindowPositionOrientation(Landroid/content/Context;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "isVertical"    # Z

    .line 3399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3400
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz p2, :cond_29

    .line 3401
    const-string v3, "VFreeForm_Position_Left"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 3403
    const-string v3, "VFreeForm_Position_Top"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 3405
    const-string v3, "VFreeForm_Position_Right"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 3407
    const-string v3, "VFreeForm_Position_Bottom"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_49

    .line 3410
    :cond_29
    const-string v3, "HFreeForm_Position_Left"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 3412
    const-string v3, "HFreeForm_Position_Top"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 3414
    const-string v3, "HFreeForm_Position_Right"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 3416
    const-string v3, "HFreeForm_Position_Bottom"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3419
    :goto_49
    return-void
.end method

.method public static blacklist getFreeformBlackList(Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isNeedUpdateList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3500
    .local p1, "allTimestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Long;>;>;"
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3501
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3502
    .local v1, "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1d

    sget-wide v2, Landroid/util/MiuiMultiWindowUtils;->sLastUpdateTime:J

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3503
    invoke-static {p0, p1}, Landroid/util/MiuiMultiWindowUtils;->updateFreeformTimestamps(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 3504
    invoke-static {p0, v0, v1}, Landroid/util/MiuiMultiWindowUtils;->updateListFromCloud(Landroid/content/Context;Landroid/app/ActivityManager;Ljava/util/List;)V

    .line 3507
    :cond_1d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3508
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getFreeformBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3511
    :cond_2a
    return-object v1
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1676
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;Z)Landroid/graphics/Rect;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z

    .line 1685
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZ)Landroid/graphics/Rect;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z

    .line 1695
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZZLjava/lang/String;)Landroid/graphics/Rect;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isFreeformLandscape"    # Z
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1704
    invoke-static {p0, p4}, Landroid/util/MiuiMultiWindowUtils;->isNormalFreeForm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZLjava/lang/String;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZZLjava/lang/String;Z)Landroid/graphics/Rect;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isFreeformLandscape"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isNormalFreeForm"    # Z

    .line 1708
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isFreeformLandscape"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;

    .line 2341
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isFreeformLandscape"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "packageName"    # Ljava/lang/String;

    .line 2347
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZI)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;Z)Landroid/graphics/Rect;
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isFreeformLandscape"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "isNormalFreeForm"    # Z

    .line 2353
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZIZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZI)Landroid/graphics/Rect;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isFreeformLandscape"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "isSystemServerCalling"    # Z
    .param p8, "statusBarHeight"    # I

    .line 2451
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v10}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZZII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZIZ)Landroid/graphics/Rect;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isFreeformLandscape"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "isSystemServerCalling"    # Z
    .param p8, "statusBarHeight"    # I
    .param p9, "isNormalFreeForm"    # Z

    .line 2459
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v11, p9

    invoke-static/range {v0 .. v11}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZZIIZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZZII)Landroid/graphics/Rect;
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isFreeformLandscape"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "isSystemServerCalling"    # Z
    .param p8, "avoidNeeded"    # Z
    .param p9, "statusBarHeight"    # I
    .param p10, "navBarHeight"    # I

    .line 2360
    nop

    .line 2361
    move-object v12, p0

    move-object/from16 v13, p6

    invoke-static {p0, v13}, Landroid/util/MiuiMultiWindowUtils;->isNormalFreeForm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 2360
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZZIIZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZZIIZ)Landroid/graphics/Rect;
    .registers 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isFreeformLandscape"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "isSystemServerCalling"    # Z
    .param p8, "avoidNeeded"    # Z
    .param p9, "statusBarHeight"    # I
    .param p10, "navBarHeight"    # I
    .param p11, "isNormalFreeForm"    # Z

    .line 2368
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_dkt_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    move v15, v2

    .line 2370
    .local v15, "desktopModeActive":Z
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v3 .. v15}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZZIIZZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;Ljava/lang/String;ZZIIZZ)Landroid/graphics/Rect;
    .registers 37
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needDisplayContentRotation"    # Z
    .param p2, "isVertical"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isFreeformLandscape"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "isSystemServerCalling"    # Z
    .param p8, "avoidNeeded"    # Z
    .param p9, "statusBarHeight"    # I
    .param p10, "navBarHeight"    # I
    .param p11, "isNormalFreeForm"    # Z
    .param p12, "isDesktopModeActive"    # Z

    .line 2384
    move-object/from16 v8, p0

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p11

    move/from16 v13, p12

    if-nez v8, :cond_10

    const/4 v0, 0x0

    return-object v0

    .line 2385
    :cond_10
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 2386
    .local v14, "displayWidth":I
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 2387
    .local v15, "displayHeight":I
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 2388
    .local v16, "shortSide":I
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2389
    .local v17, "longSide":I
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le v14, v15, :cond_2e

    move v2, v1

    goto :goto_2f

    :cond_2e
    move v2, v0

    :goto_2f
    move/from16 v18, v2

    .line 2390
    .local v18, "verticalScreen":Z
    if-eqz p1, :cond_35

    if-eqz p2, :cond_3a

    :cond_35
    if-nez p1, :cond_3b

    if-eqz v18, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    :cond_3b
    :goto_3b
    move v7, v0

    .line 2393
    .local v7, "vertical":Z
    if-nez p7, :cond_54

    .line 2394
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {v8, v0}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;I)I

    move-result v0

    .line 2395
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-static {v8, v2, v1}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;IZ)I

    move-result v1

    .line 2394
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v6, v0

    .end local p9    # "statusBarHeight":I
    .local v0, "statusBarHeight":I
    goto :goto_56

    .line 2393
    .end local v0    # "statusBarHeight":I
    .restart local p9    # "statusBarHeight":I
    :cond_54
    move/from16 v6, p9

    .line 2398
    .end local p9    # "statusBarHeight":I
    .local v6, "statusBarHeight":I
    :goto_56
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v5

    .line 2400
    .local v5, "screenType":I
    invoke-static {v8, v7, v9, v11, v12}, Landroid/util/MiuiMultiWindowUtils;->getPossibleBounds(Landroid/content/Context;ZZLjava/lang/String;Z)Landroid/graphics/RectF;

    move-result-object v19

    .line 2401
    .local v19, "possibleBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, p4

    move v3, v5

    move/from16 v4, p11

    move/from16 p9, v5

    .end local v5    # "screenType":I
    .local p9, "screenType":I
    move/from16 v5, p12

    move/from16 v20, v14

    move v14, v6

    .end local v6    # "statusBarHeight":I
    .local v14, "statusBarHeight":I
    .local v20, "displayWidth":I
    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormScale(Landroid/content/Context;ZZIZZLjava/lang/String;)F

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    .line 2402
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    move/from16 v6, p10

    invoke-static {v8, v0, v14, v6, v13}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormAccessibleArea(Landroid/content/Context;ZIIZ)Landroid/graphics/Rect;

    move-result-object v5

    .line 2404
    .local v5, "accessibleArea":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    .line 2405
    .local v4, "defaultLaunchBounds":Landroid/graphics/Rect;
    nop

    .line 2406
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v0

    sget v1, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float v21, v0, v1

    .line 2405
    move-object/from16 v0, p0

    move v1, v7

    move/from16 v3, p9

    move/from16 v22, v14

    move-object v14, v4

    .end local v4    # "defaultLaunchBounds":Landroid/graphics/Rect;
    .local v14, "defaultLaunchBounds":Landroid/graphics/Rect;
    .local v22, "statusBarHeight":I
    move/from16 v4, v16

    move-object/from16 v23, v5

    .end local v5    # "accessibleArea":Landroid/graphics/Rect;
    .local v23, "accessibleArea":Landroid/graphics/Rect;
    move/from16 v5, v17

    move/from16 v6, v21

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiMultiWindowUtils;->getLeftMargin(Landroid/content/Context;ZZIIIF)I

    move-result v0

    iput v0, v14, Landroid/graphics/Rect;->left:I

    .line 2407
    nop

    .line 2408
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v0

    sget v1, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float v6, v0, v1

    .line 2407
    move-object/from16 v0, p0

    move v1, v7

    move/from16 v21, v7

    .end local v7    # "vertical":Z
    .local v21, "vertical":Z
    move-object/from16 v7, v23

    invoke-static/range {v0 .. v7}, Landroid/util/MiuiMultiWindowUtils;->getTopMargin(Landroid/content/Context;ZZIIIFLandroid/graphics/Rect;)I

    move-result v0

    iput v0, v14, Landroid/graphics/Rect;->top:I

    .line 2409
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v14, Landroid/graphics/Rect;->right:I

    .line 2410
    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v14, Landroid/graphics/Rect;->bottom:I

    .line 2412
    iget v0, v14, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v1

    sget v2, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    move-object/from16 v1, v23

    .end local v23    # "accessibleArea":Landroid/graphics/Rect;
    .local v1, "accessibleArea":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_f5

    .line 2413
    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v2

    sget v3, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2416
    :cond_f5
    iget v0, v14, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v2

    sget v3, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_118

    .line 2417
    iget v0, v14, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    .line 2418
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v3

    sget v4, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 2417
    invoke-virtual {v14, v0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2420
    :cond_118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2421
    .local v0, "checkedBounds":Landroid/graphics/Rect;
    sget v2, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    invoke-static {v14, v0, v2, v1}, Landroid/util/MiuiMultiWindowUtils;->reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F

    move-result v2

    sput v2, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    .line 2422
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2424
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15f

    if-eqz v11, :cond_15f

    if-eqz p8, :cond_15f

    .line 2425
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-static {v2, v11}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackToAvoid(ILjava/lang/String;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v2

    .line 2426
    .local v2, "existingStackInfo":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    if-eqz v2, :cond_15f

    .line 2427
    iget-object v3, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    iget v4, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    invoke-static {v3, v4}, Landroid/util/MiuiMultiWindowUtils;->getVisualBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v3

    .line 2428
    .local v3, "existingVisualBounds":Landroid/graphics/Rect;
    nop

    .line 2429
    invoke-static {v8, v9, v12, v13, v11}, Landroid/util/MiuiMultiWindowUtils;->getOriFreeformScale(Landroid/content/Context;ZZZLjava/lang/String;)F

    move-result v4

    .line 2428
    invoke-static {v14, v4}, Landroid/util/MiuiMultiWindowUtils;->getVisualBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v4

    .line 2430
    .local v4, "defaultVisualBounds":Landroid/graphics/Rect;
    invoke-static {v4, v3, v1}, Landroid/util/MiuiMultiWindowUtils;->avoidAsPossible(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2431
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2435
    .end local v2    # "existingStackInfo":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .end local v3    # "existingVisualBounds":Landroid/graphics/Rect;
    .end local v4    # "defaultVisualBounds":Landroid/graphics/Rect;
    :cond_15f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p9

    .end local p9    # "screenType":I
    .local v3, "screenType":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " launchBounds:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " boundWidth:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2437
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " boundHeight:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2438
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sScale:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " freeform size:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2440
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sget v5, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget v5, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2435
    const-string v4, "MiuiMultiWindowUtils"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    if-eqz v10, :cond_1d4

    .line 2443
    invoke-virtual {v10, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2445
    :cond_1d4
    return-object v14
.end method

.method public static blacklist getFreeformRoundCorner(Landroid/content/Context;)F
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 3995
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    .line 3996
    .local v0, "deviceType":I
    const v1, 0x3fb4fdf4    # 1.414f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 3997
    sget v2, Landroid/util/MiuiMultiWindowUtils;->PAD_FREEFORM_ROUND_CORNER:F

    div-float/2addr v2, v1

    return v2

    .line 3999
    :cond_e
    sget v2, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_ROUND_CORNER:F

    div-float/2addr v2, v1

    return v2
.end method

.method public static blacklist getFreeformSuggestionList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3471
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->readFreeformTimestamps(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 3474
    .local v0, "allTimestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Long;>;>;"
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/util/MiuiMultiWindowUtils;->getFreeformBlackList(Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v1

    .line 3476
    .local v1, "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 3477
    invoke-static {p0, v1, v0}, Landroid/util/MiuiMultiWindowAdapter;->calFreeformSuggestionList(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v2

    .line 3479
    .local v2, "freeformSuggestionList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3480
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3481
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v5, Landroid/util/MiuiMultiWindowUtils$2;

    invoke-direct {v5}, Landroid/util/MiuiMultiWindowUtils$2;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3487
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3d

    .line 3488
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3489
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3487
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 3492
    .end local v5    # "i":I
    :cond_3d
    return-object v3
.end method

.method public static blacklist getInsetValueFromServer(Landroid/content/Context;I)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typeMask"    # I

    .line 1318
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist getInsetValueFromServer(Landroid/content/Context;IZ)I
    .registers 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typeMask"    # I
    .param p2, "ignoreVisibility"    # Z

    .line 1322
    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1323
    .local v2, "display":Landroid/view/Display;
    const-string v3, "MiuiMultiWindowUtils"

    const/4 v4, 0x0

    if-nez v2, :cond_11

    .line 1324
    const-string v0, "Failed to getDisplay"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    return v4

    .line 1327
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 1328
    .local v15, "maxBounds":Landroid/graphics/Rect;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v14, v0

    .line 1329
    .local v14, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {p0 .. p0}, Landroid/content/Context;->getToken(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1330
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 1331
    .local v13, "config":Landroid/content/res/Configuration;
    nop

    .line 1332
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1331
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v12

    .line 1335
    .local v12, "windowManager":Landroid/view/IWindowManager;
    :try_start_3e
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 1336
    .local v0, "insetsState":Landroid/view/InsetsState;
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-interface {v12, v14, v5, v0}, Landroid/view/IWindowManager;->getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z

    move-result v9

    .line 1337
    .local v9, "alwaysConsumeSystemBars":Z
    const/4 v7, 0x0

    .line 1338
    invoke-virtual {v13}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v8

    const/16 v10, 0x30

    iget v11, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v16, 0x0

    iget v6, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v5, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1339
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v17
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_5e} :catch_b6

    const/16 v18, 0x0

    .line 1337
    move-object v5, v0

    move/from16 v19, v6

    move-object v6, v15

    move-object/from16 v20, v12

    .end local v12    # "windowManager":Landroid/view/IWindowManager;
    .local v20, "windowManager":Landroid/view/IWindowManager;
    move/from16 v12, v16

    move-object/from16 v16, v13

    .end local v13    # "config":Landroid/content/res/Configuration;
    .local v16, "config":Landroid/content/res/Configuration;
    move/from16 v13, v19

    move-object/from16 v19, v14

    .end local v14    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v19, "params":Landroid/view/WindowManager$LayoutParams;
    move/from16 v14, v17

    move-object v4, v15

    .end local v15    # "maxBounds":Landroid/graphics/Rect;
    .local v4, "maxBounds":Landroid/graphics/Rect;
    move-object/from16 v15, v18

    :try_start_73
    invoke-virtual/range {v5 .. v15}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v3
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_77} :catch_b4

    move-object v0, v3

    .line 1344
    .end local v9    # "alwaysConsumeSystemBars":Z
    .local v0, "windowInsets":Landroid/view/WindowInsets;
    nop

    .line 1345
    if-eqz v0, :cond_b2

    .line 1346
    new-instance v3, Landroid/view/WindowMetrics;

    invoke-direct {v3, v4, v0}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    .line 1347
    .local v3, "maximumWindowMetrics":Landroid/view/WindowMetrics;
    if-eqz p2, :cond_8b

    .line 1348
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v5

    goto :goto_93

    .line 1349
    :cond_8b
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v5

    :goto_93
    nop

    .line 1350
    .local v5, "inset":Landroid/graphics/Insets;
    iget v6, v5, Landroid/graphics/Insets;->top:I

    if-eqz v6, :cond_9b

    .line 1351
    iget v6, v5, Landroid/graphics/Insets;->top:I

    return v6

    .line 1352
    :cond_9b
    iget v6, v5, Landroid/graphics/Insets;->bottom:I

    if-eqz v6, :cond_a2

    .line 1353
    iget v6, v5, Landroid/graphics/Insets;->bottom:I

    return v6

    .line 1354
    :cond_a2
    iget v6, v5, Landroid/graphics/Insets;->left:I

    if-eqz v6, :cond_a9

    .line 1355
    iget v6, v5, Landroid/graphics/Insets;->left:I

    return v6

    .line 1356
    :cond_a9
    iget v6, v5, Landroid/graphics/Insets;->right:I

    if-eqz v6, :cond_b0

    .line 1357
    iget v6, v5, Landroid/graphics/Insets;->right:I

    return v6

    .line 1359
    :cond_b0
    const/4 v6, 0x0

    return v6

    .line 1362
    .end local v3    # "maximumWindowMetrics":Landroid/view/WindowMetrics;
    .end local v5    # "inset":Landroid/graphics/Insets;
    :cond_b2
    const/4 v6, 0x0

    return v6

    .line 1341
    .end local v0    # "windowInsets":Landroid/view/WindowInsets;
    :catch_b4
    move-exception v0

    goto :goto_be

    .end local v4    # "maxBounds":Landroid/graphics/Rect;
    .end local v16    # "config":Landroid/content/res/Configuration;
    .end local v19    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v20    # "windowManager":Landroid/view/IWindowManager;
    .restart local v12    # "windowManager":Landroid/view/IWindowManager;
    .restart local v13    # "config":Landroid/content/res/Configuration;
    .restart local v14    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "maxBounds":Landroid/graphics/Rect;
    :catch_b6
    move-exception v0

    move-object/from16 v20, v12

    move-object/from16 v16, v13

    move-object/from16 v19, v14

    move-object v4, v15

    .line 1342
    .end local v12    # "windowManager":Landroid/view/IWindowManager;
    .end local v13    # "config":Landroid/content/res/Configuration;
    .end local v14    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "maxBounds":Landroid/graphics/Rect;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "maxBounds":Landroid/graphics/Rect;
    .restart local v16    # "config":Landroid/content/res/Configuration;
    .restart local v19    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v20    # "windowManager":Landroid/view/IWindowManager;
    :goto_be
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException eccured "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v3, 0x0

    return v3
.end method

.method public static blacklist getLauncherPackageName()Ljava/lang/String;
    .registers 2

    .line 3714
    const-string v0, "ro.miui.product.home"

    const-string v1, "com.miui.home"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getLeftMargin(Landroid/content/Context;ZZIIIF)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertical"    # Z
    .param p2, "freeformLandscape"    # Z
    .param p3, "screenType"    # I
    .param p4, "displayShortSide"    # I
    .param p5, "displayLongSide"    # I
    .param p6, "freeFormWidth"    # F

    .line 2077
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2078
    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_12

    int-to-float v1, p4

    sub-float/2addr v1, p6

    sget v2, Landroid/util/MiuiMultiWindowUtils;->PAD_RIGHT_MARGIN:F

    sub-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_19

    .line 2079
    :cond_12
    int-to-float v1, p5

    sub-float/2addr v1, p6

    sget v2, Landroid/util/MiuiMultiWindowUtils;->PAD_RIGHT_MARGIN:F

    sub-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 2078
    :goto_19
    return v0

    .line 2081
    :cond_1a
    const/4 v0, 0x4

    invoke-static {p1, p2, v0, p3}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormArg(ZZII)F

    move-result v0

    .line 2082
    .local v0, "leftMarginRatio":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_30

    .line 2083
    if-eqz p1, :cond_2e

    int-to-float v1, p4

    sub-float/2addr v1, p6

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1

    .line 2085
    :cond_30
    int-to-float v1, p5

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static blacklist getListAboutSupportCvwLevelFull()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4347
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11030071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist getListAboutSupportCvwLevelHorizontal()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4337
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11030072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist getListAboutSupportCvwLevelVertical()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4342
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11030073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist getListAboutUnsupportCvwLevelFull()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4351
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11030075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist getMaxNumFreeformDesktopMode()I
    .registers 4

    .line 3300
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getTotalRam()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MiuiMultiWindowUtils"

    const/16 v3, 0x8

    if-ge v0, v3, :cond_11

    .line 3301
    const-string v0, "not support DesktopMode for TOTAL_RAM < 8"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    return v1

    .line 3304
    :cond_11
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    if-eqz v0, :cond_36

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 3305
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supportFreeform for device: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    return v1

    .line 3309
    :cond_36
    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist getMiniFreeFormArg(ZZII)F
    .registers 10
    .param p0, "vertical"    # Z
    .param p1, "landscape"    # Z
    .param p2, "argType"    # I
    .param p3, "screenType"    # I

    .line 1888
    sget-boolean v0, Landroid/util/MiuiMultiWindowUtils;->IS_FOLD_SCREEN_DEVICE:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1d

    .line 1889
    if-lt p3, v1, :cond_f

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS_INNER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_f
    if-ge p3, v1, :cond_28

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS_OUTER:Ljava/util/List;

    .line 1890
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1891
    :cond_19
    invoke-static {p3}, Landroid/util/MiuiMultiWindowUtils;->initFreeFormResolutionArgsOfDefault(I)V

    goto :goto_28

    .line 1893
    :cond_1d
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1894
    invoke-static {p3}, Landroid/util/MiuiMultiWindowUtils;->initFreeFormResolutionArgsOfDefault(I)V

    .line 1897
    :cond_28
    :goto_28
    sget-boolean v0, Landroid/util/MiuiMultiWindowUtils;->IS_FOLD_SCREEN_DEVICE:Z

    if-eqz v0, :cond_35

    .line 1898
    if-lt p3, v1, :cond_31

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS_INNER:Ljava/util/List;

    goto :goto_33

    .line 1899
    :cond_31
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS_OUTER:Ljava/util/List;

    :goto_33
    nop

    .local v0, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    goto :goto_37

    .line 1901
    .end local v0    # "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    :cond_35
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS:Ljava/util/List;

    .line 1903
    .restart local v0    # "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    :goto_37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    const/high16 v4, -0x40800000    # -1.0f

    if-ge v2, v3, :cond_41

    .line 1904
    return v4

    .line 1905
    :cond_41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1906
    .local v3, "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-ge v5, v1, :cond_58

    return v4

    .line 1907
    .end local v3    # "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    :cond_58
    goto :goto_45

    .line 1908
    :cond_59
    if-eqz p0, :cond_73

    if-nez p1, :cond_73

    .line 1909
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 1910
    :cond_73
    if-nez p0, :cond_8d

    if-nez p1, :cond_8d

    .line 1911
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 1912
    :cond_8d
    if-eqz p0, :cond_a4

    .line 1913
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 1915
    :cond_a4
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static blacklist getNavBarPosition()I
    .registers 3

    .line 4300
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 4301
    .local v0, "activityTaskManager":Landroid/app/IActivityTaskManager;
    const-string v1, "getNavBarPosition"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4302
    .local v1, "navBarPosition":Ljava/lang/Object;
    if-eqz v1, :cond_15

    .line 4303
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4304
    .local v2, "nav":I
    return v2

    .line 4306
    .end local v2    # "nav":I
    :cond_15
    const/4 v2, 0x4

    return v2
.end method

.method public static blacklist getNavBarResHeight(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1376
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1377
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1379
    .local v1, "resourceId":I
    if-lez v1, :cond_1d

    .line 1380
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 1382
    :cond_1d
    return v0
.end method

.method public static blacklist getNavigationBarHeight(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1278
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/MiuiMultiWindowUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method public static blacklist getNavigationBarHeight(Landroid/content/Context;Z)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ignoreVisibility"    # Z

    .line 1282
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1283
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    .line 1284
    .local v1, "maximumWindowMetrics":Landroid/view/WindowMetrics;
    if-eqz p1, :cond_1b

    .line 1285
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    goto :goto_27

    .line 1286
    :cond_1b
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    :goto_27
    nop

    .line 1287
    .local v2, "navBar":Landroid/graphics/Insets;
    iget v3, v2, Landroid/graphics/Insets;->top:I

    if-eqz v3, :cond_2f

    .line 1288
    iget v3, v2, Landroid/graphics/Insets;->top:I

    return v3

    .line 1289
    :cond_2f
    iget v3, v2, Landroid/graphics/Insets;->bottom:I

    if-eqz v3, :cond_36

    .line 1290
    iget v3, v2, Landroid/graphics/Insets;->bottom:I

    return v3

    .line 1291
    :cond_36
    iget v3, v2, Landroid/graphics/Insets;->left:I

    if-eqz v3, :cond_3d

    .line 1292
    iget v3, v2, Landroid/graphics/Insets;->left:I

    return v3

    .line 1293
    :cond_3d
    iget v3, v2, Landroid/graphics/Insets;->right:I

    if-eqz v3, :cond_44

    .line 1294
    iget v3, v2, Landroid/graphics/Insets;->right:I

    return v3

    .line 1296
    :cond_44
    const/4 v3, 0x0

    return v3
.end method

.method public static blacklist getNotchSize(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1245
    const-string v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1246
    .local v0, "resourceId":I
    if-lez v0, :cond_19

    .line 1247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 1249
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getOriFreeformScale(Landroid/content/Context;Z)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFreeformLandscape"    # Z

    .line 3234
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/util/MiuiMultiWindowUtils;->getOriFreeformScale(Landroid/content/Context;ZZ)F

    move-result v0

    return v0
.end method

.method private static blacklist getOriFreeformScale(Landroid/content/Context;ZZ)F
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFreeformLandscape"    # Z
    .param p2, "isNormalFreeForm"    # Z

    .line 3238
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/MiuiMultiWindowUtils;->getOriFreeformScale(Landroid/content/Context;ZZLjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static blacklist getOriFreeformScale(Landroid/content/Context;ZZLjava/lang/String;)F
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFreeformLandscape"    # Z
    .param p2, "isNormalFreeForm"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3242
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_dkt_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    move v0, v2

    .line 3244
    .local v0, "isDesktopModeActive":Z
    invoke-static {p0, p1, p2, v0, p3}, Landroid/util/MiuiMultiWindowUtils;->getOriFreeformScale(Landroid/content/Context;ZZZLjava/lang/String;)F

    move-result v1

    return v1
.end method

.method public static blacklist getOriFreeformScale(Landroid/content/Context;ZZZLjava/lang/String;)F
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFreeformLandscape"    # Z
    .param p2, "isNormalFreeForm"    # Z
    .param p3, "isDesktopModeActive"    # Z
    .param p4, "packageName"    # Ljava/lang/String;

    .line 3249
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3250
    .local v0, "scale":F
    if-nez p0, :cond_5

    return v0

    .line 3252
    :cond_5
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v8

    .line 3253
    .local v8, "outRect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 3254
    .local v9, "displayWidth":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 3255
    .local v10, "displayHeight":I
    if-ge v9, v10, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    move v2, v1

    .line 3256
    .local v2, "vertical":Z
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v4

    move-object v1, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormScale(Landroid/content/Context;ZZIZZLjava/lang/String;)F

    move-result v0

    .line 3258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOriFreeformScale:: scale="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " isDesktopModeActive:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " packageName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "MiuiMultiWindowUtils"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    return v0
.end method

.method private static blacklist getOriginalRatioBeforeScaling(ZZI)F
    .registers 4
    .param p0, "vertical"    # Z
    .param p1, "landscape"    # Z
    .param p2, "screenType"    # I

    .line 1980
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormArg(ZZII)F

    move-result v0

    return v0
.end method

.method public static blacklist getPossibleBounds(Landroid/content/Context;ZZLjava/lang/String;)Landroid/graphics/RectF;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertical"    # Z
    .param p2, "isFreeformLandscape"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2305
    invoke-static {p0, p3}, Landroid/util/MiuiMultiWindowUtils;->isNormalFreeForm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/util/MiuiMultiWindowUtils;->getPossibleBounds(Landroid/content/Context;ZZLjava/lang/String;Z)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPossibleBounds(Landroid/content/Context;ZZLjava/lang/String;Z)Landroid/graphics/RectF;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertical"    # Z
    .param p2, "isFreeformLandscape"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isNormalFreeForm"    # Z

    .line 2311
    invoke-static {p1, p2, p0, p3}, Landroid/util/MiuiMultiWindowUtils;->getAspectRatio(ZZLandroid/content/Context;Ljava/lang/String;)F

    move-result v0

    .line 2312
    .local v0, "windowAspectRatio":F
    sget-object v1, Landroid/util/MiuiMultiWindowUtils;->ADDITIONAL_FREEFORM_RESOLUTIONS:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 2313
    .local v1, "widthAndHeight":[I
    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 2314
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    int-to-float v5, v5

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3

    .line 2317
    :cond_21
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v3

    .line 2318
    .local v3, "screenType":I
    invoke-static {p1, p2, v3}, Landroid/util/MiuiMultiWindowUtils;->getOriginalRatioBeforeScaling(ZZI)F

    move-result v4

    .line 2319
    .local v4, "originalRatio":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "originalRatio = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiuiMultiWindowUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2322
    .local v5, "displayWidth":I
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 2323
    .local v6, "displayHeight":I
    if-nez p2, :cond_5c

    const/4 v7, 0x3

    if-ne v3, v7, :cond_57

    goto :goto_5c

    .line 2324
    :cond_57
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_60

    .line 2323
    :cond_5c
    :goto_5c
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2324
    :goto_60
    nop

    .line 2326
    .local v7, "targetSide":I
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 2327
    .local v8, "possibleBounds":Landroid/graphics/RectF;
    iput v2, v8, Landroid/graphics/RectF;->left:F

    .line 2328
    iput v2, v8, Landroid/graphics/RectF;->top:F

    .line 2329
    if-eqz p4, :cond_7b

    .line 2330
    int-to-float v2, v7

    mul-float/2addr v2, v4

    iput v2, v8, Landroid/graphics/RectF;->right:F

    .line 2331
    iget v2, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v0

    add-float/2addr v2, v9

    iput v2, v8, Landroid/graphics/RectF;->bottom:F

    goto :goto_97

    .line 2333
    :cond_7b
    if-eqz p2, :cond_82

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_86

    :cond_82
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_86
    int-to-float v2, v2

    iput v2, v8, Landroid/graphics/RectF;->right:F

    .line 2334
    if-eqz p2, :cond_90

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_94

    :cond_90
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_94
    int-to-float v2, v2

    iput v2, v8, Landroid/graphics/RectF;->bottom:F

    .line 2336
    :goto_97
    return-object v8
.end method

.method public static blacklist getPredictXY(FFFFF)[F
    .registers 8
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "speedX"    # F
    .param p3, "speedY"    # F
    .param p4, "friction"    # F

    .line 4214
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4215
    .local v0, "predictXY":[F
    invoke-static {p0, p2, p4}, Landroid/util/MiuiMultiWindowUtils;->calPredict(FFF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 4216
    invoke-static {p1, p3, p4}, Landroid/util/MiuiMultiWindowUtils;->calPredict(FFF)F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 4217
    return-object v0
.end method

.method public static blacklist getPredictY(FFFFI)F
    .registers 11
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "predictX"    # F
    .param p3, "predictY"    # F
    .param p4, "screenWidth"    # I

    .line 4225
    sub-float v0, p2, p0

    .line 4226
    .local v0, "disX":F
    sub-float v1, p3, p1

    .line 4228
    .local v1, "disY":F
    move v2, p3

    .line 4231
    .local v2, "targetY":F
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_13

    .line 4232
    int-to-float v3, p4

    sub-float/2addr v3, p0

    .line 4233
    .local v3, "dis":F
    div-float v4, v1, v0

    .line 4234
    .local v4, "k":F
    mul-float v5, v3, v4

    add-float v2, p1, v5

    goto :goto_1e

    .line 4236
    .end local v3    # "dis":F
    .end local v4    # "k":F
    :cond_13
    cmpg-float v4, v0, v3

    if-gez v4, :cond_1e

    .line 4237
    sub-float/2addr v3, p0

    .line 4238
    .restart local v3    # "dis":F
    div-float v4, v1, v0

    .line 4239
    .restart local v4    # "k":F
    mul-float v5, v3, v4

    add-float v2, p1, v5

    .line 4241
    .end local v3    # "dis":F
    .end local v4    # "k":F
    :cond_1e
    :goto_1e
    return v2
.end method

.method public static blacklist getRequestedAspectRatio(Ljava/lang/String;)F
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1942
    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->getAdditionalFreeformAspectRatio1AppsInSystem()Ljava/util/List;

    move-result-object v0

    .line 1943
    .local v0, "additionalFreeformAspectRatio1Apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1944
    .local v2, "app":Ljava/lang/String;
    if-eqz p0, :cond_20

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1945
    const v1, 0x3faaaaa8

    return v1

    .line 1947
    .end local v2    # "app":Ljava/lang/String;
    :cond_20
    goto :goto_8

    .line 1948
    :cond_21
    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->getAdditionalFreeformAspectRatio2AppsInSystem()Ljava/util/List;

    move-result-object v1

    .line 1949
    .local v1, "additionalFreeformAspectRatio2Apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1950
    .local v3, "app":Ljava/lang/String;
    if-eqz p0, :cond_40

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1951
    const/high16 v2, 0x3f400000    # 0.75f

    return v2

    .line 1953
    .end local v3    # "app":Ljava/lang/String;
    :cond_40
    goto :goto_29

    .line 1954
    :cond_41
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist getScalingMaxValue(Landroid/content/Context;ZZ)F
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertical"    # Z
    .param p2, "landscape"    # Z

    .line 2091
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3fa68056

    if-eqz p1, :cond_d

    .line 2092
    if-eqz p2, :cond_a

    goto :goto_b

    .line 2093
    :cond_a
    move v0, v1

    :goto_b
    nop

    .local v0, "scaling":F
    goto :goto_1d

    .line 2094
    .end local v0    # "scaling":F
    :cond_d
    if-eqz p2, :cond_13

    .line 2095
    const v0, 0x3fa3cb62

    .restart local v0    # "scaling":F
    goto :goto_1d

    .line 2097
    .end local v0    # "scaling":F
    :cond_13
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_1c

    .line 2098
    :cond_1b
    nop

    :goto_1c
    nop

    .line 2100
    .restart local v0    # "scaling":F
    :goto_1d
    return v0
.end method

.method public static blacklist getScalingMinValue(ZZ)F
    .registers 3
    .param p0, "vertical"    # Z
    .param p1, "landscape"    # Z

    .line 2105
    const v0, 0x3f362267

    if-eqz p0, :cond_d

    .line 2106
    if-eqz p1, :cond_8

    goto :goto_b

    .line 2107
    :cond_8
    const v0, 0x3f2830a2

    :goto_b
    nop

    .local v0, "scaling":F
    goto :goto_14

    .line 2109
    .end local v0    # "scaling":F
    :cond_d
    if-eqz p1, :cond_10

    goto :goto_13

    .line 2110
    :cond_10
    const v0, 0x3f39d7b2

    :goto_13
    nop

    .line 2112
    .restart local v0    # "scaling":F
    :goto_14
    return v0
.end method

.method public static blacklist getScreenType(Landroid/content/Context;)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .line 2276
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2277
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V

    .line 2278
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2279
    .local v1, "displayWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2280
    .local v2, "displayHeight":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2281
    .local v3, "shortSide":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2283
    .local v4, "longSide":I
    int-to-float v5, v3

    iget v6, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    int-to-float v9, v4

    iget v10, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    .line 2284
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    .line 2283
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 2285
    .local v5, "screenInch":D
    int-to-float v7, v3

    int-to-float v8, v4

    div-float/2addr v7, v8

    const v8, 0x3eaaaaab

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3d

    .line 2286
    const/4 v7, 0x0

    return v7

    .line 2287
    :cond_3d
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpg-double v9, v5, v7

    if-gez v9, :cond_4b

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    cmpl-double v9, v5, v9

    if-ltz v9, :cond_4b

    .line 2288
    const/4 v7, 0x2

    return v7

    .line 2289
    :cond_4b
    cmpl-double v7, v5, v7

    if-ltz v7, :cond_51

    .line 2290
    const/4 v7, 0x3

    return v7

    .line 2292
    :cond_51
    const/4 v7, 0x1

    return v7
.end method

.method public static blacklist getSmallAspectRatio(ZLandroid/content/Context;Z)F
    .registers 9
    .param p0, "landscape"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isNormalFreeForm"    # Z

    .line 1921
    invoke-static {p1}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    .line 1922
    .local v0, "screenType":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Landroid/util/MiuiMultiWindowUtils;->getMiniFreeFormArg(ZZII)F

    move-result v1

    .line 1923
    .local v1, "aspectRatio":F
    if-eqz p2, :cond_12

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3e

    .line 1924
    :cond_12
    invoke-static {p1}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1925
    .local v2, "displayWidth":I
    invoke-static {p1}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1926
    .local v3, "displayHeight":I
    if-eqz p0, :cond_31

    .line 1927
    nop

    .line 1926
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 1927
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    goto :goto_3d

    .line 1928
    :cond_31
    nop

    .line 1927
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 1928
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_3d
    move v1, v4

    .line 1930
    .end local v2    # "displayWidth":I
    .end local v3    # "displayHeight":I
    :cond_3e
    return v1
.end method

.method public static blacklist getSmallFreeformRect(Landroid/content/Context;Z)Landroid/graphics/RectF;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLandscapeFreeform"    # Z

    .line 1032
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1033
    .local v0, "shortSide":I
    invoke-static {p0, p1, v0}, Landroid/util/MiuiMultiWindowUtils;->getSmallFreeformRect(Landroid/content/Context;ZI)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSmallFreeformRect(Landroid/content/Context;ZI)Landroid/graphics/RectF;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLandscapeFreeform"    # Z
    .param p2, "displayShortSide"    # I

    .line 1037
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/util/MiuiMultiWindowUtils;->getSmallFreeformRect(Landroid/content/Context;ZIZ)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSmallFreeformRect(Landroid/content/Context;ZIZ)Landroid/graphics/RectF;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLandscapeFreeform"    # Z
    .param p2, "displayShortSide"    # I
    .param p3, "isNormalFreeForm"    # Z

    .line 1046
    invoke-static {p1, p0, p3}, Landroid/util/MiuiMultiWindowUtils;->getSmallAspectRatio(ZLandroid/content/Context;Z)F

    move-result v0

    .line 1049
    .local v0, "windowAspectRatio":F
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1050
    int-to-float v1, p2

    sget v2, Landroid/util/MiuiMultiWindowUtils;->PAD_TARGET_SIDE_DIFF:F

    sub-float/2addr v1, v2

    .line 1051
    .local v1, "targetSide":F
    if-eqz p1, :cond_15

    const v2, 0x3e851eb8    # 0.26f

    mul-float/2addr v2, v1

    goto :goto_19

    .line 1052
    :cond_15
    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v1

    :goto_19
    nop

    .line 1053
    .local v2, "smallFreeformHeight":F
    mul-float v1, v2, v0

    .line 1054
    .local v1, "smallFreeformWidth":F
    goto :goto_2f

    .line 1055
    .end local v1    # "smallFreeformWidth":F
    .end local v2    # "smallFreeformHeight":F
    :cond_1d
    invoke-static {p1, p0}, Landroid/util/MiuiMultiWindowUtils;->getSmallWindowScreenRatio(ZLandroid/content/Context;)F

    move-result v1

    .line 1056
    .local v1, "windowScreenRatio":F
    if-eqz p1, :cond_29

    .line 1057
    int-to-float v2, p2

    mul-float/2addr v2, v1

    .line 1058
    .restart local v2    # "smallFreeformHeight":F
    mul-float v3, v2, v0

    move v1, v3

    .local v3, "smallFreeformWidth":F
    goto :goto_2f

    .line 1060
    .end local v2    # "smallFreeformHeight":F
    .end local v3    # "smallFreeformWidth":F
    :cond_29
    int-to-float v2, p2

    mul-float/2addr v2, v1

    .line 1061
    .local v2, "smallFreeformWidth":F
    div-float v3, v2, v0

    move v1, v2

    move v2, v3

    .line 1064
    .local v1, "smallFreeformWidth":F
    .local v2, "smallFreeformHeight":F
    :goto_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "small freeform: {width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiMultiWindowUtils"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method public static blacklist getSmallFreeformRect(Landroid/content/Context;ZZ)Landroid/graphics/RectF;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLandscapeFreeform"    # Z
    .param p2, "isNormalFreeForm"    # Z

    .line 1041
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1042
    .local v0, "shortSide":I
    invoke-static {p0, p1, v0, p2}, Landroid/util/MiuiMultiWindowUtils;->getSmallFreeformRect(Landroid/content/Context;ZIZ)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSmallFreeformRoundCorner(Landroid/content/Context;)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 4010
    sget v0, Landroid/util/MiuiMultiWindowUtils;->PAD_SMALL_FREEFORM_ROUND_CORNER:F

    const v1, 0x3fb4fdf4    # 1.414f

    div-float/2addr v0, v1

    return v0
.end method

.method public static blacklist getSmallWindowScreenRatio(ZLandroid/content/Context;)F
    .registers 4
    .param p0, "landscape"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .line 1934
    invoke-static {p1}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v1, v0}, Landroid/util/MiuiMultiWindowUtils;->getMiniFreeFormArg(ZZII)F

    move-result v0

    .line 1935
    .local v0, "windowScreenRatio":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_12

    .line 1936
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 1938
    :cond_12
    return v0
.end method

.method public static blacklist getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4277
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4278
    .local v1, "declaredField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4279
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    .line 4280
    .end local v1    # "declaredField":Ljava/lang/reflect/Field;
    :catch_e
    move-exception v1

    .line 4281
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticObjectField:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiMultiWindowUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static blacklist getStatusBarHeight(Landroid/content/Context;I)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defValue"    # I

    .line 1253
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/util/MiuiMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist getStatusBarHeight(Landroid/content/Context;IZ)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defValue"    # I
    .param p2, "ignoreVisibility"    # Z

    .line 1259
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1260
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    .line 1261
    .local v1, "maximumWindowMetrics":Landroid/view/WindowMetrics;
    if-eqz p2, :cond_1b

    .line 1262
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    goto :goto_27

    .line 1263
    :cond_1b
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    :goto_27
    nop

    .line 1264
    .local v2, "statusBar":Landroid/graphics/Insets;
    iget v3, v2, Landroid/graphics/Insets;->top:I

    if-eqz v3, :cond_2f

    .line 1265
    iget v3, v2, Landroid/graphics/Insets;->top:I

    return v3

    .line 1266
    :cond_2f
    iget v3, v2, Landroid/graphics/Insets;->bottom:I

    if-eqz v3, :cond_36

    .line 1267
    iget v3, v2, Landroid/graphics/Insets;->bottom:I

    return v3

    .line 1268
    :cond_36
    iget v3, v2, Landroid/graphics/Insets;->left:I

    if-eqz v3, :cond_3d

    .line 1269
    iget v3, v2, Landroid/graphics/Insets;->left:I

    return v3

    .line 1270
    :cond_3d
    iget v3, v2, Landroid/graphics/Insets;->right:I

    if-eqz v3, :cond_44

    .line 1271
    iget v3, v2, Landroid/graphics/Insets;->right:I

    return v3

    .line 1273
    :cond_44
    return p1
.end method

.method private static blacklist getTaskResizeable(Landroid/app/ActivityManager;Landroid/app/ActivityTaskManager$RootTaskInfo;)Z
    .registers 8
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .param p1, "rootTaskInfo"    # Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 3097
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTaskResizeableForFreeform"

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3098
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3099
    .local v1, "getTaskResizeable":Ljava/lang/reflect/Method;
    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    aget v3, v3, v5

    .line 3100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 3099
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    return v0

    .line 3101
    .end local v1    # "getTaskResizeable":Ljava/lang/reflect/Method;
    :catch_29
    move-exception v1

    .line 3102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3104
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static blacklist getTopCaptionViewHeight(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 679
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {p0, v0}, Landroid/util/MiuiMultiWindowUtils;->getInsetValueFromServer(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getTopCaptionViewHeightForClient(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 672
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/MiuiMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private static blacklist getTopMargin(Landroid/content/Context;ZZIIIFLandroid/graphics/Rect;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertical"    # Z
    .param p2, "freeformLandscape"    # Z
    .param p3, "screenType"    # I
    .param p4, "displayShortSide"    # I
    .param p5, "displayLongSide"    # I
    .param p6, "freeFormHeight"    # F
    .param p7, "accessibleArea"    # Landroid/graphics/Rect;

    .line 2058
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_18

    .line 2059
    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p6

    div-float/2addr v0, v1

    iget v1, p7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2060
    .local v0, "top":I
    return v0

    .line 2062
    .end local v0    # "top":I
    :cond_18
    if-nez p1, :cond_26

    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_26

    .line 2063
    int-to-float v0, p4

    sub-float/2addr v0, p6

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 2064
    .restart local v0    # "top":I
    return v0

    .line 2066
    .end local v0    # "top":I
    :cond_26
    const/4 v0, 0x3

    invoke-static {p1, p2, v0, p3}, Landroid/util/MiuiMultiWindowUtils;->getFreeFormArg(ZZII)F

    move-result v0

    .line 2067
    .local v0, "topMarginRatio":F
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_3a

    .line 2068
    if-eqz p1, :cond_35

    const/4 v1, 0x0

    goto :goto_39

    :cond_35
    int-to-float v2, p4

    sub-float/2addr v2, p6

    div-float/2addr v2, v1

    float-to-int v1, v2

    :goto_39
    return v1

    .line 2070
    :cond_3a
    int-to-float v1, p5

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static blacklist getTopSplitPackageNames(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4310
    const-string v0, "activity_task"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager;

    .line 4311
    .local v0, "activityTaskManager":Landroid/app/ActivityTaskManager;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getTopSplitPackageNames"

    invoke-static {v0, v2, v1}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4312
    .local v1, "splitPackageNames":Ljava/lang/Object;
    if-eqz v1, :cond_1b

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1b

    .line 4313
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    return-object v2

    .line 4315
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method private static blacklist getTotalRam()I
    .registers 2

    .line 3318
    sget v0, Landroid/util/MiuiMultiWindowUtils;->mTotalRamStr:I

    if-eqz v0, :cond_5

    .line 3319
    return v0

    .line 3322
    :cond_5
    if-nez v0, :cond_2b

    .line 3323
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/MiuiMultiWindowUtils;->formatSizeWith1024(J)I

    move-result v0

    sput v0, Landroid/util/MiuiMultiWindowUtils;->mTotalRamStr:I

    .line 3324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTotalRam formatSizeWith1024: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/util/MiuiMultiWindowUtils;->mTotalRamStr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiMultiWindowUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    :cond_2b
    sget v0, Landroid/util/MiuiMultiWindowUtils;->mTotalRamStr:I

    return v0
.end method

.method public static blacklist getVisualBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 9
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .line 2603
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 2604
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v5, p0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 2605
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    add-float/2addr v5, v4

    float-to-int v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2603
    return-object v0
.end method

.method public static blacklist hasSmallFreeform()Z
    .registers 5

    .line 2987
    nop

    .line 2988
    const/4 v0, -0x1

    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0

    .line 2989
    .local v0, "miuiFreeFormStackInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 2990
    .local v2, "miuiFreeFormStackInfo":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    iget v3, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    iget-boolean v3, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    if-nez v3, :cond_20

    .line 2992
    return v4

    .line 2994
    .end local v2    # "miuiFreeFormStackInfo":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    :cond_20
    goto :goto_a

    .line 2995
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist inCvwResizeRegion(Landroid/graphics/Rect;FF)Z
    .registers 6
    .param p0, "freeFormVisualRect"    # Landroid/graphics/Rect;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3802
    const/4 v0, 0x4

    invoke-static {v0, p0}, Landroid/util/MiuiMultiWindowUtils;->getCvwResizeRegion(ILandroid/graphics/Rect;)Landroid/util/MiuiMultiWindowUtils$RoundedRectF;

    move-result-object v0

    .line 3803
    .local v0, "leftResizeRegion":Landroid/util/MiuiMultiWindowUtils$RoundedRectF;
    const/4 v1, 0x5

    invoke-static {v1, p0}, Landroid/util/MiuiMultiWindowUtils;->getCvwResizeRegion(ILandroid/graphics/Rect;)Landroid/util/MiuiMultiWindowUtils$RoundedRectF;

    move-result-object v1

    .line 3804
    .local v1, "rightResizeRegion":Landroid/util/MiuiMultiWindowUtils$RoundedRectF;
    invoke-virtual {v0, p1, p2}, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v1, p1, p2}, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_19

    :cond_17
    const/4 v2, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v2, 0x1

    :goto_1a
    return v2
.end method

.method private static blacklist inFreeformHotSpotNum(FF[FZLandroid/util/DisplayMetrics;)I
    .registers 16
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "params"    # [F
    .param p3, "isBottomHotArea"    # Z
    .param p4, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 846
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz p3, :cond_a6

    .line 847
    new-instance v6, Landroid/graphics/Rect;

    aget v7, p2, v5

    aget v8, p2, v4

    add-float/2addr v7, v8

    float-to-int v7, v7

    aget v8, p2, v3

    float-to-int v8, v8

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v7, p0

    float-to-int v8, p1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_a5

    new-instance v6, Landroid/graphics/Rect;

    aget v7, p2, v4

    float-to-int v7, v7

    aget v8, p2, v3

    aget v9, p2, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v7, p0

    float-to-int v8, p1

    .line 848
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_a5

    aget v6, p2, v4

    aget v7, p2, v3

    .line 849
    invoke-static {p0, p1, v6, v7}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v6

    aget v8, p2, v5

    float-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_44

    goto :goto_a5

    .line 851
    :cond_44
    new-instance v1, Landroid/graphics/Rect;

    iget v6, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    aget v7, p2, v4

    sub-float/2addr v6, v7

    aget v7, p2, v5

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v8, p2, v3

    float-to-int v8, v8

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v6, p0

    float-to-int v7, p1

    .line 852
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_a4

    new-instance v1, Landroid/graphics/Rect;

    iget v6, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    aget v7, p2, v4

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v8, p2, v3

    aget v9, p2, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v6, p0

    float-to-int v7, p1

    .line 854
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_a4

    iget v1, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    aget v4, p2, v4

    sub-float/2addr v1, v4

    aget v3, p2, v3

    .line 855
    invoke-static {p0, p1, v1, v3}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v3

    aget v1, p2, v5

    float-to-double v5, v1

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_90

    goto :goto_a4

    .line 859
    :cond_90
    const/4 v1, 0x6

    aget v3, p2, v1

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_a3

    iget v3, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v3, v2

    int-to-float v2, v3

    aget v1, p2, v1

    .line 860
    invoke-static {p0, p1, v2, v1}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    const/4 v1, 0x5

    aget v1, p2, v1

    .line 861
    :cond_a3
    return v0

    .line 856
    :cond_a4
    :goto_a4
    return v2

    .line 850
    :cond_a5
    :goto_a5
    return v1

    .line 864
    :cond_a6
    new-instance v6, Landroid/graphics/Rect;

    aget v7, p2, v5

    aget v8, p2, v4

    add-float/2addr v7, v8

    float-to-int v7, v7

    aget v8, p2, v3

    float-to-int v8, v8

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v7, p0

    float-to-int v8, p1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1dc

    new-instance v6, Landroid/graphics/Rect;

    aget v7, p2, v4

    float-to-int v7, v7

    aget v8, p2, v3

    aget v9, p2, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v7, p0

    float-to-int v8, p1

    .line 865
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1dc

    aget v6, p2, v4

    aget v7, p2, v3

    .line 866
    invoke-static {p0, p1, v6, v7}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v6

    aget v8, p2, v5

    float-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_e3

    goto/16 :goto_1dc

    .line 868
    :cond_e3
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aget v8, p2, v4

    sub-float/2addr v7, v8

    aget v8, p2, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v9, p2, v3

    float-to-int v9, v9

    invoke-direct {v6, v7, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v7, p0

    float-to-int v8, p1

    .line 869
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1db

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aget v8, p2, v4

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v9, p2, v3

    aget v10, p2, v5

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v6, v7, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v7, p0

    float-to-int v8, p1

    .line 871
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1db

    iget v6, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    aget v7, p2, v4

    sub-float/2addr v6, v7

    aget v7, p2, v3

    .line 872
    invoke-static {p0, p1, v6, v7}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v6

    aget v8, p2, v5

    float-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_130

    goto/16 :goto_1db

    .line 874
    :cond_130
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aget v8, p2, v2

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aget v8, p2, v5

    aget v9, p2, v1

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v6, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v7, p0

    float-to-int v8, p1

    .line 875
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1da

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aget v8, p2, v2

    sub-float/2addr v7, v8

    aget v8, p2, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aget v8, p2, v1

    float-to-int v8, v8

    iget v9, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v6, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v7, p0

    float-to-int v8, p1

    .line 877
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1da

    aget v6, p2, v1

    iget v7, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aget v8, p2, v2

    sub-float/2addr v7, v8

    .line 878
    invoke-static {p0, p1, v6, v7}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v6

    aget v8, p2, v5

    float-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_17c

    goto :goto_1da

    .line 880
    :cond_17c
    new-instance v4, Landroid/graphics/Rect;

    iget v6, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    aget v7, p2, v5

    sub-float/2addr v6, v7

    aget v7, p2, v1

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aget v8, p2, v2

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v6, p0

    float-to-int v7, p1

    .line 882
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1d9

    new-instance v4, Landroid/graphics/Rect;

    iget v6, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    aget v7, p2, v1

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aget v8, p2, v2

    sub-float/2addr v7, v8

    aget v8, p2, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v6, p0

    float-to-int v7, p1

    .line 885
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1d9

    iget v4, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    aget v1, p2, v1

    sub-float/2addr v4, v1

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    aget v2, p2, v2

    sub-float/2addr v1, v2

    .line 886
    invoke-static {p0, p1, v4, v1}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v1

    aget v4, p2, v5

    float-to-double v4, v4

    cmpg-double v1, v1, v4

    if-gtz v1, :cond_1d8

    goto :goto_1d9

    .line 891
    :cond_1d8
    return v0

    .line 888
    :cond_1d9
    :goto_1d9
    return v3

    .line 879
    :cond_1da
    :goto_1da
    return v4

    .line 873
    :cond_1db
    :goto_1db
    return v2

    .line 867
    :cond_1dc
    :goto_1dc
    return v1
.end method

.method private static blacklist initFreeFormResolutionArgs()V
    .registers 1

    .line 1743
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->readFreeFormResolutionArgsFromJson()Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_ALL:Lorg/json/JSONObject;

    .line 1744
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->initFreeFormResolutionArgsOfDevice(Ljava/lang/String;)V

    .line 1745
    return-void
.end method

.method private static blacklist initFreeFormResolutionArgsGeneral(Ljava/lang/String;ZI)V
    .registers 6
    .param p0, "deviceName"    # Ljava/lang/String;
    .param p1, "useDefaultArgs"    # Z
    .param p2, "screenType"    # I

    .line 1752
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_ALL:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    return-void

    .line 1754
    :cond_5
    :try_start_5
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_OF_DEVICE:Lorg/json/JSONObject;

    .line 1755
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->FREEFORM:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;)V

    .line 1756
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->MINI_FREEFORM:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;)V

    .line 1757
    sget-boolean v0, Landroid/util/MiuiMultiWindowUtils;->IS_FOLD_SCREEN_DEVICE:Z

    if-eqz v0, :cond_49

    .line 1758
    if-eqz p1, :cond_35

    .line 1759
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lt p2, v0, :cond_2a

    .line 1760
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->FREEFORM_INNER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0, v1}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;Z)V

    .line 1761
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->MINI_FREEFORM_INNER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0, v1}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;Z)V

    goto :goto_49

    .line 1763
    :cond_2a
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->FREEFORM_OUTER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0, v1}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;Z)V

    .line 1764
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->MINI_FREEFORM_OUTER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0, v1}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;Z)V

    goto :goto_49

    .line 1767
    :cond_35
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->FREEFORM_INNER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;)V

    .line 1768
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->FREEFORM_OUTER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;)V

    .line 1769
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->MINI_FREEFORM_INNER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;)V

    .line 1770
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->MINI_FREEFORM_OUTER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_49} :catch_4a

    .line 1775
    :cond_49
    :goto_49
    goto :goto_63

    .line 1773
    :catch_4a
    move-exception v0

    .line 1774
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFreeFormResolutionArgs failed, device is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_63
    return-void
.end method

.method private static blacklist initFreeFormResolutionArgsOfDefault(I)V
    .registers 5
    .param p0, "screenType"    # I

    .line 1779
    if-ltz p0, :cond_17

    const/4 v0, 0x3

    if-gt p0, v0, :cond_17

    .line 1780
    const-string v0, "narrow_default"

    const-string v1, "regular_default"

    const-string v2, "wide_default"

    const-string v3, "pad_default"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 1781
    .local v0, "devices":[Ljava/lang/String;
    aget-object v1, v0, p0

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/util/MiuiMultiWindowUtils;->initFreeFormResolutionArgsGeneral(Ljava/lang/String;ZI)V

    .line 1783
    .end local v0    # "devices":[Ljava/lang/String;
    :cond_17
    return-void
.end method

.method private static blacklist initFreeFormResolutionArgsOfDevice(Ljava/lang/String;)V
    .registers 3
    .param p0, "devicesName"    # Ljava/lang/String;

    .line 1748
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/util/MiuiMultiWindowUtils;->initFreeFormResolutionArgsGeneral(Ljava/lang/String;ZI)V

    .line 1749
    return-void
.end method

.method private static blacklist initParams(ZZLandroid/util/DisplayMetrics;Z)[F
    .registers 18
    .param p0, "isReminder"    # Z
    .param p1, "isBottomHotArea"    # Z
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "isVertical"    # Z

    .line 774
    move-object/from16 v0, p2

    const/4 v1, 0x7

    new-array v1, v1, [F

    .line 775
    .local v1, "params":[F
    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-nez p1, :cond_92

    .line 776
    if-nez p0, :cond_3f

    .line 777
    if-eqz p3, :cond_16

    sget v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_RADIUS:F

    goto :goto_18

    .line 778
    :cond_16
    sget v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_RADIUS:F

    :goto_18
    aput v10, v1, v9

    .line 779
    if-eqz p3, :cond_1f

    sget v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

    goto :goto_21

    .line 780
    :cond_1f
    sget v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

    :goto_21
    aput v9, v1, v3

    .line 781
    if-eqz p3, :cond_28

    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

    goto :goto_2a

    .line 782
    :cond_28
    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

    :goto_2a
    aput v3, v1, v4

    .line 783
    if-eqz p3, :cond_31

    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    goto :goto_33

    .line 784
    :cond_31
    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    :goto_33
    aput v3, v1, v8

    .line 785
    if-eqz p3, :cond_3a

    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    goto :goto_3c

    .line 786
    :cond_3a
    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    :goto_3c
    aput v3, v1, v7

    goto :goto_8c

    .line 788
    :cond_3f
    sget-boolean v10, Landroid/util/MiuiMultiWindowUtils;->IS_FOLD_SCREEN_DEVICE:Z

    if-eqz v10, :cond_5f

    .line 789
    if-eqz p3, :cond_48

    sget v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_RADIUS_FOLD:F

    goto :goto_4a

    .line 790
    :cond_48
    sget v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_RADIUS_FOLD:F

    :goto_4a
    aput v10, v1, v9

    .line 791
    if-eqz p3, :cond_51

    sget v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_BOTTOM_MARGIN_FOLD:F

    goto :goto_53

    .line 792
    :cond_51
    sget v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_BOTTOM_MARGIN_FOLD:F

    :goto_53
    aput v9, v1, v4

    .line 793
    if-eqz p3, :cond_5a

    sget v4, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN_FLOD:F

    goto :goto_5c

    .line 794
    :cond_5a
    sget v4, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN_FOLD:F

    :goto_5c
    aput v4, v1, v7

    goto :goto_7a

    .line 796
    :cond_5f
    if-eqz p3, :cond_64

    sget v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_RADIUS:F

    goto :goto_66

    .line 797
    :cond_64
    sget v10, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_RADIUS:F

    :goto_66
    aput v10, v1, v9

    .line 798
    if-eqz p3, :cond_6d

    sget v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_BOTTOM_MARGIN:F

    goto :goto_6f

    .line 799
    :cond_6d
    sget v9, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_BOTTOM_MARGIN:F

    :goto_6f
    aput v9, v1, v4

    .line 800
    if-eqz p3, :cond_76

    sget v4, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    goto :goto_78

    .line 801
    :cond_76
    sget v4, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    :goto_78
    aput v4, v1, v7

    .line 803
    :goto_7a
    if-eqz p3, :cond_7f

    sget v4, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_BOTTOM_MARGIN:F

    goto :goto_81

    .line 804
    :cond_7f
    sget v4, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_BOTTOM_MARGIN:F

    :goto_81
    aput v4, v1, v3

    .line 805
    if-eqz p3, :cond_88

    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    goto :goto_8a

    .line 806
    :cond_88
    sget v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    :goto_8a
    aput v3, v1, v8

    .line 808
    :goto_8c
    aput v5, v1, v6

    .line 809
    aput v5, v1, v2

    goto/16 :goto_11f

    .line 812
    :cond_92
    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x40000000    # 2.0f

    if-nez p0, :cond_d6

    .line 813
    if-eqz p3, :cond_9f

    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_PORTRAIT_RADIUS:F

    goto :goto_a1

    .line 814
    :cond_9f
    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_LANDCAPE_RADIUS:F

    :goto_a1
    aput v13, v1, v9

    .line 815
    if-eqz p3, :cond_a8

    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    goto :goto_aa

    .line 816
    :cond_a8
    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    :goto_aa
    aput v13, v1, v8

    .line 817
    if-eqz p3, :cond_b1

    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    goto :goto_b3

    .line 818
    :cond_b1
    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_TRIGGER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    :goto_b3
    aput v13, v1, v7

    .line 819
    if-eqz p3, :cond_b9

    move v7, v5

    goto :goto_c8

    .line 820
    :cond_b9
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aget v8, v1, v8

    aget v9, v1, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    div-float/2addr v7, v12

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v7, v8

    :goto_c8
    aput v7, v1, v6

    .line 821
    if-eqz p3, :cond_cf

    sget v6, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_CENTER_HOTSPOT_TRIGGER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    goto :goto_d3

    .line 822
    :cond_cf
    aget v6, v1, v6

    mul-float/2addr v6, v11

    div-float/2addr v6, v10

    :goto_d3
    aput v6, v1, v2

    goto :goto_11b

    .line 824
    :cond_d6
    if-eqz p3, :cond_db

    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_PORTRAIT_RADIUS:F

    goto :goto_dd

    .line 825
    :cond_db
    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_LANDCAPE_RADIUS:F

    :goto_dd
    aput v13, v1, v9

    .line 826
    if-eqz p3, :cond_e4

    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_PORTRAIT_HORIZONTAL_TOP_MARGIN:F

    goto :goto_e6

    .line 827
    :cond_e4
    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_LANDCAPE_HORIZONTAL_TOP_MARGIN:F

    :goto_e6
    aput v13, v1, v8

    .line 828
    if-eqz p3, :cond_ed

    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    goto :goto_ef

    .line 829
    :cond_ed
    sget v13, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_HOTSPOT_REMINDER_LANDCAPE_VERTICAL_TOP_MARGIN:F

    :goto_ef
    aput v13, v1, v7

    .line 830
    if-eqz p3, :cond_ff

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aget v8, v1, v8

    aget v9, v1, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    div-float/2addr v7, v12

    goto :goto_10e

    .line 831
    :cond_ff
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aget v8, v1, v8

    aget v9, v1, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    div-float/2addr v7, v12

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    :goto_10e
    aput v7, v1, v6

    .line 832
    if-eqz p3, :cond_115

    sget v6, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_BOTTOM_CENTER_HOTSPOT_REMINDER_PORTRAIT_VERTICAL_TOP_MARGIN:F

    goto :goto_119

    .line 833
    :cond_115
    aget v6, v1, v6

    mul-float/2addr v6, v11

    div-float/2addr v6, v10

    :goto_119
    aput v6, v1, v2

    .line 835
    :goto_11b
    aput v5, v1, v3

    .line 836
    aput v5, v1, v4

    .line 838
    :goto_11f
    return-object v1
.end method

.method public static varargs blacklist invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 1577
    const/4 v0, 0x0

    .line 1579
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1580
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v3, 0x1

    if-nez p2, :cond_19

    .line 1581
    invoke-virtual {v2, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v0, v4

    .line 1582
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1583
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1585
    :cond_19
    array-length v4, p2

    new-array v4, v4, [Ljava/lang/Class;

    .line 1586
    .local v4, "argsClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d
    array-length v6, p2

    if-ge v5, v6, :cond_4c

    .line 1587
    aget-object v6, p2, v5

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2b

    .line 1588
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    goto :goto_49

    .line 1589
    :cond_2b
    aget-object v6, p2, v5

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_36

    .line 1590
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    goto :goto_49

    .line 1591
    :cond_36
    aget-object v6, p2, v5

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_41

    .line 1592
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    goto :goto_49

    .line 1594
    :cond_41
    aget-object v6, p2, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1586
    :goto_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1597
    .end local v5    # "i":I
    :cond_4c
    invoke-virtual {v2, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v0, v5

    .line 1598
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1599
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_59

    return-object v1

    .line 1600
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "argsClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_59
    move-exception v2

    .line 1601
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeclaredMethod:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiMultiWindowUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public static blacklist isEnableAbnormalFreeform(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)Z
    .registers 9
    .param p0, "currentPackage"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "enableAbnormalFreeform"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 3541
    .local p2, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->isMiuiDesktopModeActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3542
    return v1

    .line 3544
    :cond_8
    const/4 v0, -0x1

    const/4 v2, 0x0

    if-eq p4, v0, :cond_37

    if-nez p4, :cond_f

    goto :goto_37

    .line 3546
    :cond_f
    if-ne p4, v1, :cond_32

    .line 3548
    :try_start_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3549
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->isThirdPartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3550
    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 3551
    return v1

    .line 3554
    :cond_26
    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2a} :catch_2d

    if-eqz v3, :cond_31

    .line 3555
    return v1

    .line 3558
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_2d
    move-exception v0

    .line 3559
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3560
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    goto :goto_36

    .line 3561
    :cond_32
    const/4 v0, 0x2

    if-ne p4, v0, :cond_36

    .line 3562
    return v1

    .line 3565
    :cond_36
    :goto_36
    return v2

    .line 3545
    :cond_37
    :goto_37
    return v2
.end method

.method public static blacklist isEnterHotArea(Landroid/content/Context;FF)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 696
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/MiuiMultiWindowUtils;->isEnterHotArea(Landroid/content/Context;FFZ)I

    move-result v0

    return v0
.end method

.method public static blacklist isEnterHotArea(Landroid/content/Context;FFZ)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isReminder"    # Z

    .line 700
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/util/MiuiMultiWindowUtils;->isEnterHotArea(Landroid/content/Context;FFZZ)I

    move-result v0

    return v0
.end method

.method public static blacklist isEnterHotArea(Landroid/content/Context;FFZZ)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isReminder"    # Z
    .param p4, "isBottomHotArea"    # Z

    .line 704
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 705
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V

    .line 706
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_14

    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    const/4 v1, 0x1

    .line 707
    .local v1, "isVertical":Z
    :goto_15
    invoke-static {p3, p4, v0, v1}, Landroid/util/MiuiMultiWindowUtils;->initParams(ZZLandroid/util/DisplayMetrics;Z)[F

    move-result-object v2

    .line 708
    .local v2, "params":[F
    invoke-static {p1, p2, v2, p4, v0}, Landroid/util/MiuiMultiWindowUtils;->inFreeformHotSpotNum(FF[FZLandroid/util/DisplayMetrics;)I

    move-result v3

    return v3
.end method

.method public static blacklist isEnterHotArea(ZLandroid/content/Context;FF)I
    .registers 20
    .param p0, "inSmallFreeform"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 712
    move/from16 v0, p2

    move/from16 v1, p3

    if-nez p0, :cond_b

    .line 713
    invoke-static/range {p1 .. p3}, Landroid/util/MiuiMultiWindowUtils;->isEnterHotArea(Landroid/content/Context;FF)I

    move-result v2

    return v2

    .line 716
    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 718
    .local v2, "displayWidth":I
    int-to-float v3, v2

    const/high16 v4, 0x43b00000    # 352.0f

    sub-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 719
    .local v3, "left":F
    const/high16 v6, 0x42860000    # 67.0f

    .line 720
    .local v6, "top":F
    new-instance v7, Landroid/graphics/RectF;

    const/high16 v8, 0x42300000    # 44.0f

    add-float v9, v6, v8

    add-float v10, v3, v4

    const/high16 v11, 0x43460000    # 198.0f

    add-float v12, v6, v11

    sub-float/2addr v12, v8

    invoke-direct {v7, v3, v9, v10, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 723
    .local v7, "hotAreaRect1":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/RectF;

    add-float v10, v3, v8

    add-float/2addr v4, v3

    sub-float/2addr v4, v8

    add-float/2addr v11, v6

    invoke-direct {v9, v10, v6, v4, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v4, v9

    .line 727
    .local v4, "hotAreaRect2":Landroid/graphics/RectF;
    invoke-virtual {v7, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-nez v9, :cond_135

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-nez v9, :cond_135

    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    .line 728
    invoke-static {v0, v1, v9, v10}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v9

    const-wide/high16 v11, 0x4046000000000000L    # 44.0

    cmpg-double v9, v9, v11

    if-lez v9, :cond_135

    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    .line 729
    invoke-static {v0, v1, v9, v10}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v9

    cmpg-double v9, v9, v11

    if-lez v9, :cond_135

    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    .line 730
    invoke-static {v0, v1, v9, v10}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v9

    cmpg-double v9, v9, v11

    if-lez v9, :cond_135

    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    .line 731
    invoke-static {v0, v1, v9, v10}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v9

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_77

    goto/16 :goto_135

    .line 735
    :cond_77
    int-to-float v9, v2

    const v10, 0x43f18000    # 483.0f

    sub-float/2addr v9, v10

    div-float/2addr v9, v5

    .line 736
    .end local v3    # "left":F
    .local v9, "left":F
    const/high16 v3, 0x41000000    # 8.0f

    .line 737
    .end local v6    # "top":F
    .local v3, "top":F
    add-float v6, v3, v8

    add-float v13, v9, v10

    const/high16 v14, 0x439e0000    # 316.0f

    add-float v15, v3, v14

    sub-float/2addr v15, v8

    invoke-virtual {v7, v9, v6, v13, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 740
    add-float v6, v9, v8

    add-float/2addr v10, v9

    sub-float/2addr v10, v8

    add-float/2addr v14, v3

    invoke-virtual {v4, v6, v3, v10, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 743
    invoke-virtual {v7, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_133

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_133

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 744
    invoke-static {v0, v1, v6, v8}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v13

    cmpg-double v6, v13, v11

    if-lez v6, :cond_133

    iget v6, v4, Landroid/graphics/RectF;->right:F

    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 745
    invoke-static {v0, v1, v6, v8}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v13

    cmpg-double v6, v13, v11

    if-lez v6, :cond_133

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 746
    invoke-static {v0, v1, v6, v8}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v13

    cmpg-double v6, v13, v11

    if-lez v6, :cond_133

    iget v6, v4, Landroid/graphics/RectF;->right:F

    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 747
    invoke-static {v0, v1, v6, v8}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v13

    cmpg-double v6, v13, v11

    if-gtz v6, :cond_d0

    goto :goto_133

    .line 751
    :cond_d0
    int-to-float v6, v2

    const v8, 0x441f8000    # 638.0f

    sub-float/2addr v6, v8

    div-float/2addr v6, v5

    .line 752
    .end local v9    # "left":F
    .local v6, "left":F
    const/high16 v3, 0x41000000    # 8.0f

    .line 753
    const/high16 v5, 0x42880000    # 68.0f

    add-float v9, v3, v5

    add-float v10, v6, v8

    const v11, 0x43c68000    # 397.0f

    add-float v12, v3, v11

    sub-float/2addr v12, v5

    invoke-virtual {v7, v6, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 756
    add-float v9, v6, v5

    add-float/2addr v8, v6

    sub-float/2addr v8, v5

    add-float/2addr v11, v3

    invoke-virtual {v4, v9, v3, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 759
    invoke-virtual {v7, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_130

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_130

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 760
    invoke-static {v0, v1, v5, v8}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v8

    const-wide/high16 v10, 0x4051000000000000L    # 68.0

    cmpg-double v5, v8, v10

    if-lez v5, :cond_130

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 761
    invoke-static {v0, v1, v5, v8}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v8

    cmpg-double v5, v8, v10

    if-lez v5, :cond_130

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 762
    invoke-static {v0, v1, v5, v8}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v8

    cmpg-double v5, v8, v10

    if-lez v5, :cond_130

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 763
    invoke-static {v0, v1, v5, v8}, Landroid/util/MiuiMultiWindowUtils;->getDistance(FFFF)D

    move-result-wide v8

    cmpg-double v5, v8, v10

    if-gtz v5, :cond_12e

    goto :goto_130

    .line 767
    :cond_12e
    const/4 v5, -0x2

    return v5

    .line 764
    :cond_130
    :goto_130
    const/16 v5, 0x8

    return v5

    .line 748
    .end local v6    # "left":F
    .restart local v9    # "left":F
    :cond_133
    :goto_133
    const/4 v5, 0x7

    return v5

    .line 732
    .end local v9    # "left":F
    .local v3, "left":F
    .local v6, "top":F
    :cond_135
    :goto_135
    const/4 v5, 0x6

    return v5
.end method

.method public static blacklist isFoldInnerScreen(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 4018
    sget-boolean v0, Landroid/util/MiuiMultiWindowUtils;->IS_FOLD_SCREEN_DEVICE:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static blacklist isFoldOuterScreen(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 4022
    sget-boolean v0, Landroid/util/MiuiMultiWindowUtils;->IS_FOLD_SCREEN_DEVICE:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static blacklist isForceResizeable()Z
    .registers 1

    .line 3728
    const/4 v0, 0x0

    .line 3729
    .local v0, "forceResize":Z
    return v0
.end method

.method public static blacklist isFullScreenGestureNav(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1368
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public static blacklist isGameApp(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7
    .param p0, "currentPackage"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 2116
    invoke-static {p0}, Landroid/util/MiuiMultiWindowAdapter;->isInTopGameListInSystem(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2117
    return v1

    .line 2120
    :cond_8
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2121
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_25

    .line 2122
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v3, :cond_21

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_26

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1f

    goto :goto_21

    :cond_1f
    move v3, v0

    goto :goto_22

    :cond_21
    :goto_21
    move v3, v1

    .line 2125
    .local v3, "isGame":Z
    :goto_22
    if-eqz v3, :cond_25

    .line 2126
    return v1

    .line 2131
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "isGame":Z
    :cond_25
    goto :goto_27

    .line 2129
    :catch_26
    move-exception v1

    .line 2132
    :goto_27
    return v0
.end method

.method public static blacklist isGlobalLauncher()Z
    .registers 2

    .line 3710
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getLauncherPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mi.android.globallauncher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isHideGestureLine(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public static blacklist isInFullScreenNavHotArea(Landroid/content/Context;FF)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 4117
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/MiuiMultiWindowUtils;->isInFullScreenNavHotArea(Landroid/content/Context;FFZ)Z

    move-result v0

    return v0
.end method

.method public static blacklist isInFullScreenNavHotArea(Landroid/content/Context;FFZ)Z
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isInHome"    # Z

    .line 4064
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isFullScreenGestureNav(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_e

    return v4

    .line 4065
    :cond_e
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    .line 4066
    .local v3, "outRect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 4067
    .local v5, "displayWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 4068
    .local v6, "displayHeight":I
    const/4 v7, 0x1

    if-ge v5, v6, :cond_1f

    move v8, v7

    goto :goto_20

    :cond_1f
    move v8, v4

    .line 4069
    .local v8, "vertical":Z
    :goto_20
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 4070
    .local v9, "homeHandleHotArea":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 4071
    .local v10, "leftDockHotArea":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 4072
    .local v11, "rightDockHotArea":Landroid/graphics/RectF;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 4073
    .local v12, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v13, :cond_8d

    if-nez v2, :cond_8d

    .line 4074
    if-eqz v8, :cond_47

    const v13, 0x43a71c29    # 334.22f

    goto :goto_4a

    :cond_47
    const v13, 0x43d0e3d7    # 417.78f

    :goto_4a
    invoke-static {v7, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    .line 4076
    .local v13, "homeHandleWidth":F
    if-eqz v8, :cond_54

    const v15, 0x43071c29    # 135.11f

    goto :goto_57

    :cond_54
    const v15, 0x433f1c29    # 191.11f

    :goto_57
    invoke-static {v7, v15, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    .line 4078
    .local v15, "dockHotAreaWidth":F
    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {v7, v4, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 4080
    .local v4, "height":F
    int-to-float v7, v5

    sub-float/2addr v7, v13

    div-float/2addr v7, v14

    int-to-float v14, v6

    sub-float/2addr v14, v4

    move-object/from16 v17, v3

    .end local v3    # "outRect":Landroid/graphics/Rect;
    .local v17, "outRect":Landroid/graphics/Rect;
    int-to-float v3, v5

    add-float/2addr v3, v13

    const/high16 v16, 0x40000000    # 2.0f

    div-float v3, v3, v16

    int-to-float v2, v6

    invoke-virtual {v9, v7, v14, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4082
    int-to-float v2, v5

    sub-float/2addr v2, v13

    mul-float v14, v15, v16

    sub-float/2addr v2, v14

    div-float v2, v2, v16

    int-to-float v3, v6

    sub-float/2addr v3, v4

    iget v7, v9, Landroid/graphics/RectF;->left:F

    int-to-float v14, v6

    invoke-virtual {v10, v2, v3, v7, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4084
    iget v2, v9, Landroid/graphics/RectF;->right:F

    int-to-float v3, v6

    sub-float/2addr v3, v4

    iget v7, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v15

    int-to-float v14, v6

    invoke-virtual {v11, v2, v3, v7, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4086
    .end local v4    # "height":F
    .end local v13    # "homeHandleWidth":F
    .end local v15    # "dockHotAreaWidth":F
    goto :goto_d8

    .line 4073
    .end local v17    # "outRect":Landroid/graphics/Rect;
    .restart local v3    # "outRect":Landroid/graphics/Rect;
    :cond_8d
    move-object/from16 v17, v3

    .line 4087
    .end local v3    # "outRect":Landroid/graphics/Rect;
    .restart local v17    # "outRect":Landroid/graphics/Rect;
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v2

    .line 4090
    .local v2, "hideGestureLine":Z
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_ae

    .line 4091
    if-eqz v8, :cond_a0

    const v4, 0x3f19999a    # 0.6f

    :cond_a0
    move v3, v4

    .line 4092
    .local v3, "navWidthOffsetPercent":F
    if-eqz v2, :cond_a6

    const/high16 v4, 0x41a00000    # 20.0f

    goto :goto_a8

    :cond_a6
    const/high16 v4, 0x420c0000    # 35.0f

    :goto_a8
    const/4 v7, 0x1

    invoke-static {v7, v4, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .restart local v4    # "height":F
    goto :goto_c4

    .line 4095
    .end local v3    # "navWidthOffsetPercent":F
    .end local v4    # "height":F
    :cond_ae
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v8, :cond_b4

    :goto_b2
    move v4, v3

    goto :goto_b7

    :cond_b4
    if-eqz v2, :cond_b7

    goto :goto_b2

    :cond_b7
    :goto_b7
    move v3, v4

    .line 4096
    .restart local v3    # "navWidthOffsetPercent":F
    if-eqz v2, :cond_bd

    const/high16 v4, 0x41500000    # 13.0f

    goto :goto_bf

    :cond_bd
    const/high16 v4, 0x41c80000    # 25.0f

    :goto_bf
    const/4 v7, 0x1

    invoke-static {v7, v4, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 4099
    .restart local v4    # "height":F
    :goto_c4
    int-to-float v7, v5

    int-to-float v13, v5

    mul-float/2addr v13, v3

    sub-float/2addr v7, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v7, v13

    .line 4100
    .local v7, "left":F
    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    int-to-float v15, v5

    mul-float/2addr v15, v3

    div-float/2addr v15, v13

    add-float/2addr v14, v15

    .line 4101
    .local v14, "right":F
    int-to-float v13, v6

    sub-float/2addr v13, v4

    int-to-float v15, v6

    invoke-virtual {v9, v7, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4104
    .end local v2    # "hideGestureLine":Z
    .end local v3    # "navWidthOffsetPercent":F
    .end local v4    # "height":F
    .end local v7    # "left":F
    .end local v14    # "right":F
    :goto_d8
    invoke-virtual {v9, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_ed

    invoke-virtual {v10, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_ed

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_eb

    goto :goto_ed

    .line 4113
    :cond_eb
    const/4 v2, 0x0

    return v2

    .line 4105
    :cond_ed
    :goto_ed
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is inFullScreenNavHotArea displayWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isInHome:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " homeHandleHotArea:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " leftDockHotArea:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " rightDockHotArea:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MiuiMultiWindowUtils"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    const/4 v2, 0x1

    return v2
.end method

.method private static blacklist isKeyguardLocked(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3723
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3724
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static blacklist isLandscapeGameApp(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 8
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 3422
    const/4 v0, 0x0

    .line 3423
    .local v0, "isLandscape":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_37

    .line 3424
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3425
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3426
    invoke-virtual {v3, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3428
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 3429
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_37

    .line 3430
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v5}, Landroid/util/MiuiMultiWindowUtils;->isOrientationLandscape(I)Z

    move-result v5

    if-nez v5, :cond_35

    .line 3431
    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->getForceLandscapeApplicationInSystem()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_35

    :cond_33
    move v5, v2

    goto :goto_36

    :cond_35
    :goto_35
    move v5, v1

    :goto_36
    move v0, v5

    .line 3434
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_37
    if-eqz v0, :cond_40

    invoke-static {p0, p1}, Landroid/util/MiuiMultiWindowUtils;->isGameApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    return v1
.end method

.method public static varargs blacklist isMethodExist(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 9
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 1607
    const/4 v0, 0x0

    .line 1609
    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1610
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v2, 0x1

    if-nez p2, :cond_12

    .line 1611
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    .line 1612
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1613
    return-object v0

    .line 1615
    :cond_12
    array-length v3, p2

    new-array v3, v3, [Ljava/lang/Class;

    .line 1616
    .local v3, "argsClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    array-length v5, p2

    if-ge v4, v5, :cond_3a

    .line 1617
    aget-object v5, p2, v4

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_24

    .line 1618
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    goto :goto_37

    .line 1619
    :cond_24
    aget-object v5, p2, v4

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_2f

    .line 1620
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    goto :goto_37

    .line 1622
    :cond_2f
    aget-object v5, p2, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1616
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1625
    .end local v4    # "i":I
    :cond_3a
    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v0, v4

    .line 1626
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_43

    .line 1629
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "argsClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_60

    .line 1627
    :catch_43
    move-exception v1

    .line 1628
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeclaredMethod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiMultiWindowUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_60
    return-object v0
.end method

.method public static blacklist isNarrowScreen(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 2297
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2298
    .local v0, "displayWidth":I
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2299
    .local v1, "displayHeight":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3eaaaaab

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist isNavigationOrRecommendScene(ZZLjava/lang/String;Landroid/app/ActivityTaskManager$RootTaskInfo;)Z
    .registers 7
    .param p0, "isLaunchFromNotification"    # Z
    .param p1, "isLaunchFromRecommend"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "rootTaskInfo"    # Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 4324
    if-eqz p2, :cond_3b

    if-eqz p3, :cond_3b

    iget-object v0, p3, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3b

    .line 4325
    const/4 v0, 0x1

    if-eqz p0, :cond_22

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_FREEFORM_RECOMMEND_MAP_APPLICATION:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_FREEFORM_RECOMMEND_MAP_APPLICATION:Ljava/util/List;

    iget-object v2, p3, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4326
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4327
    :cond_21
    return v0

    .line 4328
    :cond_22
    if-eqz p1, :cond_3b

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_FREEFORM_RECOMMEND_WAITING_APPLICATION:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_FREEFORM_RECOMMEND_WAITING_APPLICATION:Ljava/util/List;

    iget-object v2, p3, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4329
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 4330
    :cond_3a
    return v0

    .line 4333
    :cond_3b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isNightMode(Landroid/content/Context;)Z
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 683
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 684
    .local v0, "uiManager":Landroid/app/UiModeManager;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static blacklist isNormalFreeForm(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;

    .line 1570
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/util/MiuiMultiWindowUtils;->getFreeformBlackList(Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v0

    .line 1571
    .local v0, "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1572
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isForceResizeable()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {p0, p1}, Landroid/util/MiuiMultiWindowUtils;->isPkgActivityResizeable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_18
    nop

    .line 1573
    const-string v2, "com.miui.player"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {p1}, Landroid/util/MiuiMultiWindowAdapter;->inFreeformWhiteListInSystem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_27
    const/4 v1, 0x1

    .line 1571
    :cond_28
    return v1
.end method

.method public static blacklist isNotchScreen(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1233
    :try_start_0
    const-string v0, "ro.miui.notch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1234
    .local v0, "notchProperty":Ljava/lang/String;
    if-eqz v0, :cond_12

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_13

    if-eqz v1, :cond_12

    .line 1235
    const/4 v1, 0x1

    return v1

    .line 1239
    .end local v0    # "notchProperty":Ljava/lang/String;
    :cond_12
    goto :goto_1b

    .line 1237
    :catch_13
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiMultiWindowUtils"

    const-string v2, "isNotchScreen"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1240
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isOrientationLandscape(I)Z
    .registers 2
    .param p0, "orientation"    # I

    .line 3438
    if-eqz p0, :cond_10

    const/4 v0, 0x6

    if-eq p0, v0, :cond_10

    const/16 v0, 0x8

    if-eq p0, v0, :cond_10

    const/16 v0, 0xb

    if-ne p0, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public static blacklist isOrientationPortrait(I)Z
    .registers 3
    .param p0, "orientation"    # I

    .line 3445
    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v1, 0x7

    if-eq p0, v1, :cond_10

    const/16 v1, 0x9

    if-eq p0, v1, :cond_10

    const/16 v1, 0xc

    if-ne p0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method

.method public static blacklist isPadScreen(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 4014
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist isPkgActivityResizeable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3664
    invoke-static {p0, p1}, Landroid/util/MiuiMultiWindowUtils;->isPkgMainActivityResizeable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3665
    const-string v0, "android.intent.category.DEFAULT"

    invoke-static {v0, p0, p1}, Landroid/util/MiuiMultiWindowUtils;->getActivityInfoResizeMode(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 3664
    :goto_16
    return v0
.end method

.method public static blacklist isPkgMainActivityResizeable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3660
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-static {v0, p0, p1}, Landroid/util/MiuiMultiWindowUtils;->getActivityInfoResizeMode(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportLatestVibrate()Z
    .registers 2

    .line 4287
    const-string v0, "sys.haptic.version"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportMiShadow()Z
    .registers 6

    .line 4163
    const-string v0, "persist.sys.mi_shadow_supported"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4164
    .local v0, "isSupported":Z
    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 4165
    return v2

    .line 4167
    :cond_b
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/SurfaceControl;

    aput-object v4, v3, v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 4170
    .local v3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_2a
    const-class v4, Landroid/view/SurfaceControl$Transaction;

    const-string v5, "setMiShadow"

    invoke-static {v4, v5, v3}, Landroid/util/MiuiMultiWindowUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2a .. :try_end_32} :catch_36

    .line 4171
    .local v4, "setShadowSettingsMethod":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_35

    .line 4172
    return v1

    .line 4175
    .end local v4    # "setShadowSettingsMethod":Ljava/lang/reflect/Method;
    :cond_35
    goto :goto_37

    .line 4174
    :catch_36
    move-exception v1

    .line 4176
    :goto_37
    return v2
.end method

.method public static blacklist isSupportMiuiMultiWindowRecommend()Z
    .registers 1

    .line 2759
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isSupportMiuiShadow()Z
    .registers 5

    .line 4150
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-class v4, [F

    aput-object v4, v0, v1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x6

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 4153
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_2c
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v4, "setShadowSettings"

    invoke-static {v1, v4, v0}, Landroid/util/MiuiMultiWindowUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2c .. :try_end_34} :catch_38

    .line 4154
    .local v1, "setShadowSettingsMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_37

    .line 4155
    return v3

    .line 4158
    .end local v1    # "setShadowSettingsMethod":Ljava/lang/reflect/Method;
    :cond_37
    goto :goto_39

    .line 4157
    :catch_38
    move-exception v1

    .line 4159
    :goto_39
    return v2
.end method

.method public static blacklist isSupportMiuiSurfaceRotation()Z
    .registers 5

    .line 4137
    const-class v0, [F

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v4, 0x2

    aput-object v0, v1, v4

    const/4 v4, 0x3

    aput-object v0, v1, v4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v0, v1, v4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x5

    aput-object v0, v1, v4

    move-object v0, v1

    .line 4140
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_1e
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v4, "setSurfaceRotation"

    invoke-static {v1, v4, v0}, Landroid/util/MiuiMultiWindowUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_26} :catch_2a

    .line 4141
    .local v1, "setSurfaceRotation":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_29

    .line 4142
    return v2

    .line 4145
    .end local v1    # "setSurfaceRotation":Ljava/lang/reflect/Method;
    :cond_29
    goto :goto_2b

    .line 4144
    :catch_2a
    move-exception v1

    .line 4146
    :goto_2b
    return v3
.end method

.method public static blacklist isSupportMultiSwitchFeature()Z
    .registers 5

    .line 4125
    nop

    .line 4126
    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4125
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "persist.sys.miui_optimization"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 4127
    .local v0, "IS_CTS_MODE":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IS_CTS_MODE"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Landroid/util/MiuiMultiWindowUtils;->MULTI_WINDOW_SWITCH_ENABLED:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MULTI_WINDOW_SWITCH_ENABLED"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    sget-boolean v2, Landroid/util/MiuiMultiWindowUtils;->MULTI_WINDOW_SWITCH_ENABLED:Z

    if-eqz v2, :cond_4d

    if-nez v0, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    return v1
.end method

.method public static blacklist isSupportSplitScreenFeature()Z
    .registers 2

    .line 4292
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getTotalRam()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_10

    .line 4293
    const-string v0, "MiuiMultiWindowUtils"

    const-string v1, "not supportSplitScreen for TOTAL_RAM <= 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    const/4 v0, 0x0

    return v0

    .line 4296
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isTablet()Z
    .registers 2

    .line 556
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isThirdPartApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 3531
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-string v1, "packageName: "

    const-string v2, "MiuiMultiWindowUtils"

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_31

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-nez v0, :cond_31

    .line 3532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isThirdPartApp: true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    return v3

    .line 3536
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isThirdPartApp: false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isTopFocusedStack(I)Z
    .registers 4
    .param p0, "stackId"    # I

    .line 3083
    const/4 v0, -0x1

    .line 3085
    .local v0, "topFocusedStackId":I
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v1

    .line 3088
    goto :goto_11

    .line 3086
    :catch_d
    move-exception v1

    .line 3087
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3089
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topFocusedStackId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestStackId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    if-ne v0, p0, :cond_37

    const/4 v1, 0x1

    return v1

    .line 3091
    :cond_37
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isUserAMonkey()Z
    .registers 1

    .line 3719
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVerical(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 688
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    .line 689
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    goto :goto_18

    .line 692
    :cond_17
    return v1

    .line 690
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isWideScreen()Z
    .registers 1

    .line 4121
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isWideScreen(Landroid/content/res/Configuration;)Z
    .registers 3
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 3733
    if-eqz p0, :cond_a

    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist mergeXY(FF)D
    .registers 4
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 4210
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist moveTaskToStack(IIZ)I
    .registers 4
    .param p0, "taskId"    # I
    .param p1, "stackId"    # I
    .param p2, "toTop"    # Z

    .line 1656
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist multiFreeFormSupported(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 4026
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_34

    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->DEVICES_SUPPORT_MULTI_FREEFORM:Ljava/util/List;

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_34

    .line 4029
    :cond_12
    sget v0, Lmiui/os/Build;->TOTAL_RAM:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_33

    .line 4030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not multiFreeFormSupported for TOTAL_RAM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmiui/os/Build;->TOTAL_RAM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiMultiWindowUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    const/4 v0, 0x0

    return v0

    .line 4033
    :cond_33
    return v1

    .line 4027
    :cond_34
    :goto_34
    return v1
.end method

.method private static blacklist onStartSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;Ljava/util/List;I)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "flashBackBackgroundStartSwitchState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;I)I"
        }
    .end annotation

    .line 3039
    .local p3, "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    .line 3041
    .local v0, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3042
    .local v2, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_e

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_21

    goto :goto_e

    .line 3043
    :cond_21
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3044
    .local v3, "taskPackageName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 3045
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_36

    .line 3046
    const/4 v1, 0x3

    return v1

    .line 3047
    :cond_36
    invoke-static {v2, p4}, Landroid/util/MiuiMultiWindowUtils;->onStartSmallFreeformFromBackGroundStatus(Landroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 3049
    invoke-static {p0, p1, p2, v2}, Landroid/util/MiuiMultiWindowUtils;->onStartSmallFreeformFromBackGround(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_43

    return v1

    .line 3053
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    :cond_41
    goto :goto_e

    .line 3056
    .end local v0    # "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_42
    goto :goto_47

    .line 3054
    :catch_43
    move-exception v0

    .line 3055
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3058
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    const/4 v0, 0x2

    return v0
.end method

.method private static blacklist onStartSmallFreeformFromBackGround(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3070
    invoke-static {p0, p2}, Landroid/util/MiuiMultiWindowUtils;->saveStartFreeform(Landroid/content/Context;Ljava/lang/String;)V

    .line 3071
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/util/MiuiMultiWindowUtils;->getFreeformBlackList(Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v0

    .line 3072
    .local v0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    if-eqz v0, :cond_12

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 3073
    :cond_12
    invoke-static {p0, p2}, Landroid/util/MiuiMultiWindowUtils;->pkgHasIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 3074
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app in black list. packageName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MiuiMultiWindowUtils"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    return v2

    .line 3077
    :cond_31
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    .line 3078
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    .line 3077
    const-string v1, "launchFlashBackFromBackGround"

    invoke-static {v3, v1, v4}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    const/4 v1, 0x4

    return v1
.end method

.method private static blacklist onStartSmallFreeformFromBackGroundStatus(Landroid/app/ActivityManager$RunningTaskInfo;I)Z
    .registers 4
    .param p0, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p1, "flashBackBackgroundStartSwitchState"    # I

    .line 3063
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public static blacklist outerScreen(FFI)Z
    .registers 4
    .param p0, "x"    # F
    .param p1, "dis"    # F
    .param p2, "screenWidth"    # I

    .line 4245
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_d

    int-to-float v0, p2

    sub-float/2addr v0, p1

    cmpl-float v0, p0, v0

    if-lez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private static blacklist parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;)V
    .registers 2
    .param p0, "type"    # Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    .line 1786
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/MiuiMultiWindowUtils;->parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;Z)V

    .line 1787
    return-void
.end method

.method private static blacklist parseFreeFormResolution(Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;Z)V
    .registers 9
    .param p0, "type"    # Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;
    .param p1, "useDefaultFoldArgs"    # Z

    .line 1790
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_OF_DEVICE:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    return-void

    .line 1791
    :cond_5
    const/4 v1, 0x0

    .line 1792
    .local v1, "jsonData":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 1794
    .local v2, "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    :try_start_7
    const-string v3, "freeform_args"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1795
    .local v0, "freeformArgs":Lorg/json/JSONObject;
    sget-object v3, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_OF_DEVICE:Lorg/json/JSONObject;

    const-string v4, "mini_freeform_args"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1796
    .local v3, "miniFreeformArgs":Lorg/json/JSONObject;
    sget-object v4, Landroid/util/MiuiMultiWindowUtils$3;->$SwitchMap$android$util$MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE:[I

    invoke-virtual {p0}, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->ordinal()I

    move-result v5

    aget v4, v4, v5
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1d} :catch_64

    const-string v5, "outer"

    const-string v6, "inner"

    packed-switch v4, :pswitch_data_70

    goto :goto_63

    .line 1818
    :pswitch_25
    if-eqz p1, :cond_29

    move-object v4, v3

    goto :goto_2d

    :cond_29
    :try_start_29
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :goto_2d
    move-object v1, v4

    .line 1819
    sget-object v4, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS_OUTER:Ljava/util/List;

    move-object v2, v4

    goto :goto_63

    .line 1814
    :pswitch_32
    if-eqz p1, :cond_36

    move-object v4, v3

    goto :goto_3a

    :cond_36
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :goto_3a
    move-object v1, v4

    .line 1815
    sget-object v4, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS_INNER:Ljava/util/List;

    move-object v2, v4

    .line 1816
    goto :goto_63

    .line 1810
    :pswitch_3f
    move-object v1, v3

    .line 1811
    sget-object v4, Landroid/util/MiuiMultiWindowUtils;->MINI_FREEFORM_RESOLUTION_ARGS:Ljava/util/List;

    move-object v2, v4

    .line 1812
    goto :goto_63

    .line 1806
    :pswitch_44
    if-eqz p1, :cond_48

    move-object v4, v0

    goto :goto_4c

    :cond_48
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :goto_4c
    move-object v1, v4

    .line 1807
    sget-object v4, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_OUTER:Ljava/util/List;

    move-object v2, v4

    .line 1808
    goto :goto_63

    .line 1802
    :pswitch_51
    if-eqz p1, :cond_55

    move-object v4, v0

    goto :goto_59

    :cond_55
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :goto_59
    move-object v1, v4

    .line 1803
    sget-object v4, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS_INNER:Ljava/util/List;

    move-object v2, v4

    .line 1804
    goto :goto_63

    .line 1798
    :pswitch_5e
    move-object v1, v0

    .line 1799
    sget-object v4, Landroid/util/MiuiMultiWindowUtils;->FREEFORM_RESOLUTION_ARGS:Ljava/util/List;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_61} :catch_64

    move-object v2, v4

    .line 1800
    nop

    .line 1824
    .end local v0    # "freeformArgs":Lorg/json/JSONObject;
    .end local v3    # "miniFreeformArgs":Lorg/json/JSONObject;
    :goto_63
    goto :goto_6c

    .line 1822
    :catch_64
    move-exception v0

    .line 1823
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "MiuiMultiWindowUtils"

    const-string v4, "Failed to parse freeform resolution"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_6c
    invoke-static {v1, v2}, Landroid/util/MiuiMultiWindowUtils;->parseResolutionJsonData(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 1826
    return-void

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_51
        :pswitch_44
        :pswitch_3f
        :pswitch_32
        :pswitch_25
    .end packed-switch
.end method

.method private static blacklist parseResolutionJsonData(Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 9
    .param p0, "jsonData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 1829
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    if-nez p0, :cond_3

    return-void

    .line 1831
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1832
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1833
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1834
    .local v1, "argsOccasion":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1835
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1836
    .local v3, "iterator1":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 1837
    .local v4, "i":I
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1838
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1841
    :cond_43
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_49

    .line 1842
    nop

    .end local v1    # "argsOccasion":Lorg/json/JSONObject;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .end local v3    # "iterator1":Ljava/util/Iterator;
    .end local v4    # "i":I
    goto :goto_7

    .line 1845
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_48
    goto :goto_51

    .line 1843
    :catch_49
    move-exception v0

    .line 1844
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiMultiWindowUtils"

    const-string v2, "Failed to parse json data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_51
    return-void
.end method

.method public static blacklist pkgHasIcon(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3648
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3649
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3650
    const v1, 0xc0040

    .line 3653
    .local v1, "flag":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3654
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 3653
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 3656
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method public static blacklist queryUsageStats(Landroid/content/Context;)Ljava/util/List;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 3637
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3638
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 3639
    .local v7, "endTime":J
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 3640
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 3641
    .local v9, "beginTime":J
    const-string v1, "usagestats"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/app/usage/UsageStatsManager;

    .line 3643
    .local v11, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    const/4 v2, 0x1

    move-object v1, v11

    move-wide v3, v9

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist readFreeFormResolutionArgsFromJson()Lorg/json/JSONObject;
    .registers 9

    .line 1712
    const-string v0, "Failed to close reader"

    const-string v1, "MiuiMultiWindowUtils"

    const/4 v2, 0x0

    .line 1713
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1715
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 1716
    .local v4, "mAssets":Landroid/content/res/AssetManager;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Landroid/util/MiuiMultiWindowUtils;->RESOLUTION_FILE:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 1717
    const/4 v5, 0x0

    .line 1718
    .local v5, "line":Ljava/lang/String;
    :goto_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_31

    .line 1719
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_30} :catch_3d
    .catchall {:try_start_a .. :try_end_30} :catchall_3b

    goto :goto_26

    .line 1724
    .end local v4    # "mAssets":Landroid/content/res/AssetManager;
    .end local v5    # "line":Ljava/lang/String;
    :cond_31
    nop

    .line 1726
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    .line 1729
    :goto_35
    goto :goto_4a

    .line 1727
    :catch_36
    move-exception v4

    .line 1728
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_35

    .line 1724
    :catchall_3b
    move-exception v4

    goto :goto_77

    .line 1721
    :catch_3d
    move-exception v4

    .line 1722
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3e
    const-string v5, "Failed to read freeform_resolutions.json"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3b

    .line 1724
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_4a

    .line 1726
    :try_start_46
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_36

    goto :goto_35

    .line 1732
    :cond_4a
    :goto_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeform resolution args raw data:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const/4 v0, 0x0

    .line 1735
    .local v0, "rawData":Lorg/json/JSONObject;
    :try_start_65
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6e} :catch_70

    move-object v0, v4

    .line 1738
    goto :goto_76

    .line 1736
    :catch_70
    move-exception v4

    .line 1737
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v5, "Failed to transfer freeform_resolutions.json"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1739
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_76
    return-object v0

    .line 1724
    .end local v0    # "rawData":Lorg/json/JSONObject;
    :goto_77
    if-eqz v2, :cond_81

    .line 1726
    :try_start_79
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_7d

    .line 1729
    goto :goto_81

    .line 1727
    :catch_7d
    move-exception v5

    .line 1728
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1731
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_81
    :goto_81
    throw v4
.end method

.method private static blacklist readFreeformTimestamps(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 3607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3608
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Long;>;>;"
    const/4 v1, 0x0

    .line 3609
    .local v1, "jArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "freeform_timestamps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3610
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFreeformTimestamps::str = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiMultiWindowUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    if-eqz v2, :cond_7f

    .line 3613
    :try_start_2a
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 3614
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_7a

    .line 3615
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3616
    .local v5, "job":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 3617
    .local v6, "it":Ljava/util/Iterator;
    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 3618
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 3619
    .local v7, "timestamps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3620
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONArray;

    .line 3621
    .local v9, "array":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_60
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_72

    .line 3622
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v7, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3621
    add-int/lit8 v10, v10, 0x1

    goto :goto_60

    .line 3624
    .end local v10    # "j":I
    :cond_72
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_75} :catch_7b

    .line 3625
    nop

    .end local v7    # "timestamps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "array":Lorg/json/JSONArray;
    goto :goto_46

    .line 3614
    .end local v5    # "job":Lorg/json/JSONObject;
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 3629
    .end local v3    # "i":I
    :cond_7a
    goto :goto_7f

    .line 3627
    :catch_7b
    move-exception v3

    .line 3628
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3632
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_7f
    :goto_7f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFreeformTimestamps::result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    return-object v0
.end method

.method public static blacklist refreshMultiWindowSwitchStatus()V
    .registers 1

    .line 4133
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isSupportMultiSwitchFeature()Z

    move-result v0

    sput-boolean v0, Landroid/util/MiuiMultiWindowUtils;->MULTIWIN_SWITCH_ENABLED:Z

    .line 4134
    return-void
.end method

.method public static blacklist resizeTask(ILandroid/graphics/Rect;I)I
    .registers 4
    .param p0, "taskId"    # I
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I

    .line 1667
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F
    .registers 20
    .param p0, "currentBounds"    # Landroid/graphics/Rect;
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "currentScale"    # F
    .param p3, "accessibleArea"    # Landroid/graphics/Rect;

    .line 3191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3192
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 3193
    .local v3, "boundsWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 3194
    .local v4, "boundsHeight":I
    int-to-float v5, v3

    mul-float v5, v5, p2

    .line 3195
    .local v5, "currentVisualWidth":F
    int-to-float v6, v4

    mul-float v6, v6, p2

    .line 3196
    .local v6, "currentVisualHeight":F
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    add-float/2addr v10, v5

    float-to-int v10, v10

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    add-float/2addr v11, v6

    float-to-int v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3200
    .local v7, "visualRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 3201
    return p2

    .line 3203
    :cond_31
    const/high16 v8, 0x3f800000    # 1.0f

    .line 3204
    .local v8, "scale":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 3205
    .local v9, "availableWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 3206
    .local v10, "availableHeight":I
    int-to-float v11, v9

    cmpl-float v11, v5, v11

    if-lez v11, :cond_43

    .line 3207
    int-to-float v11, v9

    div-float v8, v11, v5

    .line 3209
    :cond_43
    int-to-float v11, v10

    cmpl-float v11, v6, v11

    if-lez v11, :cond_4e

    .line 3210
    int-to-float v11, v10

    div-float/2addr v11, v6

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 3212
    :cond_4e
    mul-float v11, p2, v8

    .line 3213
    .local v11, "newScale":F
    int-to-float v12, v3

    mul-float/2addr v12, v11

    float-to-int v12, v12

    .line 3214
    .local v12, "newVisualWidth":I
    int-to-float v13, v4

    mul-float/2addr v13, v11

    float-to-int v13, v13

    .line 3217
    .local v13, "newVisualHeight":I
    iget v14, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v13

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    if-le v14, v15, :cond_65

    .line 3218
    iget v14, v1, Landroid/graphics/Rect;->left:I

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v13

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3220
    :cond_65
    iget v14, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v12

    iget v15, v2, Landroid/graphics/Rect;->right:I

    if-le v14, v15, :cond_74

    .line 3221
    iget v14, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v12

    iget v15, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3223
    :cond_74
    iget v14, v1, Landroid/graphics/Rect;->left:I

    iget v15, v2, Landroid/graphics/Rect;->left:I

    if-ge v14, v15, :cond_81

    .line 3224
    iget v14, v2, Landroid/graphics/Rect;->left:I

    iget v15, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3226
    :cond_81
    iget v14, v1, Landroid/graphics/Rect;->top:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    if-ge v14, v15, :cond_8e

    .line 3227
    iget v14, v1, Landroid/graphics/Rect;->left:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3229
    :cond_8e
    return v11
.end method

.method public static blacklist saveFreeFormWindowPosition(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # Landroid/graphics/Rect;

    .line 3361
    const/4 v0, 0x1

    .line 3362
    .local v0, "verticalScreen":Z
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    .line 3363
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 3364
    :cond_17
    const/4 v0, 0x0

    .line 3366
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3367
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, -0x2

    if-eqz v0, :cond_3c

    .line 3368
    iget v3, p1, Landroid/graphics/Rect;->left:I

    const-string v4, "VFreeForm_Position_Left"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3370
    iget v3, p1, Landroid/graphics/Rect;->top:I

    const-string v4, "VFreeForm_Position_Top"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3372
    iget v3, p1, Landroid/graphics/Rect;->right:I

    const-string v4, "VFreeForm_Position_Right"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3374
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    const-string v4, "VFreeForm_Position_Bottom"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_58

    .line 3377
    :cond_3c
    iget v3, p1, Landroid/graphics/Rect;->left:I

    const-string v4, "HFreeForm_Position_Left"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3379
    iget v3, p1, Landroid/graphics/Rect;->top:I

    const-string v4, "HFreeForm_Position_Top"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3381
    iget v3, p1, Landroid/graphics/Rect;->right:I

    const-string v4, "HFreeForm_Position_Right"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3383
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    const-string v4, "HFreeForm_Position_Bottom"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3386
    :goto_58
    return-void
.end method

.method private static blacklist saveFreeformTimestamps(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 3592
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Long;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3593
    return-void

    .line 3596
    :cond_7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3597
    .local v0, "jArray":Lorg/json/JSONArray;
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3599
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "freeform_timestamps"

    .line 3600
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3599
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_1d

    .line 3603
    goto :goto_21

    .line 3601
    :catch_1d
    move-exception v1

    .line 3602
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3604
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method private static blacklist saveStartFreeform(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3453
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->readFreeformTimestamps(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 3454
    .local v0, "allTimestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Long;>;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 3455
    .local v1, "freeformTimestamps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    if-nez v1, :cond_12

    .line 3456
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 3459
    :cond_12
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1d

    .line 3460
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3462
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3463
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3464
    invoke-static {p0, v0}, Landroid/util/MiuiMultiWindowUtils;->saveFreeformTimestamps(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 3465
    return-void
.end method

.method public static blacklist scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 4
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .line 2049
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2050
    .local v0, "left":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 2051
    .local v1, "top":I
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 2052
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2053
    return-object p0
.end method

.method private static blacklist specificAspectRatioByPackageEnabled()Z
    .registers 1

    .line 560
    invoke-static {}, Landroid/app/ActivityManager;->isMiuiDesktopModeActive()Z

    move-result v0

    return v0
.end method

.method public static blacklist startSmallFreeform(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 2764
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    .line 2765
    return v1

    .line 2767
    :cond_8
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2768
    return v1

    .line 2770
    :cond_f
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2771
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2772
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 2773
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Landroid/util/MiuiMultiWindowUtils;->startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;IZ)I

    move-result v1

    return v1
.end method

.method public static blacklist startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 2812
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/util/MiuiMultiWindowUtils;->startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "cornerPosition"    # I

    .line 2816
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/util/MiuiMultiWindowUtils;->startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;IZ)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "cornerPosition"    # I
    .param p3, "isLaunchFromRecent"    # Z

    .line 2820
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/util/MiuiMultiWindowUtils;->startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;IZZZ)I

    move-result v0

    return v0
.end method

.method public static blacklist startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;IZZZ)I
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "cornerPosition"    # I
    .param p3, "isLaunchFromRecent"    # Z
    .param p4, "isLaunchFromNotification"    # Z
    .param p5, "isLaunchFromRecommend"    # Z

    .line 2826
    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    const/4 v4, 0x0

    .line 2828
    .local v4, "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    const/4 v5, 0x2

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "miui_dkt_mode"

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v7

    .line 2830
    .local v0, "isDesktopModeActive":Z
    :goto_18
    const-string v8, "keyguard"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    .line 2831
    .local v8, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v8, :cond_29

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 2832
    return v5

    .line 2834
    :cond_29
    const-string v9, "activity"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 2835
    .local v9, "activityManager":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v10

    .line 2837
    .local v10, "activityTaskManager":Landroid/app/IActivityTaskManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v11

    if-eqz v11, :cond_44

    .line 2838
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getDisplayId()I

    move-result v11

    goto :goto_45

    :cond_44
    move v11, v7

    .line 2837
    :goto_45
    invoke-interface {v10, v11}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v11
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_49} :catch_2d4

    move-object v4, v11

    .line 2840
    :try_start_4a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v11
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4e} :catch_2d0

    if-eqz v11, :cond_59

    .line 2841
    :try_start_50
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getDisplayId()I

    move-result v11
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_58} :catch_2d4

    goto :goto_5a

    :cond_59
    move v11, v7

    .line 2840
    :goto_5a
    :try_start_5a
    invoke-static {v11}, Lmiui/app/MiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v11
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5e} :catch_2d0

    .line 2842
    .local v11, "freeFormStackInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;>;"
    const/4 v12, 0x0

    .line 2843
    .local v12, "unReplaceFreeformCount":I
    if-eqz v11, :cond_7e

    .line 2844
    :try_start_61
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_65
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 2845
    .local v14, "miuiFreeFormStackInfo":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    invoke-virtual {v14}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result v15

    if-nez v15, :cond_7b

    iget-boolean v15, v14, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_79} :catch_2d4

    if-eqz v15, :cond_7d

    .line 2846
    :cond_7b
    add-int/lit8 v12, v12, 0x1

    .line 2848
    .end local v14    # "miuiFreeFormStackInfo":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    :cond_7d
    goto :goto_65

    .line 2850
    :cond_7e
    :try_start_7e
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->multiFreeFormSupported(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_86

    move v13, v5

    goto :goto_87

    :cond_86
    const/4 v13, 0x1

    .line 2851
    .local v13, "maxFreeformCount":I
    :goto_87
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2c7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 2852
    .local v15, "rootTaskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    if-lt v12, v13, :cond_a1

    if-nez v2, :cond_a1

    if-nez v3, :cond_a1

    .line 2853
    move-object/from16 v18, v4

    goto/16 :goto_2cd

    .line 2855
    :cond_a1
    iget-object v7, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v7

    const/4 v5, 0x5

    if-ne v7, v5, :cond_14b

    .line 2858
    iget v5, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-static {v5}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v5

    .line 2860
    .local v5, "mffs":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    if-nez v2, :cond_141

    if-eqz v3, :cond_b9

    .line 2861
    const/4 v5, 0x2

    const/4 v7, 0x0

    goto :goto_8b

    .line 2863
    :cond_b9
    iget-boolean v7, v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_bb} :catch_2d0

    if-eqz v7, :cond_c0

    .line 2864
    const/4 v5, 0x2

    const/4 v7, 0x0

    goto :goto_8b

    .line 2866
    :cond_c0
    if-eqz v0, :cond_c9

    :try_start_c2
    iget-boolean v7, v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->mHadHideStackFormFullScreen:Z
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c4} :catch_2d4

    if-eqz v7, :cond_c9

    .line 2867
    const/4 v5, 0x2

    const/4 v7, 0x0

    goto :goto_8b

    .line 2869
    :cond_c9
    :try_start_c9
    invoke-virtual {v5}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v7

    if-eqz v7, :cond_123

    .line 2872
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->hasSmallFreeform()Z

    move-result v7
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d3} :catch_2d0

    const-string v6, "rootStackID"

    move/from16 v17, v0

    .end local v0    # "isDesktopModeActive":Z
    .local v17, "isDesktopModeActive":Z
    const-string v0, "toSmallFreeform"

    move-object/from16 v18, v4

    .end local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .local v18, "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    const-string v4, "state"

    move-object/from16 v19, v8

    .end local v8    # "keyguardManager":Landroid/app/KeyguardManager;
    .local v19, "keyguardManager":Landroid/app/KeyguardManager;
    const-string v8, "com.miui.fullscreen_state_change"

    if-eqz v7, :cond_100

    .line 2873
    :try_start_e3
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_fe

    .line 2874
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2875
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2876
    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2877
    iget v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2878
    invoke-virtual {v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2879
    const/4 v0, 0x1

    return v0

    .line 2881
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_fe
    const/4 v0, 0x3

    return v0

    .line 2883
    :cond_100
    if-nez p3, :cond_117

    .line 2885
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2886
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2887
    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2888
    iget v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2889
    invoke-virtual {v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2890
    const/4 v0, 0x1

    return v0

    .line 2891
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_117
    if-eqz p3, :cond_151

    .line 2893
    move/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_8b

    .line 2895
    .end local v17    # "isDesktopModeActive":Z
    .end local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .end local v19    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v0    # "isDesktopModeActive":Z
    .restart local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .restart local v8    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_123
    move/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    .end local v0    # "isDesktopModeActive":Z
    .end local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .end local v8    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v17    # "isDesktopModeActive":Z
    .restart local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .restart local v19    # "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v5}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 2896
    invoke-static/range {p0 .. p0}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 2897
    move/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_8b

    .line 2899
    :cond_13f
    const/4 v0, 0x3

    return v0

    .line 2860
    .end local v17    # "isDesktopModeActive":Z
    .end local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .end local v19    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v0    # "isDesktopModeActive":Z
    .restart local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .restart local v8    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_141
    move/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    .end local v0    # "isDesktopModeActive":Z
    .end local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .end local v8    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v17    # "isDesktopModeActive":Z
    .restart local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .restart local v19    # "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_8b

    .line 2855
    .end local v5    # "mffs":Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .end local v17    # "isDesktopModeActive":Z
    .end local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .end local v19    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v0    # "isDesktopModeActive":Z
    .restart local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .restart local v8    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_14b
    move/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    .line 2903
    .end local v0    # "isDesktopModeActive":Z
    .end local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .end local v8    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v17    # "isDesktopModeActive":Z
    .restart local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .restart local v19    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_151
    iget-object v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_15d

    .line 2905
    return v4

    .line 2908
    :cond_15d
    iget-object v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_16a

    .line 2910
    const/4 v4, 0x2

    return v4

    .line 2913
    :cond_16a
    iget-object v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2c1

    iget-object v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2915
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_182

    goto/16 :goto_2c1

    .line 2919
    :cond_182
    iget-object v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1b6

    iget-object v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    if-eqz v0, :cond_1b6

    iget-object v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length v0, v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1b6

    .line 2923
    const-string v0, "isPairRootTask"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget v4, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    .line 2924
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 2923
    invoke-static {v10, v0, v5}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2925
    .local v0, "isPairRootTask":Ljava/lang/Object;
    if-eqz v0, :cond_1b6

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1b6

    .line 2926
    const/4 v4, 0x2

    return v4

    .line 2929
    .end local v0    # "isPairRootTask":Ljava/lang/Object;
    :cond_1b6
    iget-object v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1d6

    iget-object v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2931
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->inMiuiHoverWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1cc

    goto :goto_1d6

    .line 2979
    .end local v15    # "rootTaskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :cond_1cc
    move/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_8b

    .line 2935
    .restart local v15    # "rootTaskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :cond_1d6
    :goto_1d6
    iget-object v0, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2936
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_1e3} :catch_2c3

    .line 2937
    .local v0, "packageName":Ljava/lang/String;
    const-string v4, "launchSmallFreeFormWindow"

    if-eqz v0, :cond_2a8

    .line 2938
    if-nez v2, :cond_1eb

    if-eqz v3, :cond_1f3

    .line 2939
    :cond_1eb
    :try_start_1eb
    invoke-static {v2, v3, v0, v15}, Landroid/util/MiuiMultiWindowUtils;->isNavigationOrRecommendScene(ZZLjava/lang/String;Landroid/app/ActivityTaskManager$RootTaskInfo;)Z

    move-result v5

    if-nez v5, :cond_1f3

    .line 2941
    const/4 v4, 0x2

    return v4

    .line 2943
    :cond_1f3
    const-string v5, "isSupportFreeFormInDesktopMode"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget v6, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    .line 2944
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    .line 2943
    invoke-static {v10, v5, v7}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2945
    .local v5, "isSupportFreeFormInDesktopMode":Ljava/lang/Object;
    if-eqz v5, :cond_212

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_212

    .line 2946
    const/4 v4, 0x2

    return v4

    .line 2948
    :cond_212
    invoke-static {v1, v0}, Landroid/util/MiuiMultiWindowUtils;->saveStartFreeform(Landroid/content/Context;Ljava/lang/String;)V

    .line 2949
    iget-object v6, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 2950
    .local v6, "realActivity":Landroid/content/ComponentName;
    if-eqz v6, :cond_271

    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->getFreeformResizeableWhiteListInSystem()Ljava/util/List;

    move-result-object v7

    .line 2951
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_271

    .line 2952
    const-string v7, "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_257

    .line 2953
    iget v7, v15, Landroid/app/ActivityTaskManager$RootTaskInfo;->resizeMode:I

    invoke-static {v7}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v7

    if-eqz v7, :cond_255

    .line 2954
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v15, v8, v14

    const/4 v14, 0x1

    aput-object p1, v8, v14

    .line 2955
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x2

    aput-object v14, v8, v16

    .line 2954
    invoke-static {v7, v4, v8}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2956
    const/4 v4, 0x1

    return v4

    .line 2958
    :cond_255
    const/4 v4, 0x2

    return v4

    .line 2961
    :cond_257
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v15, v8, v14

    const/4 v14, 0x1

    aput-object p1, v8, v14

    .line 2962
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x2

    aput-object v14, v8, v16

    .line 2961
    invoke-static {v7, v4, v8}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2963
    const/4 v4, 0x1

    return v4

    .line 2966
    :cond_271
    invoke-static {v9, v15}, Landroid/util/MiuiMultiWindowUtils;->getTaskResizeable(Landroid/app/ActivityManager;Landroid/app/ActivityTaskManager$RootTaskInfo;)Z

    move-result v7

    if-nez v7, :cond_2a8

    .line 2967
    iget v4, v15, Landroid/app/TaskInfo;->displayId:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_28e

    const-string v4, "com.xiaomi.misubscreenui"

    .line 2968
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28e

    .line 2969
    move/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_8b

    .line 2971
    :cond_28e
    const-string v4, "MiuiMultiWindowUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "app in black list. packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    const/4 v4, 0x2

    return v4

    .line 2975
    .end local v5    # "isSupportFreeFormInDesktopMode":Ljava/lang/Object;
    .end local v6    # "realActivity":Landroid/content/ComponentName;
    :cond_2a8
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    .line 2976
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 2975
    invoke-static {v5, v4, v6}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_2bf} :catch_2c3

    .line 2977
    const/4 v4, 0x1

    return v4

    .line 2917
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2c1
    :goto_2c1
    const/4 v4, 0x2

    return v4

    .line 2980
    .end local v9    # "activityManager":Landroid/app/ActivityManager;
    .end local v10    # "activityTaskManager":Landroid/app/IActivityTaskManager;
    .end local v11    # "freeFormStackInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;>;"
    .end local v12    # "unReplaceFreeformCount":I
    .end local v13    # "maxFreeformCount":I
    .end local v15    # "rootTaskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .end local v17    # "isDesktopModeActive":Z
    .end local v19    # "keyguardManager":Landroid/app/KeyguardManager;
    :catch_2c3
    move-exception v0

    move-object/from16 v4, v18

    goto :goto_2d5

    .line 2851
    .end local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .local v0, "isDesktopModeActive":Z
    .restart local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .restart local v8    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v9    # "activityManager":Landroid/app/ActivityManager;
    .restart local v10    # "activityTaskManager":Landroid/app/IActivityTaskManager;
    .restart local v11    # "freeFormStackInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;>;"
    .restart local v12    # "unReplaceFreeformCount":I
    .restart local v13    # "maxFreeformCount":I
    :cond_2c7
    move/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    .line 2982
    .end local v0    # "isDesktopModeActive":Z
    .end local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .end local v8    # "keyguardManager":Landroid/app/KeyguardManager;
    .end local v9    # "activityManager":Landroid/app/ActivityManager;
    .end local v10    # "activityTaskManager":Landroid/app/IActivityTaskManager;
    .end local v11    # "freeFormStackInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;>;"
    .end local v12    # "unReplaceFreeformCount":I
    .end local v13    # "maxFreeformCount":I
    .restart local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :goto_2cd
    move-object/from16 v4, v18

    goto :goto_2d8

    .line 2980
    .end local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .restart local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :catch_2d0
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .restart local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    goto :goto_2d5

    .end local v18    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    .restart local v4    # "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :catch_2d4
    move-exception v0

    .line 2981
    .local v0, "e":Ljava/lang/Exception;
    :goto_2d5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2983
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d8
    const/4 v5, 0x2

    return v5
.end method

.method public static blacklist startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3014
    const/4 v0, 0x0

    .line 3016
    .local v0, "rootTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 3017
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getFlashBackBackgroundStartSwitchState(Landroid/content/Context;)I

    move-result v1

    .line 3018
    .local v1, "flashBackBackgroundStartSwitchState":I
    invoke-static {p0, p1, p2, v0, v1}, Landroid/util/MiuiMultiWindowUtils;->onStartSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;Ljava/util/List;I)I

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    return v2

    .line 3020
    .end local v1    # "flashBackBackgroundStartSwitchState":I
    :catch_13
    move-exception v1

    .line 3021
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3023
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    return v1
.end method

.method public static blacklist startSmallFreeform(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3001
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    .line 3002
    return v1

    .line 3004
    :cond_8
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3005
    return v1

    .line 3007
    :cond_f
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3008
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3009
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 3010
    invoke-static {p0, v1, p1}, Landroid/util/MiuiMultiWindowUtils;->startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static blacklist startSmallFreeformFromNotification(Landroid/content/Context;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 2778
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    .line 2779
    return v1

    .line 2781
    :cond_8
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2782
    return v1

    .line 2784
    :cond_f
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isSupportMiuiMultiWindowRecommend()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2785
    return v1

    .line 2787
    :cond_16
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2788
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2789
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 2790
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Landroid/util/MiuiMultiWindowUtils;->startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;IZZZ)I

    move-result v2

    return v2
.end method

.method public static blacklist startSmallFreeformFromRecommend(Landroid/content/Context;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 2796
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    .line 2797
    return v1

    .line 2799
    :cond_8
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2800
    return v1

    .line 2802
    :cond_f
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2803
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2804
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 2805
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Landroid/util/MiuiMultiWindowUtils;->startSmallFreeform(Landroid/content/Context;Landroid/graphics/Rect;IZZZ)I

    move-result v2

    return v2
.end method

.method public static blacklist supportForeGroundPin()Z
    .registers 2

    .line 3275
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getTotalRam()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_10

    .line 3276
    const-string v0, "MiuiMultiWindowUtils"

    const-string v1, "not supportForeGroundPin for TOTAL_RAM <= 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    const/4 v0, 0x0

    return v0

    .line 3279
    :cond_10
    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->getEnableForegroundPin()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportFreeFromWindow(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1391
    const/4 v0, 0x1

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1392
    sget-object v1, Landroid/util/MiuiMultiWindowUtils;->sAppList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    .line 1394
    :cond_1a
    return v0
.end method

.method public static blacklist supportFreeform()Z
    .registers 4

    .line 3285
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getTotalRam()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MiuiMultiWindowUtils"

    const/4 v3, 0x3

    if-gt v0, v3, :cond_10

    .line 3286
    const-string v0, "not supportFreeform for TOTAL_RAM <= 3"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    return v1

    .line 3289
    :cond_10
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sNotSupportFreeformDeviceList:Ljava/util/List;

    if-eqz v0, :cond_35

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 3290
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supportFreeform for device: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    return v1

    .line 3295
    :cond_35
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist supportPinFreeFormApp()Z
    .registers 1

    .line 3266
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist supportQuickReply()Z
    .registers 1

    .line 3270
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->supportFreeform()Z

    move-result v0

    return v0
.end method

.method public static blacklist translateToBlankSpace(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14
    .param p0, "mobile"    # Landroid/graphics/Rect;
    .param p1, "fixed"    # Landroid/graphics/Rect;
    .param p2, "restriction"    # Landroid/graphics/Rect;

    .line 2540
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2541
    .local v0, "transactRegion":Landroid/graphics/Rect;
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2542
    return-void

    .line 2545
    :cond_c
    const/4 v1, -0x1

    .line 2546
    .local v1, "UNDEFINED":I
    const/4 v2, 0x0

    .line 2547
    .local v2, "TO_LEFT":I
    const/4 v3, 0x1

    .line 2548
    .local v3, "TO_RIGHT":I
    const/4 v4, 0x2

    .line 2549
    .local v4, "TO_TOP":I
    const/4 v5, 0x3

    .line 2551
    .local v5, "TO_BOTTOM":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2552
    .local v6, "translateLength":I
    const/4 v7, -0x1

    .line 2554
    .local v7, "translateDirection":I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lt v8, v9, :cond_37

    iget v8, p0, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_37

    .line 2555
    iget v8, p0, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v8, v9

    .line 2556
    const/4 v7, 0x0

    .line 2558
    :cond_37
    iget v8, p2, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lt v8, v9, :cond_50

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_50

    .line 2559
    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p0, Landroid/graphics/Rect;->left:I

    sub-int v6, v8, v9

    .line 2560
    const/4 v7, 0x1

    .line 2562
    :cond_50
    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lt v8, v9, :cond_69

    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_69

    .line 2563
    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int v6, v8, v9

    .line 2564
    const/4 v7, 0x2

    .line 2566
    :cond_69
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lt v8, v9, :cond_82

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_82

    .line 2567
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/graphics/Rect;->top:I

    sub-int v6, v8, v9

    .line 2568
    const/4 v7, 0x3

    .line 2570
    :cond_82
    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_e2

    goto :goto_a2

    .line 2581
    :pswitch_87
    add-int/lit8 v9, v6, 0x24

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 2582
    goto :goto_a2

    .line 2578
    :pswitch_8d
    neg-int v9, v6

    add-int/lit8 v9, v9, -0x24

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 2579
    goto :goto_a2

    .line 2575
    :pswitch_94
    add-int/lit8 v9, v6, 0x24

    invoke-virtual {p0, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 2576
    goto :goto_a2

    .line 2572
    :pswitch_9a
    neg-int v9, v6

    add-int/lit8 v9, v9, -0x24

    invoke-virtual {p0, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 2573
    goto :goto_a2

    .line 2584
    :pswitch_a1
    return-void

    .line 2587
    :goto_a2
    iget v8, p0, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-ge v8, v9, :cond_af

    .line 2588
    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2590
    :cond_af
    iget v8, p0, Landroid/graphics/Rect;->right:I

    iget v9, p2, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_c1

    .line 2591
    iget v8, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2593
    :cond_c1
    iget v8, p0, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-ge v8, v9, :cond_ce

    .line 2594
    iget v8, p0, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2596
    :cond_ce
    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_e0

    .line 2597
    iget v8, p0, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2599
    :cond_e0
    return-void

    nop

    :pswitch_data_e2
    .packed-switch -0x1
        :pswitch_a1
        :pswitch_9a
        :pswitch_94
        :pswitch_8d
        :pswitch_87
    .end packed-switch
.end method

.method private static blacklist updateFreeformTimestamps(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 3570
    .local p1, "allTimestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Long;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before updateFreeformTimestamps::allTimestamps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiMultiWindowUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3572
    .local v0, "mapIterator":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 3573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3574
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 3575
    .local v3, "timestamps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3576
    .local v4, "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 3577
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 3578
    .local v5, "timestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v9, 0x240c8400

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5e

    .line 3579
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 3580
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 3581
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3584
    .end local v5    # "timestamp":J
    :cond_5e
    goto :goto_36

    .line 3585
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "timestamps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v4    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_5f
    goto :goto_20

    .line 3586
    :cond_60
    invoke-static {p0, p1}, Landroid/util/MiuiMultiWindowUtils;->saveFreeformTimestamps(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 3587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after updateFreeformTimestamps::allTimestamps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    return-void
.end method

.method public static blacklist updateListFromCloud(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3515
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3516
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3517
    .local v1, "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v0, v1}, Landroid/util/MiuiMultiWindowUtils;->updateListFromCloud(Landroid/content/Context;Landroid/app/ActivityManager;Ljava/util/List;)V

    .line 3518
    return-void
.end method

.method private static blacklist updateListFromCloud(Landroid/content/Context;Landroid/app/ActivityManager;Ljava/util/List;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityManager"    # Landroid/app/ActivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/ActivityManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3521
    .local p2, "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p0, p2}, Landroid/util/MiuiMultiWindowAdapter;->updateList(Landroid/app/ActivityManager;Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 3522
    .local v0, "updatelist_success":Z
    const-string v1, "MiuiMultiWindowUtils"

    if-eqz v0, :cond_14

    .line 3523
    const-string v2, "update freeform list success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/util/MiuiMultiWindowUtils;->sLastUpdateTime:J

    goto :goto_19

    .line 3526
    :cond_14
    const-string v2, "update freeform list fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    :goto_19
    return-void
.end method
