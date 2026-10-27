.class public final Lcom/android/server/profcollect/ProfcollectForwardingService;
.super Lcom/android/server/SystemService;
.source "ProfcollectForwardingService.java"


# static fields
.field public static final BG_PROCESS_INTERVAL:J

.field public static sAdbActive:Z

.field public static sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

.field public static sIsBatteryLow:Z

.field public static sIsInteractive:Z

.field public static sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

.field public static sVerityEnforced:Z


# instance fields
.field public final mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mHandler:Landroid/os/Handler;

.field public mProviderStatusCallback:Lcom/android/server/profcollect/IProviderStatusCallback;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public mUploadEnabled:Z

.field public mUsageSetting:I


# direct methods
.method public static synthetic $r8$lambda$1JszTNP0Wjdi3llSjRuXlKdX2Gc(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z7z3slCDjiUYKGoo7Kkfo2a4OEw(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/util/List;Lcom/android/server/art/model/BatchDexoptParams$Builder;Landroid/os/CancellationSignal;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/profcollect/ProfcollectForwardingService;->lambda$registerDex2oatObserver$2(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/util/List;Lcom/android/server/art/model/BatchDexoptParams$Builder;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iDnCUu1hMoq27JBaZJhWxOSzgiw(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->lambda$registerObservers$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$pF8vnaAFWj32BPKHKrXbd4S1cW0(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 5

    .line 421
    const-string v0, "ProfcollectForwardingService"

    sget-object v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v1, :cond_7

    return-void

    .line 426
    :cond_7
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    iget v3, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUsageSetting:I

    invoke-interface {v2, v3}, Lcom/android/server/profcollect/IProfCollectd;->report(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_20} :catch_5b

    .line 431
    iget-boolean v2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUploadEnabled:Z

    if-nez v2, :cond_2a

    .line 432
    const-string p0, "Upload is not enabled."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 435
    :cond_2a
    sget-boolean v2, Lcom/android/server/profcollect/ProfcollectForwardingService;->sVerityEnforced:Z

    if-nez v2, :cond_34

    .line 436
    const-string p0, "Verity is not enforced."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 439
    :cond_34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.shell"

    .line 440
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.shell.action.PROFCOLLECT_UPLOAD"

    .line 441
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "filename"

    .line 442
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 443
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 444
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 443
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catch_5b
    move-exception p0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create report: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/profcollect/ProfcollectForwardingService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduledExecutorService(Lcom/android/server/profcollect/ProfcollectForwardingService;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mconnectNativeService(Lcom/android/server/profcollect/ProfcollectForwardingService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mregisterObservers(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerObservers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtryConnectNativeService(Lcom/android/server/profcollect/ProfcollectForwardingService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->tryConnectNativeService()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetBG_PROCESS_INTERVAL()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->BG_PROCESS_INTERVAL:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsIProfcollect()Lcom/android/server/profcollect/IProfCollectd;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsSelfService()Lcom/android/server/profcollect/ProfcollectForwardingService;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputsIProfcollect(Lcom/android/server/profcollect/IProfCollectd;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcreateAndUploadReport(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->createAndUploadReport(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->BG_PROCESS_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 141
    const-string v0, "ProfcollectForwardingService"

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$1;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$1;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mProviderStatusCallback:Lcom/android/server/profcollect/IProviderStatusCallback;

    .line 102
    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$2;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$2;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService-IA;)V

    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    .line 143
    sget-object v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    if-nez v1, :cond_bd

    .line 146
    sput-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 150
    :try_start_36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multi_cb"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUsageSetting:I
    :try_end_43
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_36 .. :try_end_43} :catch_44

    goto :goto_60

    :catch_44
    move-exception v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usage setting not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 153
    iput v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUsageSetting:I

    .line 157
    :goto_60
    const-string/jumbo v1, "ro.boot.veritymode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v2, "enforcing"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/profcollect/ProfcollectForwardingService;->sVerityEnforced:Z

    if-nez v2, :cond_86

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verity is not enforced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUploadEnabled:Z

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "com.android.server.profcollect.UPLOAD_PROFILES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x4

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 144
    :cond_bd
    new-instance p0, Ljava/lang/AssertionError;

    const-string/jumbo p1, "only one service instance allowed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static createAndUploadReport(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 3

    .line 420
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static enabled()Z
    .registers 3

    .line 180
    const-string/jumbo v0, "profcollect_native_boot"

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "persist.profcollectd.enabled_override"

    .line 181
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    return v2

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$onBootPhase$0()V
    .registers 2

    .line 220
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->serviceHasSupportedTraceProvider()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 221
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerProviderStatusCallback()V

    :cond_9
    return-void
.end method


# virtual methods
.method public final connectNativeService()Z
    .registers 6

    const/4 v0, 0x0

    .line 261
    :try_start_1
    const-string/jumbo v1, "profcollectd"

    .line 263
    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 262
    invoke-static {v1}, Lcom/android/server/profcollect/IProfCollectd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/profcollect/IProfCollectd;

    move-result-object v1

    .line 264
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService-IA;)V

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 265
    sput-object v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;
    :try_end_1b
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_1d

    const/4 p0, 0x1

    return p0

    .line 268
    :catch_1d
    const-string p0, "ProfcollectForwardingService"

    const-string v1, "Failed to connect profcollectd binder service."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final synthetic lambda$registerDex2oatObserver$2(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/util/List;Lcom/android/server/art/model/BatchDexoptParams$Builder;Landroid/os/CancellationSignal;)V
    .registers 6

    .line 391
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->traceOnDex2oatStart()V

    return-void
.end method

.method public final synthetic lambda$registerObservers$1()V
    .registers 1

    .line 358
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerAppLaunchObserver()V

    .line 359
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerCameraOpenObserver()V

    .line 360
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerDex2oatObserver()V

    .line 361
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerOTAObserver()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 10

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_48

    .line 193
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x1

    .line 194
    const-string v2, "ProfcollectForwardingService"

    const/4 v3, 0x0

    if-nez v0, :cond_1e

    .line 195
    sput-boolean v3, Lcom/android/server/profcollect/ProfcollectForwardingService;->sAdbActive:Z

    .line 196
    const-string v0, "USBManager is not ready"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 198
    :cond_1e
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2a

    move v3, v1

    :cond_2a
    sput-boolean v3, Lcom/android/server/profcollect/ProfcollectForwardingService;->sAdbActive:Z

    .line 204
    :goto_2c
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_42

    .line 206
    sput-boolean v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsInteractive:Z

    .line 207
    const-string v0, "PowerManager is not ready"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 209
    :cond_42
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsInteractive:Z

    :cond_48
    :goto_48
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_61

    .line 216
    sget-object p1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez p1, :cond_51

    goto :goto_61

    .line 219
    :cond_51
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_61
    :goto_61
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 186
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    return-void
.end method

.method public final registerAppLaunchObserver()V
    .registers 2

    .line 367
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 368
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 370
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v0

    .line 371
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    invoke-interface {v0, p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method public final registerCameraOpenObserver()V
    .registers 3

    .line 449
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 450
    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$4;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$4;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerDex2oatObserver()V
    .registers 4

    .line 384
    const-class v0, Lcom/android/server/art/ArtManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/art/ArtManagerLocal;

    if-nez v0, :cond_12

    .line 386
    const-string p0, "ProfcollectForwardingService"

    const-string v0, "Couldn\'t get ArtManagerLocal"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 389
    :cond_12
    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->setBatchDexoptStartCallback(Ljava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$BatchDexoptStartCallback;)V

    return-void
.end method

.method public final registerOTAObserver()V
    .registers 3

    .line 403
    new-instance v0, Landroid/os/UpdateEngine;

    invoke-direct {v0}, Landroid/os/UpdateEngine;-><init>()V

    .line 404
    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$3;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$3;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {v0, v1}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;)Z

    return-void
.end method

.method public final registerObservers()V
    .registers 3

    .line 356
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerProviderStatusCallback()V
    .registers 3

    .line 228
    sget-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v0, :cond_5

    return-void

    .line 232
    :cond_5
    :try_start_5
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mProviderStatusCallback:Lcom/android/server/profcollect/IProviderStatusCallback;

    invoke-interface {v0, p0}, Lcom/android/server/profcollect/IProfCollectd;->registerProviderStatusCallback(Lcom/android/server/profcollect/IProviderStatusCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register provider status callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProfcollectForwardingService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final serviceHasSupportedTraceProvider()Z
    .registers 4

    .line 239
    sget-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 243
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/android/server/profcollect/IProfCollectd;->get_supported_provider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_11

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_11
    move-exception p0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get supported provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ProfcollectForwardingService"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final traceOnDex2oatStart()V
    .registers 4

    .line 396
    const-string p0, "dex2oat_trace_freq"

    const/16 v0, 0x4b

    invoke-static {p0, v0}, Lcom/android/server/profcollect/Utils;->withFrequency(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 398
    sget-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const-string v2, "dex2oat"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/profcollect/Utils;->traceSystem(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;II)Z

    :cond_14
    return-void
.end method

.method public final tryConnectNativeService()Z
    .registers 4

    .line 251
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 255
    :cond_8
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v2
.end method
