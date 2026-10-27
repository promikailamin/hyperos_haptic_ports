.class public Landroid/content/pm/ActivityInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ActivityInfo$WindowLayout;,
        Landroid/content/pm/ActivityInfo$SizeChangesSupportMode;,
        Landroid/content/pm/ActivityInfo$Config;,
        Landroid/content/pm/ActivityInfo$ScreenOrientation;,
        Landroid/content/pm/ActivityInfo$ColorMode;,
        Landroid/content/pm/ActivityInfo$RequiredContentUriPermission;,
        Landroid/content/pm/ActivityInfo$LaunchMode;
    }
.end annotation


# static fields
.field public static final blacklist ALWAYS_SANDBOX_DISPLAY_APIS:J = 0xb06f389L

.field private static final blacklist CHECK_MIN_WIDTH_HEIGHT_FOR_MULTI_WINDOW:J = 0xbc7f809L

.field public static final blacklist COLOR_MODE_A8:I = 0x4

.field public static final whitelist COLOR_MODE_DEFAULT:I = 0x0

.field public static final whitelist COLOR_MODE_HDR:I = 0x2

.field public static final blacklist COLOR_MODE_HDR10:I = 0x3

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT:I = 0x1

.field public static final whitelist CONFIG_ASSETS_PATHS:I = -0x80000000

.field public static final whitelist CONFIG_COLOR_MODE:I = 0x4000

.field public static final whitelist CONFIG_DENSITY:I = 0x1000

.field public static final whitelist CONFIG_FONT_SCALE:I = 0x40000000

.field public static final whitelist CONFIG_FONT_WEIGHT_ADJUSTMENT:I = 0x10000000

.field public static final whitelist CONFIG_GRAMMATICAL_GENDER:I = 0x8000

.field public static final whitelist CONFIG_KEYBOARD:I = 0x10

.field public static final whitelist CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final whitelist CONFIG_LAYOUT_DIRECTION:I = 0x2000

.field public static final whitelist CONFIG_LOCALE:I = 0x4

.field public static final whitelist CONFIG_MCC:I = 0x1

.field public static final whitelist CONFIG_MNC:I = 0x2

