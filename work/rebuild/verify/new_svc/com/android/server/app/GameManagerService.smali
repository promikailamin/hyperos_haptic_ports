.class public final Lcom/android/server/app/GameManagerService;
.super Landroid/app/IGameManagerService$Stub;
.source "GameManagerService.java"


# instance fields
.field public final mConfigs:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public mDeviceConfigListener:Lcom/android/server/app/GameManagerService$DeviceConfigListener;

.field public final mDeviceConfigLock:Ljava/lang/Object;

.field public mGameDefaultFrameRateValue:F

.field public final mGameForegroundUids:Ljava/util/Set;

.field final mGameModeInterventionListFile:Landroid/util/AtomicFile;

.field public final mGameModeListenerLock:Ljava/lang/Object;

.field public final mGameModeListeners:Landroid/util/ArrayMap;

.field public final mGameServiceController:Lcom/android/server/app/GameServiceController;

.field public final mGameStateListenerLock:Ljava/lang/Object;

.field public final mGameStateListeners:Landroid/util/ArrayMap;

.field final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mNonGameForegroundUids:Ljava/util/Set;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mSettings:Landroid/util/ArrayMap;

.field public final mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

.field final mUidObserver:Lcom/android/server/app/GameManagerService$MyUidObserver;

.field public final mUidObserverLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$LCP_4kvy-EB-QxmT_kuk0Xyillc(Lcom/android/server/app/GameManagerService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->onPullAtom(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sir-wtA0n6T1spL0WarCI-ChMjA(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    .line 2013
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_a

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Vw8LG-SrmMKQ0zSB9jhVgUNBUkg(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 1

    .line 2015
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$XK11PVBRPXwrQj1WwLFHGeixUJY(Lcom/android/server/app/GameManagerService;ILjava/lang/String;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->lambda$updateConfigsForUser$0(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$v0loNmftGWUMC3VLYZhDYOY54xM(I)[Ljava/lang/String;
    .registers 1

    .line 2016
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$xp9GXdoINU6fbuzy69VUqMrQlB0(I)[Ljava/lang/String;
    .registers 1

    .line 1888
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/app/GameManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGameStateListenerLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGameStateListeners(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSysProps(Lcom/android/server/app/GameManagerService;)Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidObserverLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetGameDefaultFrameRate(Lcom/android/server/app/GameManagerService;Z)F
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getGameDefaultFrameRate(Z)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetGameModeFromSettingsUnchecked(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetInstalledGamePackageNames(Lcom/android/server/app/GameManagerService;I)[Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misPackageGame(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpublishLocalService(Lcom/android/server/app/GameManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->publishLocalService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterDeviceConfigListener(Lcom/android/server/app/GameManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->registerDeviceConfigListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterPackageReceiver(Lcom/android/server/app/GameManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->registerPackageReceiver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterStatsCallbacks(Lcom/android/server/app/GameManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->registerStatsCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveGameModeListenerUnchecked(Lcom/android/server/app/GameManagerService;Landroid/app/IGameModeListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->removeGameModeListenerUnchecked(Landroid/app/IGameModeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveGameStateListenerUnchecked(Lcom/android/server/app/GameManagerService;Landroid/app/IGameStateListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->removeGameStateListenerUnchecked(Landroid/app/IGameStateListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUserMessage(Lcom/android/server/app/GameManagerService;IILjava/lang/String;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteGameModeInterventionsToFile(Lcom/android/server/app/GameManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->writeGameModeInterventionsToFile(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgameStateModeToStatsdGameState(I)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->gameStateModeToStatsdGameState(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smmodeToBitmask(I)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 162
    invoke-static {}, Lcom/android/server/utils/LazyJniRegistrar;->registerGameManagerService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 227
    invoke-static {}, Lcom/android/server/app/GameManagerService;->createServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    .line 231
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameManagerService$Injector;

    invoke-direct {v1}, Lcom/android/server/app/GameManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Lcom/android/server/app/GameManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Lcom/android/server/app/GameManagerService$Injector;)V
    .registers 10

    .line 236
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IGameManagerService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    .line 178
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 180
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    .line 183
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    .line 237
    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    .line 238
    new-instance v0, Lcom/android/server/app/GameManagerService$SettingsHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/app/GameManagerService$SettingsHandler;-><init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 240
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mUserManager:Landroid/os/UserManager;

    .line 241
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 242
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {p3, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 247
    new-instance p3, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v3, "game_mode_intervention.list"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p3, p0, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    .line 249
    invoke-virtual {p3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x1b0

    invoke-static {p3, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 253
    const-string p3, "android.software.game_service"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_ca

    .line 254
    new-instance p3, Lcom/android/server/app/GameServiceController;

    .line 255
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/android/server/app/GameServiceProviderSelectorImpl;

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/android/server/app/GameServiceProviderSelectorImpl;-><init>(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;)V

    new-instance p2, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

    invoke-direct {p2, p1}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p3, p1, v1, v3, p2}, Lcom/android/server/app/GameServiceController;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameServiceProviderSelector;Lcom/android/server/app/GameServiceProviderInstanceFactory;)V

    iput-object p3, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    goto :goto_cc

    .line 259
    :cond_ca
    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    .line 261
    :goto_cc
    new-instance p1, Lcom/android/server/app/GameManagerService$MyUidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/app/GameManagerService$MyUidObserver;-><init>(Lcom/android/server/app/GameManagerService;)V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mUidObserver:Lcom/android/server/app/GameManagerService$MyUidObserver;

    .line 263
    :try_start_d3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    const/4 p3, 0x3

    invoke-interface {p2, p1, p3, v2, v0}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_db} :catch_dc

    goto :goto_e3

    .line 267
    :catch_dc
    const-string p1, "GameManagerService"

    const-string p2, "Could not register UidObserver"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_e3
    invoke-virtual {p4}, Lcom/android/server/app/GameManagerService$Injector;->createSystemPropertiesWrapper()Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    return-void
.end method

.method public static createServiceThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 2236
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "GameManagerService"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 2238
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    return-object v0
.end method

.method public static gameModeToStatsdGameMode(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_15

    const/4 v1, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v1, :cond_13

    const/4 v1, 0x4

    if-eq p0, v0, :cond_12

    if-eq p0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 p0, 0x5

    return p0

    :cond_12
    return v1

    :cond_13
    return v0

    :cond_14
    return v1

    :cond_15
    return v0
.end method

.method public static gameModesToStatsdGameModes([I)[I
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2194
    :cond_4
    array-length v0, p0

    new-array v0, v0, [I

    .line 2196
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v2, v1, :cond_1a

    aget v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 2197
    invoke-static {v4}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_a

    :cond_1a
    return-object v0
.end method

.method public static gameStateModeToStatsdGameState(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    return v0
.end method

.method public static modeToBitmask(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private static native nativeSetGameDefaultFrameRateOverride(IF)V
.end method

.method private static native nativeSetGameModeFrameRateOverride(IF)V
.end method


# virtual methods
.method public addGameModeListener(Landroid/app/IGameModeListener;)V
    .registers 5

    .line 1479
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1481
    :try_start_5
    invoke-interface {p1}, Landroid/app/IGameModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1482
    new-instance v1, Lcom/android/server/app/GameManagerService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/app/GameManagerService$1;-><init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameModeListener;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1489
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_27

    .line 1490
    :try_start_15
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_24

    :try_start_26
    throw p0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_27} :catch_27

    :catch_27
    move-exception p0

    .line 1493
    const-string p1, "GameManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to link death recipient for IGameModeListener from caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", abandoned its listener registration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1493
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public addGameStateListener(Landroid/app/IGameStateListener;)V
    .registers 5

    .line 1526
    :try_start_0
    invoke-interface {p1}, Landroid/app/IGameStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1527
    new-instance v1, Lcom/android/server/app/GameManagerService$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/app/GameManagerService$2;-><init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameStateListener;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1533
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_22

    .line 1534
    :try_start_10
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_1f

    :try_start_21
    throw p0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_22} :catch_22

    :catch_22
    move-exception p0

    .line 1537
    const-string p1, "GameManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to link death recipient for IGameStateListener from caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", abandoned its listener registration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1537
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final bitFieldContainsModeBitmask(II)Z
    .registers 3

    .line 1677
    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .registers 4

    .line 1029
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 1031
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied to process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must have permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 282
    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_37

    .line 284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump GameManagerService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 284
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_37
    if-eqz p3, :cond_3e

    .line 289
    array-length p1, p3

    if-nez p1, :cond_3d

    goto :goto_3e

    :cond_3d
    return-void

    .line 290
    :cond_3e
    :goto_3e
    const-string p1, "*Dump GameManagerService*"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService;->dumpAllGameConfigs(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpAllGameConfigs(Ljava/io/PrintWriter;)V
    .registers 7

    .line 296
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object v1

    .line 298
    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_18

    aget-object v4, v1, v3

    .line 299
    invoke-virtual {p0, v4, v0}, Lcom/android/server/app/GameManagerService;->getInterventionList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method

.method public final getAllUserIds(I)[I
    .registers 6

    .line 1999
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 2000
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1c

    .line 2002
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1c
    const/4 p0, -0x1

    if-eq p1, p0, :cond_24

    .line 2005
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    return-object p0

    :cond_24
    return-object v1
.end method

.method public getAvailableGameModes(Ljava/lang/String;I)[I
    .registers 4

    .line 1062
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 p0, 0x0

    .line 1064
    new-array p0, p0, [I

    return-object p0

    .line 1066
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getAvailableGameModesUnchecked(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public final getAvailableGameModesUnchecked(Ljava/lang/String;I)[I
    .registers 3

    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    const/4 p1, 0x4

    .line 1039
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 1041
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .registers 7

    .line 2036
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2037
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 2038
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_40

    .line 2040
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2041
    :try_start_f
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2042
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerSettings;->getConfigOverrideLocked(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    goto :goto_2f

    :catchall_2c
    move-exception p0

    goto :goto_3e

    :cond_2e
    const/4 p0, 0x0

    .line 2044
    :goto_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_2c

    if-eqz p0, :cond_3a

    if-nez v1, :cond_35

    goto :goto_3a

    .line 2048
    :cond_35
    invoke-virtual {v1, p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->copyAndApplyOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_3a
    if-nez p0, :cond_3d

    return-object v1

    :cond_3d
    return-object p0

    .line 2044
    :goto_3e
    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2c

    throw p0

    :catchall_40
    move-exception p0

    .line 2038
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final getGameDefaultFrameRate(Z)F
    .registers 2

    if-eqz p1, :cond_5

    .line 2256
    iget p0, p0, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public getGameMode(Ljava/lang/String;I)I
    .registers 10

    .line 1090
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getGameMode"

    const-string v6, "com.android.server.app.GameManagerService"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 1090
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1095
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 p0, 0x0

    return p0

    .line 1107
    :cond_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isValidPackageName(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1108
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1112
    :cond_26
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getGameModeFromSettingsUnchecked(Ljava/lang/String;I)I
    .registers 6

    .line 1071
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1072
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1073
    const-string p0, "GameManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' does not have a Game Mode selected for package: \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 1075
    monitor-exit v0

    return p0

    :catchall_35
    move-exception p0

    goto :goto_49

    .line 1078
    :cond_37
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerSettings;->getGameModeLocked(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 1079
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_35

    throw p0
.end method

.method public getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;
    .registers 10

    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1127
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getGameModeInfo"

    const-string v6, "com.android.server.app.GameManagerService"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 1126
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1131
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 p0, 0x0

    return-object p0

    .line 1137
    :cond_20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(Ljava/lang/String;I)I

    move-result v0

    .line 1138
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 1140
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOverriddenGameModes()[I

    move-result-object p0

    .line 1141
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object p1

    .line 1142
    new-instance p2, Landroid/app/GameModeInfo$Builder;

    invoke-direct {p2}, Landroid/app/GameModeInfo$Builder;-><init>()V

    .line 1143
    invoke-virtual {p2, v0}, Landroid/app/GameModeInfo$Builder;->setActiveGameMode(I)Landroid/app/GameModeInfo$Builder;

    move-result-object p2

    .line 1144
    invoke-virtual {p2, p1}, Landroid/app/GameModeInfo$Builder;->setAvailableGameModes([I)Landroid/app/GameModeInfo$Builder;

    move-result-object p2

    .line 1145
    invoke-virtual {p2, p0}, Landroid/app/GameModeInfo$Builder;->setOverriddenGameModes([I)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    invoke-static {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result p2

    .line 1146
    invoke-virtual {p0, p2}, Landroid/app/GameModeInfo$Builder;->setDownscalingAllowed(Z)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    invoke-static {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowFpsOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result p2

    .line 1147
    invoke-virtual {p0, p2}, Landroid/app/GameModeInfo$Builder;->setFpsOverrideAllowed(Z)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    .line 1148
    array-length p2, p1

    const/4 v0, 0x0

    :goto_55
    if-ge v0, p2, :cond_6f

    aget v2, p1, v0

    .line 1149
    invoke-virtual {v1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 1151
    invoke-virtual {v1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 1154
    invoke-virtual {v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->toPublicGameModeConfig()Landroid/app/GameModeConfiguration;

    move-result-object v3

    .line 1153
    invoke-virtual {p0, v2, v3}, Landroid/app/GameModeInfo$Builder;->setGameModeConfiguration(ILandroid/app/GameModeConfiguration;)Landroid/app/GameModeInfo$Builder;

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 1158
    :cond_6f
    invoke-virtual {p0}, Landroid/app/GameModeInfo$Builder;->build()Landroid/app/GameModeInfo;

    move-result-object p0

    return-object p0

    .line 1160
    :cond_74
    new-instance v1, Landroid/app/GameModeInfo$Builder;

    invoke-direct {v1}, Landroid/app/GameModeInfo$Builder;-><init>()V

    .line 1161
    invoke-virtual {v1, v0}, Landroid/app/GameModeInfo$Builder;->setActiveGameMode(I)Landroid/app/GameModeInfo$Builder;

    move-result-object v0

    .line 1162
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getAvailableGameModesUnchecked(Ljava/lang/String;I)[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/GameModeInfo$Builder;->setAvailableGameModes([I)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    .line 1163
    invoke-virtual {p0}, Landroid/app/GameModeInfo$Builder;->build()Landroid/app/GameModeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getInstalledGamePackageNames(I)[Ljava/lang/String;
    .registers 3

    .line 2011
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    .line 2012
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 2013
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 2015
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 2016
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getInstalledGamePackageNamesByAllUsers(I)Ljava/util/List;
    .registers 6

    .line 2020
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2022
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getAllUserIds(I)[I

    move-result-object p1

    .line 2023
    array-length v1, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget v3, p1, v2

    .line 2024
    invoke-virtual {p0, v3}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2027
    :cond_1d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public getInterventionList(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 1867
    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    .line 1869
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_1d

    .line 1871
    const-string p0, "\n No intervention found for package "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1875
    :cond_1d
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLoadingBoostDuration(Ljava/lang/String;I)I
    .registers 5

    .line 1258
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_8

    return v0

    .line 1263
    :cond_8
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1264
    :try_start_b
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1265
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_23

    if-nez p0, :cond_17

    return v0

    .line 1270
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-nez p0, :cond_1e

    return v0

    .line 1274
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getLoadingBoostDuration()I

    move-result p0

    return p0

    :catchall_23
    move-exception p0

    .line 1265
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_16

    .line 1847
    invoke-static {p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$mgetAvailableGameModesBitfield(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result p2

    const/4 v1, 0x0

    .line 1850
    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result v1

    not-int v1, v1

    and-int/2addr p2, v1

    .line 1851
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->bitFieldContainsModeBitmask(II)Z

    move-result p0

    if-nez p0, :cond_15

    return v0

    :cond_15
    return p1

    :cond_16
    return v0
.end method

.method public getResolutionScalingFactor(Ljava/lang/String;II)F
    .registers 7

    .line 1377
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1379
    :try_start_8
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1382
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 1383
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/app/GameManagerService;->getResolutionScalingFactorInternal(Ljava/lang/String;II)F

    move-result p0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_38

    .line 1380
    :cond_1c
    :try_start_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " wasn\'t started"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1382
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_1a

    throw p0
.end method

.method public getResolutionScalingFactorInternal(Ljava/lang/String;II)F
    .registers 4

    .line 1387
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    const/high16 p1, -0x40800000    # -1.0f

    if-nez p0, :cond_9

    return p1

    .line 1392
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result p0

    return p0

    :cond_14
    return p1
.end method

.method public isAngleEnabled(Ljava/lang/String;I)Z
    .registers 5

    .line 1232
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 1237
    :cond_8
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1238
    :try_start_b
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    if-nez p0, :cond_19

    .line 1240
    monitor-exit v1

    return v0

    :catchall_17
    move-exception p0

    goto :goto_26

    .line 1242
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_17

    .line 1244
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-nez p0, :cond_21

    return v0

    .line 1248
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getUseAngle()Z

    move-result p0

    return p0

    .line 1242
    :goto_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_17

    throw p0
.end method

.method public final isPackageGame(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 1046
    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x20000

    .line 1047
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1048
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_f

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :catch_f
    :cond_f
    return v0
.end method

.method public final isValidPackageName(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 1021
    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    .line 1022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_f

    if-ne p0, p1, :cond_f

    const/4 p0, 0x1

    return p0

    :catch_f
    :cond_f
    return v0
.end method

.method public final synthetic lambda$updateConfigsForUser$0(ILjava/lang/String;)Z
    .registers 3

    .line 1888
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V
    .registers 10

    .line 1284
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "notifyGraphicsEnvironmentSetup"

    const-string v6, "com.android.server.app.GameManagerService"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 1284
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1288
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isValidPackageName(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "GameManagerService"

    if-nez v0, :cond_35

    .line 1289
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No-op for attempt to notify graphics env setup for different packagethan caller with uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1289
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1294
    :cond_35
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_50

    .line 1296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No-op for attempt to notify graphics env setup for non-game app: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1300
    :cond_50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getLoadingBoostDuration(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_84

    const/16 p2, 0x1388

    if-eqz p1, :cond_5d

    if-le p1, p2, :cond_5e

    :cond_5d
    move p1, p2

    .line 1305
    :cond_5e
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 1309
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_7a

    .line 1311
    :cond_6d
    const-string p2, "Game loading power mode ON (loading boost on game start)"

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1315
    :goto_7a
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 1316
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    int-to-long v0, p1

    .line 1315
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_84
    return-void
.end method

.method public onBootCompleted()V
    .registers 6

    .line 1562
    const-string/jumbo v0, "onBootCompleted"

    const-string v1, "GameManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz v0, :cond_f

    .line 1564
    invoke-virtual {v0}, Lcom/android/server/app/GameServiceController;->onBootComplete()V

    .line 1566
    :cond_f
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/app/GameManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameManagerService$3;-><init>(Lcom/android/server/app/GameManagerService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1588
    const-string v0, "Game loading power mode OFF (game manager service start/restart)"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1590
    const-string v0, "Game power mode OFF (game manager service start/restart)"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1593
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    const-string/jumbo v2, "ro.surface_flinger.game_default_frame_rate_override"

    const/16 v3, 0x3c

    invoke-interface {v0, v2, v3}, Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    .line 1595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Game Default Frame Rate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPullAtom(ILjava/util/List;)I
    .registers 16

    const/4 v0, 0x0

    const/16 v1, 0x27b6

    const/16 v2, 0x27b5

    if-eq p1, v2, :cond_24

    if-ne p1, v1, :cond_a

    goto :goto_24

    :cond_a
    const/16 v1, 0x27b7

    if-ne p1, v1, :cond_b1

    .line 2182
    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2183
    :try_start_11
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    .line 2184
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    .line 2183
    invoke-static {v1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2185
    monitor-exit p1

    goto/16 :goto_b1

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_21

    throw p0

    .line 2146
    :cond_24
    :goto_24
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 2148
    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2149
    :try_start_2b
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2150
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_b2

    .line 2151
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2152
    invoke-virtual {p0, v5, v3}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v6

    if-nez v6, :cond_49

    goto :goto_36

    .line 2158
    :cond_49
    :try_start_49
    iget-object v7, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v5, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_4f} :catch_50

    goto :goto_6f

    .line 2160
    :catch_50
    const-string v7, "GameManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find UID for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " under user handle id "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    :goto_6f
    if-ne p1, v2, :cond_89

    .line 2166
    invoke-virtual {v6}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOverriddenGameModes()[I

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/app/GameManagerService;->gameModesToStatsdGameModes([I)[I

    move-result-object v7

    .line 2167
    invoke-virtual {v6}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/app/GameManagerService;->gameModesToStatsdGameModes([I)[I

    move-result-object v6

    .line 2165
    invoke-static {v2, v5, v7, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II[I[I)Landroid/util/StatsEvent;

    move-result-object v5

    .line 2164
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_89
    if-ne p1, v1, :cond_36

    .line 2169
    invoke-virtual {v6}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v7

    array-length v8, v7

    move v9, v0

    :goto_91
    if-ge v9, v8, :cond_36

    aget v10, v7, v9

    .line 2171
    invoke-virtual {v6, v10}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v11

    if-eqz v11, :cond_ae

    .line 2175
    invoke-static {v10}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v10

    invoke-virtual {v11}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v12

    .line 2176
    invoke-virtual {v11}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v11

    .line 2173
    invoke-static {v1, v5, v10, v12, v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIF)Landroid/util/StatsEvent;

    move-result-object v10

    invoke-interface {p2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ae
    add-int/lit8 v9, v9, 0x1

    goto :goto_91

    :cond_b1
    :goto_b1
    return v0

    :catchall_b2
    move-exception p0

    .line 2150
    :try_start_b3
    monitor-exit v4
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 276
    new-instance v0, Lcom/android/server/app/GameManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/android/server/app/GameManagerShellCommand;-><init>(Landroid/content/pm/PackageManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;Ljava/io/File;)V
    .registers 7

    .line 1606
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    if-eqz p2, :cond_2d

    .line 1608
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1609
    :try_start_9
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1610
    new-instance v2, Lcom/android/server/app/GameManagerSettings;

    invoke-direct {v2, p2}, Lcom/android/server/app/GameManagerSettings;-><init>(Ljava/io/File;)V

    .line 1612
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerSettings;->readPersistentDataLocked()Z

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_2b

    .line 1615
    :cond_29
    :goto_29
    monitor-exit v1

    goto :goto_2d

    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_27

    throw p0

    .line 1617
    :cond_2d
    :goto_2d
    const-string p2, "ON_USER_STARTING"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2, p2, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1620
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_3b

    .line 1621
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->notifyUserStarted(Lcom/android/server/SystemService$TargetUser;)V

    :cond_3b
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7

    .line 1632
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1634
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1635
    :try_start_7
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1636
    monitor-exit v1

    return-void

    :catchall_15
    move-exception p0

    goto :goto_27

    .line 1638
    :cond_17
    const-string v2, "ON_USER_STOPPING"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1639
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_15

    .line 1641
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_26

    .line 1642
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->notifyUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    :cond_26
    return-void

    .line 1639
    :goto_27
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_15

    throw p0
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 6

    .line 1647
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 1651
    const-string v0, "ON_USER_SWITCHING"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1654
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_12

    .line 1655
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameServiceController;->notifyNewForegroundUser(Lcom/android/server/SystemService$TargetUser;)V

    :cond_12
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 1626
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_7

    .line 1627
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->notifyUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    :cond_7
    return-void
.end method

.method public final publishLocalService()V
    .registers 3

    .line 2115
    new-instance v0, Lcom/android/server/app/GameManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/app/GameManagerService$LocalService;-><init>(Lcom/android/server/app/GameManagerService;Lcom/android/server/app/GameManagerService-IA;)V

    .line 2117
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2118
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x1

    .line 2119
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerCompatScaleProvider(ILcom/android/server/wm/CompatScaleProvider;)V

    .line 2121
    const-class p0, Landroid/app/GameManagerInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final registerDeviceConfigListener()V
    .registers 2

    .line 2111
    new-instance v0, Lcom/android/server/app/GameManagerService$DeviceConfigListener;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameManagerService$DeviceConfigListener;-><init>(Lcom/android/server/app/GameManagerService;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigListener:Lcom/android/server/app/GameManagerService$DeviceConfigListener;

    return-void
.end method

.method public final registerPackageReceiver()V
    .registers 4

    .line 2052
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2053
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2054
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2055
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2056
    new-instance v1, Lcom/android/server/app/GameManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameManagerService$4;-><init>(Lcom/android/server/app/GameManagerService;)V

    .line 2106
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerStatsCallbacks()V
    .registers 6

    .line 2125
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 2126
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameManagerService;)V

    const/16 v3, 0x27b5

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2131
    new-instance v2, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameManagerService;)V

    const/16 v3, 0x27b6

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2136
    new-instance v2, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameManagerService;)V

    const/16 p0, 0x27b7

    invoke-virtual {v0, p0, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public removeGameModeListener(Landroid/app/IGameModeListener;)V
    .registers 3

    .line 1510
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->removeGameModeListenerUnchecked(Landroid/app/IGameModeListener;)V

    return-void
.end method

.method public final removeGameModeListenerUnchecked(Landroid/app/IGameModeListener;)V
    .registers 3

    .line 1515
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_3
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeGameStateListener(Landroid/app/IGameStateListener;)V
    .registers 2

    .line 1548
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->removeGameStateListenerUnchecked(Landroid/app/IGameStateListener;)V

    return-void
.end method

.method public final removeGameStateListenerUnchecked(Landroid/app/IGameStateListener;)V
    .registers 3

    .line 1552
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1553
    :try_start_3
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final resetFps(Ljava/lang/String;I)V
    .registers 4

    .line 1665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    .line 1666
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->setGameModeFrameRateOverride(IF)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public resetGameModeConfigOverride(Ljava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1804
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1807
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1808
    :try_start_8
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1809
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_63

    .line 1811
    :cond_18
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    const/4 v2, -0x1

    if-eq p3, v2, :cond_48

    .line 1813
    invoke-virtual {v1, p1}, Lcom/android/server/app/GameManagerSettings;->getConfigOverrideLocked(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 1816
    monitor-exit v0

    return-void

    .line 1818
    :cond_2f
    invoke-static {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$mgetAvailableGameModesBitfield(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v3

    .line 1819
    invoke-virtual {p0, v3, p3}, Lcom/android/server/app/GameManagerService;->bitFieldContainsModeBitmask(II)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 1820
    monitor-exit v0

    return-void

    .line 1822
    :cond_3b
    invoke-virtual {v2, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->removeModeConfig(I)V

    .line 1823
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->hasActiveGameModeConfig()Z

    move-result p3

    if-nez p3, :cond_4b

    .line 1824
    invoke-virtual {v1, p1}, Lcom/android/server/app/GameManagerSettings;->removeConfigOverrideLocked(Ljava/lang/String;)V

    goto :goto_4b

    .line 1827
    :cond_48
    invoke-virtual {v1, p1}, Lcom/android/server/app/GameManagerSettings;->removeConfigOverrideLocked(Ljava/lang/String;)V

    .line 1829
    :cond_4b
    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_16

    .line 1833
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p3

    .line 1835
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v0

    .line 1836
    invoke-virtual {p0, p3, v0}, Lcom/android/server/app/GameManagerService;->getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v0

    if-eq p3, v0, :cond_5f

    const/4 p3, 0x1

    .line 1838
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    .line 1841
    :cond_5f
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    .line 1829
    :goto_63
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_16

    throw p0
.end method

.method public final sendUserMessage(IILjava/lang/String;I)V
    .registers 7

    .line 1599
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1600
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    int-to-long v0, p4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    if-nez p0, :cond_31

    .line 1601
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send user message "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void
.end method

.method public setGameDefaultFrameRateOverride(IF)V
    .registers 4

    .line 2249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDefaultFrameRateOverride : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GameManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    invoke-static {p1, p2}, Lcom/android/server/app/GameManagerService;->nativeSetGameDefaultFrameRateOverride(IF)V

    return-void
.end method

.method public setGameMode(Ljava/lang/String;II)V
    .registers 13

    .line 1175
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    if-nez p2, :cond_1e

    .line 1177
    const-string p0, "GameManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No-op for attempt to set UNSUPPORTED mode for app: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1179
    :cond_1e
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1180
    const-string p0, "GameManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No-op for attempt to set game mode for non-game app: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1184
    :cond_3b
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1185
    :try_start_3e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v7, "setGameMode"

    const-string v8, "com.android.server.app.GameManagerService"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p3

    .line 1185
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1189
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 1190
    const-string p0, "GameManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set game mode for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not started"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    monitor-exit v1

    return-void

    :catchall_83
    move-exception v0

    move-object p0, v0

    goto/16 :goto_12c

    .line 1194
    :cond_87
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    .line 1195
    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerSettings;->getGameModeLocked(Ljava/lang/String;)I

    move-result v2

    .line 1196
    invoke-virtual {v0, p1, p2}, Lcom/android/server/app/GameManagerSettings;->setGameModeLocked(Ljava/lang/String;I)V

    .line 1197
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_3e .. :try_end_9b} :catchall_83

    .line 1198
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/app/GameManagerService;->updateInterventions(Ljava/lang/String;II)V

    .line 1199
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1200
    :try_start_a1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ab
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IGameModeListener;

    .line 1201
    invoke-interface {v1}, Landroid/app/IGameModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_be
    .catchall {:try_start_a1 .. :try_end_be} :catchall_c2

    .line 1203
    :try_start_be
    invoke-interface {v1, p1, v2, p2, p3}, Landroid/app/IGameModeListener;->onGameModeChanged(Ljava/lang/String;III)V
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c1} :catch_c5
    .catchall {:try_start_be .. :try_end_c1} :catchall_c2

    goto :goto_ab

    :catchall_c2
    move-exception v0

    move-object p0, v0

    goto :goto_12a

    .line 1205
    :catch_c5
    :try_start_c5
    const-string v4, "GameManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot notify game mode change for listener added by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    .line 1206
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1205
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 1209
    :cond_e2
    monitor-exit v3
    :try_end_e3
    .catchall {:try_start_c5 .. :try_end_e3} :catchall_c2

    .line 1210
    const-string v0, "SET_GAME_MODE"

    const/16 v1, 0x2710

    const/4 v3, 0x1

    invoke-virtual {p0, p3, v3, v0, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1211
    const-string v0, "SET_GAME_MODE"

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-virtual {p0, p3, v3, v0, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1215
    :try_start_f2
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_f8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f2 .. :try_end_f8} :catch_f9

    goto :goto_118

    .line 1217
    :catch_f9
    const-string p0, "GameManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find the UID for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " under user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 1220
    :goto_118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result p3

    .line 1221
    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result p2

    const/16 v0, 0x22b

    .line 1219
    invoke-static {v0, p0, p1, p3, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII)V

    return-void

    .line 1209
    :goto_12a
    :try_start_12a
    monitor-exit v3
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_c2

    throw p0

    .line 1197
    :goto_12c
    :try_start_12c
    monitor-exit v1
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_83

    throw p0
.end method

.method public setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1734
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1737
    :try_start_5
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_d

    :goto_b
    move v2, v0

    goto :goto_2d

    .line 1739
    :catch_d
    const-string v0, "GameManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find the UID for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " under user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_b

    .line 1741
    :goto_2d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 1742
    invoke-virtual {v0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 1744
    invoke-virtual {v0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v0

    .line 1746
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {p3}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v4

    .line 1747
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v5

    if-nez p5, :cond_51

    .line 1748
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v1

    :goto_4f
    move v6, v1

    goto :goto_56

    .line 1749
    :cond_51
    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_4f

    .line 1750
    :goto_56
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v7

    if-nez p4, :cond_62

    .line 1751
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v0

    :goto_60
    move v8, v0

    goto :goto_67

    .line 1752
    :cond_62
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_60

    :goto_67
    const/16 v1, 0x22c

    .line 1745
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFFII)V

    goto :goto_92

    .line 1755
    :cond_6d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {p3}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v4

    if-nez p5, :cond_7b

    const/high16 v0, -0x40800000    # -1.0f

    :goto_79
    move v6, v0

    goto :goto_80

    .line 1758
    :cond_7b
    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_79

    :goto_80
    if-nez p4, :cond_85

    const/4 v0, 0x0

    :goto_83
    move v8, v0

    goto :goto_8a

    .line 1760
    :cond_85
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_83

    :goto_8a
    const/16 v1, 0x22c

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v7, 0x0

    .line 1754
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFFII)V

    .line 1765
    :goto_92
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1766
    :try_start_95
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 1767
    monitor-exit v1

    return-void

    :catchall_a3
    move-exception v0

    move-object p0, v0

    goto :goto_10f

    .line 1769
    :cond_a6
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    .line 1771
    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerSettings;->getConfigOverrideLocked(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v2

    if-nez v2, :cond_c0

    .line 1773
    new-instance v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v2, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Ljava/lang/String;)V

    .line 1774
    invoke-virtual {v0, p1, v2}, Lcom/android/server/app/GameManagerSettings;->setConfigOverrideLocked(Ljava/lang/String;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V

    .line 1776
    :cond_c0
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_95 .. :try_end_c1} :catchall_a3

    .line 1779
    invoke-virtual {v2, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v0

    if-eqz p4, :cond_cb

    .line 1782
    invoke-virtual {v0, p4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setFpsStr(Ljava/lang/String;)V

    goto :goto_d0

    .line 1784
    :cond_cb
    const-string p4, ""

    invoke-virtual {v0, p4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setFpsStr(Ljava/lang/String;)V

    :goto_d0
    if-eqz p5, :cond_d9

    .line 1788
    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p4

    invoke-virtual {v0, p4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setScaling(F)V

    .line 1790
    :cond_d9
    const-string p4, "GameManagerService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package Name: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FPS: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Scaling: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 1790
    invoke-static {p4, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    .line 1776
    :goto_10f
    :try_start_10f
    monitor-exit v1
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_a3

    throw p0
.end method

.method public setGameModeFrameRateOverride(IF)V
    .registers 3

    .line 2244
    invoke-static {p1, p2}, Lcom/android/server/app/GameManagerService;->nativeSetGameModeFrameRateOverride(IF)V

    return-void
.end method

.method public setGameServiceProvider(Ljava/lang/String;)V
    .registers 3

    .line 1330
    const-string v0, "android.permission.SET_GAME_SERVICE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1332
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-nez p0, :cond_a

    return-void

    .line 1336
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->setGameServiceProvider(Ljava/lang/String;)V

    return-void
.end method

.method public setGameState(Ljava/lang/String;Landroid/app/GameState;I)V
    .registers 7

    .line 486
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 487
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No-op for attempt to set game state for non-game app: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 491
    :cond_1d
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 492
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 493
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string/jumbo p1, "userId"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 495
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 496
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 497
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public toggleGameDefaultFrameRate(Z)V
    .registers 4

    .line 2264
    invoke-virtual {p0}, Landroid/app/IGameManagerService$Stub;->toggleGameDefaultFrameRate_enforcePermission()V

    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggleGameDefaultFrameRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->toggleGameDefaultFrameRateUnchecked(Z)V

    return-void
.end method

.method public final toggleGameDefaultFrameRateUnchecked(Z)V
    .registers 6

    .line 2275
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_11

    .line 2277
    :try_start_5
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    const-string v2, "debug.graphics.game_default_frame_rate.disabled"

    const-string v3, "false"

    invoke-interface {v1, v2, v3}, Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :catchall_f
    move-exception p0

    goto :goto_43

    .line 2280
    :cond_11
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    const-string v2, "debug.graphics.game_default_frame_rate.disabled"

    const-string/jumbo v3, "true"

    invoke-interface {v1, v2, v3}, Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_f

    .line 2286
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2287
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2288
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getGameDefaultFrameRate(Z)F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/app/GameManagerService;->setGameDefaultFrameRateOverride(IF)V

    goto :goto_25

    :catchall_3d
    move-exception p0

    goto :goto_41

    .line 2290
    :cond_3f
    monitor-exit v1

    return-void

    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_3d

    throw p0

    .line 2283
    :goto_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_f

    throw p0
.end method

.method public varargs updateConfigsForUser(IZ[Ljava/lang/String;)V
    .registers 12

    if-eqz p2, :cond_1b

    .line 1887
    invoke-static {p3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/app/GameManagerService;I)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p3}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda4;-><init>()V

    .line 1888
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, [Ljava/lang/String;

    .line 1891
    :cond_1b
    :try_start_1b
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_b8

    .line 1892
    :try_start_1e
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_21
    if-ge v2, v0, :cond_83

    aget-object v3, p3, v2

    .line 1893
    new-instance v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v4, v5, v3, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    .line 1895
    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1896
    const-string v5, "GameManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    :catchall_52
    move-exception p0

    goto/16 :goto_cc

    .line 1899
    :cond_55
    const-string v5, "GameManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inactive package config for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1899
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1904
    :cond_83
    monitor-exit p2
    :try_end_84
    .catchall {:try_start_1e .. :try_end_84} :catchall_52

    .line 1905
    :try_start_84
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_b8

    .line 1906
    :try_start_87
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 1907
    monitor-exit p2

    return-void

    :catchall_95
    move-exception p0

    goto :goto_ca

    .line 1909
    :cond_97
    monitor-exit p2
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_95

    .line 1910
    :try_start_98
    array-length p2, p3

    move v0, v1

    :goto_9a
    if-ge v0, p2, :cond_c3

    aget-object v2, p3, v0

    .line 1911
    invoke-virtual {p0, v2, p1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v3

    .line 1917
    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a5} :catch_b8

    .line 1918
    :try_start_a5
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1919
    monitor-exit v4
    :try_end_ae
    .catchall {:try_start_a5 .. :try_end_ae} :catchall_c0

    .line 1920
    :try_start_ae
    invoke-virtual {p0, v3, v5}, Lcom/android/server/app/GameManagerService;->getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v4

    if-eq v4, v3, :cond_ba

    .line 1922
    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    goto :goto_bd

    :catch_b8
    move-exception p0

    goto :goto_ce

    .line 1926
    :cond_ba
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/app/GameManagerService;->updateInterventions(Ljava/lang/String;II)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_bd} :catch_b8

    :goto_bd
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    :catchall_c0
    move-exception p0

    .line 1919
    :try_start_c1
    monitor-exit v4
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    :try_start_c2
    throw p0

    .line 1929
    :cond_c3
    const-string p2, "UPDATE_CONFIGS_FOR_USERS"

    const/4 p3, 0x6

    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c9} :catch_b8

    return-void

    .line 1909
    :goto_ca
    :try_start_ca
    monitor-exit p2
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_95

    :try_start_cb
    throw p0
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_cc} :catch_b8

    .line 1904
    :goto_cc
    :try_start_cc
    monitor-exit p2
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_52

    :try_start_cd
    throw p0
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_ce} :catch_b8

    .line 1932
    :goto_ce
    const-string p2, "GameManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to update configs for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateCustomGameModeConfiguration(Ljava/lang/String;Landroid/app/GameModeConfiguration;I)V
    .registers 14

    .line 1412
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1414
    const-string p0, "GameManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No-op for attempt to update custom game mode for non-game app: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1418
    :cond_22
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1419
    :try_start_25
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1422
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_ff

    .line 1426
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1427
    :try_start_35
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 1428
    monitor-exit v2

    return-void

    :catchall_43
    move-exception v0

    move-object p0, v0

    goto/16 :goto_fd

    .line 1430
    :cond_47
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    .line 1432
    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerSettings;->getConfigOverrideLocked(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v1

    if-nez v1, :cond_61

    .line 1434
    new-instance v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v1, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v0, p1, v1}, Lcom/android/server/app/GameManagerSettings;->setConfigOverrideLocked(Ljava/lang/String;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V

    .line 1437
    :cond_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_35 .. :try_end_62} :catchall_43

    const/4 v0, 0x4

    .line 1439
    invoke-virtual {v1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    .line 1440
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v6

    .line 1441
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v8

    .line 1442
    invoke-virtual {v1, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->updateFromPublicGameModeConfig(Landroid/app/GameModeConfiguration;)V

    const/4 v2, 0x1

    .line 1444
    const-string v3, "UPDATE_CUSTOM_GAME_MODE_CONFIG"

    const/16 v4, 0x2710

    invoke-virtual {p0, p3, v2, v3, v4}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    const/4 v2, 0x6

    .line 1446
    const-string v3, "UPDATE_CUSTOM_GAME_MODE_CONFIG"

    invoke-virtual {p0, p3, v2, v3, v4}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1449
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_89

    .line 1451
    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/app/GameManagerService;->updateInterventions(Ljava/lang/String;II)V

    .line 1453
    :cond_89
    const-string v2, "GameManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated custom game mode config for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with FPS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";Scaling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " under user "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1453
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :try_start_bf
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_c5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bf .. :try_end_c5} :catch_c7

    :goto_c5
    move v3, p0

    goto :goto_e7

    .line 1461
    :catch_c7
    const-string p0, "GameManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find the UID for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " under user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    goto :goto_c5

    .line 1464
    :goto_e7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v5

    .line 1465
    invoke-virtual {p2}, Landroid/app/GameModeConfiguration;->getScalingFactor()F

    move-result v7

    .line 1466
    invoke-virtual {p2}, Landroid/app/GameModeConfiguration;->getFpsOverride()I

    move-result v9

    const/16 v2, 0x22c

    .line 1463
    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFFII)V

    return-void

    .line 1437
    :goto_fd
    :try_start_fd
    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_43

    throw p0

    :catchall_ff
    move-exception v0

    move-object p0, v0

    goto :goto_11e

    .line 1420
    :cond_102
    :try_start_102
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " wasn\'t started"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1422
    :goto_11e
    monitor-exit v1
    :try_end_11f
    .catchall {:try_start_102 .. :try_end_11f} :catchall_ff

    throw p0
.end method

.method public final updateFps(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;II)V
    .registers 5

    .line 1690
    invoke-virtual {p1, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p1

    if-nez p1, :cond_25

    .line 1692
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Game mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1696
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result p1

    int-to-float p1, p1

    .line 1697
    iget-object p3, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2

    .line 1698
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->setGameModeFrameRateOverride(IF)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

.method public final updateInterventions(Ljava/lang/String;II)V
    .registers 6

    .line 1707
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1c

    if-eqz p2, :cond_1c

    if-eqz v0, :cond_1c

    .line 1710
    invoke-virtual {v0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1711
    invoke-virtual {v0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_1c

    .line 1721
    :cond_18
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/app/GameManagerService;->updateFps(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;II)V

    goto :goto_38

    .line 1712
    :cond_1c
    :goto_1c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->resetFps(Ljava/lang/String;I)V

    if-nez v0, :cond_38

    .line 1717
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package configuration not found for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1723
    :cond_38
    :goto_38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->updateUseAngle(Ljava/lang/String;I)V

    return-void
.end method

.method public updateResolutionScalingFactor(Ljava/lang/String;IFI)V
    .registers 13

    .line 1354
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1355
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1356
    :try_start_8
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1359
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_22

    const/4 v6, 0x0

    .line 1361
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v4, p4

    .line 1360
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/app/GameManagerService;->setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_22
    move-exception v0

    move-object p0, v0

    goto :goto_42

    :cond_25
    move v4, p4

    .line 1357
    :try_start_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " wasn\'t started"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1359
    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_22

    throw p0
.end method

.method public final updateUseAngle(Ljava/lang/String;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public final writeGameModeInterventionsToFile(I)V
    .registers 15

    .line 1945
    const-string v0, ","

    const-string v1, "\t"

    const/4 v2, 0x0

    .line 1948
    :try_start_5
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1949
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 1950
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1953
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNamesByAllUsers(I)Ljava/util/List;

    move-result-object v5

    .line 1954
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1955
    invoke-virtual {p0, v6, p1}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v7

    if-nez v7, :cond_39

    goto :goto_26

    .line 1959
    :cond_39
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1960
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    iget-object v8, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v6, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1962
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    invoke-virtual {p0, v6, p1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1964
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    invoke-virtual {v7}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v6

    .line 1966
    array-length v8, v6

    const/4 v9, 0x0

    :goto_5b
    if-ge v9, v8, :cond_b1

    aget v10, v6, v9

    .line 1968
    invoke-virtual {v7, v10}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v11

    if-nez v11, :cond_66

    goto :goto_ac

    .line 1972
    :cond_66
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1973
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    invoke-virtual {v11}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getUseAngle()Z

    move-result v10

    .line 1975
    const-string v12, "angle=%d"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    invoke-virtual {v11}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v10

    .line 1978
    const-string/jumbo v12, "scaling="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1980
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1981
    invoke-virtual {v11}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v10

    .line 1982
    const-string v11, "fps=%d"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ac
    add-int/lit8 v9, v9, 0x1

    goto :goto_5b

    :catch_af
    move-exception p1

    goto :goto_c7

    .line 1985
    :cond_b1
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_26

    .line 1987
    :cond_b8
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1988
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1989
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1990
    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c6} :catch_af

    return-void

    .line 1992
    :goto_c7
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1993
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write game_mode_intervention.list, exception "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
