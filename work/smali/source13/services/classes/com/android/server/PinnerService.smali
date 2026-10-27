.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$PinnerHandler;,
        Lcom/android/server/PinnerService$PinnedApp;,
        Lcom/android/server/PinnerService$PinRange;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinRangeSourceStream;,
        Lcom/android/server/PinnerService$PinRangeSourceStatic;,
        Lcom/android/server/PinnerService$PinRangeSource;,
        Lcom/android/server/PinnerService$PinnedFileStats;,
        Lcom/android/server/PinnerService$AppKey;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_ASSISTANT:I = 0x2

.field private static final KEY_BILIBILI:I = 0x9

.field private static final KEY_CAMERA:I = 0x0

.field private static final KEY_DOUYIN_LITE:I = 0x7

.field private static final KEY_HOME:I = 0x1

.field private static final KEY_KUAISHOU:I = 0x5

.field private static final KEY_KUAISHOU_LITE:I = 0x6

.field private static final KEY_MIVIDEO:I = 0x3

.field private static final KEY_TOUTIAO:I = 0x8

.field private static final KEY_TOUTIAO_LITE:I = 0xa

.field private static final KEY_WECHAT:I = 0x4

.field private static final MATCH_FLAGS:I = 0xd0000

.field private static final MAX_ASSISTANT_PIN_SIZE:I = 0x3c00000

.field private static final MAX_CAMERA_PIN_SIZE:I = 0x5000000

.field private static final MAX_HOME_PIN_SIZE:I = 0x600000

.field private static final MAX_NORMAL_APP_PIN_SIZE:I = 0x3200000

.field private static final PAGE_SIZE:I

.field private static final PIN_META_FILENAME:Ljava/lang/String; = "pinlist.meta"

.field private static PROP_PIN_ODEX:Z = false

.field private static PROP_PIN_PINLIST:Z = false

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConfiguredToPinAssistant:Z

.field private final mConfiguredToPinCamera:Z

.field private final mConfiguredToPinHome:Z

.field private final mContext:Landroid/content/Context;