.field public static greylist-max-o CONFIG_NATIVE_BITS:[I = null

.field public static final whitelist CONFIG_NAVIGATION:I = 0x40

.field public static final whitelist CONFIG_ORIENTATION:I = 0x80

.field public static final whitelist CONFIG_RESOURCES_UNUSED:I = 0x8000000

.field public static final whitelist CONFIG_SCREEN_LAYOUT:I = 0x100

.field public static final whitelist CONFIG_SCREEN_SIZE:I = 0x400

.field public static final whitelist CONFIG_SMALLEST_SCREEN_SIZE:I = 0x800

.field public static final whitelist CONFIG_TOUCHSCREEN:I = 0x8

.field public static final whitelist CONFIG_UI_MODE:I = 0x200

.field public static final greylist-max-o CONFIG_WINDOW_CONFIGURATION:I = 0x20000000

.field public static final blacklist CONTENT_URI_PERMISSION_NONE:I = 0x0

.field public static final blacklist CONTENT_URI_PERMISSION_READ:I = 0x1

.field public static final blacklist CONTENT_URI_PERMISSION_READ_AND_WRITE:I = 0x4

.field public static final blacklist CONTENT_URI_PERMISSION_READ_OR_WRITE:I = 0x3

.field public static final blacklist CONTENT_URI_PERMISSION_WRITE:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DOCUMENT_LAUNCH_ALWAYS:I = 0x2

.field public static final whitelist DOCUMENT_LAUNCH_INTO_EXISTING:I = 0x1

.field public static final whitelist DOCUMENT_LAUNCH_NEVER:I = 0x3

.field public static final whitelist DOCUMENT_LAUNCH_NONE:I = 0x0

.field public static final greylist-max-r FLAG_ALLOW_EMBEDDED:I = -0x80000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_ALLOW_TASK_REPARENTING:I = 0x40

.field public static final whitelist FLAG_ALLOW_UNTRUSTED_ACTIVITY_EMBEDDING:I = 0x10000000

.field public static final greylist-max-o FLAG_ALWAYS_FOCUSABLE:I = 0x40000

.field public static final whitelist FLAG_ALWAYS_RETAIN_TASK_STATE:I = 0x8

.field public static final whitelist FLAG_AUTO_REMOVE_FROM_RECENTS:I = 0x2000

.field public static final blacklist FLAG_CAN_DISPLAY_ON_REMOTE_DEVICES:I = 0x10000

.field public static final whitelist FLAG_CLEAR_TASK_ON_LAUNCH:I = 0x4

.field public static final whitelist FLAG_ENABLE_VR_MODE:I = 0x8000

.field public static final whitelist FLAG_EXCLUDE_FROM_RECENTS:I = 0x20

.field public static final whitelist FLAG_FINISH_ON_CLOSE_SYSTEM_DIALOGS:I = 0x100

.field public static final whitelist FLAG_FINISH_ON_TASK_LAUNCH:I = 0x2

.field public static final whitelist FLAG_HARDWARE_ACCELERATED:I = 0x200

.field public static final whitelist FLAG_IMMERSIVE:I = 0x800

.field public static final greylist-max-o FLAG_IMPLICITLY_VISIBLE_TO_INSTANT_APP:I = 0x200000

.field public static final blacklist FLAG_INHERIT_SHOW_WHEN_LOCKED:I = 0x1

.field public static final whitelist FLAG_MULTIPROCESS:I = 0x1

.field public static final whitelist FLAG_NO_HISTORY:I = 0x80

.field public static final whitelist FLAG_PREFER_MINIMAL_POST_PROCESSING:I = 0x2000000

.field public static final whitelist FLAG_RELINQUISH_TASK_IDENTITY:I = 0x1000

.field public static final whitelist FLAG_RESUME_WHILE_PAUSING:I = 0x4000

.field public static final greylist-max-r FLAG_SHOW_FOR_ALL_USERS:I = 0x400

.field public static final greylist-max-o FLAG_SHOW_WHEN_LOCKED:I = 0x800000

.field public static final whitelist FLAG_SINGLE_USER:I = 0x40000000

.field public static final whitelist FLAG_STATE_NOT_NEEDED:I = 0x10

.field public static final greylist-max-o FLAG_SUPPORTS_PICTURE_IN_PICTURE:I = 0x400000

.field public static final greylist-max-o FLAG_SYSTEM_USER_ONLY:I = 0x20000000

.field public static final greylist-max-o FLAG_TURN_SCREEN_ON:I = 0x1000000

.field public static final greylist-max-o FLAG_VISIBLE_TO_INSTANT_APP:I = 0x100000

.field public static final blacklist FORCE_NON_RESIZE_APP:J = 0xacbec0bL

.field public static final blacklist FORCE_RESIZE_APP:J = 0xa5faf38L

.field public static final blacklist INSETS_DECOUPLED_CONFIGURATION_ENFORCED:J = 0x90d3a73L

.field public static final whitelist LAUNCH_MULTIPLE:I = 0x0

.field public static final whitelist LAUNCH_SINGLE_INSTANCE:I = 0x3

.field public static final whitelist LAUNCH_SINGLE_INSTANCE_PER_TASK:I = 0x4

.field public static final whitelist LAUNCH_SINGLE_TASK:I = 0x2

.field public static final whitelist LAUNCH_SINGLE_TOP:I = 0x1

.field public static final greylist-max-o LOCK_TASK_LAUNCH_MODE_ALWAYS:I = 0x2

.field public static final greylist-max-o LOCK_TASK_LAUNCH_MODE_DEFAULT:I = 0x0

.field public static final blacklist LOCK_TASK_LAUNCH_MODE_IF_ALLOWLISTED:I = 0x3

.field public static final greylist-max-o LOCK_TASK_LAUNCH_MODE_NEVER:I = 0x1

.field public static final blacklist NEVER_SANDBOX_DISPLAY_APIS:J = 0xb0468a2L

.field public static final blacklist OVERRIDE_ANY_ORIENTATION:J = 0xfd2aa87L

.field public static final blacklist OVERRIDE_ANY_ORIENTATION_TO_USER:J = 0x1286aeb5L

.field public static final blacklist OVERRIDE_AUTO_RESTART_ON_DISPLAY_MOVE:J = 0x1980e938L

.field public static final blacklist OVERRIDE_CAMERA_COMPAT_DISABLE_FORCE_ROTATION:J = 0xfbbb1dcL

.field public static final blacklist OVERRIDE_CAMERA_COMPAT_DISABLE_REFRESH:J = 0xfc0f74bL

.field public static final blacklist OVERRIDE_CAMERA_COMPAT_DISABLE_SIMULATE_REQUESTED_ORIENTATION:J = 0x17bbfc67L

.field public static final blacklist OVERRIDE_CAMERA_COMPAT_ENABLE_FREEFORM_WINDOWING_TREATMENT:J = 0x12c5ed24L

.field public static final blacklist OVERRIDE_CAMERA_COMPAT_ENABLE_REFRESH_VIA_PAUSE:J = 0xfc0ec12L

.field public static final blacklist OVERRIDE_ENABLE_COMPAT_FAKE_FOCUS:J = 0xfb1048bL

.field public static final blacklist OVERRIDE_ENABLE_COMPAT_IGNORE_ORIENTATION_REQUEST_WHEN_LOOP_DETECTED:J = 0x104d6bf7L

.field public static final blacklist OVERRIDE_ENABLE_COMPAT_IGNORE_REQUESTED_ORIENTATION:J = 0xf2d5f32L

.field public static final blacklist OVERRIDE_ENABLE_INSETS_DECOUPLED_CONFIGURATION:J = 0x138268edL

.field public static final blacklist OVERRIDE_EXCLUDE_CAPTION_INSETS_FROM_APP_BOUNDS:J = 0x1720a297L

.field public static final blacklist OVERRIDE_LANDSCAPE_ORIENTATION_TO_REVERSE_LANDSCAPE:J = 0xfdcbe7fL

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO:J = 0xa5faf64L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_EXCLUDE_PORTRAIT_FULLSCREEN:J = 0xd0d1070L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_LARGE:J = 0xabf9183L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_LARGE_VALUE:F = 1.7777778f

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_MEDIUM:J = 0xabf91bdL

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_MEDIUM_VALUE:F = 1.5f

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_ONLY_FOR_CAMERA:J = 0x13680faaL

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_PORTRAIT_ONLY:J = 0xc2368d6L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_SMALL:J = 0x14ce0124L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_SMALL_VALUE:F = 1.3333334f

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_TO_ALIGN_WITH_SPLIT_SCREEN:J = 0xc6fb886L

.field public static final blacklist OVERRIDE_MOUSE_TO_TOUCH:J = 0x18a10a57L

.field public static final blacklist OVERRIDE_ORIENTATION_ONLY_FOR_CAMERA:J = 0xfd28b98L

.field public static final blacklist OVERRIDE_RESPECT_REQUESTED_ORIENTATION:J = 0xe1566d4L

.field public static final blacklist OVERRIDE_SANDBOX_VIEW_BOUNDS_APIS:J = 0xe28701fL

.field public static final blacklist OVERRIDE_UNDEFINED_ORIENTATION_TO_NOSENSOR:J = 0xfd27655L

.field public static final blacklist OVERRIDE_UNDEFINED_ORIENTATION_TO_PORTRAIT:J = 0xfd27b38L

.field public static final blacklist OVERRIDE_USE_DISPLAY_LANDSCAPE_NATURAL_ORIENTATION:J = 0xf4156bcL

.field public static final whitelist PERSIST_ACROSS_REBOOTS:I = 0x2

.field public static final whitelist PERSIST_NEVER:I = 0x1

.field public static final whitelist PERSIST_ROOT_ONLY:I = 0x0

.field public static final blacklist PRIVATE_FLAG_DISABLE_ON_BACK_INVOKED_CALLBACK:I = 0x8

.field public static final blacklist PRIVATE_FLAG_ENABLE_ON_BACK_INVOKED_CALLBACK:I = 0x4

.field public static final blacklist PRIVATE_FLAG_HOME_TRANSITION_SOUND:I = 0x2

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZABLE_LANDSCAPE_ONLY:I = 0x5

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZABLE_PORTRAIT_ONLY:I = 0x6

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZABLE_PRESERVE_ORIENTATION:I = 0x7

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZEABLE:I = 0x4

.field public static final blacklist RESIZE_MODE_RESIZEABLE:I = 0x2

.field public static final greylist-max-o RESIZE_MODE_RESIZEABLE_AND_PIPABLE_DEPRECATED:I = 0x3

.field public static final greylist-max-o RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION:I = 0x1

.field public static final greylist-max-o RESIZE_MODE_UNRESIZEABLE:I = 0x0

.field public static final whitelist SCREEN_ORIENTATION_BEHIND:I = 0x3

.field public static final whitelist SCREEN_ORIENTATION_FULL_SENSOR:I = 0xa

.field public static final whitelist SCREEN_ORIENTATION_FULL_USER:I = 0xd

.field public static final whitelist SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final whitelist SCREEN_ORIENTATION_LOCKED:I = 0xe

.field public static final whitelist SCREEN_ORIENTATION_NOSENSOR:I = 0x5

.field public static final whitelist SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final whitelist SCREEN_ORIENTATION_REVERSE_LANDSCAPE:I = 0x8

.field public static final whitelist SCREEN_ORIENTATION_REVERSE_PORTRAIT:I = 0x9

.field public static final whitelist SCREEN_ORIENTATION_SENSOR:I = 0x4

.field public static final whitelist SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final whitelist SCREEN_ORIENTATION_SENSOR_PORTRAIT:I = 0x7

.field public static final greylist-max-o SCREEN_ORIENTATION_UNSET:I = -0x2

.field public static final whitelist SCREEN_ORIENTATION_UNSPECIFIED:I = -0x1

.field public static final whitelist SCREEN_ORIENTATION_USER:I = 0x2

.field public static final whitelist SCREEN_ORIENTATION_USER_LANDSCAPE:I = 0xb

.field public static final whitelist SCREEN_ORIENTATION_USER_PORTRAIT:I = 0xc

.field public static final blacklist SIZE_CHANGES_SUPPORTED_METADATA:I = 0x2

.field public static final blacklist SIZE_CHANGES_SUPPORTED_OVERRIDE:I = 0x3

.field public static final blacklist SIZE_CHANGES_UNSUPPORTED_METADATA:I = 0x0

.field public static final blacklist SIZE_CHANGES_UNSUPPORTED_OVERRIDE:I = 0x1

.field public static final whitelist UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:I = 0x1

.field public static final blacklist UNIVERSAL_RESIZABLE_BY_DEFAULT:J = 0x15498ba7L

.field private static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public whitelist colorMode:I

.field public whitelist configChanges:I

.field public whitelist documentLaunchMode:I

.field public whitelist flags:I

.field public whitelist launchMode:I

.field public greylist-max-o launchToken:Ljava/lang/String;

.field public greylist-max-o lockTaskLaunchMode:I

.field private blacklist mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxAspectRatio:F

.field private blacklist mMinAspectRatio:F

.field public whitelist maxRecents:I

.field public whitelist parentActivityName:Ljava/lang/String;

.field public whitelist permission:Ljava/lang/String;

.field public whitelist persistableMode:I

.field public blacklist privateFlags:I

.field public greylist-max-o requestedVrComponent:Ljava/lang/String;

.field public blacklist requireContentUriPermissionFromCaller:I

.field public whitelist requiredDisplayCategory:Ljava/lang/String;

.field public greylist resizeMode:I

.field public greylist-max-o rotationAnimation:I

.field public whitelist screenOrientation:I

.field public whitelist softInputMode:I

.field public blacklist supportsSizeChanges:Z

.field public whitelist targetActivity:Ljava/lang/String;

.field public whitelist taskAffinity:Ljava/lang/String;

.field public whitelist theme:I

.field public whitelist uiOptions:I

.field public whitelist windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 64
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 1134
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    .line 2403
    new-instance v0, Landroid/content/pm/ActivityInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_1c
    .array-data 4
        0x2
        0x1
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x800
        0x1000
        0x200
        0x2000
        0x100
        0x4000
        0x10000
        0x20000
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 1879
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    .line 403
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 932
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1816
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1840
    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1880
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ActivityInfo;)V
    .registers 4

    .line 1883
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 403
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 932
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1816
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1840
    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1884
    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1885
    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1886
    iget v0, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 1887
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1888
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1889
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1890
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 1891
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1892
    iget v0, p1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 1893
    iget v0, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1894
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1895
    iget v0, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1896
    iget v0, p1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1897
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 1898
    iget v0, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 1899
    iget v0, p1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 1900
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1901
    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1902
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 1903
    iget v0, p1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1904
    iget v0, p1, Landroid/content/pm/ActivityInfo;->colorMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 1905
    iget v0, p1, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    .line 1906
    iget v0, p1, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    .line 1907
    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 1908
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 1909
    iget v0, p1, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    .line 1910
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 1911
    iget p1, p1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    iput p1, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 1912
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 2414
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 403
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 932
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1816
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1840
    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 2415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 2416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 2418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 2419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 2420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 2421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 2422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 2424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 2425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 2426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 2427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 2428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 2429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 2430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 2431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 2432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_84

    .line 2433
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 2435
    :cond_84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 2436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 2437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 2438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 2439
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    .line 2440
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    .line 2441
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 2442
    sget-object v0, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2443
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 2444
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2446
    :cond_c1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 2447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    .line 2448
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-r activityInfoConfigJavaToNative(I)I
    .registers 4

    .line 1746
    nop

    .line 1747
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 1748
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_12

    .line 1749
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    .line 1747
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1752
    :cond_15
    return v1
