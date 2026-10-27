.class public Landroid/content/pm/PackageInstaller;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionParams;,
        Landroid/content/pm/PackageInstaller$Session;,
        Landroid/content/pm/PackageInstaller$SessionInfo;,
        Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;,
        Landroid/content/pm/PackageInstaller$InstallConstraints;,
        Landroid/content/pm/PackageInstaller$LocalIntentSender;,
        Landroid/content/pm/PackageInstaller$SessionCallback;,
        Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;,
        Landroid/content/pm/PackageInstaller$PackageParsingException;,
        Landroid/content/pm/PackageInstaller$InstallInfo;,
        Landroid/content/pm/PackageInstaller$UnarchivalState;,
        Landroid/content/pm/PackageInstaller$InstallConstraintsResult;,
        Landroid/content/pm/PackageInstaller$PreapprovalDetails;,
        Landroid/content/pm/PackageInstaller$DeveloperVerificationUserResponse;,
        Landroid/content/pm/PackageInstaller$DeveloperVerificationPolicy;,
        Landroid/content/pm/PackageInstaller$DeveloperVerificationFailedReason;,
        Landroid/content/pm/PackageInstaller$UnarchivalStatus;,
        Landroid/content/pm/PackageInstaller$UserActionReason;,
        Landroid/content/pm/PackageInstaller$PackageSourceType;,
        Landroid/content/pm/PackageInstaller$FileLocation;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONFIRM_DEVELOPER_VERIFICATION:Ljava/lang/String; = "android.content.pm.action.CONFIRM_DEVELOPER_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CONFIRM_INSTALL:Ljava/lang/String; = "android.content.pm.action.CONFIRM_INSTALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CONFIRM_PRE_APPROVAL:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PRE_APPROVAL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INSTALL_DEPENDENCY:Ljava/lang/String; = "android.content.pm.action.INSTALL_DEPENDENCY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SESSION_COMMITTED:Ljava/lang/String; = "android.content.pm.action.SESSION_COMMITTED"

.field public static final whitelist ACTION_SESSION_DETAILS:Ljava/lang/String; = "android.content.pm.action.SESSION_DETAILS"

.field public static final whitelist ACTION_SESSION_UPDATED:Ljava/lang/String; = "android.content.pm.action.SESSION_UPDATED"

.field private static final blacklist ACTION_WAIT_INSTALL_CONSTRAINTS:Ljava/lang/String; = "android.content.pm.action.WAIT_INSTALL_CONSTRAINTS"

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

.field public static final whitelist DEVELOPER_VERIFICATION_FAILED_REASON_DEVELOPER_BLOCKED:I = 0x2

.field public static final whitelist DEVELOPER_VERIFICATION_FAILED_REASON_NETWORK_UNAVAILABLE:I = 0x1

.field public static final whitelist DEVELOPER_VERIFICATION_FAILED_REASON_UNKNOWN:I = 0x0

.field public static final whitelist DEVELOPER_VERIFICATION_POLICY_BLOCK_FAIL_CLOSED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVELOPER_VERIFICATION_POLICY_BLOCK_FAIL_OPEN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVELOPER_VERIFICATION_POLICY_BLOCK_FAIL_WARN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVELOPER_VERIFICATION_POLICY_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVELOPER_VERIFICATION_USER_RESPONSE_ABORT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVELOPER_VERIFICATION_USER_RESPONSE_ERROR:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVELOPER_VERIFICATION_USER_RESPONSE_INSTALL_ANYWAY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVELOPER_VERIFICATION_USER_RESPONSE_RETRY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ENABLE_REVOCABLE_FD:Z

.field public static final whitelist EXTRA_CALLBACK:Ljava/lang/String; = "android.content.pm.extra.CALLBACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DATA_LOADER_TYPE:Ljava/lang/String; = "android.content.pm.extra.DATA_LOADER_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DELETE_FLAGS:Ljava/lang/String; = "android.content.pm.extra.DELETE_FLAGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEVELOPER_VERIFICATION_EXTENSION_RESPONSE:Ljava/lang/String; = "android.content.pm.extra.DEVELOPER_VERIFICATION_EXTENSION_RESPONSE"

