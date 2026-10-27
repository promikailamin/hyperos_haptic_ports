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
        Landroid/content/pm/ActivityInfo$LaunchMode;
    }
.end annotation


# static fields
.field public static final blacklist ALWAYS_SANDBOX_DISPLAY_APIS:J = 0xb06f389L

.field private static final blacklist CHECK_MIN_WIDTH_HEIGHT_FOR_MULTI_WINDOW:J = 0xbc7f809L

.field public static final blacklist COLOR_MODE_A8:I = 0x4

.field public static final whitelist COLOR_MODE_DEFAULT:I = 0x0

.field public static final whitelist COLOR_MODE_HDR:I = 0x2

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT:I = 0x1

.field public static final greylist-max-o CONFIG_ASSETS_PATHS:I = -0x80000000

.field public static final whitelist CONFIG_COLOR_MODE:I = 0x4000

.field public static final whitelist CONFIG_DENSITY:I = 0x1000

.field public static final whitelist CONFIG_FONT_SCALE:I = 0x40000000

.field public static final whitelist CONFIG_FONT_WEIGHT_ADJUSTMENT:I = 0x10000000

.field public static final whitelist CONFIG_KEYBOARD:I = 0x10

.field public static final whitelist CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final whitelist CONFIG_LAYOUT_DIRECTION:I = 0x2000

.field public static final whitelist CONFIG_LOCALE:I = 0x4

.field public static final whitelist CONFIG_MCC:I = 0x1

.field public static final whitelist CONFIG_MNC:I = 0x2