.end method

.method public static greylist-max-o activityInfoConfigNativeToJava(I)I
    .registers 4

    .line 1761
    nop

    .line 1762
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 1763
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    aget v2, v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_12

    .line 1764
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    .line 1762
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1767
    :cond_15
    return v1
.end method

.method public static greylist-max-o colorModeToString(I)Ljava/lang/String;
    .registers 1

    .line 2389
    packed-switch p0, :pswitch_data_14

    .line 2399
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2397
    :pswitch_8
    const-string p0, "COLOR_MODE_A8"

    return-object p0

    .line 2395
    :pswitch_b
    const-string p0, "COLOR_MODE_HDR"

    return-object p0

    .line 2393
    :pswitch_e
    const-string p0, "COLOR_MODE_WIDE_COLOR_GAMUT"

    return-object p0

    .line 2391
    :pswitch_11
    const-string p0, "COLOR_MODE_DEFAULT"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist isFixedOrientation(I)Z
    .registers 2

    .line 1955
    const/16 v0, 0xe

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 1958
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1959
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    .line 1955
    :goto_17
    return p0
.end method

.method public static greylist-max-o isFixedOrientationLandscape(I)Z
    .registers 2

    .line 1975
    if-eqz p0, :cond_10

    const/4 v0, 0x6

    if-eq p0, v0, :cond_10

    const/16 v0, 0x8

    if-eq p0, v0, :cond_10

    const/16 v0, 0xb

    if-ne p0, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public static greylist-max-o isFixedOrientationPortrait(I)Z
    .registers 3

    .line 1994
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

