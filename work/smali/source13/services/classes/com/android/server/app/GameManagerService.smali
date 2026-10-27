.class public final Lcom/android/server/app/GameManagerService;
.super Landroid/app/IGameManagerService$Stub;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/app/GameManagerService$Lifecycle;,
        Lcom/android/server/app/GameManagerService$GamePackageConfiguration;,
        Lcom/android/server/app/GameManagerService$FrameRate;,
        Lcom/android/server/app/GameManagerService$DeviceConfigListener;,
        Lcom/android/server/app/GameManagerService$SettingsHandler;
    }
.end annotation


# static fields
.field static final CANCEL_GAME_LOADING_MODE:I = 0x5

.field static final COMPAT_DISABLED:Landroid/app/compat/PackageOverride;

.field static final COMPAT_ENABLED:Landroid/app/compat/PackageOverride;

.field private static final DEBUG:Z = false

.field static final LOADING_BOOST_MAX_DURATION:I = 0x1388

.field private static final PACKAGE_NAME_MSG_KEY:Ljava/lang/String; = "packageName"

.field static final POPULATE_GAME_MODE_SETTINGS:I = 0x3

.field static final REMOVE_SETTINGS:I = 0x2

.field static final SET_GAME_STATE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "GameManagerService"

.field private static final USER_ID_MSG_KEY:Ljava/lang/String; = "userId"

.field static final WRITE_SETTINGS:I = 0x1

.field static final WRITE_SETTINGS_DELAY:I = 0x2710


# instance fields
.field private final mConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/app/GameManagerService$GamePackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceConfigListener:Lcom/android/server/app/GameManagerService$DeviceConfigListener;

.field private final mDeviceConfigLock:Ljava/lang/Object;

.field private final mGameServiceController:Lcom/android/server/app/GameServiceController;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mOverrideConfigLock:Ljava/lang/Object;

