.class public final Lcom/android/server/pinner/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# static fields
.field public static final DEFAULT_ANON_SIZE:J

.field public static final PAGE_SIZE:I

.field public static PROP_PIN_PINLIST:Z


# instance fields
.field public final mAm:Landroid/app/IActivityManager;

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mBinderService:Lcom/android/server/pinner/PinnerService$BinderService;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mConfiguredAssistantPinBytes:I

.field public final mConfiguredCameraPinBytes:I

.field public final mConfiguredHomePinBytes:I

.field public mConfiguredMaxPinnedMemory:J

.field public final mConfiguredMaxPinnedMemoryPercentage:I

.field public final mConfiguredToPinAssistant:Z

.field public final mConfiguredToPinCamera:Z

.field public final mConfiguredWebviewPinBytes:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentPinnedMemory:J

.field public mCurrentlyPinnedAnonSize:J

.field public final mDeviceConfigAnonSizeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

.field public final mInjector:Lcom/android/server/pinner/PinnerService$Injector;

.field public final mPendingRepin:Landroid/util/ArrayMap;

.field public mPinAnonAddress:J

.field public mPinAnonSize:J

.field public mPinKeys:Landroid/util/ArraySet;

.field public final mPinnedApps:Landroid/util/ArrayMap;

.field public final mPinnedFiles:Landroid/util/ArrayMap;