.method public static greylist-max-o isPreserveOrientationMode(I)Z
    .registers 2

    .line 2131
    const/4 v0, 0x6

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x7

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static blacklist isRequiredContentUriPermissionRead(I)Z
    .registers 1

    .line 282
    packed-switch p0, :pswitch_data_8

    .line 285
    :pswitch_3
    const/4 p0, 0x0

    goto :goto_6

    .line 284
    :pswitch_5
    const/4 p0, 0x1

    .line 282
    :goto_6
    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist isRequiredContentUriPermissionWrite(I)Z
    .registers 1

    .line 293
    packed-switch p0, :pswitch_data_8

    .line 296
    const/4 p0, 0x0

    goto :goto_6

    .line 295
    :pswitch_5
    const/4 p0, 0x1

    .line 293
    :goto_6
    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist isResizeableMode(I)Z
    .registers 3

    .line 2121
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_14

    const/4 v0, 0x6

    if-eq p0, v0, :cond_14

    const/4 v0, 0x5

    if-eq p0, v0, :cond_14

    const/4 v0, 0x7

    if-eq p0, v0, :cond_14

    if-ne p0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_14
    return v1
.end method

.method public static greylist isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z
    .registers 4

    .line 2330
    nop

    .line 2331
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2333
    nop

    .line 2334
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    .line 2337
    if-nez p0, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static blacklist launchModeToString(I)Ljava/lang/String;
    .registers 3

    .line 115
    packed-switch p0, :pswitch_data_28

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :pswitch_18
    const-string p0, "LAUNCH_SINGLE_INSTANCE_PER_TASK"

    return-object p0

    .line 123
    :pswitch_1b
    const-string p0, "LAUNCH_SINGLE_INSTANCE"

    return-object p0

    .line 121
    :pswitch_1e
    const-string p0, "LAUNCH_SINGLE_TASK"

    return-object p0

    .line 119
    :pswitch_21
    const-string p0, "LAUNCH_SINGLE_TOP"

    return-object p0

    .line 117
    :pswitch_24
    const-string p0, "LAUNCH_MULTIPLE"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static final greylist-max-o lockTaskLaunchModeToString(I)Ljava/lang/String;
    .registers 3

    .line 1853
    packed-switch p0, :pswitch_data_24

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1861
    :pswitch_18
    const-string p0, "LOCK_TASK_LAUNCH_MODE_IF_ALLOWLISTED"

    return-object p0

    .line 1859
    :pswitch_1b
    const-string p0, "LOCK_TASK_LAUNCH_MODE_ALWAYS"

    return-object p0

    .line 1857
    :pswitch_1e
    const-string p0, "LOCK_TASK_LAUNCH_MODE_NEVER"

    return-object p0

    .line 1855
    :pswitch_21
    const-string p0, "LOCK_TASK_LAUNCH_MODE_DEFAULT"

    return-object p0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method private greylist-max-o persistableModeToString()Ljava/lang/String;
    .registers 3

    .line 1926
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    packed-switch v0, :pswitch_data_24

    .line 1930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1929
    :pswitch_1b
    const-string v0, "PERSIST_ACROSS_REBOOTS"

    return-object v0

    .line 1928
    :pswitch_1e
    const-string v0, "PERSIST_NEVER"

    return-object v0

    .line 1927
    :pswitch_21
    const-string v0, "PERSIST_ROOT_ONLY"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method private blacklist requiredContentUriPermissionToFullString(I)Ljava/lang/String;
    .registers 4

    .line 314
    packed-switch p1, :pswitch_data_28

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    .line 319
    :pswitch_18
    const-string p1, "CONTENT_URI_PERMISSION_READ_AND_WRITE"

    goto :goto_26

    .line 318
    :pswitch_1b
    const-string p1, "CONTENT_URI_PERMISSION_READ_OR_WRITE"

    goto :goto_26

    .line 317
    :pswitch_1e
    const-string p1, "CONTENT_URI_PERMISSION_WRITE"

    goto :goto_26

    .line 316
    :pswitch_21
    const-string p1, "CONTENT_URI_PERMISSION_READ"

    goto :goto_26

    .line 315
    :pswitch_24
    const-string p1, "CONTENT_URI_PERMISSION_NONE"

    .line 314
    :goto_26
    return-object p1

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static blacklist requiredContentUriPermissionToShortString(I)Ljava/lang/String;
    .registers 3

    .line 327
    packed-switch p0, :pswitch_data_2c

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    .line 332
    :pswitch_18
    const-string/jumbo p0, "read and write"

    goto :goto_2b

    .line 331
    :pswitch_1c
    const-string/jumbo p0, "read or write"

    goto :goto_2b

    .line 330
    :pswitch_20
    const-string/jumbo p0, "write"

    goto :goto_2b

    .line 329
    :pswitch_24
    const-string/jumbo p0, "read"

    goto :goto_2b

    .line 328
    :pswitch_28
    const-string/jumbo p0, "none"

    .line 327
    :goto_2b
    return-object p0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
    .end packed-switch