.field public static final whitelist EXTRA_DEVELOPER_VERIFICATION_FAILURE_REASON:Ljava/lang/String; = "android.content.pm.extra.DEVELOPER_VERIFICATION_FAILURE_REASON"

.field public static final whitelist EXTRA_DEVELOPER_VERIFICATION_LITE_PERFORMED:Ljava/lang/String; = "android.content.pm.extra.DEVELOPER_VERIFICATION_LITE_PERFORMED"

.field public static final whitelist EXTRA_INSTALL_CONSTRAINTS:Ljava/lang/String; = "android.content.pm.extra.INSTALL_CONSTRAINTS"

.field public static final whitelist EXTRA_INSTALL_CONSTRAINTS_RESULT:Ljava/lang/String; = "android.content.pm.extra.INSTALL_CONSTRAINTS_RESULT"

.field public static final greylist-max-o EXTRA_LEGACY_BUNDLE:Ljava/lang/String; = "android.content.pm.extra.LEGACY_BUNDLE"

.field public static final whitelist EXTRA_LEGACY_STATUS:Ljava/lang/String; = "android.content.pm.extra.LEGACY_STATUS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_OTHER_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.OTHER_PACKAGE_NAME"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAME"

.field public static final greylist-max-o EXTRA_PACKAGE_NAMES:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAMES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PRE_APPROVAL:Ljava/lang/String; = "android.content.pm.extra.PRE_APPROVAL"

.field public static final whitelist EXTRA_RESOLVED_BASE_PATH:Ljava/lang/String; = "android.content.pm.extra.RESOLVED_BASE_PATH"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SESSION:Ljava/lang/String; = "android.content.pm.extra.SESSION"

.field public static final whitelist EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "android.content.pm.extra.STATUS"

.field public static final whitelist EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.pm.extra.STATUS_MESSAGE"

.field public static final whitelist EXTRA_STORAGE_PATH:Ljava/lang/String; = "android.content.pm.extra.STORAGE_PATH"

.field public static final whitelist EXTRA_UNARCHIVE_ALL_USERS:Ljava/lang/String; = "android.content.pm.extra.UNARCHIVE_ALL_USERS"

.field public static final whitelist EXTRA_UNARCHIVE_ID:Ljava/lang/String; = "android.content.pm.extra.UNARCHIVE_ID"

.field public static final whitelist EXTRA_UNARCHIVE_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.UNARCHIVE_PACKAGE_NAME"

.field public static final whitelist EXTRA_UNARCHIVE_STATUS:Ljava/lang/String; = "android.content.pm.extra.UNARCHIVE_STATUS"

.field public static final blacklist EXTRA_WARNINGS:Ljava/lang/String; = "android.content.pm.extra.WARNINGS"

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

.field public static final whitelist PACKAGE_SOURCE_DOWNLOADED_FILE:I = 0x4

.field public static final whitelist PACKAGE_SOURCE_LOCAL_FILE:I = 0x3

.field public static final whitelist PACKAGE_SOURCE_OTHER:I = 0x1

.field public static final whitelist PACKAGE_SOURCE_STORE:I = 0x2

.field public static final whitelist PACKAGE_SOURCE_UNSPECIFIED:I = 0x0

.field public static final whitelist REASON_CONFIRM_PACKAGE_CHANGE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REASON_OWNERSHIP_CHANGED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REASON_REMIND_OWNERSHIP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_FAILURE:I = 0x1

.field public static final whitelist STATUS_FAILURE_ABORTED:I = 0x3

.field public static final whitelist STATUS_FAILURE_BLOCKED:I = 0x2

.field public static final whitelist STATUS_FAILURE_CONFLICT:I = 0x5

