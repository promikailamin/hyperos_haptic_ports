.class public Lcom/android/server/locales/LocaleManagerService;
.super Lcom/android/server/SystemService;
.source "LocaleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;,
        Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocaleManagerService"


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

.field private final mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

.field final mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackupHelper(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerBackupHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBinderService(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 75
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 76
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocaleManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 81
    .local v0, "broadcastHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v1, Lcom/android/server/locales/SystemAppUpdateTracker;

    invoke-direct {v1, p0}, Lcom/android/server/locales/SystemAppUpdateTracker;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    .line 85
    .local v1, "systemAppUpdateTracker":Lcom/android/server/locales/SystemAppUpdateTracker;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/locales/LocaleManagerService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/locales/LocaleManagerService$1;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/SystemAppUpdateTracker;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 92
    new-instance v2, Lcom/android/server/locales/LocaleManagerBackupHelper;

    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;-><init>(Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 95
    new-instance v2, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;

    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-direct {v2, v3, v1}, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;-><init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/SystemAppUpdateTracker;)V

    iput-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 100
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Landroid/content/pm/PackageManager;Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/internal/content/PackageMonitor;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityTaskManagerInternal"    # Lcom/android/server/wm/ActivityTaskManagerInternal;
    .param p3, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p5, "localeManagerBackupHelper"    # Lcom/android/server/locales/LocaleManagerBackupHelper;
    .param p6, "packageMonitor"    # Lcom/android/internal/content/PackageMonitor;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 111
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 112
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 113
    iput-object p4, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 114
    iput-object p5, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 115
    iput-object p6, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 116
    return-void
.end method

.method static createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;
    .registers 5
    .param p0, "intentAction"    # Ljava/lang/String;
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "locales"    # Landroid/os/LocaleList;

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 296
    const-string v1, "android.intent.extra.LOCALE_LIST"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 297
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 294
    return-object v0
.end method

.method private enforceChangeConfigurationPermission(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .registers 5
    .param p1, "atomRecordForMetrics"    # Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v2, "setApplicationLocales"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_a} :catch_c

    .line 343
    nop

    .line 344
    return-void

    .line 339
    :catch_c
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    .line 342
    throw v0
.end method

.method private enforceReadAppSpecificLocalesPermission()V
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_APP_SPECIFIC_LOCALES"

    const-string v2, "getApplicationLocales"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;
    .registers 6
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 389
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 390
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getApplicationConfig(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object v0

    .line 391
    .local v0, "appConfig":Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
    if-nez v0, :cond_d

    .line 396
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    return-object v1

    .line 398
    :cond_d
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    .line 399
    .local v1, "locales":Landroid/os/LocaleList;
    if-eqz v1, :cond_13

    move-object v2, v1

    goto :goto_17

    :cond_13
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v2

    :goto_17
    return-object v2
.end method

.method private getPackageUid(Ljava/lang/String;I)I
    .registers 6
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v1, 0x0

    .line 424
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    .line 423
    return v0

    .line 425
    :catch_d
    move-exception v0

    .line 426
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private getSystemLocalesUnchecked()Landroid/os/LocaleList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "systemLocales":Landroid/os/LocaleList;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 458
    .local v1, "conf":Landroid/content/res/Configuration;
    if-eqz v1, :cond_f

    .line 459
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 461
    :cond_f
    if-nez v0, :cond_15

    .line 462
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    .line 464
    :cond_15
    return-object v0
.end method

.method private isCallerInstaller(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "installingPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 409
    invoke-direct {p0, v0, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    .line 410
    .local v2, "installerUid":I
    if-ltz v2, :cond_18

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    .line 412
    .end local v2    # "installerUid":I
    :cond_19
    return v1
.end method

.method private isPackageOwnedByCaller(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;)Z

    move-result v0

    return v0
.end method

.method private isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;)Z
    .registers 9
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "atomRecordForMetrics"    # Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 317
    .local v0, "uid":I
    if-gez v0, :cond_4f

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LocaleManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-eqz p3, :cond_2e

    .line 320
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    .line 323
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_4f
    if-eqz p3, :cond_54

    .line 327
    invoke-virtual {p3, v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setTargetUid(I)V

    .line 331
    :cond_54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    return v1
.end method

.method private logMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .registers 8
    .param p1, "atomRecordForMetrics"    # Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 468
    iget v1, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    iget v2, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    iget-object v3, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    const/16 v0, 0x19c

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 474
    return-void
.end method

.method private notifyAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .registers 7
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;

    .line 285
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object v0

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 290
    return-void
.end method

.method private notifyRegisteredReceivers(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .registers 8
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;

    .line 252
    const-string v0, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object v0

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "android.permission.READ_APP_SPECIFIC_LOCALES"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .registers 8
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;
    .param p4, "atomRecordForMetrics"    # Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p4, v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setPrevLocales(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 226
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createPackageConfigurationUpdater(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v0

    .line 228
    .local v0, "updater":Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    invoke-interface {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setLocales(Landroid/os/LocaleList;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    move-result v1

    .line 231
    .local v1, "isConfigChanged":Z
    if-eqz v1, :cond_2e

    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyInstallerOfAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 234
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyRegisteredReceivers(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 236
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {v2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->notifyBackupManager()V

    .line 237
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    goto :goto_32

    .line 240
    :cond_2e
    const/4 v2, 0x2

    invoke-virtual {p4, v2}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    .line 243
    :goto_32
    return-void
.end method


# virtual methods
.method public getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .registers 11
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 356
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 355
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getApplicationLocales"

    const/4 v7, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 369
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 370
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->isCallerInstaller(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 371
    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerService;->enforceReadAppSpecificLocalesPermission()V

    .line 373
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 375
    .local v0, "token":J
    :try_start_2a
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v2
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_32

    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    return-object v2

    .line 377
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    throw v2
.end method

.method getInstallingPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 434
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    .line 433
    return-object v0

    .line 435
    :catch_f
    move-exception v0

    .line 436
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocaleManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemLocales()Landroid/os/LocaleList;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 448
    .local v0, "token":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerService;->getSystemLocalesUnchecked()Landroid/os/LocaleList;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    return-object v2

    .line 450
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw v2
.end method

.method notifyInstallerOfAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .registers 8
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "installingPackageName":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 271
    const-string v1, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    invoke-static {v1, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object v1

    .line 274
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 277
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const-string/jumbo v1, "locale"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/locales/LocaleManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 121
    const-class v0, Lcom/android/server/locales/LocaleManagerInternal;

    new-instance v1, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .registers 14
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;-><init>(I)V

    .line 182
    .local v0, "atomRecordForMetrics":Lcom/android/server/locales/AppLocaleChangedAtomRecord;
    :try_start_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {p3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setNewLocales(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "setApplicationLocales"

    const/4 v9, 0x0

    .line 186
    move v5, p2

    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move p2, v1

    .line 197
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;)Z

    move-result v1

    .line 199
    .local v1, "isCallerOwner":Z
    if-nez v1, :cond_35

    .line 200
    invoke-direct {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->enforceChangeConfigurationPermission(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    .line 203
    :cond_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_4b

    .line 205
    .local v2, "token":J
    :try_start_39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_45

    .line 208
    :try_start_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 209
    nop

    .line 211
    .end local v1    # "isCallerOwner":Z
    .end local v2    # "token":J
    invoke-direct {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->logMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    .line 212
    nop

    .line 213
    return-void

    .line 208
    .restart local v1    # "isCallerOwner":Z
    .restart local v2    # "token":J
    :catchall_45
    move-exception v4

    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    nop

    .end local v0    # "atomRecordForMetrics":Lcom/android/server/locales/AppLocaleChangedAtomRecord;
    .end local p0    # "this":Lcom/android/server/locales/LocaleManagerService;
    .end local p1    # "appPackageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "locales":Landroid/os/LocaleList;
    throw v4
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4b

    .line 211
    .end local v1    # "isCallerOwner":Z
    .end local v2    # "token":J
    .restart local v0    # "atomRecordForMetrics":Lcom/android/server/locales/AppLocaleChangedAtomRecord;
    .restart local p0    # "this":Lcom/android/server/locales/LocaleManagerService;
    .restart local p1    # "appPackageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "locales":Landroid/os/LocaleList;
    :catchall_4b
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->logMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    .line 212
    throw v1
.end method