.end method

.method public static greylist-max-o resizeModeToString(I)Ljava/lang/String;
    .registers 3

    .line 2138
    packed-switch p0, :pswitch_data_2e

    .line 2154
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2152
    :pswitch_18
    const-string p0, "RESIZE_MODE_FORCE_RESIZABLE_PRESERVE_ORIENTATION"

    return-object p0

    .line 2148
    :pswitch_1b
    const-string p0, "RESIZE_MODE_FORCE_RESIZABLE_PORTRAIT_ONLY"

    return-object p0

    .line 2150
    :pswitch_1e
    const-string p0, "RESIZE_MODE_FORCE_RESIZABLE_LANDSCAPE_ONLY"

    return-object p0

    .line 2146
    :pswitch_21
    const-string p0, "RESIZE_MODE_FORCE_RESIZEABLE"

    return-object p0

    .line 2144
    :pswitch_24
    const-string p0, "RESIZE_MODE_RESIZEABLE"

    return-object p0

    .line 2142
    :pswitch_27
    const-string p0, "RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    return-object p0

    .line 2140
    :pswitch_2a
    const-string p0, "RESIZE_MODE_UNRESIZEABLE"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_3
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static blacklist reverseOrientation(I)I
    .registers 1

    .line 2006
    packed-switch p0, :pswitch_data_18

    .line 2024
    :pswitch_3
    return p0

    .line 2022
    :pswitch_4
    const/16 p0, 0xb

    return p0

    .line 2020
    :pswitch_7
    const/16 p0, 0xc

    return p0

    .line 2018
    :pswitch_a
    const/16 p0, 0x8

    return p0

    .line 2016
    :pswitch_d
    const/16 p0, 0x9

    return p0

    .line 2014
    :pswitch_10
    const/4 p0, 0x6

    return p0

    .line 2012
    :pswitch_12
    const/4 p0, 0x7

    return p0

    .line 2010
    :pswitch_14
    const/4 p0, 0x0

    return p0

    .line 2008
    :pswitch_16
    const/4 p0, 0x1

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_16
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_3
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public static greylist-max-o screenOrientationToString(I)Ljava/lang/String;
    .registers 1

    .line 2345
    packed-switch p0, :pswitch_data_3c

    .line 2381
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2379
    :pswitch_8
    const-string p0, "SCREEN_ORIENTATION_LOCKED"

    return-object p0

    .line 2377
    :pswitch_b
    const-string p0, "SCREEN_ORIENTATION_FULL_USER"

    return-object p0

    .line 2375
    :pswitch_e
    const-string p0, "SCREEN_ORIENTATION_USER_PORTRAIT"

    return-object p0

    .line 2373
    :pswitch_11
    const-string p0, "SCREEN_ORIENTATION_USER_LANDSCAPE"

    return-object p0

    .line 2371
    :pswitch_14
    const-string p0, "SCREEN_ORIENTATION_FULL_SENSOR"

    return-object p0

    .line 2369
    :pswitch_17
    const-string p0, "SCREEN_ORIENTATION_REVERSE_PORTRAIT"

    return-object p0

    .line 2367
    :pswitch_1a
    const-string p0, "SCREEN_ORIENTATION_REVERSE_LANDSCAPE"

    return-object p0

    .line 2365
    :pswitch_1d
    const-string p0, "SCREEN_ORIENTATION_SENSOR_PORTRAIT"

    return-object p0

    .line 2363
    :pswitch_20
    const-string p0, "SCREEN_ORIENTATION_SENSOR_LANDSCAPE"

    return-object p0

    .line 2361
    :pswitch_23
    const-string p0, "SCREEN_ORIENTATION_NOSENSOR"

    return-object p0

    .line 2359
    :pswitch_26
    const-string p0, "SCREEN_ORIENTATION_SENSOR"

    return-object p0

    .line 2357
    :pswitch_29
    const-string p0, "SCREEN_ORIENTATION_BEHIND"

    return-object p0

    .line 2355
    :pswitch_2c
    const-string p0, "SCREEN_ORIENTATION_USER"

    return-object p0

    .line 2353
    :pswitch_2f
    const-string p0, "SCREEN_ORIENTATION_PORTRAIT"

    return-object p0

    .line 2351
    :pswitch_32
    const-string p0, "SCREEN_ORIENTATION_LANDSCAPE"

    return-object p0

    .line 2349
    :pswitch_35
    const-string p0, "SCREEN_ORIENTATION_UNSPECIFIED"

    return-object p0

    .line 2347
    :pswitch_38
    const-string p0, "SCREEN_ORIENTATION_UNSET"

    return-object p0

    nop

    :pswitch_data_3c
    .packed-switch -0x2
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist sizeChangesSupportModeToString(I)Ljava/lang/String;
    .registers 3

    .line 2160
    packed-switch p0, :pswitch_data_24

    .line 2170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2168
    :pswitch_18
    const-string p0, "SIZE_CHANGES_SUPPORTED_OVERRIDE"

    return-object p0

    .line 2166
    :pswitch_1b
    const-string p0, "SIZE_CHANGES_SUPPORTED_METADATA"

    return-object p0

    .line 2164
    :pswitch_1e
    const-string p0, "SIZE_CHANGES_UNSUPPORTED_OVERRIDE"

    return-object p0

    .line 2162
    :pswitch_21
    const-string p0, "SIZE_CHANGES_UNSUPPORTED_METADATA"

    return-object p0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public blacklist alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z
    .registers 4

    .line 2051
    const-wide/32 v0, 0xb06f389

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2052
    invoke-virtual {p1, v0}, Landroid/content/pm/ConstrainDisplayApisConfig;->getAlwaysConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    .line 2051
    :goto_15
    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2283
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4

    .line 2210
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 2211
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .registers 9

    .line 2215
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2216
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 2217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2219
    :cond_24
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_5f

    .line 2220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "taskAffinity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " targetActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " persistableMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2222
    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;->persistableModeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2220
    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2224
    :cond_5f
    iget v1, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v1, :cond_6f

    iget v1, p0, Landroid/content/pm/ActivityInfo;->flags:I

    if-nez v1, :cond_6f

    iget v1, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    if-nez v1, :cond_6f

    iget v1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v1, :cond_c0

    .line 2225
    :cond_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "launchMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2226
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " privateFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 2227
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " theme=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 2228
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2225
    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2230
    :cond_c0
    iget v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_cd

    iget v1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-nez v1, :cond_cd

    iget v1, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v1, :cond_10a

    .line 2232
    :cond_cd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "screenOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " configChanges=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 2233
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " softInputMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 2234
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2232
    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2236
    :cond_10a
    iget v1, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v1, :cond_12e

    .line 2237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uiOptions=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2239
    :cond_12e
    if-eqz v0, :cond_151

    .line 2240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lockTaskLaunchMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 2241
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->lockTaskLaunchModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2240
    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2243
    :cond_151
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v1, :cond_1a9

    .line 2244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "windowLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v3, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v4, v4, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2248
    :cond_1a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "resizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2249
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-eqz v1, :cond_1eb

    .line 2250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "requestedVrComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2252
    :cond_1eb
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_213

    .line 2253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "maxAspectRatio="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2255
    :cond_213
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v1

    .line 2256
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_236

    .line 2257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "minAspectRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2259
    :cond_236
    iget-boolean v1, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz v1, :cond_251

    .line 2260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "supportsSizeChanges=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2262
    :cond_251
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-eqz v1, :cond_272

    .line 2263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "knownActivityEmbeddingCerts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2265
    :cond_272
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz v1, :cond_293

    .line 2266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "requiredDisplayCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2268
    :cond_293
    if-eqz v0, :cond_2b6

    .line 2269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "requireContentUriPermissionFromCaller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    .line 2270
    invoke-direct {p0, v1}, Landroid/content/pm/ActivityInfo;->requiredContentUriPermissionToFullString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2269
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2273
    :cond_2b6
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 2274
    return-void
