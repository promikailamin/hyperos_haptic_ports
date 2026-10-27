.class public final Lcom/android/server/crashrecovery/CrashRecoveryHelper;
.super Ljava/lang/Object;
.source "CrashRecoveryHelper.java"


# instance fields
.field public final mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$u7RLnZviLxfbHO9w6ST_8TjtWIg(Lcom/android/server/crashrecovery/CrashRecoveryHelper;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->lambda$registerConnectivityModuleHealthListener$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    return-void
.end method


# virtual methods
.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 95
    iget-object p0, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x400000

    .line 101
    :try_start_8
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/high16 v0, 0x40000000    # 2.0f

    .line 103
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;
    .registers 6

    .line 76
    iget-object v0, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1e

    .line 81
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 82
    new-instance p0, Landroid/content/pm/VersionedPackage;

    invoke-direct {p0, p1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    :cond_1e
    :goto_1e
    return-object v1
.end method

.method public final synthetic lambda$registerConnectivityModuleHealthListener$0(Ljava/lang/String;)V
    .registers 3

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object p1

    if-nez p1, :cond_e

    .line 65
    const-string p0, "CrashRecoveryHelper"

    const-string p1, "NetworkStack failed but could not find its package"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_e
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 69
    iget-object p0, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/PackageWatchdog;->notifyPackageFailure(Ljava/util/List;I)V

    return-void
.end method

.method public registerConnectivityModuleHealthListener()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    new-instance v1, Lcom/android/server/crashrecovery/CrashRecoveryHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/crashrecovery/CrashRecoveryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/crashrecovery/CrashRecoveryHelper;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityModuleConnector;->registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V

    return-void
.end method