.field public static greylist-max-o CONFIG_NATIVE_BITS:[I = null

.field public static final whitelist CONFIG_NAVIGATION:I = 0x40

.field public static final whitelist CONFIG_ORIENTATION:I = 0x80

.field public static final whitelist CONFIG_SCREEN_LAYOUT:I = 0x100

.field public static final whitelist CONFIG_SCREEN_SIZE:I = 0x400

.field public static final whitelist CONFIG_SMALLEST_SCREEN_SIZE:I = 0x800

.field public static final whitelist CONFIG_TOUCHSCREEN:I = 0x8

.field public static final whitelist CONFIG_UI_MODE:I = 0x200

.field public static final greylist-max-o CONFIG_WINDOW_CONFIGURATION:I = 0x20000000

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

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO:J = 0xa5faf64L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_LARGE:J = 0xabf9183L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_LARGE_VALUE:F = 1.7777778f

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_MEDIUM:J = 0xabf91bdL

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_MEDIUM_VALUE:F = 1.5f

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_PORTRAIT_ONLY:J = 0xc2368d6L

.field public static final whitelist PERSIST_ACROSS_REBOOTS:I = 0x2

.field public static final whitelist PERSIST_NEVER:I = 0x1

.field public static final whitelist PERSIST_ROOT_ONLY:I = 0x0

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

    .line 59
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 60
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 923
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    .line 1759
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
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 1247
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    .line 262
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 755
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1184
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1208
    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1248
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ActivityInfo;)V
    .registers 4
    .param p1, "orig"    # Landroid/content/pm/ActivityInfo;

    .line 1251
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 262
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 755
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1184
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1208
    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1252
    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1253
    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1254
    iget v0, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 1255
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1256
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1257
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1258
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 1259
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1260
    iget v0, p1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 1261
    iget v0, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1262
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1263
    iget v0, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1264
    iget v0, p1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1265
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 1266
    iget v0, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 1267
    iget v0, p1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 1268
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1269
    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1270
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 1271
    iget v0, p1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1272
    iget v0, p1, Landroid/content/pm/ActivityInfo;->colorMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 1273
    iget v0, p1, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    .line 1274
    iget v0, p1, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    .line 1275
    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 1276
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1770
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 262
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 755
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1184
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1208
    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1771
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1772
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1773
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 1774
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1775
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1776
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 1777
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 1778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1779
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 1780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1781
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1784
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 1785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 1786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 1787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 1788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_84

    .line 1789
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1791
    :cond_84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1792
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 1793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 1794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 1795
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    .line 1796
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    .line 1797
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 1798
    sget-object v0, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1799
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 1800
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1802
    :cond_bf
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-r activityInfoConfigJavaToNative(I)I
    .registers 5
    .param p0, "input"    # I

    .line 1115
    const/4 v0, 0x0

    .line 1116
    .local v0, "output":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_12

    .line 1117
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p0

    if-eqz v3, :cond_f

    .line 1118
    aget v2, v2, v1

    or-int/2addr v0, v2

    .line 1116
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1121
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static greylist-max-o activityInfoConfigNativeToJava(I)I
    .registers 5
    .param p0, "input"    # I

    .line 1130
    const/4 v0, 0x0

    .line 1131
    .local v0, "output":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_12

    .line 1132
    aget v2, v2, v1

    and-int/2addr v2, p0

    if-eqz v2, :cond_f

    .line 1133
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 1131
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1136
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static greylist-max-o colorModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "colorMode"    # I

    .line 1745
    packed-switch p0, :pswitch_data_14

    .line 1755
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1753
    :pswitch_8
    const-string v0, "COLOR_MODE_A8"

    return-object v0

    .line 1751
    :pswitch_b
    const-string v0, "COLOR_MODE_HDR"

    return-object v0

    .line 1749
    :pswitch_e
    const-string v0, "COLOR_MODE_WIDE_COLOR_GAMUT"

    return-object v0

    .line 1747
    :pswitch_11
    const-string v0, "COLOR_MODE_DEFAULT"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist isChangeEnabled(J)Z
    .registers 5
    .param p1, "changeId"    # J

    .line 1498
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1499
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1498
    invoke-static {p1, p2, v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isFixedOrientationLandscape(I)Z
    .registers 2
    .param p0, "orientation"    # I

    .line 1328
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

.method public static greylist-max-o isFixedOrientationPortrait(I)Z
    .registers 3
    .param p0, "orientation"    # I

    .line 1347
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
    .param p0, "mode"    # I

    .line 1520
    const/4 v0, 0x6

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x7

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public static greylist isResizeableMode(I)Z
    .registers 3
    .param p0, "mode"    # I

    .line 1510
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    const/4 v1, 0x4

    if-eq p0, v1, :cond_14

    const/4 v1, 0x6

    if-eq p0, v1, :cond_14

    const/4 v1, 0x5

    if-eq p0, v1, :cond_14

    const/4 v1, 0x7

    if-eq p0, v1, :cond_14

    if-ne p0, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :cond_14
    :goto_14
    return v0
.end method

.method public static greylist isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z
    .registers 4
    .param p0, "attributes"    # Landroid/content/res/TypedArray;

    .line 1686
    nop

    .line 1687
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 1689
    .local v0, "isTranslucent":Z
    nop

    .line 1690
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1693
    .local v2, "isFloating":Z
    if-nez v2, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static final greylist-max-o lockTaskLaunchModeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "lockTaskLaunchMode"    # I

    .line 1221
    packed-switch p0, :pswitch_data_24

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1229
    :pswitch_18
    const-string v0, "LOCK_TASK_LAUNCH_MODE_IF_ALLOWLISTED"

    return-object v0

    .line 1227
    :pswitch_1b
    const-string v0, "LOCK_TASK_LAUNCH_MODE_ALWAYS"

    return-object v0

    .line 1225
    :pswitch_1e
    const-string v0, "LOCK_TASK_LAUNCH_MODE_NEVER"

    return-object v0

    .line 1223
    :pswitch_21
    const-string v0, "LOCK_TASK_LAUNCH_MODE_DEFAULT"

    return-object v0

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

    .line 1290
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    packed-switch v0, :pswitch_data_24

    .line 1294
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

    .line 1293
    :pswitch_1b
    const-string v0, "PERSIST_ACROSS_REBOOTS"

    return-object v0

    .line 1292
    :pswitch_1e
    const-string v0, "PERSIST_NEVER"

    return-object v0

    .line 1291
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

.method public static greylist-max-o resizeModeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 1527
    packed-switch p0, :pswitch_data_2e

    .line 1543
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1541
    :pswitch_18
    const-string v0, "RESIZE_MODE_FORCE_RESIZABLE_PRESERVE_ORIENTATION"

    return-object v0

    .line 1537
    :pswitch_1b
    const-string v0, "RESIZE_MODE_FORCE_RESIZABLE_PORTRAIT_ONLY"

    return-object v0

    .line 1539
    :pswitch_1e
    const-string v0, "RESIZE_MODE_FORCE_RESIZABLE_LANDSCAPE_ONLY"

    return-object v0

    .line 1535
    :pswitch_21
    const-string v0, "RESIZE_MODE_FORCE_RESIZEABLE"

    return-object v0

    .line 1533
    :pswitch_24
    const-string v0, "RESIZE_MODE_RESIZEABLE"

    return-object v0

    .line 1531
    :pswitch_27
    const-string v0, "RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    return-object v0

    .line 1529
    :pswitch_2a
    const-string v0, "RESIZE_MODE_UNRESIZEABLE"

    return-object v0

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
    .registers 2
    .param p0, "orientation"    # I

    .line 1359
    packed-switch p0, :pswitch_data_18

    .line 1377
    :pswitch_3
    return p0

    .line 1375
    :pswitch_4
    const/16 v0, 0xb

    return v0

    .line 1373
    :pswitch_7
    const/16 v0, 0xc

    return v0

    .line 1371
    :pswitch_a
    const/16 v0, 0x8

    return v0

    .line 1369
    :pswitch_d
    const/16 v0, 0x9

    return v0

    .line 1367
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 1365
    :pswitch_12
    const/4 v0, 0x7

    return v0

    .line 1363
    :pswitch_14
    const/4 v0, 0x0

    return v0

    .line 1361
    :pswitch_16
    const/4 v0, 0x1

    return v0

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
    .registers 2
    .param p0, "orientation"    # I

    .line 1701
    packed-switch p0, :pswitch_data_3c

    .line 1737
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1735
    :pswitch_8
    const-string v0, "SCREEN_ORIENTATION_LOCKED"

    return-object v0

    .line 1733
    :pswitch_b
    const-string v0, "SCREEN_ORIENTATION_FULL_USER"

    return-object v0

    .line 1731
    :pswitch_e
    const-string v0, "SCREEN_ORIENTATION_USER_PORTRAIT"

    return-object v0

    .line 1729
    :pswitch_11
    const-string v0, "SCREEN_ORIENTATION_USER_LANDSCAPE"

    return-object v0

    .line 1727
    :pswitch_14
    const-string v0, "SCREEN_ORIENTATION_FULL_SENSOR"

    return-object v0

    .line 1725
    :pswitch_17
    const-string v0, "SCREEN_ORIENTATION_REVERSE_PORTRAIT"

    return-object v0

    .line 1723
    :pswitch_1a
    const-string v0, "SCREEN_ORIENTATION_REVERSE_LANDSCAPE"

    return-object v0

    .line 1721
    :pswitch_1d
    const-string v0, "SCREEN_ORIENTATION_SENSOR_PORTRAIT"

    return-object v0

    .line 1719
    :pswitch_20
    const-string v0, "SCREEN_ORIENTATION_SENSOR_LANDSCAPE"

    return-object v0

    .line 1717
    :pswitch_23
    const-string v0, "SCREEN_ORIENTATION_NOSENSOR"

    return-object v0

    .line 1715
    :pswitch_26
    const-string v0, "SCREEN_ORIENTATION_SENSOR"

    return-object v0

    .line 1713
    :pswitch_29
    const-string v0, "SCREEN_ORIENTATION_BEHIND"

    return-object v0

    .line 1711
    :pswitch_2c
    const-string v0, "SCREEN_ORIENTATION_USER"

    return-object v0

    .line 1709
    :pswitch_2f
    const-string v0, "SCREEN_ORIENTATION_PORTRAIT"

    return-object v0

    .line 1707
    :pswitch_32
    const-string v0, "SCREEN_ORIENTATION_LANDSCAPE"

    return-object v0

    .line 1705
    :pswitch_35
    const-string v0, "SCREEN_ORIENTATION_UNSPECIFIED"

    return-object v0

    .line 1703
    :pswitch_38
    const-string v0, "SCREEN_ORIENTATION_UNSET"

    return-object v0

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
    .param p0, "mode"    # I

    .line 1549
    packed-switch p0, :pswitch_data_24

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1557
    :pswitch_18
    const-string v0, "SIZE_CHANGES_SUPPORTED_OVERRIDE"

    return-object v0

    .line 1555
    :pswitch_1b
    const-string v0, "SIZE_CHANGES_SUPPORTED_METADATA"

    return-object v0

    .line 1553
    :pswitch_1e
    const-string v0, "SIZE_CHANGES_UNSUPPORTED_OVERRIDE"

    return-object v0

    .line 1551
    :pswitch_21
    const-string v0, "SIZE_CHANGES_UNSUPPORTED_METADATA"

    return-object v0

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
    .param p1, "constrainDisplayApisConfig"    # Landroid/content/pm/ConstrainDisplayApisConfig;

    .line 1425
    const-wide/32 v0, 0xb06f389

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1426
    invoke-virtual {p1, v0}, Landroid/content/pm/ConstrainDisplayApisConfig;->getAlwaysConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 1425
    :goto_15
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1641
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1573
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 1574
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .registers 8
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpFlags"    # I

    .line 1578
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1579
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 1580
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

    .line 1582
    :cond_24
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_5f

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "taskAffinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " persistableMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1585
    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;->persistableModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1583
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1587
    :cond_5f
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v0, :cond_6f

    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    if-nez v0, :cond_6f

    iget v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    if-nez v0, :cond_6f

    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_bb

    .line 1588
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1589
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " privateFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 1590
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " theme=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1591
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1588
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1593
    :cond_bb
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c8

    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-nez v0, :cond_c8

    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v0, :cond_105

    .line 1595
    :cond_c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "screenOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " configChanges=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1596
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " softInputMode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1597
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1595
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1599
    :cond_105
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v0, :cond_129

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uiOptions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1602
    :cond_129
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_14d

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockTaskLaunchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 1604
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->lockTaskLaunchModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1603
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1606
    :cond_14d
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_1a5

    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "windowLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v3, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1611
    :cond_1a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "resizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1612
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-eqz v0, :cond_1e7

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "requestedVrComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1615
    :cond_1e7
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20f

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "maxAspectRatio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1618
    :cond_20f
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p0, v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio(I)F

    move-result v0

    .line 1619
    .local v0, "minAspectRatio":F
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_25a

    .line 1620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "minAspectRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_25a

    .line 1622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getManifestMinAspectRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1625
    :cond_25a
    iget-boolean v1, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz v1, :cond_275

    .line 1626
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

    .line 1628
    :cond_275
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-eqz v1, :cond_295

    .line 1629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "knownActivityEmbeddingCerts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1631
    :cond_295
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 1632
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

    .line 1479
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_a

    .line 1480
    :cond_9
    nop

    .line 1479
    :goto_a
    return-object v0
.end method

.method public blacklist getManifestMinAspectRatio()F
    .registers 2

    .line 1504
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return v0
.end method

.method public blacklist getMaxAspectRatio()F
    .registers 2

    .line 1436
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    return v0
.end method

.method public blacklist getMinAspectRatio(I)F
    .registers 4
    .param p1, "orientation"    # I

    .line 1455
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_45

    const-wide/32 v0, 0xa5faf64

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_45

    const-wide/32 v0, 0xc2368d6

    .line 1456
    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1457
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_45

    .line 1461
    :cond_1d
    const-wide/32 v0, 0xabf9183

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1462
    const v0, 0x3fe38e39

    iget v1, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 1465
    :cond_30
    const-wide/32 v0, 0xabf91bd

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1466
    const/high16 v0, 0x3fc00000    # 1.5f

    iget v1, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 1469
    :cond_42
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return v0

    .line 1458
    :cond_45
    :goto_45
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return v0
.end method

.method public greylist-max-o getRealConfigChanged()I
    .registers 3

    .line 1148
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_f

    .line 1149
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 v0, v0, 0x800

    goto :goto_11

    .line 1151
    :cond_f
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1148
    :goto_11
    return v0
.end method

.method public final whitelist getThemeResource()I
    .registers 2

    .line 1286
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    :goto_9
    return v0
.end method

.method public blacklist hasFixedAspectRatio(I)Z
    .registers 4
    .param p1, "orientation"    # I

    .line 1303
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio(I)F

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

.method public greylist-max-o isFixedOrientation()Z
    .registers 3

    .line 1311
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method greylist-max-o isFixedOrientationLandscape()Z
    .registers 2

    .line 1320
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o isFixedOrientationPortrait()Z
    .registers 2

    .line 1339
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    return v0
.end method

.method public blacklist neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z
    .registers 4
    .param p1, "constrainDisplayApisConfig"    # Landroid/content/pm/ConstrainDisplayApisConfig;

    .line 1416
    const-wide/32 v0, 0xb0468a2

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1417
    invoke-virtual {p1, v0}, Landroid/content/pm/ConstrainDisplayApisConfig;->getNeverConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 1416
    :goto_15
    return v0
.end method

.method public blacklist setKnownActivityEmbeddingCerts(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1491
    .local p1, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1492
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1493
    .local v1, "knownCert":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1494
    .end local v1    # "knownCert":Ljava/lang/String;
    goto :goto_b

    .line 1495
    :cond_23
    return-void
.end method

.method public blacklist setMaxAspectRatio(F)V
    .registers 4
    .param p1, "maxAspectRatio"    # F

    .line 1431
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_6

    move v0, p1

    :cond_6
    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    .line 1432
    return-void
.end method

.method public blacklist setMinAspectRatio(F)V
    .registers 4
    .param p1, "minAspectRatio"    # F

    .line 1441
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_6

    move v0, p1

    :cond_6
    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    .line 1442
    return-void
.end method

.method public blacklist shouldCheckMinWidthHeightForMultiWindow()Z
    .registers 3

    .line 1569
    const-wide/32 v0, 0xbc7f809

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public greylist supportsPictureInPicture()Z
    .registers 3

    .line 1387
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

.method public blacklist supportsSizeChanges()I
    .registers 3

    .line 1396
    const-wide/32 v0, 0xacbec0b

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1397
    const/4 v0, 0x1

    return v0

    .line 1400
    :cond_b
    iget-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz v0, :cond_11

    .line 1401
    const/4 v0, 0x2

    return v0

    .line 1404
    :cond_11
    const-wide/32 v0, 0xa5faf38

    invoke-direct {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1405
    const/4 v0, 0x3

    return v0

    .line 1408
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1636
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

    .line 1635
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 1645
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1646
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    iget v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1650
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1653
    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1654
    iget v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1660
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    iget v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    iget v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1663
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_66

    .line 1664
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_6a

    .line 1667
    :cond_66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    :goto_6a
    iget v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1671
    iget v0, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    iget v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1674
    iget v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1675
    iget-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1676
    sget-object v0, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 1677
    return-void
.end method
