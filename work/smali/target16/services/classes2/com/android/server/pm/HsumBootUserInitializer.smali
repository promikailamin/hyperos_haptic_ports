.class public final Lcom/android/server/pm/HsumBootUserInitializer;
.super Ljava/lang/Object;
.source "HsumBootUserInitializer.java"


# static fields
.field public static final DEBUG:Z

.field static final SYSPROP_DESIGNATE_MAIN_USER:Ljava/lang/String; = "fw.designate_main_user_on_boot"

.field public static final TAG:Ljava/lang/String; = "HsumBootUserInitializer"

.field public static sDumpable:Landroid/util/Dumpable;


# instance fields
.field public final mAms:Lcom/android/server/am/ActivityManagerService;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field public final mPms:Lcom/android/server/pm/PackageManagerService;

.field public final mShouldCreateInitialUser:Z

.field public final mShouldDesignateMainUser:Z

.field public final mUms:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/pm/HsumBootUserInitializer;)Landroid/content/ContentResolver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceProvisionedObserver(Lcom/android/server/pm/HsumBootUserInitializer;)Landroid/database/ContentObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/pm/HsumBootUserInitializer;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/HsumBootUserInitializer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misDeviceProvisioned(Lcom/android/server/pm/HsumBootUserInitializer;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/HsumBootUserInitializer;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/pm/HsumBootUserInitializer;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smdump(Ljava/io/PrintWriter;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/HsumBootUserInitializer;->dump(Ljava/io/PrintWriter;Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 52
    const-class v0, Lcom/android/server/pm/HsumBootUserInitializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/HsumBootUserInitializer;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;ZZ)V
    .registers 7

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 102
    iput-object p2, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 103
    iput-object p3, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 104
    iput-object p4, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iput-boolean p5, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mShouldDesignateMainUser:Z

    .line 106
    iput-boolean p6, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mShouldCreateInitialUser:Z

    .line 109
    new-instance p1, Lcom/android/server/pm/HsumBootUserInitializer$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/HsumBootUserInitializer$1;-><init>(Lcom/android/server/pm/HsumBootUserInitializer;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static createInitialUserOnBoot(Landroid/content/Context;)Z
    .registers 2

    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111012c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static createInstance(Lcom/android/server/pm/UserManagerService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/android/server/pm/HsumBootUserInitializer;
    .registers 12

    .line 88
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_8
    new-instance v0, Lcom/android/server/pm/HsumBootUserInitializer;

    .line 92
    invoke-static {p4}, Lcom/android/server/pm/HsumBootUserInitializer;->designateMainUserOnBoot(Landroid/content/Context;)Z

    move-result v5

    invoke-static {p4}, Lcom/android/server/pm/HsumBootUserInitializer;->createInitialUserOnBoot(Landroid/content/Context;)Z

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/HsumBootUserInitializer;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;ZZ)V

    .line 93
    invoke-static {v0, p4}, Lcom/android/server/pm/HsumBootUserInitializer;->setDumpable(Lcom/android/server/pm/HsumBootUserInitializer;Landroid/content/Context;)Landroid/util/Dumpable;

    return-object v0
.end method

.method public static designateMainUserOnBoot(Landroid/content/Context;)Z
    .registers 7

    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110142

    .line 502
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    const v3, 0x11101e9

    if-nez v1, :cond_1a

    .line 503
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v1, v2

    .line 504
    :goto_1b
    sget-boolean v4, Lcom/android/server/pm/HsumBootUserInitializer;->DEBUG:Z

    if-eqz v4, :cond_3e

    .line 505
    sget-object v4, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    .line 507
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 508
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 509
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v5, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 505
    const-string v3, "designateMainUserOnBoot(): defaultValue=%b (because config_designateMainUser=%b and config_isMainUserPermanentAdmin=%b)"

    invoke-static {v4, v3, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    const v0, 0x111012c

    .line 513
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5f

    if-nez v1, :cond_5f

    .line 515
    sget-object v1, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    .line 517
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 515
    const-string v0, "designateMainUserOnBoot(): overriding defaultValue to true (because Flags.demoteMainUser()=%b and config_createInitialUser=%b)"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_60

    :cond_5f
    move v2, v1

    .line 520
    :goto_60
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-nez p0, :cond_67

    return v2

    .line 523
    :cond_67
    const-string p0, "fw.designate_main_user_on_boot"

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static dump(Ljava/io/PrintWriter;Landroid/content/Context;)V
    .registers 5

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 400
    const-string v1, "Designate main user on boot: "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    invoke-static {p1}, Lcom/android/server/pm/HsumBootUserInitializer;->designateMainUserOnBoot(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 402
    const-string v1, "  config_designateMainUser: "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const v1, 0x1110142

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 404
    const-string v1, " config_isMainUserPermanentAdmin: "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const v1, 0x11101e9

    .line 405
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 406
    const-string v1, " fw.designate_main_user_on_boot: "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    const-string v1, "fw.designate_main_user_on_boot"

    const-string v2, "N/A"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    const-string v1, " flag_demote_main_user: "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 409
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 411
    const-string v1, "Create initial user on boot: "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    invoke-static {p1}, Lcom/android/server/pm/HsumBootUserInitializer;->createInitialUserOnBoot(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 413
    const-string p1, "  config_createInitialUser: "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const p1, 0x111012c

    .line 414
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public static getDumpable()Landroid/util/Dumpable;
    .registers 1

    .line 393
    sget-object v0, Lcom/android/server/pm/HsumBootUserInitializer;->sDumpable:Landroid/util/Dumpable;

    return-object v0
.end method

.method public static setDumpable(Lcom/android/server/pm/HsumBootUserInitializer;Landroid/content/Context;)Landroid/util/Dumpable;
    .registers 4

    .line 363
    sget-object v0, Lcom/android/server/pm/HsumBootUserInitializer;->sDumpable:Landroid/util/Dumpable;

    if-eqz v0, :cond_13

    .line 364
    sget-object p1, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDumpable(%s): already set (as %s)"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    sget-object p0, Lcom/android/server/pm/HsumBootUserInitializer;->sDumpable:Landroid/util/Dumpable;

    return-object p0

    .line 367
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 369
    new-instance p0, Lcom/android/server/pm/HsumBootUserInitializer$2;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/HsumBootUserInitializer$2;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    sput-object p0, Lcom/android/server/pm/HsumBootUserInitializer;->sDumpable:Landroid/util/Dumpable;

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 419
    const-string v0, "Effective state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v0, "  mDeviceProvisionedObserver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 421
    const-string v0, "  mShouldDesignateMainUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mShouldDesignateMainUser:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 422
    const-string v0, "  mShouldCreateInitialUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mShouldCreateInitialUser:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public init(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 6

    .line 187
    sget-boolean v0, Lcom/android/server/pm/HsumBootUserInitializer;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 188
    sget-object v0, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mShouldDesignateMainUser:Z

    .line 190
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mShouldCreateInitialUser:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 188
    const-string v2, "init(): mShouldDesignateMainUser=%b, shouldCreateInitialUser=%b, Flags.createInitialUser=%b"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25

    .line 192
    :cond_1e
    sget-object v0, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Initializing"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_25
    invoke-virtual {p0, p1}, Lcom/android/server/pm/HsumBootUserInitializer;->preCreateInitialUserFlagInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    return-void
.end method

.method public final isDeviceProvisioned()Z
    .registers 4

    const/4 v0, 0x0

    .line 444
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_e

    const/4 v1, 0x1

    if-ne p0, v1, :cond_d

    return v1

    :cond_d
    return v0

    :catch_e
    move-exception p0

    .line 447
    sget-object v1, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string v2, "DEVICE_PROVISIONED setting not found."

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public observeDeviceProvisioning()V
    .registers 4

    .line 431
    invoke-virtual {p0}, Lcom/android/server/pm/HsumBootUserInitializer;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 435
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    .line 436
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 435
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final preCreateInitialUserCreateMainUserIfNeeded()V
    .registers 11

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getMainUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1e

    .line 151
    sget-boolean p0, Lcom/android/server/pm/HsumBootUserInitializer;->DEBUG:Z

    if-eqz p0, :cond_1d

    .line 152
    sget-object p0, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Found existing MainUser, userId=%d"

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    return-void

    .line 157
    :cond_1e
    sget-object v0, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Creating a new MainUser"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_25
    iget-object v2, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mUms:Lcom/android/server/pm/UserManagerService;

    const-string v4, "android.os.usertype.full.SECONDARY"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x4002

    const/16 v6, -0x2710

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 168
    const-string v1, "Successfully created MainUser, userId=%d"

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 172
    :cond_47
    const-string p0, "createUserEvenWhenDisallowed() returned null"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_25 .. :try_end_4c} :catch_4d

    return-void

    :catch_4d
    move-exception v0

    move-object p0, v0

    .line 175
    sget-object v0, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Initial bootable MainUser creation failed"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final preCreateInitialUserFlagInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4

    .line 136
    sget-boolean v0, Lcom/android/server/pm/HsumBootUserInitializer;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 137
    sget-object v0, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "preCreateInitialUserFlagInit())"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mShouldDesignateMainUser:Z

    if-eqz v0, :cond_1b

    .line 141
    const-string v0, "createMainUserIfNeeded"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/pm/HsumBootUserInitializer;->preCreateInitialUserCreateMainUserIfNeeded()V

    .line 143
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1b
    return-void
.end method

.method public final switchToBootUser(I)V
    .registers 5

    .line 480
    sget-object v0, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Switching to boot user %d"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_16

    .line 485
    iget-object v1, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->setLastEnteredForegroundTimeToNow(I)V

    .line 487
    :cond_16
    iget-object p0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 490
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Failed to start user %d in foreground"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method public systemRunning(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 6

    .line 338
    invoke-virtual {p0}, Lcom/android/server/pm/HsumBootUserInitializer;->observeDeviceProvisioning()V

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/server/pm/HsumBootUserInitializer;->unlockSystemUser(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 342
    :try_start_6
    const-string v0, "getBootUser"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mUms:Lcom/android/server/pm/UserManagerService;

    iget-object v1, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mPms:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.hardware.type.automotive"

    const/4 v3, 0x0

    .line 344
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    .line 343
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getBootUser(Z)I

    move-result v0

    .line 345
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchToBootUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/server/pm/HsumBootUserInitializer;->switchToBootUser(I)V

    .line 348
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_38
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_6 .. :try_end_38} :catch_39

    return-void

    .line 350
    :catch_39
    sget-object p0, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string p1, "Failed to switch to boot user since there isn\'t one."

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unlockSystemUser(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 6

    .line 455
    sget-object v0, Lcom/android/server/pm/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Unlocking system user"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string/jumbo v1, "unlock-system-user"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 460
    :try_start_d
    const-string v1, "am.startUser"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v1

    .line 463
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v1, :cond_3c

    .line 465
    const-string v1, "could not restart system user in background; trying unlock instead"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v1, "am.unlockUser"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 467
    iget-object p0, p0, Lcom/android/server/pm/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v2, v3, v3, v3}, Lcom/android/server/am/ActivityManagerService;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result p0

    .line 469
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez p0, :cond_3c

    .line 471
    const-string p0, "could not unlock system user either"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_3a

    goto :goto_3c

    :catchall_3a
    move-exception p0

    goto :goto_40

    .line 475
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :goto_40
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 476
    throw p0
.end method