.end method

.method public whitelist getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2085
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_b

    .line 2086
    :cond_9
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2085
    :goto_b
    return-object v0
.end method

.method public blacklist getManifestMinAspectRatio()F
    .registers 2

    .line 2115
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return v0
.end method

.method public blacklist getMaxAspectRatio()F
    .registers 2

    .line 2062
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    return v0
.end method

.method public blacklist getMinAspectRatio()F
    .registers 2

    .line 2075
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return v0
.end method

.method public greylist-max-o getRealConfigChanged()I
    .registers 3

    .line 1779
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_f

    .line 1780
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 v0, v0, 0x800

    goto :goto_11

    .line 1782
    :cond_f
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1779
    :goto_11
    return v0
.end method

.method public final whitelist getThemeResource()I
    .registers 2

    .line 1922
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_b

    :cond_7
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    :goto_b
    return v0
.end method

.method public blacklist hasFixedAspectRatio()Z
    .registers 3

    .line 1939
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public blacklist hasOnBackInvokedCallbackEnabled()Z
    .registers 2

    .line 2190
    iget v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isChangeEnabled(J)Z
    .registers 4

    .line 2110
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o isFixedOrientation()Z
    .registers 2

    .line 1947
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o isFixedOrientationLandscape()Z
    .registers 2

    .line 1967
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o isFixedOrientationPortrait()Z
    .registers 2

    .line 1986
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isOnBackInvokedCallbackEnabled()Z
    .registers 2

    .line 2205
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->hasOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z
    .registers 4

    .line 2042
    const-wide/32 v0, 0xb0468a2

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2043
    invoke-virtual {p1, v0}, Landroid/content/pm/ConstrainDisplayApisConfig;->getNeverConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    .line 2042
    :goto_15
    return p1
