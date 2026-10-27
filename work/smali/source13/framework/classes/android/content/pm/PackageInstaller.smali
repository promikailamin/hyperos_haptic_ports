.class public Landroid/content/pm/PackageInstaller;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionInfo;,
        Landroid/content/pm/PackageInstaller$SessionParams;,
        Landroid/content/pm/PackageInstaller$Session;,
        Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;,
        Landroid/content/pm/PackageInstaller$SessionCallback;,
        Landroid/content/pm/PackageInstaller$PackageSourceType;,
        Landroid/content/pm/PackageInstaller$FileLocation;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_CONFIRM_INSTALL:Ljava/lang/String; = "android.content.pm.action.CONFIRM_INSTALL"

.field public static final whitelist ACTION_SESSION_COMMITTED:Ljava/lang/String; = "android.content.pm.action.SESSION_COMMITTED"

.field public static final whitelist ACTION_SESSION_DETAILS:Ljava/lang/String; = "android.content.pm.action.SESSION_DETAILS"

.field public static final whitelist ACTION_SESSION_UPDATED:Ljava/lang/String; = "android.content.pm.action.SESSION_UPDATED"

.field public static final blacklist COLLECTGNI_CERTS_TIME:Ljava/lang/String; = "collectingCerts"

.field public static final blacklist COM_XIAOMI_MARKET:Ljava/lang/String; = "com.xiaomi.market"

.field public static final whitelist DATA_LOADER_TYPE_INCREMENTAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_LOADER_TYPE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_LOADER_TYPE_STREAMING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DEFAULT_CHECKSUMS:I = 0x7f

.field public static final blacklist DEXOPT_TIME:Ljava/lang/String; = "dexopt"

.field public static final greylist-max-o ENABLE_REVOCABLE_FD:Z

.field public static final blacklist EXTRACT_NATIVELIB_TIME:Ljava/lang/String; = "extractNativeLib"

.field public static final greylist-max-o EXTRA_CALLBACK:Ljava/lang/String; = "android.content.pm.extra.CALLBACK"

.field public static final whitelist EXTRA_DATA_LOADER_TYPE:Ljava/lang/String; = "android.content.pm.extra.DATA_LOADER_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_LEGACY_BUNDLE:Ljava/lang/String; = "android.content.pm.extra.LEGACY_BUNDLE"

.field public static final greylist-max-o EXTRA_LEGACY_STATUS:Ljava/lang/String; = "android.content.pm.extra.LEGACY_STATUS"

.field public static final whitelist EXTRA_OTHER_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.OTHER_PACKAGE_NAME"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAME"

.field public static final greylist-max-o EXTRA_PACKAGE_NAMES:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAMES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SESSION:Ljava/lang/String; = "android.content.pm.extra.SESSION"

.field public static final whitelist EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "android.content.pm.extra.STATUS"

.field public static final whitelist EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.pm.extra.STATUS_MESSAGE"

.field public static final whitelist EXTRA_STORAGE_PATH:Ljava/lang/String; = "android.content.pm.extra.STORAGE_PATH"

.field public static final blacklist FILECOPYING_TIME:Ljava/lang/String; = "fileCopying"

.field public static final blacklist GOOGLE_VERIFICATION_TIME:Ljava/lang/String; = "googleVerification"

.field public static final whitelist LOCATION_DATA_APP:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LOCATION_MEDIA_DATA:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LOCATION_MEDIA_OBB:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MIUI_VERIFICATION_TIME:Ljava/lang/String; = "miuiVerification"

.field public static final whitelist PACKAGE_SOURCE_DOWNLOADED_FILE:I = 0x4

.field public static final whitelist PACKAGE_SOURCE_LOCAL_FILE:I = 0x3

.field public static final whitelist PACKAGE_SOURCE_OTHER:I = 0x1

.field public static final whitelist PACKAGE_SOURCE_STORE:I = 0x2

.field public static final whitelist PACKAGE_SOURCE_UNSPECIFIED:I = 0x0

.field public static final blacklist SPEED_INSTALL_EXTERNAL_PATH:Ljava/lang/String; = ".siexternal"

.field public static final blacklist SPEED_INSTALL_PROPERTY:Ljava/lang/String; = "ro.miui.pm.install.speedinstall"

.field public static final whitelist STATUS_FAILURE:I = 0x1

.field public static final whitelist STATUS_FAILURE_ABORTED:I = 0x3

.field public static final whitelist STATUS_FAILURE_BLOCKED:I = 0x2

.field public static final whitelist STATUS_FAILURE_CONFLICT:I = 0x5

.field public static final whitelist STATUS_FAILURE_INCOMPATIBLE:I = 0x7

.field public static final whitelist STATUS_FAILURE_INVALID:I = 0x4

.field public static final whitelist STATUS_FAILURE_STORAGE:I = 0x6

.field public static final blacklist STATUS_PENDING_STREAMING:I = -0x2

.field public static final whitelist STATUS_PENDING_USER_ACTION:I = -0x1

.field public static final whitelist STATUS_SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageInstaller"

.field public static final blacklist TOTAL_INSTALLATION_TIME:Ljava/lang/String; = "total"


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final greylist-max-o mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInstaller:Landroid/content/pm/IPackageInstaller;

