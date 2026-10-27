.class Lcom/android/server/wm/SplashScreenExceptionList;
.super Ljava/lang/Object;
.source "SplashScreenExceptionList.java"


# static fields
.field private static final DEBUG:Z

.field private static final KEY_SPLASH_SCREEN_EXCEPTION_LIST:Ljava/lang/String; = "splash_screen_exception_list"

.field private static final LOG_TAG:Ljava/lang/String; = "SplashScreenExceptionList"

.field private static final NAMESPACE:Ljava/lang/String; = "window_manager"

.field private static final OPT_OUT_METADATA_FLAG:Ljava/lang/String; = "android.splashscreen.exception_opt_out"


# instance fields
.field private final mDeviceConfigExcludedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/SplashScreenExceptionList;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    .line 60
    const-string/jumbo v0, "window_manager"

    const-string/jumbo v1, "splash_screen_exception_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SplashScreenExceptionList;->updateDeviceConfig(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SplashScreenExceptionList;)V

    iput-object v1, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 63
    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 65
    return-void
.end method

.method private static isOptedOut(Ljava/util/function/Supplier;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .line 108
    .local p0, "infoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 109
    return v0

    .line 111
    :cond_4
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 112
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1b

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1b

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.splashscreen.exception_opt_out"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method private parseDeviceConfigPackageList(Ljava/lang/String;)V
    .registers 9
    .param p1, "rawList"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 119
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "packages":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 121
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "packageNameTrimmed":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_23

    .line 123
    iget-object v6, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageNameTrimmed":Ljava/lang/String;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 126
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_26
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method


# virtual methods
.method public isException(Ljava/lang/String;ILjava/util/function/Supplier;)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .line 85
    .local p3, "infoSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    const/16 v1, 0x21

    if-le p2, v1, :cond_6

    .line 86
    return v0

    .line 89
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_9
    sget-boolean v2, Lcom/android/server/wm/SplashScreenExceptionList;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    .line 91
    const-string v2, "SplashScreenExceptionList"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SplashScreen checking exception for package %s (target sdk:%d) -> %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    .line 94
    invoke-virtual {v8, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 91
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 97
    monitor-exit v1

    return v0

    .line 99
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_44

    .line 100
    invoke-static {p3}, Lcom/android/server/wm/SplashScreenExceptionList;->isOptedOut(Ljava/util/function/Supplier;)Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    .line 99
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method synthetic lambda$new$0$com-android-server-wm-SplashScreenExceptionList(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 61
    nop

    .line 62
    const-string/jumbo v0, "splash_screen_exception_list"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SplashScreenExceptionList;->updateDeviceConfig(Ljava/lang/String;)V

    return-void
.end method

.method updateDeviceConfig(Ljava/lang/String;)V
    .registers 2
    .param p1, "values"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;->parseDeviceConfigPackageList(Ljava/lang/String;)V

    .line 70
    return-void
.end method