.field public static final whitelist STATUS_FAILURE_INCOMPATIBLE:I = 0x7

.field public static final whitelist STATUS_FAILURE_INVALID:I = 0x4

.field public static final whitelist STATUS_FAILURE_STORAGE:I = 0x6

.field public static final whitelist STATUS_FAILURE_TIMEOUT:I = 0x8

.field public static final blacklist STATUS_PENDING_STREAMING:I = -0x2

.field public static final whitelist STATUS_PENDING_USER_ACTION:I = -0x1

.field public static final whitelist STATUS_SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageInstaller"

.field public static final whitelist UNARCHIVAL_ERROR_INSTALLER_DISABLED:I = 0x4

.field public static final whitelist UNARCHIVAL_ERROR_INSTALLER_UNINSTALLED:I = 0x5

.field public static final whitelist UNARCHIVAL_ERROR_INSUFFICIENT_STORAGE:I = 0x2

.field public static final whitelist UNARCHIVAL_ERROR_NO_CONNECTIVITY:I = 0x3

.field public static final whitelist UNARCHIVAL_ERROR_USER_ACTION_NEEDED:I = 0x1

.field public static final whitelist UNARCHIVAL_GENERIC_ERROR:I = 0x64

.field public static final whitelist UNARCHIVAL_OK:I = 0x0

.field public static final blacklist UNARCHIVAL_STATUS_UNSET:I = -0x1


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
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 161
    nop

    .line 162
    const-string v0, "fw.revocable_fd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    .line 161
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/IPackageInstaller;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    .line 1023
    const-string v0, "installer cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1024
    iput-object p1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    .line 1025
    iput-object p2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    .line 1026
    iput-object p3, p0, Landroid/content/pm/PackageInstaller;->mAttributionTag:Ljava/lang/String;

    .line 1027
    iput p4, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    .line 1028
    return-void
.end method