.field private final greylist-max-o mInstallerPackageName:Ljava/lang/String;

.field private final greylist-max-o mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetSpeedInstallExternaDir(Landroid/content/Context;)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/PackageInstaller;->getSpeedInstallExternaDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 130
    nop

    .line 131
    const-string v0, "fw.revocable_fd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    .line 130
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/IPackageInstaller;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "installer"    # Landroid/content/pm/IPackageInstaller;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "installerAttributionTag"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    .line 509
    iput-object p1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    .line 510
    iput-object p2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    .line 511
    iput-object p3, p0, Landroid/content/pm/PackageInstaller;->mAttributionTag:Ljava/lang/String;

    .line 512
    iput p4, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    .line 513
    return-void
.end method

.method public static blacklist getSpeedInstallBaseFilePath()Ljava/lang/String;
    .registers 2

    .line 906
    const-string/jumbo v0, "ro.miui.pm.install.speedinstall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSpeedInstallDirForPackage(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1032
    invoke-static {}, Landroid/content/pm/PackageInstaller;->getSpeedInstallBaseFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_13

    .line 1036
    :cond_d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .local v1, "dir":Ljava/io/File;
    return-object v1

    .line 1034
    .end local v1    # "dir":Ljava/io/File;
    :cond_13
    :goto_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getSpeedInstallExternaDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 1043
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1044
    .local v1, "dir":Ljava/io/File;
    if-nez v1, :cond_8

    .line 1045
    return-object v0

    .line 1047
    :cond_8
    new-instance v0, Ljava/io/File;

    const-string v2, ".siexternal"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1048
    .local v0, "externalPath":Ljava/io/File;
    return-object v0
.end method

.method public static blacklist isSupportedSpeedInstall()Z
    .registers 2

    .line 865
    const-string/jumbo v0, "ro.miui.pm.install.speedinstall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    .line 869
    :cond_11
    const/4 v1, 0x1

    return v1

    .line 867
    :cond_13
    :goto_13
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isSupportedSpeedInstallV2()Z
    .registers 2

    .line 881
    const-string/jumbo v0, "ro.miui.pm.install.speedinstall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    .line 885
    :cond_11
    const/4 v1, 0x1

    return v1

    .line 883
    :cond_13
    :goto_13
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist abandonSession(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 610
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 613
    nop

    .line 614
    return-void

    .line 611
    :catch_7
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1160
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 1161
    return-void
.end method

.method public greylist-max-o addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1174
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 1175
    return-void
.end method

.method public whitelist createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    .registers 6
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mAttributionTag:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 540
    :catch_d
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 537
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 539
    throw v0
.end method

.method public whitelist getActiveStagedSession()Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getActiveStagedSessions()Ljava/util/List;

    move-result-object v0

    .line 683
    .local v0, "activeSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_13

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    :goto_13
    return-object v1
.end method

.method public whitelist getActiveStagedSessions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v0, "activeStagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getStagedSessions()Ljava/util/List;

    move-result-object v1

    .line 695
    .local v1, "stagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 696
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 697
    .local v3, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionActive()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 698
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    .end local v3    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 701
    .end local v2    # "i":I
    :cond_22
    return-object v0
.end method

.method public whitelist getAllSessions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 640
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstaller;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 641
    :catch_d
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMySessions()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 651
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageInstaller;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 652
    :catch_f
    move-exception v0

    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 4
    .param p1, "sessionId"    # I

    .line 626
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 627
    :catch_7
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSpeedInstallExternalFilePath()Ljava/lang/String;
    .registers 8

    .line 970
    invoke-static {}, Landroid/content/pm/PackageInstaller;->isSupportedSpeedInstall()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 971
    return-object v1

    .line 974
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getSpeedInstallFilePath()Ljava/lang/String;

    .line 975
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 976
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0}, Landroid/content/pm/PackageInstaller;->getSpeedInstallExternaDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 977
    .local v2, "targetPath":Ljava/io/File;
    if-eqz v2, :cond_35

    .line 978
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_22

    .line 979
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_22

    .line 980
    return-object v1

    .line 984
    :cond_22
    :try_start_22
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 985
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    .line 984
    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageInstaller;->getSpeedInstallExternalFilePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    return-object v1

    .line 986
    :catch_33
    move-exception v3

    .line 987
    .local v3, "e":Ljava/lang/Exception;
    return-object v1

    .line 990
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_35
    return-object v1
.end method