.field private final mPendingRepin:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPinKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/PinnerService$PinnedApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field private mSearchManager:Landroid/app/SearchManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$-EpkTk7WXM4LQsI83InRATHH3gc(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinAppsWithUpdatedKeys(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FuPmnbX6d3sOIO4LP4dO1IrwBvY(Lcom/android/server/PinnerService;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JURuH7L1-81XaRgwi-XDmkFWZdo(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinApps(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hAPYP8RESlzLT4XkTGtxWiUSrkI(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->unpinApp(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vyGDUuH13qbrODfSq7SBVti5uF0(Lcom/android/server/PinnerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PinnerService;->unpinApps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAmInternal(Lcom/android/server/PinnerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingRepin(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinnedApps(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinnedFiles(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinnerHandler(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNameForKey(Lcom/android/server/PinnerService;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandlePinOnStart(Lcom/android/server/PinnerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUidActive(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidActive(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUidGone(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidGone(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendPinAppMessage(Lcom/android/server/PinnerService;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendPinAppsWithUpdatedKeysMessage(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsWithUpdatedKeysMessage(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendUnpinAppsMessage(Lcom/android/server/PinnerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PinnerService;->sendUnpinAppsMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsafeMunmap(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 97
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    .line 118
    const-string/jumbo v0, "pinner.use_pinlist"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_PINLIST:Z

    .line 121
    const-string/jumbo v0, "pinner.whole_odex"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_ODEX:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 158
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 175
    new-instance v0, Lcom/android/server/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111018d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinCamera:Z

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinHome:Z

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinAssistant:Z

    .line 199
    invoke-direct {p0}, Lcom/android/server/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 200
    new-instance v1, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 202
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 203
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 204
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    .line 206
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 208
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUidListener()V

    .line 214
    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUserSetupCompleteListener()V

    .line 217
    invoke-static {}, Lcom/android/server/PinnerServiceStub;->get()Lcom/android/server/PinnerServiceStub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/PinnerServiceStub;->init(Lcom/android/server/PinnerService;Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method private static clamp(III)I
    .registers 4
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .line 1135
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private createPinKeys()Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 581
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 584
    .local v0, "pinKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinCamera:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    .line 587
    const-string/jumbo v1, "pinner.pin_camera"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 585
    const-string/jumbo v4, "runtime_native_boot"

    const-string/jumbo v5, "pin_camera"

    invoke-static {v4, v5, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v2

    .line 588
    .local v1, "shouldPinCamera":Z
    :goto_21
    if-eqz v1, :cond_2a

    .line 589
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_2a
    iget-boolean v2, p0, Lcom/android/server/PinnerService;->mConfiguredToPinHome:Z

    if-eqz v2, :cond_35

    .line 595
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_35
    iget-boolean v2, p0, Lcom/android/server/PinnerService;->mConfiguredToPinAssistant:Z

    if-eqz v2, :cond_41

    .line 598
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_41
    return-object v0
.end method

.method private getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I
    .param p3, "defaultToSystemApp"    # Z

    .line 513
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 514
    return-object v0

    .line 517
    :cond_4
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 524
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_13

    .line 525
    return-object v0

    .line 528
    :cond_13
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v3}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 529
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 532
    :cond_20
    if-eqz p3, :cond_51

    .line 533
    iget-object v3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 534
    invoke-virtual {v3, p1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 535
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 536
    .local v3, "systemAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 537
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4f

    .line 539
    if-nez v3, :cond_4e

    .line 540
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_4f

    .line 543
    :cond_4e
    return-object v0

    .line 546
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4f
    :goto_4f
    goto :goto_31

    .line 547
    :cond_50
    return-object v3

    .line 550
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "systemAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_51
    return-object v0
.end method

.method private getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "userHandle"    # I

    .line 504
    iget-object v0, p0, Lcom/android/server/PinnerService;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_f

    .line 505
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 506
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1

    .line 508
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 8
    .param p1, "userHandle"    # I

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, "cameraIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 482
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_1a

    .line 483
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 484
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 490
    :cond_1a
    if-nez v3, :cond_27

    .line 491
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 492
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 495
    :cond_27
    return-object v3
.end method

.method private getHomeInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "userHandle"    # I

    .line 499
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 500
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "key"    # I
    .param p2, "userHandle"    # I

    .line 695
    packed-switch p1, :pswitch_data_1e

    .line 714
    const/4 v0, 0x0

    return-object v0

    .line 711
    :pswitch_5
    invoke-static {}, Lcom/android/server/PinnerServiceStub;->get()Lcom/android/server/PinnerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/PinnerServiceStub;->getInfoFromKey(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 701
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 699
    :pswitch_13
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getHomeInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 697
    :pswitch_18
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_13
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private getNameForKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # I

    .line 722
    packed-switch p1, :pswitch_data_18

    .line 739
    const/4 v0, 0x0

    return-object v0

    .line 737
    :pswitch_5
    invoke-static {}, Lcom/android/server/PinnerServiceStub;->get()Lcom/android/server/PinnerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/PinnerServiceStub;->getNameForKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 728
    :pswitch_e
    const-string v0, "Assistant"

    return-object v0

    .line 726
    :pswitch_11
    const-string v0, "Home"

    return-object v0

    .line 724
    :pswitch_14
    const-string v0, "Camera"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private declared-synchronized getPinKeys()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 605
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 605
    .end local p0    # "this":Lcom/android/server/PinnerService;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSizeLimitForKey(I)I
    .registers 3
    .param p1, "key"    # I

    .line 747
    packed-switch p1, :pswitch_data_12

    .line 766
    const/4 v0, 0x0

    return v0

    .line 763
    :pswitch_5
    const/high16 v0, 0x3200000

    return v0

    .line 753
    :pswitch_8
    const/high16 v0, 0x3c00000

    return v0

    .line 751
    :pswitch_b
    const/high16 v0, 0x600000

    return v0

    .line 749
    :pswitch_e
    const/high16 v0, 0x5000000

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private getUidForKey(I)I
    .registers 4
    .param p1, "key"    # I

    .line 680
    monitor-enter p0

    .line 681
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 682
    .local v0, "existing":Lcom/android/server/PinnerService$PinnedApp;
    if-eqz v0, :cond_16

    iget-boolean v1, v0, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    if-eqz v1, :cond_16

    .line 683
    iget v1, v0, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    goto :goto_17

    .line 684
    :cond_16
    const/4 v1, -0x1

    :goto_17
    monitor-exit p0

    .line 682
    return v1

    .line 685
    .end local v0    # "existing":Lcom/android/server/PinnerService$PinnedApp;
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private handlePinOnStart()V
    .registers 17

    .line 318
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "filesToPin":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_12
    if-ge v5, v3, :cond_9d

    aget-object v6, v2, v5

    .line 322
    .local v6, "fileToPin":Ljava/lang/String;
    const v7, 0x7fffffff

    invoke-static {v6, v7, v4}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v8

    .line 325
    .local v8, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v8, :cond_38

    .line 326
    const-string v0, "PinnerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to pin file = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    goto :goto_95

    .line 329
    :cond_38
    monitor-enter p0

    .line 330
    :try_start_39
    iget-object v0, v1, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_9a

    .line 332
    const-string v0, ".jar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v9, ".apk"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    or-int/2addr v0, v9

    if-eqz v0, :cond_95

    .line 334
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, "arch":Ljava/lang/String;
    const/4 v10, 0x0

    .line 337
    .local v10, "files":[Ljava/lang/String;
    :try_start_57
    invoke-static {v6, v9}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5b} :catch_5d

    move-object v10, v0

    .line 338
    :goto_5c
    goto :goto_5f

    :catch_5d
    move-exception v0

    goto :goto_5c

    .line 339
    :goto_5f
    if-nez v10, :cond_62

    .line 340
    goto :goto_95

    .line 342
    :cond_62
    array-length v0, v10

    move v11, v4

    :goto_64
    if-ge v11, v0, :cond_95

    aget-object v12, v10, v11

    .line 343
    .local v12, "file":Ljava/lang/String;
    invoke-static {v12, v7, v4}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v13

    .line 346
    .local v13, "df":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v13, :cond_87

    .line 347
    const-string v14, "PinnerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to pin ART file = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    goto :goto_8e

    .line 350
    :cond_87
    monitor-enter p0

    .line 351
    :try_start_88
    iget-object v4, v1, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    monitor-exit p0

    .line 342
    .end local v12    # "file":Ljava/lang/String;
    .end local v13    # "df":Lcom/android/server/PinnerService$PinnedFile;
    :goto_8e
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_64

    .line 352
    .restart local v12    # "file":Ljava/lang/String;
    .restart local v13    # "df":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_92
    move-exception v0

    monitor-exit p0
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_92

    throw v0

    .line 321
    .end local v6    # "fileToPin":Ljava/lang/String;
    .end local v8    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    .end local v9    # "arch":Ljava/lang/String;
    .end local v10    # "files":[Ljava/lang/String;
    .end local v12    # "file":Ljava/lang/String;
    .end local v13    # "df":Lcom/android/server/PinnerService$PinnedFile;
    :cond_95
    :goto_95
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_12

    .line 331
    .restart local v6    # "fileToPin":Ljava/lang/String;
    .restart local v8    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0

    .line 356
    .end local v6    # "fileToPin":Ljava/lang/String;
    .end local v8    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :cond_9d
    return-void
.end method

.method private handleUidActive(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 431
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 432
    return-void
.end method

.method private handleUidGone(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 418
    monitor-enter p0

    .line 421
    :try_start_5
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 422
    .local v1, "key":I
    if-ne v1, v3, :cond_1e

    .line 423
    monitor-exit p0

    return-void

    .line 425
    :cond_1e
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_30

    .line 427
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 428
    return-void

    .line 426
    .end local v1    # "key":I
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 469
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 979
    sget-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_PINLIST:Z

    if-nez v0, :cond_6

    .line 983
    const/4 v0, 0x0

    return-object v0

    .line 986
    :cond_6
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 987
    .local v0, "pinMetaEntry":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    .line 988
    .local v1, "pinMetaStream":Ljava/io/InputStream;
    if-eqz v0, :cond_28

    .line 990
    :try_start_10
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_16

    move-object v1, v2

    .line 996
    goto :goto_28

    .line 991
    :catch_16
    move-exception v2

    .line 992
    .local v2, "ex":Ljava/io/IOException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 993
    const-string v4, "error reading pin metadata \"%s\": pinning as blob"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 992
    const-string v4, "PinnerService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_28
    :goto_28
    return-object v1
.end method

.method private static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .registers 5
    .param p0, "fileName"    # Ljava/lang/String;

    .line 959
    const/4 v0, 0x0

    .line 961
    .local v0, "zip":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    move-object v0, v1

    .line 968
    goto :goto_1a

    .line 962
    :catch_8
    move-exception v1

    .line 963
    .local v1, "ex":Ljava/io/IOException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 964
    const-string v3, "could not open \"%s\" as zip: pinning as blob"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 963
    const-string v3, "PinnerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1a
    return-object v0
.end method

.method private pinApp(IIZ)V
    .registers 8
    .param p1, "key"    # I
    .param p2, "userHandle"    # I
    .param p3, "force"    # Z

    .line 657
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getUidForKey(I)I

    move-result v0

    .line 661
    .local v0, "uid":I
    if-nez p3, :cond_1c

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 662
    monitor-enter p0

    .line 663
    :try_start_a
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    monitor-exit p0

    .line 665
    return-void

    .line 664
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v1

    .line 667
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->unpinApp(I)V

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 669
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_28

    .line 670
    invoke-direct {p0, p1, v1}, Lcom/android/server/PinnerService;->pinApp(ILandroid/content/pm/ApplicationInfo;)V

    .line 672
    :cond_28
    return-void
.end method

.method private pinApp(ILandroid/content/pm/ApplicationInfo;)V
    .registers 20
    .param p1, "key"    # I
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 777
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v3, :cond_9

    .line 778
    return-void

    .line 781
    :cond_9
    new-instance v0, Lcom/android/server/PinnerService$PinnedApp;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/PinnerService$PinnedApp;-><init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/PinnerService$PinnedApp-IA;)V

    move-object v4, v0

    .line 782
    .local v4, "pinnedApp":Lcom/android/server/PinnerService$PinnedApp;
    monitor-enter p0

    .line 783
    :try_start_11
    iget-object v0, v1, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_fd

    .line 788
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PinnerService;->getSizeLimitForKey(I)I

    move-result v5

    .line 791
    .local v5, "pinSizeLimit":I
    const/4 v0, 0x3

    if-eq v2, v0, :cond_f9

    const/4 v0, 0x4

    if-eq v2, v0, :cond_f9

    const/4 v0, 0x5

    if-eq v2, v0, :cond_f9

    const/4 v0, 0x6

    if-eq v2, v0, :cond_f9

    const/4 v0, 0x7

    if-eq v2, v0, :cond_f9

    const/16 v0, 0x8

    if-eq v2, v0, :cond_f9

    const/16 v0, 0x9

    if-eq v2, v0, :cond_f9

    const/16 v0, 0xa

    if-ne v2, v0, :cond_3c

    goto/16 :goto_f9

    .line 797
    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 798
    .local v6, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v0, :cond_5a

    .line 801
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v8, v0

    move v9, v7

    :goto_50
    if-ge v9, v8, :cond_5a

    aget-object v10, v0, v9

    .line 802
    .local v10, "splitApk":Ljava/lang/String;
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    .end local v10    # "splitApk":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_50

    .line 806
    :cond_5a
    move v0, v5

    .line 807
    .local v0, "apkPinSizeLimit":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v0

    .end local v0    # "apkPinSizeLimit":I
    .local v9, "apkPinSizeLimit":I
    :goto_60
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 808
    .local v10, "apk":Ljava/lang/String;
    if-gtz v9, :cond_88

    .line 809
    const-string v0, "PinnerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reached to the pin size limit. Skipping: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    goto :goto_60

    .line 814
    :cond_88
    const/4 v0, 0x1

    invoke-static {v10, v9, v0}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v11

    .line 815
    .local v11, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v11, :cond_a8

    .line 816
    const-string v0, "PinnerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to pin "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    goto :goto_60

    .line 823
    :cond_a8
    monitor-enter p0

    .line 824
    :try_start_a9
    iget-object v0, v4, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    monitor-exit p0
    :try_end_af
    .catchall {:try_start_a9 .. :try_end_af} :catchall_b3

    .line 827
    iget v0, v11, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    sub-int/2addr v9, v0

    .line 828
    .end local v10    # "apk":Ljava/lang/String;
    .end local v11    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_60

    .line 825
    .restart local v10    # "apk":Ljava/lang/String;
    .restart local v11    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_b3
    move-exception v0

    :try_start_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v0

    .line 831
    .end local v10    # "apk":Ljava/lang/String;
    .end local v11    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :cond_b6
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_bd

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    goto :goto_c1

    .line 832
    :cond_bd
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v7

    :goto_c1
    move-object v8, v0

    .line 833
    .local v8, "abi":Ljava/lang/String;
    invoke-static {v8}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 835
    .local v10, "arch":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v11

    .line 836
    .local v11, "baseCodePath":Ljava/lang/String;
    const/4 v12, 0x0

    .line 838
    .local v12, "files":[Ljava/lang/String;
    :try_start_cb
    invoke-static {v11, v10}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_cf} :catch_d1

    move-object v12, v0

    .line 839
    :goto_d0
    goto :goto_d3

    :catch_d1
    move-exception v0

    goto :goto_d0

    .line 840
    :goto_d3
    if-nez v12, :cond_d6

    .line 841
    return-void

    .line 845
    :cond_d6
    array-length v0, v12

    move v13, v7

    :goto_d8
    if-ge v13, v0, :cond_f5

    aget-object v14, v12, v13

    .line 846
    .local v14, "file":Ljava/lang/String;
    invoke-static {v14, v5, v7}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v15

    .line 847
    .local v15, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-eqz v15, :cond_f1

    .line 848
    monitor-enter p0

    .line 849
    :try_start_e3
    sget-boolean v16, Lcom/android/server/PinnerService;->PROP_PIN_ODEX:Z

    if-eqz v16, :cond_ec

    .line 850
    iget-object v7, v4, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_ec
    monitor-exit p0

    goto :goto_f1

    :catchall_ee
    move-exception v0

    monitor-exit p0
    :try_end_f0
    .catchall {:try_start_e3 .. :try_end_f0} :catchall_ee

    throw v0

    .line 845
    .end local v14    # "file":Ljava/lang/String;
    .end local v15    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :cond_f1
    :goto_f1
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    goto :goto_d8

    .line 863
    :cond_f5
    invoke-direct {v1, v2, v5, v4}, Lcom/android/server/PinnerService;->pinCustomizeFiles(IILcom/android/server/PinnerService$PinnedApp;)V

    .line 864
    return-void

    .line 794
    .end local v6    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "abi":Ljava/lang/String;
    .end local v9    # "apkPinSizeLimit":I
    .end local v10    # "arch":Ljava/lang/String;
    .end local v11    # "baseCodePath":Ljava/lang/String;
    .end local v12    # "files":[Ljava/lang/String;
    :cond_f9
    :goto_f9
    invoke-direct {v1, v2, v5, v4}, Lcom/android/server/PinnerService;->pinCustomizeFiles(IILcom/android/server/PinnerService$PinnedApp;)V

    .line 795
    return-void

    .line 784
    .end local v5    # "pinSizeLimit":I
    :catchall_fd
    move-exception v0

    :try_start_fe
    monitor-exit p0
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v0
.end method

.method private pinApps(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->pinAppsInternal(IZ)V

    .line 610
    return-void
.end method

.method private pinAppsInternal(IZ)V
    .registers 7
    .param p1, "userHandle"    # I
    .param p2, "updateKeys"    # Z

    .line 621
    if-eqz p2, :cond_1f

    .line 622
    invoke-direct {p0}, Lcom/android/server/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 623
    .local v0, "newKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 625
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 626
    const-string v1, "PinnerService"

    const-string v2, "Attempted to update a list of apps, but apps were already pinned. Skipping."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    monitor-exit p0

    return-void

    .line 631
    :cond_18
    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 632
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1

    .line 635
    .end local v0    # "newKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/android/server/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 636
    .local v0, "currentPinKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_29
    if-ltz v1, :cond_3b

    .line 637
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 638
    .local v3, "key":I
    invoke-direct {p0, v3, p1, v2}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 636
    .end local v3    # "key":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 640
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private pinAppsWithUpdatedKeys(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 613
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->pinAppsInternal(IZ)V

    .line 614
    return-void
.end method

.method private pinCustomizeFiles(IILcom/android/server/PinnerService$PinnedApp;)V
    .registers 13
    .param p1, "key"    # I
    .param p2, "pinSizeLimit"    # I
    .param p3, "pinnedApp"    # Lcom/android/server/PinnerService$PinnedApp;

    .line 872
    invoke-static {}, Lcom/android/server/PinnerServiceStub;->get()Lcom/android/server/PinnerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/PinnerServiceStub;->getFilesFromKey(I)[Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "shouldPinFiles":[Ljava/lang/String;
    if-eqz v0, :cond_53

    .line 874
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_53

    aget-object v4, v0, v3

    .line 875
    .local v4, "file":Ljava/lang/String;
    invoke-static {v4, p2, v2}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v5

    .line 876
    .local v5, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-eqz v5, :cond_22

    .line 877
    monitor-enter p0

    .line 878
    :try_start_18
    iget-object v6, p3, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    monitor-exit p0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v1

    .line 884
    :cond_22
    :goto_22
    if-nez v5, :cond_50

    .line 885
    const-string v6, "PinnerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pin file failed at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "while pinning app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/PinnerServiceStub;->get()Lcom/android/server/PinnerServiceStub;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/android/server/PinnerServiceStub;->getPkgNameFromKey(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    .end local v4    # "file":Ljava/lang/String;
    .end local v5    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 889
    :cond_53
    return-void
.end method

.method private static pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;
    .registers 8
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "maxBytesToPin"    # I
    .param p2, "attemptPinIntrospection"    # Z

    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, "fileAsZip":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 934
    .local v1, "pinRangeStream":Ljava/io/InputStream;
    if-eqz p2, :cond_c

    .line 935
    :try_start_4
    invoke-static {p0}, Lcom/android/server/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    move-object v0, v2

    goto :goto_c

    .line 949
    :catchall_a
    move-exception v2

    goto :goto_49

    .line 938
    :cond_c
    :goto_c
    if-eqz v0, :cond_13

    .line 939
    invoke-static {v0, p0}, Lcom/android/server/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 942
    :cond_13
    const-string v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pinRangeStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    if-eqz v1, :cond_34

    .line 945
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStream;

    invoke-direct {v2, v1}, Lcom/android/server/PinnerService$PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_3d

    .line 946
    :cond_34
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStatic;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-direct {v2, v3, v4}, Lcom/android/server/PinnerService$PinRangeSourceStatic;-><init>(II)V

    :goto_3d
    nop

    .line 947
    .local v2, "pinRangeSource":Lcom/android/server/PinnerService$PinRangeSource;
    invoke-static {p0, p1, v2}, Lcom/android/server/PinnerService;->pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_a

    .line 949
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 950
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 947
    return-object v3

    .line 949
    .end local v2    # "pinRangeSource":Lcom/android/server/PinnerService$PinRangeSource;
    :goto_49
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 950
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 951
    throw v2
.end method

.method private static pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;
    .registers 22
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "maxBytesToPin"    # I
    .param p2, "pinRangeSource"    # Lcom/android/server/PinnerService$PinRangeSource;

    .line 1066
    move-object/from16 v7, p0

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v1, v0

    .line 1067
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, -0x1

    .line 1068
    .local v2, "address":J
    const/4 v4, 0x0

    .line 1071
    .local v4, "mapSize":I
    :try_start_b
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v5, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v0, v5

    .line 1072
    .local v0, "openFlags":I
    const/4 v5, 0x0

    invoke-static {v7, v0, v5}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v16
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_15} :catch_12c
    .catchall {:try_start_b .. :try_end_15} :catchall_126

    .line 1073
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .local v16, "fd":Ljava/io/FileDescriptor;
    :try_start_15
    invoke-static/range {v16 .. v16}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v10, v1, Landroid/system/StructStat;->st_size:J

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_22} :catch_11e
    .catchall {:try_start_15 .. :try_end_22} :catchall_116

    long-to-int v6, v10

    .line 1074
    .end local v4    # "mapSize":I
    .local v6, "mapSize":I
    const-wide/16 v10, 0x0

    int-to-long v12, v6

    :try_start_26
    sget v14, Landroid/system/OsConstants;->PROT_READ:I

    sget v15, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v17, 0x0

    invoke-static/range {v10 .. v18}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10
    :try_end_30
    .catch Landroid/system/ErrnoException; {:try_start_26 .. :try_end_30} :catch_10c
    .catchall {:try_start_26 .. :try_end_30} :catchall_102

    .line 1079
    .end local v2    # "address":J
    .local v10, "address":J
    :try_start_30
    new-instance v1, Lcom/android/server/PinnerService$PinRange;

    invoke-direct {v1}, Lcom/android/server/PinnerService$PinRange;-><init>()V

    move-object v12, v1

    .line 1080
    .local v12, "pinRange":Lcom/android/server/PinnerService$PinRange;
    const/4 v1, 0x0

    .line 1083
    .local v1, "bytesPinned":I
    sget v2, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, p1, v2
    :try_end_3b
    .catch Landroid/system/ErrnoException; {:try_start_30 .. :try_end_3b} :catch_f7
    .catchall {:try_start_30 .. :try_end_3b} :catchall_eb

    if-eqz v3, :cond_5a

    .line 1084
    :try_start_3d
    rem-int v2, p1, v2
    :try_end_3f
    .catch Landroid/system/ErrnoException; {:try_start_3d .. :try_end_3f} :catch_4f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_44

    sub-int v2, p1, v2

    move v14, v1

    move v13, v2

    .end local p1    # "maxBytesToPin":I
    .local v2, "maxBytesToPin":I
    goto :goto_5d

    .line 1127
    .end local v0    # "openFlags":I
    .end local v1    # "bytesPinned":I
    .end local v2    # "maxBytesToPin":I
    .end local v12    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local p1    # "maxBytesToPin":I
    :catchall_44
    move-exception v0

    move/from16 v13, p1

    move-object/from16 v15, p2

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_159

    .line 1123
    :catch_4f
    move-exception v0

    move/from16 v13, p1

    move-object/from16 v15, p2

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_131

    .line 1083
    .restart local v0    # "openFlags":I
    .restart local v1    # "bytesPinned":I
    .restart local v12    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    :cond_5a
    move/from16 v13, p1

    move v14, v1

    .line 1087
    .end local v1    # "bytesPinned":I
    .end local p1    # "maxBytesToPin":I
    .local v13, "maxBytesToPin":I
    .local v14, "bytesPinned":I
    :goto_5d
    if-ge v14, v13, :cond_ad

    move-object/from16 v15, p2

    :try_start_61
    invoke-virtual {v15, v12}, Lcom/android/server/PinnerService$PinRangeSource;->read(Lcom/android/server/PinnerService$PinRange;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 1088
    iget v1, v12, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 1089
    .local v1, "pinStart":I
    iget v2, v12, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 1090
    .local v2, "pinLength":I
    invoke-static {v5, v1, v6}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v1, v3

    .line 1091
    sub-int v3, v6, v1

    invoke-static {v5, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    .line 1092
    sub-int v3, v13, v14

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    .line 1101
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v4, v1, v3

    add-int/2addr v2, v4

    .line 1102
    rem-int v4, v1, v3

    sub-int/2addr v1, v4

    .line 1103
    rem-int v4, v2, v3

    if-eqz v4, :cond_8e

    .line 1104
    rem-int v4, v2, v3

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1106
    :cond_8e
    sub-int v3, v13, v14

    invoke-static {v5, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    .line 1108
    if-lez v2, :cond_9d

    .line 1115
    int-to-long v3, v1

    add-long/2addr v3, v10

    int-to-long v8, v2

    invoke-static {v3, v4, v8, v9}, Landroid/system/Os;->mlock(JJ)V
    :try_end_9d
    .catch Landroid/system/ErrnoException; {:try_start_61 .. :try_end_9d} :catch_a6
    .catchall {:try_start_61 .. :try_end_9d} :catchall_9f

    .line 1117
    :cond_9d
    add-int/2addr v14, v2

    .line 1118
    .end local v1    # "pinStart":I
    .end local v2    # "pinLength":I
    goto :goto_5d

    .line 1127
    .end local v0    # "openFlags":I
    .end local v12    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .end local v14    # "bytesPinned":I
    :catchall_9f
    move-exception v0

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_159

    .line 1123
    :catch_a6
    move-exception v0

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_131

    .line 1087
    .restart local v0    # "openFlags":I
    .restart local v12    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local v14    # "bytesPinned":I
    :cond_ad
    move-object/from16 v15, p2

    .line 1120
    :cond_af
    :try_start_af
    new-instance v8, Lcom/android/server/PinnerService$PinnedFile;
    :try_end_b1
    .catch Landroid/system/ErrnoException; {:try_start_af .. :try_end_b1} :catch_e3
    .catchall {:try_start_af .. :try_end_b1} :catchall_db

    move-object v1, v8

    move-wide v2, v10

    move v4, v6

    move-object/from16 v5, p0

    move v9, v6

    .end local v6    # "mapSize":I
    .local v9, "mapSize":I
    move v6, v14

    :try_start_b8
    invoke-direct/range {v1 .. v6}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JILjava/lang/String;I)V
    :try_end_bb
    .catch Landroid/system/ErrnoException; {:try_start_b8 .. :try_end_bb} :catch_d4
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_cd

    move-object v1, v8

    .line 1121
    .local v1, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    const-wide/16 v2, -0x1

    .line 1122
    .end local v10    # "address":J
    .local v2, "address":J
    nop

    .line 1127
    invoke-static/range {v16 .. v16}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 1128
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_cc

    .line 1129
    int-to-long v4, v9

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 1122
    :cond_cc
    return-object v1

    .line 1127
    .end local v0    # "openFlags":I
    .end local v1    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    .end local v2    # "address":J
    .end local v12    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .end local v14    # "bytesPinned":I
    .restart local v10    # "address":J
    :catchall_cd
    move-exception v0

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_159

    .line 1123
    :catch_d4
    move-exception v0

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_131

    .line 1127
    .end local v9    # "mapSize":I
    .restart local v6    # "mapSize":I
    :catchall_db
    move-exception v0

    move v9, v6

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto/16 :goto_159

    .line 1123
    .end local v9    # "mapSize":I
    .restart local v6    # "mapSize":I
    :catch_e3
    move-exception v0

    move v9, v6

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto/16 :goto_131

    .line 1127
    .end local v9    # "mapSize":I
    .end local v13    # "maxBytesToPin":I
    .restart local v6    # "mapSize":I
    .restart local p1    # "maxBytesToPin":I
    :catchall_eb
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v13, p1

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto/16 :goto_159

    .line 1123
    .end local v9    # "mapSize":I
    .restart local v6    # "mapSize":I
    :catch_f7
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v13, p1

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto :goto_131

    .line 1127
    .end local v9    # "mapSize":I
    .end local v10    # "address":J
    .restart local v2    # "address":J
    .restart local v6    # "mapSize":I
    :catchall_102
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v13, p1

    move v4, v9

    move-object/from16 v1, v16

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto :goto_159

    .line 1123
    .end local v9    # "mapSize":I
    .restart local v6    # "mapSize":I
    :catch_10c
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v13, p1

    move v4, v9

    move-object/from16 v1, v16

    .end local v6    # "mapSize":I
    .restart local v9    # "mapSize":I
    goto :goto_131

    .line 1127
    .end local v9    # "mapSize":I
    .restart local v4    # "mapSize":I
    :catchall_116
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v13, p1

    move-object/from16 v1, v16

    goto :goto_159

    .line 1123
    :catch_11e
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v13, p1

    move-object/from16 v1, v16

    goto :goto_131

    .line 1127
    .end local v16    # "fd":Ljava/io/FileDescriptor;
    .local v1, "fd":Ljava/io/FileDescriptor;
    :catchall_126
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v13, p1

    goto :goto_159

    .line 1123
    :catch_12c
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v13, p1

    .line 1124
    .end local p1    # "maxBytesToPin":I
    .local v0, "ex":Landroid/system/ErrnoException;
    .restart local v13    # "maxBytesToPin":I
    :goto_131
    :try_start_131
    const-string v5, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not pin file "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_149
    .catchall {:try_start_131 .. :try_end_149} :catchall_158

    .line 1125
    const/4 v5, 0x0

    .line 1127
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 1128
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-ltz v6, :cond_157

    .line 1129
    int-to-long v8, v4

    invoke-static {v2, v3, v8, v9}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 1125
    :cond_157
    return-object v5

    .line 1127
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catchall_158
    move-exception v0

    :goto_159
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 1128
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-ltz v5, :cond_166

    .line 1129
    int-to-long v5, v4

    invoke-static {v2, v3, v5, v6}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 1131
    :cond_166
    throw v0
.end method

.method private registerUidListener()V
    .registers 6

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    new-instance v1, Lcom/android/server/PinnerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/PinnerService$3;-><init>(Lcom/android/server/PinnerService;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 412
    goto :goto_17

    .line 410
    :catch_f
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PinnerService"

    const-string v2, "Failed to register uid observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method private registerUserSetupCompleteListener()V
    .registers 6

    .line 364
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 366
    .local v0, "userSetupCompleteUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PinnerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/PinnerService$2;-><init>(Lcom/android/server/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 376
    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .registers 4
    .param p0, "thing"    # Ljava/io/Closeable;

    .line 1169
    if-eqz p0, :cond_20

    .line 1171
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1174
    goto :goto_20

    .line 1172
    :catch_6
    move-exception v0

    .line 1173
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignoring error closing resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PinnerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1176
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_20
    :goto_20
    return-void
.end method

.method private static safeClose(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 1150
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1152
    :try_start_8
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1161
    goto :goto_1a

    .line 1153
    :catch_c
    move-exception v0

    .line 1158
    .local v0, "ex":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EBADF:I

    if-eq v1, v2, :cond_14

    goto :goto_1a

    .line 1159
    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1163
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method private static safeMunmap(JJ)V
    .registers 7
    .param p0, "address"    # J
    .param p2, "mapSize"    # J

    .line 1140
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1143
    goto :goto_d

    .line 1141
    :catch_4
    move-exception v0

    .line 1142
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "PinnerService"

    const-string/jumbo v2, "ignoring error in unmap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1144
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_d
    return-void
.end method

.method private sendPinAppMessage(IIZ)V
    .registers 9
    .param p1, "key"    # I
    .param p2, "userHandle"    # I
    .param p3, "force"    # Z

    .line 646
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda2;-><init>()V

    .line 647
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 646
    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 648
    return-void
.end method

.method private sendPinAppsMessage(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 554
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda4;-><init>()V

    .line 555
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 554
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    return-void
.end method

.method private sendPinAppsWithUpdatedKeysMessage(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 559
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;-><init>()V

    .line 560
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 559
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    return-void
.end method

.method private sendUnpinAppMessage(I)V
    .registers 5
    .param p1, "key"    # I

    .line 568
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    return-void
.end method

.method private sendUnpinAppsMessage()V
    .registers 3

    .line 563
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    return-void
.end method

.method private unpinApp(I)V
    .registers 5
    .param p1, "key"    # I

    .line 455
    monitor-enter p0

    .line 456
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 457
    .local v0, "app":Lcom/android/server/PinnerService$PinnedApp;
    if-nez v0, :cond_11

    .line 458
    monitor-exit p0

    return-void

    .line 460
    :cond_11
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 462
    .local v0, "pinnedAppFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    .line 463
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    .line 464
    .local v2, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    invoke-virtual {v2}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 465
    .end local v2    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_27

    .line 466
    :cond_37
    return-void

    .line 462
    .end local v0    # "pinnedAppFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method private unpinApps()V
    .registers 4

    .line 446
    invoke-direct {p0}, Lcom/android/server/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 447
    .local v0, "pinKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1c

    .line 448
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 449
    .local v2, "key":I
    invoke-direct {p0, v2}, Lcom/android/server/PinnerService;->unpinApp(I)V

    .line 447
    .end local v2    # "key":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 451
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private updateActiveState(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "active"    # Z

    .line 435
    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1c

    .line 437
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedApp;

    .line 438
    .local v1, "app":Lcom/android/server/PinnerService$PinnedApp;
    iget v2, v1, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_19

    .line 439
    iput-boolean p2, v1, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    .line 436
    .end local v1    # "app":Lcom/android/server/PinnerService$PinnedApp;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 442
    .end local v0    # "i":I
    :cond_1c
    monitor-exit p0

    .line 443
    return-void

    .line 442
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method


# virtual methods
.method public dumpDataForStatsd()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/PinnerService$PinnedFileStats;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "pinnedFileStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PinnerService$PinnedFileStats;>;"
    monitor-enter p0

    .line 286
    :try_start_6
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    .line 287
    .local v2, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    new-instance v3, Lcom/android/server/PinnerService$PinnedFileStats;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4, v2}, Lcom/android/server/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/PinnerService$PinnedFile;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    nop

    .end local v2    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_c

    .line 290
    :cond_24
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 291
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PinnerService$PinnedApp;

    .line 292
    .local v3, "app":Lcom/android/server/PinnerService$PinnedApp;
    iget-object v4, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PinnerService$PinnedApp;

    iget-object v4, v4, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PinnerService$PinnedFile;

    .line 293
    .local v5, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    new-instance v6, Lcom/android/server/PinnerService$PinnedFileStats;

    iget v7, v3, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    invoke-direct {v6, v7, v5}, Lcom/android/server/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/PinnerService$PinnedFile;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    nop

    .end local v5    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_5c

    .line 295
    .end local v2    # "key":I
    .end local v3    # "app":Lcom/android/server/PinnerService$PinnedApp;
    :cond_74
    goto :goto_2e

    .line 296
    :cond_75
    monitor-exit p0

    .line 297
    return-object v0

    .line 296
    :catchall_77
    move-exception v1

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_6 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 236
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_15

    .line 237
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/PinnerService;->mSearchManager:Landroid/app/SearchManager;

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 240
    :cond_15
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 225
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$BinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    .line 226
    const-string/jumbo v1, "pinner"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 227
    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/PinnerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 231
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 250
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 251
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 252
    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 254
    :cond_f
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 258
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 259
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 260
    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 262
    :cond_f
    return-void
.end method

.method public sendPinAppMessageForStub(IIZ)V
    .registers 4
    .param p1, "key"    # I
    .param p2, "userHandle"    # I
    .param p3, "force"    # Z

    .line 576
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    .line 577
    return-void
.end method

.method public sendUnPinAppMessageForStub(I)V
    .registers 2
    .param p1, "key"    # I

    .line 572
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendUnpinAppMessage(I)V

    .line 573
    return-void
.end method

.method public update(Landroid/util/ArraySet;Z)V
    .registers 10
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 270
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 271
    .local v0, "pinKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 272
    .local v1, "currentUser":I
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_52

    .line 273
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 274
    .local v3, "key":I
    invoke-direct {p0, v3, v1}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 275
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_4f

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating pinned files for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " force="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PinnerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, v3, v1, p2}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    .line 272
    .end local v3    # "key":I
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 280
    .end local v2    # "i":I
    :cond_52
    return-void
.end method