.field public mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$2PfQLctqG4Okc7wNRRai0fQs5fU(Lcom/android/server/pinner/PinnerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->pinApps(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$52c9PjbzKP2HiaB_g7_gqvFiyJA(Lcom/android/server/pinner/PinnerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->pinAppsWithUpdatedKeys(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5NlcqPFWoiYpj9p2T8d2xF4yH8M(Lcom/android/server/pinner/PinnerService;IIZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$R6x7amq8T_0MOzvlOxQEMhh7D0U(Lcom/android/server/pinner/PinnerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->unpinApps()V

    return-void
.end method

.method public static synthetic $r8$lambda$vknxfPtf9El4XwvHudFnd4mofSM(Ljava/lang/String;Lcom/android/server/pinner/PinnedFile;)Z
    .registers 2

    .line 1225
    iget-object p1, p1, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmInternal(Lcom/android/server/pinner/PinnerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguredAssistantPinBytes(Lcom/android/server/pinner/PinnerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguredCameraPinBytes(Lcom/android/server/pinner/PinnerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguredHomePinBytes(Lcom/android/server/pinner/PinnerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguredMaxPinnedMemory(Lcom/android/server/pinner/PinnerService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguredMaxPinnedMemoryPercentage(Lcom/android/server/pinner/PinnerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pinner/PinnerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentlyPinnedAnonSize(Lcom/android/server/pinner/PinnerService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingRepin(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinAnonAddress(Lcom/android/server/pinner/PinnerService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinnedApps(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinnedFiles(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinnerHandler(Lcom/android/server/pinner/PinnerService;)Lcom/android/server/pinner/PinnerService$PinnerHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetAllPinsForGroup(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetAvailableGlobalQuota(Lcom/android/server/pinner/PinnerService;)J
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getAvailableGlobalQuota()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetNameForKey(Lcom/android/server/pinner/PinnerService;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandlePinOnStart(Lcom/android/server/pinner/PinnerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUidActive(Lcom/android/server/pinner/PinnerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->handleUidActive(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUidGone(Lcom/android/server/pinner/PinnerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->handleUidGone(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pinner/PinnerService;->pinFileInternal(Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrefreshPinAnonConfig(Lcom/android/server/pinner/PinnerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->refreshPinAnonConfig()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPinAppMessage(Lcom/android/server/pinner/PinnerService;IIZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pinner/PinnerService;->sendPinAppMessage(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPinAppsWithUpdatedKeysMessage(Lcom/android/server/pinner/PinnerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->sendPinAppsWithUpdatedKeysMessage(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUnpinAppsMessage(Lcom/android/server/pinner/PinnerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->sendUnpinAppsMessage()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 112
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    .line 121
    const-string/jumbo v0, "pinner.use_pinlist"

    const/4 v1, 0x1

    .line 122
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pinner/PinnerService;->PROP_PIN_PINLIST:Z

    .line 170
    const-string/jumbo v0, "pinner.pin_shared_anon_size"

    const-wide/16 v1, 0x0

    .line 171
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pinner/PinnerService;->DEFAULT_ANON_SIZE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 240
    new-instance v0, Lcom/android/server/pinner/PinnerService$Injector;

    invoke-direct {v0}, Lcom/android/server/pinner/PinnerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;-><init>(Landroid/content/Context;Lcom/android/server/pinner/PinnerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pinner/PinnerService$Injector;)V
    .registers 7

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 156
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 192
    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    .line 197
    new-instance v0, Lcom/android/server/pinner/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pinner/PinnerService$1;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance v1, Lcom/android/server/pinner/PinnerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/pinner/PinnerService$2;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v1, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigAnonSizeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 247
    iput-object p1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    .line 248
    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    .line 249
    invoke-virtual {p2}, Lcom/android/server/pinner/PinnerService$Injector;->getDeviceConfigInterface()Landroid/provider/DeviceConfigInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinCamera:Z

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110230

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinAssistant:Z

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredWebviewPinBytes:I

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    .line 265
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 266
    new-instance v2, Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/pinner/PinnerService$PinnerHandler;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    .line 268
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 269
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 270
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mAm:Landroid/app/IActivityManager;

    .line 272
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 274
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->registerUidListener()V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->registerUserSetupCompleteListener()V

    .line 282
    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-direct {p1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p0, "runtime_native"

    invoke-interface {p2, p0, p1, v1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    .line 1105
    sget-boolean v0, Lcom/android/server/pinner/PinnerService;->PROP_PIN_PINLIST:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1114
    :cond_6
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1121
    const-string v0, "assets/pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 1125
    :cond_15
    const-string v2, "PinnerService"

    if-eqz v0, :cond_2d

    .line 1130
    :try_start_19
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    .line 1132
    const-string v0, "error reading pin metadata \"%s\": pinning as blob"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1133
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1132
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 1138
    :cond_2d
    const-string p0, "Could not find pinlist.meta for \"%s\": pinning as blob"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1139
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1138
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-object v1
.end method

.method public static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .registers 3

    .line 1090
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 1092
    const-string v1, "could not open \"%s\" as zip: pinning as blob"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "PinnerService"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static pinFileRanges(Ljava/lang/String;JLcom/android/server/pinner/PinRangeSource;)Lcom/android/server/pinner/PinnedFile;
    .registers 34

    move-object/from16 v5, p0

    .line 1156
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    .line 1161
    :try_start_b
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v4, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v0, v4

    const/4 v4, 0x0

    .line 1162
    invoke-static {v5, v0, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v16
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_15} :catch_132
    .catchall {:try_start_b .. :try_end_15} :catchall_12e

    .line 1163
    :try_start_15
    invoke-static/range {v16 .. v16}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    const-wide/32 v6, 0x7fffffff

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_22} :catch_126
    .catchall {:try_start_15 .. :try_end_22} :catchall_11e

    long-to-int v0, v0

    int-to-long v12, v0

    .line 1164
    :try_start_24
    sget v14, Landroid/system/OsConstants;->PROT_READ:I

    sget v15, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v17, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v10 .. v18}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v1
    :try_end_30
    .catch Landroid/system/ErrnoException; {:try_start_24 .. :try_end_30} :catch_11b
    .catchall {:try_start_24 .. :try_end_30} :catchall_118

    .line 1167
    :try_start_30
    new-instance v0, Lcom/android/server/pinner/PinnerService$PinRange;

    invoke-direct {v0}, Lcom/android/server/pinner/PinnerService$PinRange;-><init>()V

    .line 1171
    sget v3, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v6, v3

    rem-long v6, p1, v6
    :try_end_3a
    .catch Landroid/system/ErrnoException; {:try_start_30 .. :try_end_3a} :catch_114
    .catchall {:try_start_30 .. :try_end_3a} :catchall_110

    cmp-long v4, v6, v8

    if-eqz v4, :cond_55

    int-to-long v3, v3

    .line 1172
    :try_start_3f
    rem-long v3, p1, v3
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_3f .. :try_end_41} :catch_4d
    .catchall {:try_start_3f .. :try_end_41} :catchall_45

    sub-long v3, p1, v3

    :goto_43
    move-wide v6, v8

    goto :goto_58

    :catchall_45
    move-exception v0

    move-wide v2, v1

    :goto_47
    move-wide/from16 v23, v8

    :goto_49
    move-object/from16 v1, v16

    goto/16 :goto_159

    :catch_4d
    move-exception v0

    move-wide v2, v1

    :goto_4f
    move-wide/from16 v23, v8

    :goto_51
    move-object/from16 v1, v16

    goto/16 :goto_136

    :cond_55
    move-wide/from16 v3, p1

    goto :goto_43

    :goto_58
    cmp-long v10, v6, v3

    if-gez v10, :cond_ee

    move-object/from16 v10, p3

    .line 1175
    :try_start_5e
    invoke-virtual {v10, v0}, Lcom/android/server/pinner/PinRangeSource;->read(Lcom/android/server/pinner/PinnerService$PinRange;)Z

    move-result v11

    if-eqz v11, :cond_ee

    .line 1176
    iget v11, v0, Lcom/android/server/pinner/PinnerService$PinRange;->start:I

    int-to-long v14, v11

    .line 1177
    iget v11, v0, Lcom/android/server/pinner/PinnerService$PinRange;->length:I
    :try_end_69
    .catch Landroid/system/ErrnoException; {:try_start_5e .. :try_end_69} :catch_e8
    .catchall {:try_start_5e .. :try_end_69} :catchall_e2

    move-wide/from16 v23, v8

    int-to-long v8, v11

    const-wide/16 v10, 0x0

    move-wide/from16 v28, v14

    move-wide v14, v12

    move-wide/from16 v12, v28

    .line 1178
    :try_start_73
    invoke-static/range {v10 .. v15}, Lcom/android/server/pinner/PinnerUtils;->clamp(JJJ)J

    move-result-wide v10
    :try_end_77
    .catch Landroid/system/ErrnoException; {:try_start_73 .. :try_end_77} :catch_dd
    .catchall {:try_start_73 .. :try_end_77} :catchall_d8

    move-wide v12, v14

    const-wide/16 v17, 0x0

    sub-long v21, v12, v10

    move-wide/from16 v19, v8

    .line 1179
    :try_start_7e
    invoke-static/range {v17 .. v22}, Lcom/android/server/pinner/PinnerUtils;->clamp(JJJ)J

    move-result-wide v8

    sub-long v14, v3, v6

    .line 1180
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-object/from16 v25, v0

    .line 1189
    sget v0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I
    :try_end_8c
    .catch Landroid/system/ErrnoException; {:try_start_7e .. :try_end_8c} :catch_d4
    .catchall {:try_start_7e .. :try_end_8c} :catchall_d0

    move-wide/from16 v26, v1

    int-to-long v1, v0

    :try_start_8f
    rem-long v1, v10, v1

    add-long/2addr v8, v1

    int-to-long v1, v0

    .line 1190
    rem-long v1, v10, v1

    sub-long/2addr v10, v1

    int-to-long v1, v0

    .line 1191
    rem-long v1, v8, v1

    cmp-long v1, v1, v23

    if-eqz v1, :cond_a6

    int-to-long v1, v0

    move-wide/from16 v17, v1

    int-to-long v0, v0

    .line 1192
    rem-long v0, v8, v0

    sub-long v1, v17, v0

    add-long/2addr v8, v1

    :cond_a6
    move-wide/from16 v19, v8

    goto :goto_b7

    :catchall_a9
    move-exception v0

    :goto_aa
    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    goto/16 :goto_159

    :catch_b0
    move-exception v0

    :goto_b1
    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    goto/16 :goto_136

    :goto_b7
    const-wide/16 v17, 0x0

    move-wide/from16 v21, v14

    .line 1194
    invoke-static/range {v17 .. v22}, Lcom/android/server/pinner/PinnerUtils;->clamp(JJJ)J

    move-result-wide v0

    cmp-long v2, v0, v23

    if-lez v2, :cond_c8

    add-long v8, v26, v10

    .line 1202
    invoke-static {v8, v9, v0, v1}, Landroid/system/Os;->mlock(JJ)V
    :try_end_c8
    .catch Landroid/system/ErrnoException; {:try_start_8f .. :try_end_c8} :catch_b0
    .catchall {:try_start_8f .. :try_end_c8} :catchall_a9

    :cond_c8
    add-long/2addr v6, v0

    move-wide/from16 v8, v23

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    goto :goto_58

    :catchall_d0
    move-exception v0

    move-wide/from16 v26, v1

    goto :goto_aa

    :catch_d4
    move-exception v0

    move-wide/from16 v26, v1

    goto :goto_b1

    :catchall_d8
    move-exception v0

    move-wide/from16 v26, v1

    move-wide v12, v14

    goto :goto_aa

    :catch_dd
    move-exception v0

    move-wide/from16 v26, v1

    move-wide v12, v14

    goto :goto_b1

    :catchall_e2
    move-exception v0

    move-wide/from16 v26, v1

    move-wide/from16 v23, v8

    goto :goto_aa

    :catch_e8
    move-exception v0

    move-wide/from16 v26, v1

    move-wide/from16 v23, v8

    goto :goto_b1

    :cond_ee
    move-wide/from16 v26, v1

    move-wide/from16 v23, v8

    .line 1207
    :try_start_f2
    new-instance v0, Lcom/android/server/pinner/PinnedFile;
    :try_end_f4
    .catch Landroid/system/ErrnoException; {:try_start_f2 .. :try_end_f4} :catch_10c
    .catchall {:try_start_f2 .. :try_end_f4} :catchall_108

    move-wide v3, v12

    move-wide/from16 v1, v26

    :try_start_f7
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pinner/PinnedFile;-><init>(JJLjava/lang/String;J)V
    :try_end_fa
    .catch Landroid/system/ErrnoException; {:try_start_f7 .. :try_end_fa} :catch_103
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fe

    .line 1214
    invoke-static/range {v16 .. v16}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    return-object v0

    :catchall_fe
    move-exception v0

    move-wide v12, v3

    :goto_100
    move-wide v2, v1

    goto/16 :goto_49

    :catch_103
    move-exception v0

    move-wide v12, v3

    :goto_105
    move-wide v2, v1

    goto/16 :goto_51

    :catchall_108
    move-exception v0

    move-wide/from16 v1, v26

    goto :goto_100

    :catch_10c
    move-exception v0

    move-wide/from16 v1, v26

    goto :goto_105

    :catchall_110
    move-exception v0

    move-wide/from16 v23, v8

    goto :goto_100

    :catch_114
    move-exception v0

    move-wide/from16 v23, v8

    goto :goto_105

    :catchall_118
    move-exception v0

    goto/16 :goto_47

    :catch_11b
    move-exception v0

    goto/16 :goto_4f

    :catchall_11e
    move-exception v0

    move-wide/from16 v23, v8

    move-object/from16 v1, v16

    :goto_123
    move-wide/from16 v12, v23

    goto :goto_159

    :catch_126
    move-exception v0

    move-wide/from16 v23, v8

    move-object/from16 v1, v16

    :goto_12b
    move-wide/from16 v12, v23

    goto :goto_136

    :catchall_12e
    move-exception v0

    move-wide/from16 v23, v8

    goto :goto_123

    :catch_132
    move-exception v0

    move-wide/from16 v23, v8

    goto :goto_12b

    .line 1211
    :goto_136
    :try_start_136
    const-string v4, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not pin file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14c
    .catchall {:try_start_136 .. :try_end_14c} :catchall_158

    .line 1214
    invoke-static {v1}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    cmp-long v0, v2, v23

    if-ltz v0, :cond_156

    .line 1216
    invoke-static {v2, v3, v12, v13}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    :cond_156
    const/4 v0, 0x0

    return-object v0

    :catchall_158
    move-exception v0

    .line 1214
    :goto_159
    invoke-static {v1}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    cmp-long v1, v2, v23

    if-ltz v1, :cond_163

    .line 1216
    invoke-static {v2, v3, v12, v13}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 1218
    :cond_163
    throw v0
.end method


# virtual methods
.method public final createPinKeys()Landroid/util/ArraySet;
    .registers 7

    .line 592
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 595
    iget-boolean v1, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinCamera:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v3, "pinner.pin_camera"

    .line 597
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 596
    const-string/jumbo v4, "runtime_native_boot"

    const-string/jumbo v5, "pin_camera"

    invoke-interface {v1, v4, v5, v3}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    .line 599
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_27
    iget v1, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    if-lez v1, :cond_32

    .line 605
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_32
    iget-boolean p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinAssistant:Z

    if-eqz p0, :cond_3e

    const/4 p0, 0x2

    .line 608
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3e
    return-object v0
.end method

.method public dumpDataForStatsd()Ljava/util/List;
    .registers 10

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    monitor-enter p0

    .line 348
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    .line 349
    new-instance v3, Lcom/android/server/pinner/PinnerService$PinnedFileStats;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4, v2}, Lcom/android/server/pinner/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/pinner/PinnedFile;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :catchall_27
    move-exception v0

    goto :goto_70

    .line 352
    :cond_29
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 353
    iget-object v3, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pinner/PinnerService$PinnedApp;

    .line 354
    iget-object v4, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnerService$PinnedApp;

    iget-object v2, v2, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_59
    if-ge v5, v4, :cond_33

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/pinner/PinnedFile;

    .line 355
    new-instance v7, Lcom/android/server/pinner/PinnerService$PinnedFileStats;

    iget v8, v3, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    invoke-direct {v7, v8, v6}, Lcom/android/server/pinner/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/pinner/PinnedFile;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 358
    :cond_6e
    monitor-exit p0

    return-object v0

    :goto_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_6 .. :try_end_71} :catchall_27

    throw v0
.end method

.method public final getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 1222
    monitor-enter p0

    .line 1223
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1224
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 1225
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1226
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    .line 1227
    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 543
    :cond_4
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    .line 544
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    .line 554
    :cond_13
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/pinner/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 555
    iget-object p0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_20
    if-eqz p3, :cond_4d

    .line 559
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 562
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object p1, v0

    :cond_31
    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 563
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_31

    if-nez p1, :cond_4b

    move-object p1, p2

    goto :goto_31

    :cond_4b
    return-object v0

    :cond_4c
    return-object p1

    :cond_4d
    return-object v0
.end method

.method public final getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 534
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAvailableGlobalQuota()J
    .registers 5

    .line 833
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 502
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 503
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_19

    .line 512
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :cond_19
    if-nez v0, :cond_26

    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 521
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_26
    return-object v0
.end method

.method public final getHomeInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 528
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 529
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .registers 4

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 710
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/pinner/PinnerService;->getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 708
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/pinner/PinnerService;->getHomeInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 706
    :cond_14
    invoke-virtual {p0, p2}, Lcom/android/server/pinner/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getNameForKey(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_b

    .line 728
    const-string p0, ""

    return-object p0

    .line 726
    :cond_b
    const-string p0, "Assistant"

    return-object p0

    .line 724
    :cond_e
    const-string p0, "Home"

    return-object p0

    .line 722
    :cond_11
    const-string p0, "Camera"

    return-object p0
.end method

.method public final declared-synchronized getPinKeys()Landroid/util/ArraySet;
    .registers 2

    monitor-enter p0

    .line 615
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getPinnerStats()Ljava/util/List;
    .registers 8

    .line 1278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    monitor-enter p0

    .line 1281
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1282
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_43

    .line 1283
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    .line 1284
    new-instance v3, Landroid/app/pinner/PinnedFileStat;

    iget-object v4, v2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    iget-wide v5, v2, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    iget-object v2, v2, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/app/pinner/PinnedFileStat;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 1285
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1287
    :cond_2c
    iget-wide v1, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_42

    .line 1288
    new-instance v1, Landroid/app/pinner/PinnedFileStat;

    const-string v2, "[anon]"

    iget-wide v3, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    const-string p0, "[anon]"

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/app/pinner/PinnedFileStat;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    return-object v0

    :catchall_43
    move-exception v0

    .line 1282
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public final getSizeLimitForKey(I)I
    .registers 3

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 822
    :cond_a
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    return p0

    .line 820
    :cond_d
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    return p0

    .line 818
    :cond_10
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    return p0
.end method

.method public final getUidForKey(I)I
    .registers 3

    .line 691
    monitor-enter p0

    .line 692
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pinner/PinnerService$PinnedApp;

    if-eqz p1, :cond_18

    .line 693
    iget-boolean v0, p1, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    if-eqz v0, :cond_18

    iget p1, p1, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    goto :goto_19

    :catchall_16
    move-exception p1

    goto :goto_1b

    :cond_18
    const/4 p1, -0x1

    :goto_19
    monitor-exit p0

    return p1

    .line 694
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_16

    throw p1
.end method

.method public getWebviewPinQuota()I
    .registers 3

    .line 492
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredWebviewPinBytes:I

    .line 493
    const-string/jumbo v0, "pinner.pin_webview_size"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_d

    return v0

    :cond_d
    return p0
.end method

.method public final handlePinOnStart()V
    .registers 11

    .line 380
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 383
    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_22

    aget-object v4, v0, v2

    .line 384
    const-string/jumbo v8, "system"

    const/4 v9, 0x1

    const-wide/32 v5, 0x7fffffff

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_22
    move-object v3, p0

    .line 388
    invoke-virtual {v3}, Lcom/android/server/pinner/PinnerService;->refreshPinAnonConfig()V

    return-void
.end method

.method public final handleUidActive(I)V
    .registers 3

    const/4 v0, 0x1

    .line 447
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->updateActiveState(IZ)V

    return-void
.end method

.method public final handleUidGone(I)V
    .registers 7

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->updateActiveState(IZ)V

    .line 435
    monitor-enter p0

    .line 437
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

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

    if-ne v1, v3, :cond_20

    .line 439
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    goto :goto_32

    .line 441
    :cond_20
    iget-object v2, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_1e

    .line 443
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    return-void

    .line 442
    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_1e

    throw p1
.end method

.method public final isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 2

    .line 485
    const-class p0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .registers 7

    .line 292
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    int-to-long v2, v2

    const/16 v4, 0x64

    const/4 v5, 0x0

    .line 293
    invoke-static {v2, v3, v5, v4}, Ljava/lang/Math;->clamp(JII)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    .line 295
    new-instance v0, Lcom/android/server/pinner/PinnerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/pinner/PinnerService$BinderService;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mBinderService:Lcom/android/server/pinner/PinnerService$BinderService;

    .line 296
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/pinner/PinnerService$Injector;->publishBinderService(Lcom/android/server/pinner/PinnerService;Landroid/os/Binder;)V

    .line 297
    const-class v0, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    invoke-virtual {p0, v5}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 311
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 312
    iget-object p2, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-nez p2, :cond_f

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    :cond_f
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 319
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-eqz p1, :cond_11

    .line 320
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    :cond_11
    return-void
.end method

.method public final pinAnonRegion()V
    .registers 19

    move-object/from16 v0, p0

    .line 749
    iget-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const-string v6, "PinnerService"

    if-nez v5, :cond_16

    .line 750
    const-string/jumbo v1, "pinAnonRegion: releasing pinned region"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {v0}, Lcom/android/server/pinner/PinnerService;->unpinAnonRegion()V

    return-void

    .line 755
    :cond_16
    sget v5, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v7, v5

    rem-long v7, v1, v7

    cmp-long v7, v7, v3

    if-eqz v7, :cond_38

    int-to-long v7, v5

    .line 756
    rem-long v7, v1, v7

    sub-long/2addr v1, v7

    .line 757
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pinAnonRegion: aligning size to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move-wide v9, v1

    .line 759
    iget-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_73

    .line 760
    iget-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_5b

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pinAnonRegion: already pinned region of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 764
    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pinAnonRegion: resetting pinned region for new size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {v0}, Lcom/android/server/pinner/PinnerService;->unpinAnonRegion()V

    .line 771
    :cond_73
    :try_start_73
    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    sget v2, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int v11, v1, v2

    sget v1, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v2, Landroid/system/OsConstants;->MAP_ANONYMOUS:I

    or-int v12, v1, v2

    new-instance v13, Ljava/io/FileDescriptor;

    invoke-direct {v13}, Ljava/io/FileDescriptor;-><init>()V

    const-wide/16 v14, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v7 .. v15}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8c} :catch_120
    .catchall {:try_start_73 .. :try_end_8c} :catchall_11a

    .line 776
    :try_start_8c
    const-class v5, Lsun/misc/Unsafe;

    .line 777
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_93} :catch_116
    .catchall {:try_start_8c .. :try_end_93} :catchall_112

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v11

    move-object v14, v12

    :goto_97
    const/4 v15, 0x1

    if-ge v13, v8, :cond_bd

    move-wide/from16 v16, v3

    :try_start_9c
    aget-object v3, v7, v13

    .line 778
    invoke-virtual {v3, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 779
    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 780
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 781
    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lsun/misc/Unsafe;

    goto :goto_b8

    :catchall_b3
    move-exception v0

    goto/16 :goto_141

    :catch_b6
    move-exception v0

    goto :goto_125

    :cond_b8
    :goto_b8
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v3, v16

    goto :goto_97

    :cond_bd
    move-wide/from16 v16, v3

    if-eqz v14, :cond_10a

    .line 787
    const-string/jumbo v3, "setMemory"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v11

    aput-object v7, v4, v15

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v4, v8

    invoke-virtual {v5, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 788
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array {v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-static {v1, v2, v9, v10}, Landroid/system/Os;->mlock(JJ)V

    .line 790
    iput-wide v9, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 791
    iput-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    const-wide/16 v1, -0x1

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pinAnonRegion success, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 785
    :cond_10a
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Couldn\'t get Unsafe"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_112} :catch_b6
    .catchall {:try_start_9c .. :try_end_112} :catchall_b3

    :catchall_112
    move-exception v0

    move-wide/from16 v16, v3

    goto :goto_141

    :catch_116
    move-exception v0

    move-wide/from16 v16, v3

    goto :goto_125

    :catchall_11a
    move-exception v0

    move-wide/from16 v16, v3

    move-wide/from16 v1, v16

    goto :goto_141

    :catch_120
    move-exception v0

    move-wide/from16 v16, v3

    move-wide/from16 v1, v16

    .line 795
    :goto_125
    :try_start_125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not pin anon region of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_139
    .catchall {:try_start_125 .. :try_end_139} :catchall_b3

    cmp-long v0, v1, v16

    if-ltz v0, :cond_140

    .line 799
    invoke-static {v1, v2, v9, v10}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    :cond_140
    return-void

    :goto_141
    cmp-long v3, v1, v16

    if-ltz v3, :cond_148

    invoke-static {v1, v2, v9, v10}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 801
    :cond_148
    throw v0
.end method

.method public final pinApp(IIZ)V
    .registers 5

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getUidForKey(I)I

    move-result v0

    if-nez p3, :cond_1c

    const/4 p3, -0x1

    if-eq v0, p3, :cond_1c

    .line 673
    monitor-enter p0

    .line 674
    :try_start_a
    iget-object p2, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw p1

    .line 678
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pinner/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->unpinApp(I)V

    if-eqz p2, :cond_28

    .line 681
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pinner/PinnerService;->pinAppInternal(ILandroid/content/pm/ApplicationInfo;)V

    :cond_28
    return-void
.end method

.method public final pinAppInternal(ILandroid/content/pm/ApplicationInfo;)V
    .registers 15

    if-nez p2, :cond_4

    goto/16 :goto_9e

    .line 847
    :cond_4
    new-instance v0, Lcom/android/server/pinner/PinnerService$PinnedApp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/pinner/PinnerService$PinnedApp;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pinner/PinnerService-IA;)V

    .line 848
    monitor-enter p0

    .line 849
    :try_start_b
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_9f

    .line 853
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getSizeLimitForKey(I)I

    move-result v1

    .line 854
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 855
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    .line 858
    array-length v5, v3

    move v6, v4

    :goto_2a
    if-ge v6, v5, :cond_34

    aget-object v7, v3, v6

    .line 859
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_34
    int-to-long v5, v1

    .line 865
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-wide v7, v5

    :goto_3a
    if-ge v4, v1, :cond_9e

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-gtz v3, :cond_64

    .line 867
    const-string v3, "PinnerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reached to the pin size limit. Skipping: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    move-object v9, p2

    goto :goto_8c

    .line 872
    :cond_64
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object v10

    .line 873
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object v5, p0

    move-object v9, p2

    .line 874
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    if-nez p0, :cond_8f

    .line 876
    const-string p0, "PinnerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to pin "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8c
    move-object p0, v5

    move-object p2, v9

    goto :goto_3a

    .line 883
    :cond_8f
    monitor-enter v5

    .line 884
    :try_start_90
    iget-object p2, v0, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    monitor-exit v5
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_9a

    .line 887
    iget-wide v10, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v7, v10

    goto :goto_8c

    :catchall_9a
    move-exception v0

    move-object p0, v0

    .line 885
    :try_start_9c
    monitor-exit v5
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9a

    throw p0

    :cond_9e
    :goto_9e
    return-void

    :catchall_9f
    move-exception v0

    move-object v5, p0

    :goto_a1
    move-object p0, v0

    .line 850
    :try_start_a2
    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a4

    throw p0

    :catchall_a4
    move-exception v0

    goto :goto_a1
.end method

.method public final pinApps(I)V
    .registers 3

    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->pinAppsInternal(IZ)V

    return-void
.end method

.method public final pinAppsInternal(IZ)V
    .registers 6

    if-eqz p2, :cond_20

    .line 632
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object p2

    .line 633
    monitor-enter p0

    .line 635
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 636
    const-string p1, "PinnerService"

    const-string p2, "Attempted to update a list of apps, but apps were already pinned. Skipping."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    goto :goto_1e

    .line 642
    :cond_1a
    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 643
    monitor-exit p0

    goto :goto_20

    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_18

    throw p1

    .line 646
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object p2

    .line 647
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_2a
    if-ltz v0, :cond_3c

    .line 648
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 649
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    :cond_3c
    return-void
.end method

.method public final pinAppsWithUpdatedKeys(I)V
    .registers 3

    const/4 v0, 0x1

    .line 623
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->pinAppsInternal(IZ)V

    return-void
.end method

.method public pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;
    .registers 15

    .line 909
    monitor-enter p0

    .line 910
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnedFile;

    .line 911
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8e

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 913
    iget-wide v2, v0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_14

    return-object v1

    .line 922
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    .line 926
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getAvailableGlobalQuota()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_38

    .line 930
    const-string p0, "PinnerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reached pin quota, skipping file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 933
    :cond_38
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 936
    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 938
    iget-object v2, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pinner/PinnerService$Injector;->pinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    if-nez p0, :cond_63

    .line 941
    const-string p0, "PinnerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to pin file = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_63
    if-eqz p5, :cond_66

    goto :goto_68

    .line 944
    :cond_66
    const-string p5, ""

    :goto_68
    iput-object p5, p0, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    .line 946
    iget-wide p1, v3, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-wide v0, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr p1, v0

    iput-wide p1, v3, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 948
    monitor-enter v3

    .line 949
    :try_start_72
    iget-object p1, v3, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_8a

    if-eqz p6, :cond_89

    .line 953
    iget-wide p1, v3, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 954
    invoke-virtual {v3}, Lcom/android/server/pinner/PinnerService;->getAvailableGlobalQuota()J

    move-result-wide p5

    invoke-virtual {v3, p0, p5, p6, p4}, Lcom/android/server/pinner/PinnerService;->pinOptimizedDexDependencies(Lcom/android/server/pinner/PinnedFile;JLandroid/content/pm/ApplicationInfo;)J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, v3, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    :cond_89
    return-object p0

    :catchall_8a
    move-exception v0

    move-object p0, v0

    .line 950
    :try_start_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8a

    throw p0

    :catchall_8e
    move-exception v0

    move-object v3, p0

    :goto_90
    move-object p0, v0

    .line 911
    :try_start_91
    monitor-exit v3
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_93

    throw p0

    :catchall_93
    move-exception v0

    goto :goto_90
.end method

.method public final pinFileInternal(Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;
    .registers 9

    const/4 p0, 0x0

    if-eqz p4, :cond_b

    .line 1062
    :try_start_3
    invoke-static {p1}, Lcom/android/server/pinner/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object p4
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception p1

    move-object p4, p0

    goto :goto_3b

    :cond_b
    move-object p4, p0

    :goto_c
    if-eqz p4, :cond_15

    .line 1066
    :try_start_e
    invoke-static {p4, p1}, Lcom/android/server/pinner/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_3b

    :cond_15
    :goto_15
    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    move v1, v0

    :goto_1b
    if-eqz v1, :cond_23

    .line 1070
    new-instance v0, Lcom/android/server/pinner/PinRangeSourceStream;

    invoke-direct {v0, p0}, Lcom/android/server/pinner/PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2c

    .line 1071
    :cond_23
    new-instance v2, Lcom/android/server/pinner/PinRangeSourceStatic;

    const v3, 0x7fffffff

    invoke-direct {v2, v0, v3}, Lcom/android/server/pinner/PinRangeSourceStatic;-><init>(II)V

    move-object v0, v2

    .line 1072
    :goto_2c
    invoke-static {p1, p2, p3, v0}, Lcom/android/server/pinner/PinnerService;->pinFileRanges(Ljava/lang/String;JLcom/android/server/pinner/PinRangeSource;)Lcom/android/server/pinner/PinnedFile;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 1074
    iput-boolean v1, p1, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_13

    .line 1078
    :cond_34
    invoke-static {p0}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    .line 1079
    invoke-static {p4}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    return-object p1

    .line 1078
    :goto_3b
    invoke-static {p0}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    .line 1079
    invoke-static {p4}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    .line 1080
    throw p1
.end method

.method public final pinOptimizedDexDependencies(Lcom/android/server/pinner/PinnedFile;JLandroid/content/pm/ApplicationInfo;)J
    .registers 15

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 975
    :cond_5
    iget-object v2, p1, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p1, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_7b

    const/4 v2, 0x0

    if-eqz p4, :cond_1e

    .line 978
    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    goto :goto_1f

    :cond_1e
    move-object p4, v2

    :goto_1f
    const/4 v3, 0x0

    if-nez p4, :cond_26

    .line 981
    sget-object p4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object p4, p4, v3

    .line 984
    :cond_26
    invoke-static {p4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 987
    :try_start_2a
    iget-object v4, p1, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-static {v4, p4}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_30} :catch_30

    :catch_30
    if-nez v2, :cond_33

    goto :goto_7b

    .line 993
    :cond_33
    array-length p4, v2

    move-wide v7, p2

    :goto_35
    if-ge v3, p4, :cond_7b

    aget-object v6, v2, v3

    .line 995
    invoke-virtual {p0, v6}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    .line 997
    iget-object v4, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    const/4 v9, 0x0

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pinner/PinnerService$Injector;->pinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    if-nez p0, :cond_5d

    .line 1000
    const-string p0, "PinnerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to pin ART file = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 1003
    :cond_5d
    iget-object p2, p1, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    .line 1004
    iget-object p2, p1, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    iget-wide p2, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v7, p2

    add-long/2addr v0, p2

    .line 1007
    monitor-enter v5

    .line 1008
    :try_start_6b
    iget-object p2, v5, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object p3, p0, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p2, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    goto :goto_35

    :catchall_77
    move-exception v0

    move-object p0, v0

    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_77

    throw p0

    :cond_7b
    :goto_7b
    return-wide v0
.end method

.method public final refreshPinAnonConfig()V
    .registers 6

    .line 736
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "pin_shared_anon_size"

    sget-wide v2, Lcom/android/server/pinner/PinnerService;->DEFAULT_ANON_SIZE:J

    const-string/jumbo v4, "runtime_native"

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x80000000L

    .line 738
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 739
    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_28

    .line 740
    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    .line 741
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->pinAnonRegion()V

    :cond_28
    return-void
.end method

.method public final registerUidListener()V
    .registers 5

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mAm:Landroid/app/IActivityManager;

    new-instance v1, Lcom/android/server/pinner/PinnerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/pinner/PinnerService$4;-><init>(Lcom/android/server/pinner/PinnerService;)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-interface {v0, v1, v3, p0, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 428
    const-string v0, "PinnerService"

    const-string v1, "Failed to register uid observer"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final registerUserSetupCompleteListener()V
    .registers 5

    .line 397
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/pinner/PinnerService$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/pinner/PinnerService$3;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 p0, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final sendPinAppMessage(IIZ)V
    .registers 6

    .line 657
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda1;-><init>()V

    .line 658
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 657
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendPinAppsMessage(I)V
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;-><init>()V

    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 579
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendPinAppsWithUpdatedKeysMessage(I)V
    .registers 4

    .line 584
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda3;-><init>()V

    .line 585
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 584
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendUnpinAppsMessage()V
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final unpinAnonRegion()V
    .registers 7

    .line 805
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 806
    iget-wide v4, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    invoke-static {v0, v1, v4, v5}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 808
    :cond_d
    iput-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    .line 809
    iput-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    return-void
.end method

.method public final unpinApp(I)V
    .registers 5

    .line 471
    monitor-enter p0

    .line 472
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnerService$PinnedApp;

    if-nez v0, :cond_13

    .line 474
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    goto :goto_3a

    .line 476
    :cond_13
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 478
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_11

    .line 479
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_39

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    .line 480
    iget-object v2, v2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    goto :goto_29

    :cond_39
    return-void

    .line 478
    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_11

    throw p1
.end method

.method public final unpinApps()V
    .registers 4

    .line 462
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1c

    .line 464
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 465
    invoke-virtual {p0, v2}, Lcom/android/server/pinner/PinnerService;->unpinApp(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public unpinFile(Ljava/lang/String;)J
    .registers 11

    .line 1245
    monitor-enter p0

    .line 1246
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pinner/PinnedFile;

    .line 1247
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_4d

    if-nez p1, :cond_f

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1252
    :cond_f
    iget-wide v0, p1, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1253
    invoke-virtual {p1}, Lcom/android/server/pinner/PinnedFile;->close()V

    .line 1254
    monitor-enter p0

    .line 1258
    :try_start_15
    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-wide v4, p1, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 1260
    iget-object v2, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    iget-object p1, p1, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_49

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/pinner/PinnedFile;

    if-nez v4, :cond_37

    goto :goto_2a

    .line 1265
    :cond_37
    iget-wide v5, v4, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v0, v5

    .line 1266
    iget-wide v7, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    sub-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 1267
    iget-object v5, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v4, v4, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :catchall_47
    move-exception p1

    goto :goto_4b

    .line 1272
    :cond_49
    monitor-exit p0

    return-wide v0

    :goto_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_15 .. :try_end_4c} :catchall_47

    throw p1

    :catchall_4d
    move-exception p1

    .line 1247
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public unpinGroup(Ljava/lang/String;)V
    .registers 3

    .line 1231
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnedFile;

    .line 1233
    iget-object v0, v0, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public update(Landroid/util/ArraySet;Z)V
    .registers 10

    .line 332
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 333
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 334
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_4e

    .line 335
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 336
    invoke-virtual {p0, v3, v1}, Lcom/android/server/pinner/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 337
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating pinned files for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " force="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PinnerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0, v3, v1, p2}, Lcom/android/server/pinner/PinnerService;->sendPinAppMessage(IIZ)V

    :cond_4b
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_4e
    return-void
.end method

.method public final updateActiveState(IZ)V
    .registers 6

    .line 451
    monitor-enter p0

    .line 452
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_1f

    .line 453
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pinner/PinnerService$PinnedApp;

    .line 454
    iget v2, v1, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_1c

    .line 455
    iput-boolean p2, v1, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_21

    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 458
    :cond_1f
    monitor-exit p0

    return-void

    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_1a

    throw p1
.end method