.method public blacklist getSpeedInstallFilePath()Ljava/lang/String;
    .registers 6

    .line 928
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 929
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/PackageInstaller;->getSpeedInstallDirForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 930
    .local v1, "dir":Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 931
    return-object v2

    .line 933
    :cond_10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 934
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 935
    return-object v2

    .line 939
    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1ff

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_2c

    .line 942
    nop

    .line 943
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 940
    :catch_2c
    move-exception v3

    .line 941
    .local v3, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method public whitelist getStagedSessions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 665
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 666
    :catch_b
    move-exception v0

    .line 667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist installExistingPackage(Ljava/lang/String;ILandroid/content/IntentSender;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installReason"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 815
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 817
    :try_start_6
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    const/high16 v3, 0x400000

    iget v6, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    const/4 v7, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_15

    .line 822
    nop

    .line 823
    return-void

    .line 820
    :catch_15
    move-exception v0

    .line 821
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openSession(I)Landroid/content/pm/PackageInstaller$Session;
    .registers 4
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    :try_start_0
    new-instance v0, Landroid/content/pm/PackageInstaller$Session;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 561
    :catch_c
    move-exception v0

    goto :goto_14

    .line 558
    :catch_e
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/content/pm/PackageInstaller;
    .end local p1    # "sessionId":I
    throw v1
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_14} :catch_c

    .line 562
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/content/pm/PackageInstaller;
    .restart local p1    # "sessionId":I
    :goto_14
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 563
    throw v0
.end method

.method public whitelist registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1168
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 1169
    return-void
.end method

.method public whitelist registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1185
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1186
    :try_start_3
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p1, v2}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;-><init>(Landroid/content/pm/PackageInstaller$SessionCallback;Ljava/util/concurrent/Executor;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    .line 1189
    .local v1, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :try_start_d
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v2, v1, v3}, Landroid/content/pm/IPackageInstaller;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_1d
    .catchall {:try_start_d .. :try_end_14} :catchall_23

    .line 1192
    nop

    .line 1193
    :try_start_15
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    nop

    .end local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    monitor-exit v0

    .line 1195
    return-void

    .line 1190
    .restart local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :catch_1d
    move-exception v2

    .line 1191
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/pm/PackageInstaller;
    .end local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v3

    .line 1194
    .end local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/PackageInstaller;
    .restart local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public greylist-max-o removeSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1200
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 1201
    return-void
.end method

.method public blacklist removeSpeedInstallExternalFilePath()V
    .registers 5

    .line 1006
    invoke-static {}, Landroid/content/pm/PackageInstaller;->isSupportedSpeedInstall()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1007
    return-void

    .line 1009
    :cond_7
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 1011
    .local v0, "ctx":Landroid/content/Context;
    :try_start_b
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageInstaller;->removeSpeedInstallExternalFilePath(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_17

    .line 1013
    goto :goto_18

    .line 1012
    :catch_17
    move-exception v1

    .line 1016
    :goto_18
    invoke-static {v0}, Landroid/content/pm/PackageInstaller;->getSpeedInstallExternaDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 1017
    .local v1, "externalFile":Ljava/io/File;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1018
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1020
    :cond_27
    return-void
.end method

.method public whitelist setPermissionsResult(IZ)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 850
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->setPermissionsResult(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 853
    nop

    .line 854
    return-void

    .line 851
    :catch_7
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V
    .registers 11
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "flags"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 788
    const-string/jumbo v0, "versionedPackage cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 790
    :try_start_6
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v6, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_14

    .line 794
    nop

    .line 795
    return-void

    .line 792
    :catch_14
    move-exception v0

    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist uninstall(Landroid/content/pm/VersionedPackage;Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 766
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V

    .line 767
    return-void
.end method

.method public greylist-max-o uninstall(Ljava/lang/String;ILandroid/content/IntentSender;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 738
    new-instance v0, Landroid/content/pm/VersionedPackage;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/pm/PackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V

    .line 740
    return-void
.end method

.method public whitelist uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 722
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;ILandroid/content/IntentSender;)V

    .line 723
    return-void
.end method

.method public whitelist uninstallExistingPackage(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 835
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 837
    :try_start_6
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/content/pm/IPackageInstaller;->uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_17

    .line 842
    nop

    .line 843
    return-void

    .line 840
    :catch_17
    move-exception v0

    .line 841
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1207
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1208
    :try_start_3
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    .line 1210
    .local v2, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    iget-object v3, v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2c

    if-ne v3, p1, :cond_29

    .line 1212
    :try_start_19
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageInstaller;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_23
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2c

    .line 1215
    nop

    .line 1216
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 1213
    :catch_23
    move-exception v3

    .line 1214
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/content/pm/PackageInstaller;
    .end local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    throw v4

    .line 1218
    .end local v2    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/PackageInstaller;
    .restart local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    :cond_29
    :goto_29
    goto :goto_9

    .line 1219
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :cond_2a
    monitor-exit v0

    .line 1220
    return-void

    .line 1219
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public whitelist updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "appIcon"    # Landroid/graphics/Bitmap;

    .line 577
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 580
    nop

    .line 581
    return-void

    .line 578
    :catch_7
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateSessionAppLabel(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "appLabel"    # Ljava/lang/CharSequence;

    .line 592
    if-eqz p2, :cond_9

    :try_start_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 594
    :catch_7
    move-exception v0

    goto :goto_11

    .line 592
    :cond_9
    const/4 v0, 0x0

    .line 593
    .local v0, "val":Ljava/lang/String;
    :goto_a
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1, v0}, Landroid/content/pm/IPackageInstaller;->updateSessionAppLabel(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_7

    .line 596
    .end local v0    # "val":Ljava/lang/String;
    nop

    .line 597
    return-void

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    :goto_11
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