.method static synthetic blacklist lambda$checkInstallConstraints$0(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 4

    .line 1460
    const-string/jumbo v0, "result"

    const-class v1, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1461
    return-void
.end method

.method static synthetic blacklist lambda$checkInstallConstraints$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 4

    .line 1459
    new-instance v0, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1462
    return-void
.end method


# virtual methods
.method public whitelist abandonSession(I)V
    .registers 3

    .line 1125
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1128
    nop

    .line 1129
    return-void

    .line 1126
    :catch_7
    move-exception p1

    .line 1127
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1706
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 1707
    return-void
.end method

.method public greylist-max-o addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1720
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 1721
    return-void
.end method

.method public whitelist checkInstallConstraints(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInstaller$InstallConstraints;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/PackageInstaller$InstallConstraintsResult;",
            ">;)V"
        }
    .end annotation

    .line 1455
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    :try_start_6
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p4}, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 1463
    iget-object p3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object p4, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    invoke-interface {p3, p4, p1, p2, v0}, Landroid/content/pm/IPackageInstaller;->checkInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/os/RemoteCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_19

    .line 1467
    nop

    .line 1468
    return-void

    .line 1465
    :catch_19
    move-exception p1

    .line 1466
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist commitSessionAfterInstallConstraintsAreMet(ILandroid/content/IntentSender;Landroid/content/pm/PackageInstaller$InstallConstraints;J)V
    .registers 13

    .line 1529
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0

    .line 1530
    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->seal()V

    .line 1531
    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->fetchPackageNames()Ljava/util/List;

    move-result-object v2

    .line 1532
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 1533
    new-instance v3, Landroid/content/pm/PackageInstaller$LocalIntentSender;

    invoke-direct {v3, v1, p1, v0, p2}, Landroid/content/pm/PackageInstaller$LocalIntentSender;-><init>(Landroid/content/Context;ILandroid/content/pm/IPackageInstallerSession;Landroid/content/IntentSender;)V

    .line 1535
    nop

    .line 1536
    invoke-static {v3}, Landroid/content/pm/PackageInstaller$LocalIntentSender;->-$$Nest$mgetIntentSender(Landroid/content/pm/PackageInstaller$LocalIntentSender;)Landroid/content/IntentSender;

    move-result-object v4

    .line 1535
    move-object v1, p0

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageInstaller;->waitForInstallConstraints(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_23

    .line 1539
    nop

    .line 1540
    return-void

    .line 1537
    :catch_23
    move-exception v0

    move-object p1, v0

    .line 1538
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mAttributionTag:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 1055
    :catch_d
    move-exception p1

    .line 1056
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1052
    :catch_13
    move-exception p1

    .line 1053
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1054
    throw p1
.end method

.method public whitelist getActiveStagedSession()Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1218
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getActiveStagedSessions()Ljava/util/List;

    move-result-object v0

    .line 1219
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    goto :goto_13

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    :goto_13
    return-object v0
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

    .line 1229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getStagedSessions()Ljava/util/List;

    move-result-object v1

    .line 1231
    const/4 v2, 0x0

    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 1232
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1233
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionActive()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1234
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1237
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

    .line 1176
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

    .line 1177
    :catch_d
    move-exception v0

    .line 1178
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final whitelist getDeveloperVerificationPolicy()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1786
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstaller;->getDeveloperVerificationPolicy(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1787
    :catch_9
    move-exception v0

    .line 1788
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getDeveloperVerificationPolicyDelegatePackage()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1846
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstaller;->getDeveloperVerificationPolicyDelegatePackage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1847
    :catch_9
    move-exception v0

    .line 1848
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final whitelist getDeveloperVerificationServiceProvider()Landroid/content/ComponentName;
    .registers 2

    .line 1823
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstaller;->getDeveloperVerificationServiceProvider()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1824
    :catch_7
    move-exception v0

    .line 1825
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getDeveloperVerificationUserConfirmationInfo(I)Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1162
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->getDeveloperVerificationUserConfirmationInfo(I)Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1163
    :catch_7
    move-exception p1

    .line 1164
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
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

    .line 1187
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

    .line 1188
    :catch_f
    move-exception v0

    .line 1189
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3

    .line 1141
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1142
    :catch_7
    move-exception p1

    .line 1143
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getStagedSessions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 1201
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1202
    :catch_b
    move-exception v0

    .line 1203
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist installExistingPackage(Ljava/lang/String;ILandroid/content/IntentSender;)V
    .registers 12

    .line 1359
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1361
    :try_start_6
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v6, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    const/4 v7, 0x0

    const/high16 v3, 0x400000

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_15

    .line 1366
    nop

    .line 1367
    return-void

    .line 1364
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 1365
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist installPackageArchived(Landroid/content/pm/ArchivedPackageInfo;Landroid/content/pm/PackageInstaller$SessionParams;Landroid/content/IntentSender;)V
    .registers 11

    .line 1407
    const-string v0, "archivedPackageInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1408
    const-string/jumbo v0, "sessionParams cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1409
    const-string/jumbo v0, "statusReceiver cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1411
    :try_start_11
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    .line 1412
    invoke-virtual {p1}, Landroid/content/pm/ArchivedPackageInfo;->getParcel()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v2

    iget-object v5, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    new-instance v6, Landroid/os/UserHandle;

    iget p1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1411
    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstaller;->installPackageArchived(Landroid/content/pm/ArchivedPackageParcel;Landroid/content/pm/PackageInstaller$SessionParams;Landroid/content/IntentSender;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_25} :catch_27

    .line 1419
    nop

    .line 1420
    return-void

    .line 1417
    :catch_27
    move-exception v0

    move-object p1, v0

    .line 1418
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist openSession(I)Landroid/content/pm/PackageInstaller$Session;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    :try_start_0
    new-instance v0, Landroid/content/pm/PackageInstaller$Session;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_12

    return-object v0

    .line 1073
    :catch_c
    move-exception p1

    .line 1074
    :try_start_d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_12} :catch_12

    .line 1076
    :catch_12
    move-exception p1

    .line 1077
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1078
    throw p1
.end method

.method public whitelist readInstallInfo(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageInstaller$InstallInfo;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageInstaller$PackageParsingException;
        }
    .end annotation

    .line 2764
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 2765
    nop

    .line 2766
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 2765
    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 2767
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-nez p2, :cond_19

    .line 2770
    new-instance p2, Landroid/content/pm/PackageInstaller$InstallInfo;

    invoke-direct {p2, p1}, Landroid/content/pm/PackageInstaller$InstallInfo;-><init>(Landroid/content/pm/parsing/result/ParseResult;)V

    return-object p2

    .line 2768
    :cond_19
    new-instance p2, Landroid/content/pm/PackageInstaller$PackageParsingException;

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p3

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/content/pm/PackageInstaller$PackageParsingException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public whitelist readInstallInfo(Ljava/io/File;I)Landroid/content/pm/PackageInstaller$InstallInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageInstaller$PackageParsingException;
        }
    .end annotation

    .line 2743
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 2744
    nop

    .line 2745
    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    .line 2744
    invoke-static {v0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 2746
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-nez p2, :cond_19

    .line 2749
    new-instance p2, Landroid/content/pm/PackageInstaller$InstallInfo;

    invoke-direct {p2, p1}, Landroid/content/pm/PackageInstaller$InstallInfo;-><init>(Landroid/content/pm/parsing/result/ParseResult;)V

    return-object p2

    .line 2747
    :cond_19
    new-instance p2, Landroid/content/pm/PackageInstaller$PackageParsingException;

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/pm/PackageInstaller$PackageParsingException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public whitelist registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .registers 3

    .line 1714
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 1715
    return-void
.end method

.method public whitelist registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .registers 6

    .line 1731
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1732
    :try_start_3
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p1, v2}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;-><init>(Landroid/content/pm/PackageInstaller$SessionCallback;Ljava/util/concurrent/Executor;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_22

    .line 1735
    :try_start_d
    iget-object p1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget p2, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {p1, v1, p2}, Landroid/content/pm/IPackageInstaller;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_1c
    .catchall {:try_start_d .. :try_end_14} :catchall_22

    .line 1738
    nop

    .line 1739
    :try_start_15
    iget-object p1, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    monitor-exit v0

    .line 1741
    return-void

    .line 1736
    :catch_1c
    move-exception p1

    .line 1737
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1740
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public greylist-max-o removeSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1746
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 1747
    return-void
.end method

.method public whitelist reportUnarchivalState(Landroid/content/pm/PackageInstaller$UnarchivalState;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2888
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2890
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$UnarchivalState;->getUnarchiveId()I

    move-result v1

    .line 2891
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$UnarchivalState;->getStatus()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$UnarchivalState;->getRequiredStorageBytes()J

    move-result-wide v3

    .line 2892
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$UnarchivalState;->getUserActionIntent()Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    iget p1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2890
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller;->reportUnarchivalStatus(IIJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V
    :try_end_1f
    .catch Landroid/os/ParcelableException; {:try_start_3 .. :try_end_1f} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20

    goto :goto_2e

    .line 2895
    :catch_20
    move-exception v0

    move-object p1, v0

    .line 2896
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2893
    :catch_27
    move-exception v0

    move-object p1, v0

    .line 2894
    const-class v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1, v0}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2897
    :goto_2e
    nop

    .line 2898
    return-void
.end method

.method public whitelist reportUnarchivalStatus(IIJLandroid/app/PendingIntent;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2866
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    new-instance v6, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller;->reportUnarchivalStatus(IIJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V
    :try_end_10
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_10} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    .line 2873
    nop

    .line 2874
    return-void

    .line 2871
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 2872
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2868
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 2869
    const-class p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2870
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist requestArchive(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2796
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    new-instance v5, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    :try_end_11
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_11} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 2803
    nop

    .line 2804
    return-void

    .line 2801
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 2802
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2798
    :catch_1a
    move-exception v0

    move-object p1, v0

    .line 2799
    const-class p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2800
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist requestUnarchive(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2832
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/content/pm/IPackageInstaller;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    :try_end_e
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 2840
    nop

    .line 2841
    return-void

    .line 2838
    :catch_10
    move-exception p1

    .line 2839
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2834
    :catch_16
    move-exception p1

    .line 2835
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2836
    const-class p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2837
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final whitelist setDeveloperVerificationPolicy(I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1807
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageInstaller;->setDeveloperVerificationPolicy(II)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1808
    :catch_9
    move-exception p1

    .line 1809
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setDeveloperVerificationUserResponse(II)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1864
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->setDeveloperVerificationUserResponse(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1868
    goto :goto_a

    .line 1866
    :catch_6
    move-exception p1

    .line 1867
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1869
    :goto_a
    return-void
.end method

.method public whitelist setPermissionsResult(IZ)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1427
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->setPermissionsResult(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1430
    nop

    .line 1431
    return-void

    .line 1428
    :catch_7
    move-exception p1

    .line 1429
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V
    .registers 11

    .line 1330
    const-string/jumbo v0, "versionedPackage cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1332
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

    .line 1336
    nop

    .line 1337
    return-void

    .line 1334
    :catch_14
    move-exception v0

    move-object p1, v0

    .line 1335
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist uninstall(Landroid/content/pm/VersionedPackage;Landroid/content/IntentSender;)V
    .registers 4

    .line 1308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V

    .line 1309
    return-void
.end method

.method public greylist-max-o uninstall(Ljava/lang/String;ILandroid/content/IntentSender;)V
    .registers 6

    .line 1278
    new-instance v0, Landroid/content/pm/VersionedPackage;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/pm/PackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V

    .line 1280
    return-void
.end method

.method public whitelist uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 4

    .line 1260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;ILandroid/content/IntentSender;)V

    .line 1261
    return-void
.end method

.method public whitelist uninstallExistingPackage(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 6

    .line 1381
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1383
    :try_start_6
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/content/pm/IPackageInstaller;->uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_17

    .line 1388
    nop

    .line 1389
    return-void

    .line 1386
    :catch_17
    move-exception p1

    .line 1387
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .registers 6

    .line 1753
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1754
    :try_start_3
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1755
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    .line 1756
    iget-object v3, v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2c

    if-ne v3, p1, :cond_29

    .line 1758
    :try_start_19
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageInstaller;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_23
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2c

    .line 1761
    nop

    .line 1762
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 1759
    :catch_23
    move-exception p1

    .line 1760
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1764
    :cond_29
    :goto_29
    goto :goto_9

    .line 1765
    :cond_2a
    monitor-exit v0

    .line 1766
    return-void

    .line 1765
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public whitelist updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .registers 4

    .line 1092
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1095
    nop

    .line 1096
    return-void

    .line 1093
    :catch_7
    move-exception p1

    .line 1094
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist updateSessionAppLabel(ILjava/lang/CharSequence;)V
    .registers 4

    .line 1107
    if-eqz p2, :cond_7

    :try_start_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    .line 1108
    :goto_8
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->updateSessionAppLabel(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f

    .line 1111
    nop

    .line 1112
    return-void

    .line 1109
    :catch_f
    move-exception p1

    .line 1110
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist waitForInstallConstraints(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInstaller$InstallConstraints;",
            "Landroid/content/IntentSender;",
            "J)V"
        }
    .end annotation

    .line 1497
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller;->waitForInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1501
    nop

    .line 1502
    return-void

    .line 1499
    :catch_d
    move-exception v0

    move-object p1, v0

    .line 1500
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