.end method

.method public blacklist setKnownActivityEmbeddingCerts(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2097
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2098
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2099
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2100
    goto :goto_b

    .line 2101
    :cond_23
    return-void
.end method

.method public blacklist setMaxAspectRatio(F)V
    .registers 4

    .line 2057
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_6

    goto :goto_7

    :cond_6
    move p1, v0

    :goto_7
    iput p1, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    .line 2058
    return-void
.end method

.method public blacklist setMinAspectRatio(F)V
    .registers 4

    .line 2067
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_6

    goto :goto_7

    :cond_6
    move p1, v0

    :goto_7
    iput p1, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    .line 2068
    return-void
.end method

.method public blacklist shouldCheckMinWidthHeightForMultiWindow()Z
    .registers 3

    .line 2180
    const-wide/32 v0, 0xbc7f809

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public greylist supportsPictureInPicture()Z
    .registers 3

    .line 2034
    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2278
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2277
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 2287
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2288
    iget p2, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2289
    iget p2, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2290
    iget p2, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2291
    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2292
    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2293
    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2294
    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2295
    iget p2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    iget p2, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2297
    iget p2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    iget p2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    iget p2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2300
    iget p2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2301
    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2302
    iget p2, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2303
    iget p2, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2304
    iget p2, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2305
    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz p2, :cond_66

    .line 2306
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2307
    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p2, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_6a

    .line 2309
    :cond_66
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2311
    :goto_6a
    iget p2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2312
    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2313
    iget p2, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2314
    iget p2, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2315
    iget p2, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2316
    iget p2, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2317
    iget-boolean p2, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2318
    sget-object p2, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iget v1, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 2319
    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2320
    iget p2, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2321
    return-void
.end method
