.class public Lmiui/content/pm/ApkPreParse;
.super Ljava/lang/Object;
.source "ApkPreParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/ApkPreParse$ParseApkResult;
    }
.end annotation


# static fields
.field public static final blacklist PRE_PARSE_APK_ENABLE:Z

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "apkpreparse"

.field private static final blacklist TAG:Ljava/lang/String; = "ApkPreParse"

.field private static final blacklist mLocalLock:Ljava/lang/Object;

.field private static blacklist sInstance:Lmiui/content/pm/ApkPreParse;


# instance fields
.field private final blacklist mService:Lmiui/content/pm/IApkPreParse;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/content/pm/ApkPreParse;->mLocalLock:Ljava/lang/Object;

    .line 34
    const-string v0, "persist.sys.pre_parse_apk_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/content/pm/ApkPreParse;->PRE_PARSE_APK_ENABLE:Z

    return-void
.end method

.method private constructor blacklist <init>(Lmiui/content/pm/IApkPreParse;)V
    .registers 2
    .param p1, "service"    # Lmiui/content/pm/IApkPreParse;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lmiui/content/pm/ApkPreParse;->mService:Lmiui/content/pm/IApkPreParse;

    .line 40
    return-void
.end method

.method public static blacklist getInstance()Lmiui/content/pm/ApkPreParse;
    .registers 4

    .line 57
    sget-object v0, Lmiui/content/pm/ApkPreParse;->mLocalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lmiui/content/pm/ApkPreParse;->sInstance:Lmiui/content/pm/ApkPreParse;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_20

    .line 60
    :try_start_7
    const-string v1, "apkpreparse"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 61
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lmiui/content/pm/IApkPreParse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IApkPreParse;

    move-result-object v2

    .line 62
    .local v2, "stub":Lmiui/content/pm/IApkPreParse;
    new-instance v3, Lmiui/content/pm/ApkPreParse;

    invoke-direct {v3, v2}, Lmiui/content/pm/ApkPreParse;-><init>(Lmiui/content/pm/IApkPreParse;)V

    sput-object v3, Lmiui/content/pm/ApkPreParse;->sInstance:Lmiui/content/pm/ApkPreParse;
    :try_end_18
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_18} :catch_19
    .catchall {:try_start_7 .. :try_end_18} :catchall_24

    .line 65
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "stub":Lmiui/content/pm/IApkPreParse;
    goto :goto_20

    .line 63
    :catch_19
    move-exception v1

    .line 64
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 67
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_20
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_24

    .line 68
    sget-object v0, Lmiui/content/pm/ApkPreParse;->sInstance:Lmiui/content/pm/ApkPreParse;

    return-object v0

    .line 67
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static blacklist isSupportedPreParseApk()Z
    .registers 1

    .line 48
    sget-boolean v0, Lmiui/content/pm/ApkPreParse;->PRE_PARSE_APK_ENABLE:Z

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/content/pm/PackageInstaller;->isSupportedSpeedInstall()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public blacklist preParseApk(Ljava/lang/String;)Lmiui/content/pm/ApkPreParse$ParseApkResult;
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Lmiui/content/pm/ApkPreParse;->isSupportedPreParseApk()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/content/pm/ApkPreParse;->mService:Lmiui/content/pm/IApkPreParse;

    if-nez v0, :cond_b

    goto :goto_16

    .line 78
    :cond_b
    :try_start_b
    invoke-interface {v0, p1}, Lmiui/content/pm/IApkPreParse;->preParseApk(Ljava/lang/String;)Lmiui/content/pm/ApkPreParse$ParseApkResult;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return-object v0

    .line 79
    :catch_10
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removePreParseApkResult(Ljava/lang/String;)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 87
    invoke-static {}, Lmiui/content/pm/ApkPreParse;->isSupportedPreParseApk()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/content/pm/ApkPreParse;->mService:Lmiui/content/pm/IApkPreParse;

    if-nez v0, :cond_b

    goto :goto_16

    .line 91
    :cond_b
    :try_start_b
    invoke-interface {v0, p1}, Lmiui/content/pm/IApkPreParse;->removePreParseApkResult(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 94
    nop

    .line 95
    return-void

    .line 92
    :catch_10
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method