.field private final mOverrideConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/app/GameManagerService$GamePackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mSettings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/app/GameManagerSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/app/GameManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverrideConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverrideConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetInstalledGamePackageNames(Lcom/android/server/app/GameManagerService;I)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterDeviceConfigListener(Lcom/android/server/app/GameManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/app/GameManagerService;->registerDeviceConfigListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterPackageReceiver(Lcom/android/server/app/GameManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/app/GameManagerService;->registerPackageReceiver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgameStateModeToStatsdGameState(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->gameStateModeToStatsdGameState(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 131
    new-instance v0, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v0}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v0

    sput-object v0, Lcom/android/server/app/GameManagerService;->COMPAT_ENABLED:Landroid/app/compat/PackageOverride;

    .line 133
    new-instance v0, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v0}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v0

    sput-object v0, Lcom/android/server/app/GameManagerService;->COMPAT_DISABLED:Landroid/app/compat/PackageOverride;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 157
    invoke-static {}, Lcom/android/server/app/GameManagerService;->createServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 158
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 160
    invoke-direct {p0}, Landroid/app/IGameManagerService$Stub;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 149
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    .line 151
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    .line 161
    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    .line 162
    new-instance v0, Lcom/android/server/app/GameManagerService$SettingsHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/app/GameManagerService$SettingsHandler;-><init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 164
    nop

    .line 165
    const-string/jumbo v1, "platform_compat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/app/GameManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 166
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.game_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 168
    new-instance v1, Lcom/android/server/app/GameServiceController;

    .line 169
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/app/GameServiceProviderSelectorImpl;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/app/GameServiceProviderSelectorImpl;-><init>(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;)V

    new-instance v4, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

    invoke-direct {v4, p1}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/server/app/GameServiceController;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameServiceProviderSelector;Lcom/android/server/app/GameServiceProviderInstanceFactory;)V

    iput-object v1, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    goto :goto_81

    .line 175
    :cond_7e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    .line 177
    :goto_81
    invoke-static {}, Lcom/android/server/app/PreCacheUtilStub;->getInstance()Lcom/android/server/app/PreCacheUtilStub;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/android/server/app/PreCacheUtilStub;->registerPreCacheObserver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 179
    invoke-static {}, Lcom/android/server/app/GameManagerServiceStub;->getInstance()Lcom/android/server/app/GameManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerServiceStub;->registerDownscaleObserver(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method private bitFieldContainsModeBitmask(II)Z
    .registers 4
    .param p1, "bitField"    # I
    .param p2, "gameMode"    # I

    .line 1254
    invoke-direct {p0, p2}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 822
    return-void

    .line 819
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createServiceThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 1666
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "GameManagerService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1668
    .local v0, "handlerThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 1669
    return-object v0
.end method

.method private dumpAllGameConfigs(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 207
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 208
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "packageList":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_18

    aget-object v4, v1, v3

    .line 210
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/app/GameManagerService;->getInterventionList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    .end local v4    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 212
    :cond_18
    return-void
.end method

.method private dumpDeviceConfigs()Ljava/lang/String;
    .registers 6

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1642
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1643
    .local v2, "key":Ljava/lang/String;
    const-string v3, "[\nName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1644
    const-string v4, "\nConfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_f

    .line 1646
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private enableCompatScale(Ljava/lang/String;J)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scaleId"    # J

    .line 1196
    const-string v0, "GameManagerService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1198
    .local v1, "uid":J
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling downscale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1200
    .local v3, "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    const-wide/32 v4, 0xa09e1d7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/android/server/app/GameManagerService;->COMPAT_ENABLED:Landroid/app/compat/PackageOverride;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-wide/32 v6, 0xb52b678

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v6, Lcom/android/server/app/GameManagerService;->COMPAT_DISABLED:Landroid/app/compat/PackageOverride;

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const-wide/32 v7, 0xb52b555

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    const-wide/32 v7, 0xb52b676

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const-wide/32 v7, 0xb52b576

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const-wide/32 v7, 0xa8bb015

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const-wide/32 v7, 0xb52b674

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const-wide/32 v7, 0xa8bb033

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    const-wide/32 v7, 0xb52b550

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const-wide/32 v7, 0xa8bb06d

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-wide/32 v7, 0xb52b573

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-wide/32 v7, 0xa8bb021

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const-wide/32 v7, 0xb52b546

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const-wide/32 v7, 0xae57a6b

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    new-instance v4, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v4, v3}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V
    :try_end_c7
    .catchall {:try_start_6 .. :try_end_c7} :catchall_d8

    .line 1218
    .local v4, "changeConfig":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    :try_start_c7
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {v5, v4, p1}, Lcom/android/internal/compat/IPlatformCompat;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_cc} :catch_cd
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_d8

    .line 1221
    goto :goto_d3

    .line 1219
    :catch_cd
    move-exception v5

    .line 1220
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_ce
    const-string v6, "Failed to call IPlatformCompat#putOverridesOnReleaseBuilds"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d3
    .catchall {:try_start_ce .. :try_end_d3} :catchall_d8

    .line 1223
    .end local v3    # "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    .end local v4    # "changeConfig":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_d3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1224
    nop

    .line 1225
    return-void

    .line 1223
    :catchall_d8
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1224
    throw v0
.end method

.method private static gameStateModeToStatsdGameState(I)I
    .registers 2
    .param p0, "mode"    # I

    .line 1650
    packed-switch p0, :pswitch_data_e

    .line 1661
    const/4 v0, 0x0

    return v0

    .line 1658
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 1656
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 1654
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1652
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private getAvailableGameModesUnchecked(Ljava/lang/String;)[I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 825
    const/4 v0, 0x0

    .line 826
    .local v0, "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_4
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v0, v2

    .line 828
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_2c

    .line 829
    if-nez v0, :cond_21

    .line 830
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 831
    :try_start_13
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v0, v2

    .line 832
    monitor-exit v1

    goto :goto_21

    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v2

    .line 834
    :cond_21
    :goto_21
    if-nez v0, :cond_27

    .line 835
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1

    .line 837
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v1

    return-object v1

    .line 828
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method static getCompatChangeId(Ljava/lang/String;)J
    .registers 3
    .param p0, "raw"    # Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ce

    :cond_7
    goto/16 :goto_93

    :sswitch_9
    const-string v0, "0.85"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_94

    :sswitch_15
    const-string v0, "0.75"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto/16 :goto_94

    :sswitch_21
    const-string v0, "0.65"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_94

    :sswitch_2c
    const-string v0, "0.55"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_94

    :sswitch_36
    const-string v0, "0.45"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_94

    :sswitch_40
    const-string v0, "0.35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_94

    :sswitch_4a
    const-string v0, "0.9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_94

    :sswitch_55
    const-string v0, "0.8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_94

    :sswitch_60
    const-string v0, "0.7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_94

    :sswitch_6b
    const-string v0, "0.6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_94

    :sswitch_75
    const-string v0, "0.5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_94

    :sswitch_7f
    const-string v0, "0.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_94

    :sswitch_89
    const-string v0, "0.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_94

    :goto_93
    const/4 v0, -0x1

    :goto_94
    packed-switch v0, :pswitch_data_104

    .line 372
    const-wide/16 v0, 0x0

    return-wide v0

    .line 370
    :pswitch_9a
    const-wide/32 v0, 0xae57a6b

    return-wide v0

    .line 368
    :pswitch_9e
    const-wide/32 v0, 0xb52b546

    return-wide v0

    .line 366
    :pswitch_a2
    const-wide/32 v0, 0xa8bb021

    return-wide v0

    .line 364
    :pswitch_a6
    const-wide/32 v0, 0xb52b573

    return-wide v0

    .line 362
    :pswitch_aa
    const-wide/32 v0, 0xa8bb06d

    return-wide v0

    .line 360
    :pswitch_ae
    const-wide/32 v0, 0xb52b550

    return-wide v0

    .line 358
    :pswitch_b2
    const-wide/32 v0, 0xa8bb033

    return-wide v0

    .line 356
    :pswitch_b6
    const-wide/32 v0, 0xb52b674

    return-wide v0

    .line 354
    :pswitch_ba
    const-wide/32 v0, 0xa8bb015

    return-wide v0

    .line 352
    :pswitch_be
    const-wide/32 v0, 0xb52b576

    return-wide v0

    .line 350
    :pswitch_c2
    const-wide/32 v0, 0xb52b676

    return-wide v0

    .line 348
    :pswitch_c6
    const-wide/32 v0, 0xb52b555

    return-wide v0

    .line 346
    :pswitch_ca
    const-wide/32 v0, 0xb52b678

    return-wide v0

    :sswitch_data_ce
    .sparse-switch
        0xb9f5 -> :sswitch_89
        0xb9f6 -> :sswitch_7f
        0xb9f7 -> :sswitch_75
        0xb9f8 -> :sswitch_6b
        0xb9f9 -> :sswitch_60
        0xb9fa -> :sswitch_55
        0xb9fb -> :sswitch_4a
        0x1684e0 -> :sswitch_40
        0x1684ff -> :sswitch_36
        0x16851e -> :sswitch_2c
        0x16853d -> :sswitch_21
        0x16855c -> :sswitch_15
        0x16857b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_c6
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
    .end packed-switch
.end method

.method static getFpsInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "raw"    # Ljava/lang/String;

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_84

    :cond_7
    goto :goto_58

    :sswitch_8
    const-string v0, "disable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_59

    :sswitch_12
    const-string v0, "120"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_59

    :sswitch_1c
    const-string v0, "90"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_59

    :sswitch_26
    const-string v0, "60"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_59

    :sswitch_30
    const-string v0, "45"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_59

    :sswitch_3a
    const-string v0, "40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_59

    :sswitch_44
    const-string v0, "30"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_59

    :sswitch_4e
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_59

    :goto_58
    const/4 v0, -0x1

    :goto_59
    packed-switch v0, :pswitch_data_a6

    .line 412
    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_INVALID:Lcom/android/server/app/GameManagerService$FrameRate;

    iget v0, v0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return v0

    .line 410
    :pswitch_61
    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_DEFAULT:Lcom/android/server/app/GameManagerService$FrameRate;

    iget v0, v0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return v0

    .line 407
    :pswitch_66
    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_120:Lcom/android/server/app/GameManagerService$FrameRate;

    iget v0, v0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return v0

    .line 405
    :pswitch_6b
    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_90:Lcom/android/server/app/GameManagerService$FrameRate;

    iget v0, v0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return v0

    .line 403
    :pswitch_70
    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_60:Lcom/android/server/app/GameManagerService$FrameRate;

    iget v0, v0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return v0

    .line 401
    :pswitch_75
    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_45:Lcom/android/server/app/GameManagerService$FrameRate;

    iget v0, v0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return v0

    .line 399
    :pswitch_7a
    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_40:Lcom/android/server/app/GameManagerService$FrameRate;

    iget v0, v0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return v0

    .line 397
    :pswitch_7f
    sget-object v0, Lcom/android/server/app/GameManagerService$FrameRate;->FPS_30:Lcom/android/server/app/GameManagerService$FrameRate;

    iget v0, v0, Lcom/android/server/app/GameManagerService$FrameRate;->fps:I

    return v0

    :sswitch_data_84
    .sparse-switch
        0x0 -> :sswitch_4e
        0x65d -> :sswitch_44
        0x67c -> :sswitch_3a
        0x681 -> :sswitch_30
        0x6ba -> :sswitch_26
        0x717 -> :sswitch_1c
        0xbe2f -> :sswitch_12
        0x639e22e8 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7a
        :pswitch_75
        :pswitch_70
        :pswitch_6b
        :pswitch_66
        :pswitch_61
        :pswitch_61
    .end packed-switch
.end method

.method private getGameModeFromSettings(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 862
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 864
    const-string v1, "GameManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User ID \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not have a Game Mode selected for package: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 869
    :cond_3a
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/app/GameManagerSettings;->getGameModeLocked(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 870
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private getInstalledGamePackageNames(I)[Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 1541
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1542
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 1543
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 1545
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 1546
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1543
    return-object v1
.end method

.method private getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I
    .registers 6
    .param p1, "gameMode"    # I
    .param p2, "config"    # Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1441
    move v0, p1

    .line 1442
    .local v0, "newGameMode":I
    if-eqz p2, :cond_1f

    .line 1443
    invoke-static {p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$mgetAvailableGameModesBitfield(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v1

    .line 1446
    .local v1, "modesBitfield":I
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    .line 1447
    invoke-direct {p0, v1, p1}, Lcom/android/server/app/GameManagerService;->bitFieldContainsModeBitmask(II)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1448
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/app/GameManagerService;->bitFieldContainsModeBitmask(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1452
    const/4 v0, 0x1

    goto :goto_23

    .line 1455
    :cond_1d
    const/4 v0, 0x0

    goto :goto_23

    .line 1458
    .end local v1    # "modesBitfield":I
    :cond_1f
    if-eqz p1, :cond_23

    .line 1461
    const/4 v0, 0x0

    goto :goto_24

    .line 1458
    :cond_23
    :goto_23
    nop

    .line 1463
    :goto_24
    return v0
.end method

.method private isPackageGame(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 842
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x20000

    .line 843
    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 844
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_f

    if-nez v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 845
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_f
    move-exception v1

    .line 846
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isValidPackageName(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 809
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 810
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_f

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 809
    :cond_e
    return v0

    .line 811
    :catch_f
    move-exception v1

    .line 812
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method static synthetic lambda$getInstalledGamePackageNames$0(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "e"    # Landroid/content/pm/PackageInfo;

    .line 1543
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$getInstalledGamePackageNames$1(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "e"    # Landroid/content/pm/PackageInfo;

    .line 1545
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getInstalledGamePackageNames$2(I)[Ljava/lang/String;
    .registers 2
    .param p0, "x$0"    # I

    .line 1546
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private modeToBitmask(I)I
    .registers 3
    .param p1, "gameMode"    # I

    .line 1250
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    return v0
.end method

.method private static native nativeSetOverrideFrameRate(IF)V
.end method

.method private registerDeviceConfigListener()V
    .registers 2

    .line 1637
    new-instance v0, Lcom/android/server/app/GameManagerService$DeviceConfigListener;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameManagerService$DeviceConfigListener;-><init>(Lcom/android/server/app/GameManagerService;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigListener:Lcom/android/server/app/GameManagerService$DeviceConfigListener;

    .line 1638
    return-void
.end method

.method private registerPackageReceiver()V
    .registers 5

    .line 1567
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1568
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1569
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1570
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1571
    new-instance v1, Lcom/android/server/app/GameManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameManagerService$1;-><init>(Lcom/android/server/app/GameManagerService;)V

    .line 1632
    .local v1, "packageReceiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1634
    return-void
.end method

.method private resetFps(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "fps":F
    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 1189
    .local v1, "uid":I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/app/GameManagerService;->nativeSetOverrideFrameRate(IF)V
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_d

    .line 1192
    .end local v0    # "fps":F
    .end local v1    # "uid":I
    nop

    .line 1193
    return-void

    .line 1190
    :catch_d
    move-exception v0

    .line 1191
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method

.method private updateCompatModeDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageConfig"    # Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "gameMode"    # I

    .line 1233
    nop

    .line 1234
    invoke-virtual {p1, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v0

    .line 1235
    .local v0, "modeConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    const-string v1, "GameManagerService"

    if-nez v0, :cond_2a

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Game mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return-void

    .line 1239
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getCompatChangeId()J

    move-result-wide v2

    .line 1240
    .local v2, "scaleId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_55

    .line 1241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid downscaling change id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void

    .line 1246
    :cond_55
    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/app/GameManagerService;->enableCompatScale(Ljava/lang/String;J)V

    .line 1247
    return-void
.end method

.method private updateFps(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;II)V
    .registers 8
    .param p1, "packageConfig"    # Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "gameMode"    # I
    .param p4, "userId"    # I

    .line 1266
    nop

    .line 1267
    invoke-virtual {p1, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v0

    .line 1268
    .local v0, "modeConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    if-nez v0, :cond_2a

    .line 1269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Game mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-void

    .line 1273
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v1

    int-to-float v1, v1

    .line 1274
    .local v1, "fps":F
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 1275
    .local v2, "uid":I
    invoke-static {v2, v1}, Lcom/android/server/app/GameManagerService;->nativeSetOverrideFrameRate(IF)V
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_38} :catch_3a

    .line 1278
    .end local v1    # "fps":F
    .end local v2    # "uid":I
    nop

    .line 1279
    return-void

    .line 1276
    :catch_3a
    move-exception v1

    .line 1277
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method

.method private updateInterventions(Ljava/lang/String;II)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameMode"    # I
    .param p3, "userId"    # I

    .line 1284
    const/4 v0, 0x1

    if-eq p2, v0, :cond_59

    if-nez p2, :cond_6

    goto :goto_59

    .line 1290
    :cond_6
    const/4 v0, 0x0

    .line 1292
    .local v0, "packageConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1293
    :try_start_a
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v0, v2

    .line 1294
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_56

    .line 1296
    if-nez v0, :cond_27

    .line 1297
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1298
    :try_start_19
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v0, v2

    .line 1299
    monitor-exit v1

    goto :goto_27

    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw v2

    .line 1302
    :cond_27
    :goto_27
    if-nez v0, :cond_45

    .line 1303
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->disableCompatScale(Ljava/lang/String;)V

    .line 1304
    const-string v1, "GameManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package configuration not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    return-void

    .line 1307
    :cond_45
    invoke-virtual {v0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1308
    return-void

    .line 1310
    :cond_4c
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/app/GameManagerService;->updateCompatModeDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;I)V

    .line 1311
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/app/GameManagerService;->updateFps(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;II)V

    .line 1312
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->updateUseAngle(Ljava/lang/String;I)V

    .line 1313
    return-void

    .line 1294
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2

    .line 1286
    .end local v0    # "packageConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    :cond_59
    :goto_59
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->disableCompatScale(Ljava/lang/String;)V

    .line 1287
    invoke-direct {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->resetFps(Ljava/lang/String;I)V

    .line 1288
    return-void
.end method

.method private updateUseAngle(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameMode"    # I

    .line 1261
    return-void
.end method


# virtual methods
.method public disableCompatScale(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1165
    const-string v0, "GameManagerService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1167
    .local v1, "uid":J
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling downscale for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1169
    .local v3, "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    const-wide/32 v4, 0xa09e1d7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/android/server/app/GameManagerService;->COMPAT_DISABLED:Landroid/app/compat/PackageOverride;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    new-instance v4, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v4, v3}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_43

    .line 1173
    .local v4, "changeConfig":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    :try_start_32
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {v5, v4, p1}, Lcom/android/internal/compat/IPlatformCompat;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catchall {:try_start_32 .. :try_end_37} :catchall_43

    .line 1176
    goto :goto_3e

    .line 1174
    :catch_38
    move-exception v5

    .line 1175
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_39
    const-string v6, "Failed to call IPlatformCompat#putOverridesOnReleaseBuilds"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_43

    .line 1178
    .end local v3    # "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    .end local v4    # "changeConfig":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    nop

    .line 1180
    return-void

    .line 1178
    :catchall_43
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump GameManagerService from from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " without permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    return-void

    .line 198
    :cond_3d
    if-eqz p3, :cond_42

    array-length v0, p3

    if-nez v0, :cond_4a

    .line 199
    :cond_42
    const-string v0, "*Dump GameManagerService*"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p2}, Lcom/android/server/app/GameManagerService;->dumpAllGameConfigs(Ljava/io/PrintWriter;)V

    .line 203
    :cond_4a
    invoke-static {}, Lcom/android/server/app/GameManagerServiceStub;->getInstance()Lcom/android/server/app/GameManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/app/GameManagerServiceStub;->dump(Ljava/io/PrintWriter;)V

    .line 204
    return-void
.end method

.method public getAvailableGameModes(Ljava/lang/String;)[I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 857
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 858
    invoke-direct {p0, p1}, Lcom/android/server/app/GameManagerService;->getAvailableGameModesUnchecked(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1554
    const/4 v0, 0x0

    .line 1555
    .local v0, "packageConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1556
    :try_start_4
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v0, v2

    .line 1557
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_22

    .line 1558
    if-nez v0, :cond_21

    .line 1559
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1560
    :try_start_13
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v0, v2

    .line 1561
    monitor-exit v1

    goto :goto_21

    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v2

    .line 1563
    :cond_21
    :goto_21
    return-object v0

    .line 1557
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public getGameMode(Ljava/lang/String;I)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 881
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 882
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 881
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getGameMode"

    const-string v6, "com.android.server.app.GameManagerService"

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 886
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 889
    const/4 v0, 0x0

    return v0

    .line 898
    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isValidPackageName(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 899
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettings(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 903
    :cond_26
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 904
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettings(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 917
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 917
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getGameModeInfo"

    const-string v6, "com.android.server.app.GameManagerService"

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 922
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 925
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 926
    const/4 v0, 0x0

    return-object v0

    .line 929
    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettings(Ljava/lang/String;I)I

    move-result v0

    .line 930
    .local v0, "activeGameMode":I
    invoke-direct {p0, p1}, Lcom/android/server/app/GameManagerService;->getAvailableGameModesUnchecked(Ljava/lang/String;)[I

    move-result-object v1

    .line 932
    .local v1, "availableGameModes":[I
    new-instance v2, Landroid/app/GameModeInfo;

    invoke-direct {v2, v0, v1}, Landroid/app/GameModeInfo;-><init>(I[I)V

    return-object v2
.end method

.method public getInterventionList(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, "packageConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1472
    :try_start_4
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v0, v2

    .line 1473
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_48

    .line 1475
    if-nez v0, :cond_21

    .line 1476
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1477
    :try_start_13
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v0, v2

    .line 1478
    monitor-exit v1

    goto :goto_21

    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v2

    .line 1481
    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1482
    .local v1, "listStrSb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_36

    .line 1483
    const-string v2, "\n No intervention found for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1484
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1487
    :cond_36
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1488
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1473
    .end local v1    # "listStrSb":Ljava/lang/StringBuilder;
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method public getLoadingBoostDuration(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1004
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0

    .line 1005
    .local v0, "gameMode":I
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 1006
    return v1

    .line 1009
    :cond_8
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1010
    :try_start_b
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1011
    .local v3, "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    if-nez v3, :cond_17

    .line 1012
    monitor-exit v2

    return v1

    .line 1014
    :cond_17
    nop

    .line 1015
    invoke-virtual {v3, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v4

    .line 1016
    .local v4, "gameModeConfiguration":Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    if-nez v4, :cond_20

    .line 1017
    monitor-exit v2

    return v1

    .line 1019
    :cond_20
    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getLoadingBoostDuration()I

    move-result v1

    monitor-exit v2

    return v1

    .line 1020
    .end local v3    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .end local v4    # "gameModeConfiguration":Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v1
.end method

.method public isAngleEnabled(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 977
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0

    .line 978
    .local v0, "gameMode":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 979
    return v1

    .line 982
    :cond_8
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 983
    :try_start_b
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 984
    .local v3, "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    if-nez v3, :cond_17

    .line 985
    monitor-exit v2

    return v1

    .line 987
    :cond_17
    nop

    .line 988
    invoke-virtual {v3, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v4

    .line 989
    .local v4, "gameModeConfiguration":Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    if-nez v4, :cond_20

    .line 990
    monitor-exit v2

    return v1

    .line 992
    :cond_20
    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getUseAngle()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 993
    .end local v3    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .end local v4    # "gameModeConfiguration":Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v1
.end method

.method public notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1030
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1031
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1030
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "notifyGraphicsEnvironmentSetup"

    const-string v6, "com.android.server.app.GameManagerService"

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1035
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1036
    return-void

    .line 1039
    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isValidPackageName(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1040
    return-void

    .line 1043
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0

    .line 1044
    .local v0, "gameMode":I
    if-nez v0, :cond_29

    .line 1045
    return-void

    .line 1047
    :cond_29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getLoadingBoostDuration(Ljava/lang/String;I)I

    move-result v1

    .line 1048
    .local v1, "loadingBoostDuration":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_59

    .line 1049
    if-eqz v1, :cond_36

    const/16 v2, 0x1388

    if-le v1, v2, :cond_38

    .line 1050
    :cond_36
    const/16 v1, 0x1388

    .line 1052
    :cond_38
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1056
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4f

    .line 1058
    :cond_47
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v4, 0x10

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1061
    :goto_4f
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 1062
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v1

    .line 1061
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1064
    :cond_59
    return-void
.end method

.method onBootCompleted()V
    .registers 3

    .line 1090
    const-string v0, "GameManagerService"

    const-string/jumbo v1, "onBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz v0, :cond_f

    .line 1092
    invoke-virtual {v0}, Lcom/android/server/app/GameServiceController;->onBootComplete()V

    .line 1094
    :cond_f
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "result"    # Landroid/os/ResultReceiver;

    .line 186
    new-instance v0, Lcom/android/server/app/GameManagerShellCommand;

    invoke-direct {v0}, Lcom/android/server/app/GameManagerShellCommand;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/app/GameManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 187
    return-void
.end method

.method onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1097
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1099
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1100
    :try_start_7
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1101
    new-instance v2, Lcom/android/server/app/GameManagerSettings;

    .line 1102
    invoke-static {v0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/app/GameManagerSettings;-><init>(Ljava/io/File;)V

    .line 1103
    .local v2, "userSettings":Lcom/android/server/app/GameManagerSettings;
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerSettings;->readPersistentDataLocked()Z

    .line 1106
    .end local v2    # "userSettings":Lcom/android/server/app/GameManagerSettings;
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_43

    .line 1107
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1108
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1109
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1111
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz v2, :cond_42

    .line 1112
    invoke-virtual {v2, p1}, Lcom/android/server/app/GameServiceController;->notifyUserStarted(Lcom/android/server/SystemService$TargetUser;)V

    .line 1114
    :cond_42
    return-void

    .line 1106
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
.end method

.method onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1123
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1125
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1126
    :try_start_7
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1127
    monitor-exit v1

    return-void

    .line 1129
    :cond_15
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1130
    .local v2, "msg":Landroid/os/Message;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1131
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1132
    nop

    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_31

    .line 1134
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz v1, :cond_30

    .line 1135
    invoke-virtual {v1, p1}, Lcom/android/server/app/GameServiceController;->notifyUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    .line 1137
    :cond_30
    return-void

    .line 1132
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 8
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 1140
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1141
    .local v0, "toUserId":I
    if-eqz p1, :cond_30

    .line 1142
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1143
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    .line 1144
    .local v2, "fromUserId":I
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1145
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1146
    .local v3, "msg":Landroid/os/Message;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1147
    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1149
    .end local v2    # "fromUserId":I
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2b
    monitor-exit v1

    goto :goto_30

    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw v2

    .line 1151
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1152
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1153
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1155
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz v2, :cond_49

    .line 1156
    invoke-virtual {v2, p2}, Lcom/android/server/app/GameServiceController;->notifyNewForegroundUser(Lcom/android/server/SystemService$TargetUser;)V

    .line 1158
    :cond_49
    return-void
.end method

.method onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1117
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz v0, :cond_7

    .line 1118
    invoke-virtual {v0, p1}, Lcom/android/server/app/GameServiceController;->notifyUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    .line 1120
    :cond_7
    return-void
.end method

.method public resetGameModeConfigOverride(Ljava/lang/String;II)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "gameModeToReset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1369
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1371
    :try_start_8
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1372
    monitor-exit v0

    return-void

    .line 1374
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_ac

    .line 1378
    const/4 v0, -0x1

    if-eq p3, v0, :cond_69

    .line 1379
    const/4 v0, 0x0

    .line 1380
    .local v0, "overrideConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1381
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v0, v2

    .line 1382
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_66

    .line 1384
    const/4 v1, 0x0

    .line 1385
    .local v1, "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1386
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v1, v3

    .line 1387
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_63

    .line 1389
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v2

    .line 1392
    .local v2, "modes":[I
    const/4 v3, 0x0

    .line 1393
    .local v3, "isGameModeExist":Z
    array-length v4, v2

    const/4 v5, 0x0

    :goto_3d
    if-ge v5, v4, :cond_47

    aget v6, v2, v5

    .line 1394
    .local v6, "mode":I
    if-ne p3, v6, :cond_44

    .line 1395
    const/4 v3, 0x1

    .line 1393
    .end local v6    # "mode":I
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 1398
    :cond_47
    if-nez v3, :cond_4a

    .line 1399
    return-void

    .line 1404
    :cond_4a
    array-length v4, v2

    const/4 v5, 0x2

    if-gt v4, v5, :cond_5b

    .line 1405
    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1406
    :try_start_51
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    monitor-exit v4

    goto :goto_62

    :catchall_58
    move-exception v5

    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_58

    throw v5

    .line 1410
    :cond_5b
    invoke-virtual {v1, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V

    .line 1412
    .end local v0    # "overrideConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .end local v1    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .end local v2    # "modes":[I
    .end local v3    # "isGameModeExist":Z
    :goto_62
    goto :goto_72

    .line 1387
    .restart local v0    # "overrideConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .restart local v1    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    :catchall_63
    move-exception v3

    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v3

    .line 1382
    .end local v1    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2

    .line 1413
    .end local v0    # "overrideConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    :cond_69
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1415
    :try_start_6c
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_a9

    .line 1421
    :goto_72
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0

    .line 1423
    .local v0, "gameMode":I
    const/4 v1, 0x0

    .line 1424
    .restart local v1    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1425
    :try_start_7a
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v1, v3

    .line 1426
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_a6

    .line 1427
    if-nez v1, :cond_97

    .line 1428
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1429
    :try_start_89
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v1, v3

    .line 1430
    monitor-exit v2

    goto :goto_97

    :catchall_94
    move-exception v3

    monitor-exit v2
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_94

    throw v3

    .line 1432
    :cond_97
    :goto_97
    invoke-direct {p0, v0, v1}, Lcom/android/server/app/GameManagerService;->getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v2

    .line 1433
    .local v2, "newGameMode":I
    if-eq v0, v2, :cond_a2

    .line 1434
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 1435
    return-void

    .line 1437
    :cond_a2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 1438
    return-void

    .line 1426
    .end local v2    # "newGameMode":I
    :catchall_a6
    move-exception v3

    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v3

    .line 1416
    .end local v0    # "gameMode":I
    .end local v1    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v0

    .line 1374
    :catchall_ac
    move-exception v1

    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v1
.end method

.method public setGameMode(Ljava/lang/String;II)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameMode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 943
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 945
    invoke-direct {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 947
    return-void

    .line 950
    :cond_c
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 951
    :try_start_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 952
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setGameMode"

    const-string v7, "com.android.server.app.GameManagerService"

    .line 951
    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move p3, v1

    .line 955
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 956
    monitor-exit v0

    return-void

    .line 958
    :cond_32
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    .line 959
    .local v1, "userSettings":Lcom/android/server/app/GameManagerSettings;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/app/GameManagerSettings;->setGameModeLocked(Ljava/lang/String;I)V

    .line 960
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 961
    .local v2, "msg":Landroid/os/Message;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 962
    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 963
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 965
    .end local v1    # "userSettings":Lcom/android/server/app/GameManagerSettings;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_f .. :try_end_62} :catchall_66

    .line 966
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/app/GameManagerService;->updateInterventions(Ljava/lang/String;II)V

    .line 967
    return-void

    .line 965
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1
.end method

.method public setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "gameMode"    # I
    .param p4, "fpsStr"    # Ljava/lang/String;
    .param p5, "scaling"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1323
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1325
    :try_start_8
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1326
    monitor-exit v0

    return-void

    .line 1328
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_8b

    .line 1330
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1332
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1333
    .local v0, "overrideConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    if-nez v0, :cond_2f

    .line 1334
    new-instance v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)V

    move-object v0, v2

    .line 1335
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    :cond_2f
    nop

    .line 1340
    invoke-virtual {v0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v2

    .line 1342
    .local v2, "overrideModeConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    if-eqz p4, :cond_3a

    .line 1343
    invoke-virtual {v2, p4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setFpsStr(Ljava/lang/String;)V

    goto :goto_3f

    .line 1345
    :cond_3a
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setFpsStr(Ljava/lang/String;)V

    .line 1348
    :goto_3f
    if-eqz p5, :cond_45

    .line 1349
    invoke-virtual {v2, p5}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setScaling(Ljava/lang/String;)V

    goto :goto_4a

    .line 1351
    :cond_45
    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setScaling(Ljava/lang/String;)V

    .line 1354
    :goto_4a
    const-string v3, "GameManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FPS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1355
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Scaling: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1356
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1354
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    nop

    .end local v0    # "overrideConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .end local v2    # "overrideModeConfig":Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_1a .. :try_end_84} :catchall_88

    .line 1358
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 1359
    return-void

    .line 1357
    :catchall_88
    move-exception v0

    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v0

    .line 1328
    :catchall_8b
    move-exception v1

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method public setGameServiceProvider(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1076
    const-string v0, "android.permission.SET_GAME_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-nez v0, :cond_a

    .line 1079
    return-void

    .line 1082
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/app/GameServiceController;->setGameServiceProvider(Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method public setGameState(Ljava/lang/String;Landroid/app/GameState;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameState"    # Landroid/app/GameState;
    .param p3, "userId"    # I

    .line 424
    invoke-direct {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 426
    return-void

    .line 428
    :cond_7
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 429
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 433
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 434
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    return-void
.end method

.method varargs updateConfigsForUser(I[Ljava/lang/String;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "packageNames"    # [Ljava/lang/String;

    .line 1498
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_90

    .line 1499
    :try_start_3
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_4d

    aget-object v4, p2, v3

    .line 1500
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v5, p0, v4, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)V

    .line 1502
    .local v5, "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    invoke-virtual {v5}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1506
    iget-object v6, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 1508
    :cond_1b
    const-string v6, "GameManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid package config for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1509
    invoke-virtual {v5}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1508
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    iget-object v6, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1513
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_8d

    .line 1514
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_90

    .line 1515
    :try_start_51
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 1516
    monitor-exit v0

    return-void

    .line 1518
    :cond_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_8a

    .line 1519
    :try_start_60
    array-length v0, p2

    :goto_61
    if-ge v2, v0, :cond_89

    aget-object v1, p2, v2

    .line 1520
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v3

    .line 1525
    .local v3, "gameMode":I
    const/4 v4, 0x0

    .line 1526
    .local v4, "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6d} :catch_90

    .line 1527
    :try_start_6d
    iget-object v6, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-object v4, v6

    .line 1528
    monitor-exit v5
    :try_end_77
    .catchall {:try_start_6d .. :try_end_77} :catchall_86

    .line 1529
    :try_start_77
    invoke-direct {p0, v3, v4}, Lcom/android/server/app/GameManagerService;->getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v5

    .line 1530
    .local v5, "newGameMode":I
    if-eq v5, v3, :cond_80

    .line 1531
    invoke-virtual {p0, v1, v5, p1}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 1533
    :cond_80
    invoke-direct {p0, v1, v3, p1}, Lcom/android/server/app/GameManagerService;->updateInterventions(Ljava/lang/String;II)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_83} :catch_90

    .line 1519
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "gameMode":I
    .end local v4    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .end local v5    # "newGameMode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 1528
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v3    # "gameMode":I
    .restart local v4    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit v5
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    .end local p0    # "this":Lcom/android/server/app/GameManagerService;
    .end local p1    # "userId":I
    .end local p2    # "packageNames":[Ljava/lang/String;
    :try_start_88
    throw v0
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_89} :catch_90

    .line 1537
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "gameMode":I
    .end local v4    # "config":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .restart local p0    # "this":Lcom/android/server/app/GameManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "packageNames":[Ljava/lang/String;
    :cond_89
    goto :goto_b3

    .line 1518
    :catchall_8a
    move-exception v1

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    .end local p0    # "this":Lcom/android/server/app/GameManagerService;
    .end local p1    # "userId":I
    .end local p2    # "packageNames":[Ljava/lang/String;
    :try_start_8c
    throw v1
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8d} :catch_90

    .line 1513
    .restart local p0    # "this":Lcom/android/server/app/GameManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "packageNames":[Ljava/lang/String;
    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    .end local p0    # "this":Lcom/android/server/app/GameManagerService;
    .end local p1    # "userId":I
    .end local p2    # "packageNames":[Ljava/lang/String;
    :try_start_8f
    throw v1
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_90} :catch_90

    .line 1535
    .restart local p0    # "this":Lcom/android/server/app/GameManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "packageNames":[Ljava/lang/String;
    :catch_90
    move-exception v0

    .line 1536
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update compat modes for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b3
    return-void
.end method
