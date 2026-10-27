.class public Lcom/android/server/pm/PackageInstallerService;
.super Landroid/content/pm/IPackageInstaller$Stub;
.source "PackageInstallerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageSessionProvider;


# static fields
.field public static final DEBUG:Z

.field public static final INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

.field public static final LOGD:Z

.field public static final sStageFilter:Ljava/io/FilenameFilter;


# instance fields
.field public final mAllocatedSessions:Landroid/util/SparseBooleanArray;

.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public mAppOps:Landroid/app/AppOpsManager;

.field public volatile mBypassNextAllowedApexUpdateCheck:Z

.field public volatile mBypassNextStagedInstallerCheck:Z

.field public final mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

.field public final mContext:Landroid/content/Context;

.field public final mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

.field public final mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

.field public volatile mDisableVerificationForUid:I

.field public final mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

.field public final mHistoricalSessions:Ljava/util/List;

.field public final mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

.field public final mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

.field public final mInstallHandler:Landroid/os/Handler;

.field public final mInstallThread:Landroid/os/HandlerThread;

.field public final mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field public final mLegacySessions:Landroid/util/SparseBooleanArray;

.field public volatile mOkToSendBroadcasts:Z

.field public final mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRandom:Ljava/util/Random;

.field public final mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

.field public final mSessions:Landroid/util/SparseArray;

.field public final mSessionsDir:Ljava/io/File;

.field public final mSessionsFile:Landroid/util/AtomicFile;

.field public final mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

.field public final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field public final mStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method public static synthetic $r8$lambda$5BGglUfl9HvL3D5V1sZPxjvg-qk(Lcom/android/server/pm/PackageInstallerService;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->lambda$isSystemAppProtectionRoleHolder$5(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5JSFIXErxJYX5g1H-eDAdRoQbDM(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/VersionedPackage;Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;II)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageInstallerService;->lambda$uninstall$4(Landroid/content/pm/VersionedPackage;Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$9JcdCkjEXbZhEv1lLVaJ7PYSs1o(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->lambda$getStagedSessions$1(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IsWteF3jo_zvtDryir4OvsCAgBU(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->lambda$getHistoricalSessions$3(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KKlPn0QYNfoCKBd_pb1NZFXk-RQ(II)Z
    .registers 2

    .line 1795
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$OhY-ca6Inhh15HdNzu2YfcJrzYU(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->lambda$getAllSessions$2(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mF4Pn7tOjO0TfGLhqagHksstTYE(Lcom/android/server/pm/PackageInstallerService;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;Landroid/content/pm/PackageInstaller$InstallConstraintsResult;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageInstallerService;->lambda$waitForInstallConstraints$7(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;Landroid/content/pm/PackageInstaller$InstallConstraintsResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$swWvh-INaudF9yud2iLs6ys3UHc(Landroid/os/RemoteCallback;Landroid/content/pm/PackageInstaller$InstallConstraintsResult;)V
    .registers 4

    .line 1759
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1760
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1761
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u9klzBPJX7UOBx7yrSKn10eR-r8(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;Landroid/content/IntentSender;Landroid/content/pm/ArchivedPackageParcel;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerService;->lambda$installPackageArchived$9(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;Landroid/content/IntentSender;Landroid/content/pm/ArchivedPackageParcel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wY7L0Z422az4MHHhP9QFuryN2S8(Lcom/android/server/pm/PackageInstallerService;)Ljava/lang/Boolean;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->lambda$new$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstallDependencyHelper(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/InstallDependencyHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstallHandler(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOkToSendBroadcasts(Lcom/android/server/pm/PackageInstallerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessions(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsWriteRequest(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/utils/RequestThrottle;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStagingManager(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/StagingManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbuildAppIconFile(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monBroadcastReady(Lcom/android/server/pm/PackageInstallerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->onBroadcastReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveActiveSession(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSessionUpdatedBroadcast(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/PackageInstaller$SessionInfo;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->sendSessionUpdatedBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldFilterSession(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 170
    const-string v0, "PackageInstaller"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    .line 172
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageInstallerService;->DEBUG:Z

    .line 216
    const-string v0, "android.permission.USE_FULL_SCREEN_INTENT"

    const-string v1, "android.permission.POST_PROMOTED_NOTIFICATIONS"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    .line 287
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/util/function/Supplier;Landroid/content/ComponentName;)V
    .registers 16

    .line 334
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 241
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    const/4 v0, -0x1

    .line 243
    iput v0, p0, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    .line 256
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 264
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    .line 267
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    .line 270
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 277
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 281
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    .line 285
    new-instance v0, Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-direct {v0}, Lcom/android/server/pm/SilentUpdatePolicy;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 297
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    .line 325
    new-instance v0, Lcom/android/server/pm/utils/RequestThrottle;

    .line 326
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/utils/RequestThrottle;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 336
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 337
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 339
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageInstaller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 340
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 342
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    .line 344
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 346
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    .line 347
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "install_sessions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "package-session"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    .line 349
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "install_sessions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 352
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 353
    new-instance v2, Lcom/android/server/pm/StagingManager;

    invoke-direct {v2, p1}, Lcom/android/server/pm/StagingManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 354
    new-instance v5, Lcom/android/server/pm/PackageSessionVerifier;

    .line 355
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    move-object v6, p1

    move-object v7, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageSessionVerifier;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Ljava/util/function/Supplier;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

    .line 356
    new-instance p1, Lcom/android/server/pm/GentleUpdateHelper;

    .line 357
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Lcom/android/server/pm/AppStateHelper;

    invoke-direct {p3, v6}, Lcom/android/server/pm/AppStateHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v6, p2, p3}, Lcom/android/server/pm/GentleUpdateHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/AppStateHelper;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    .line 358
    new-instance p1, Lcom/android/server/pm/PackageArchiver;

    invoke-direct {p1, v6, v7}, Lcom/android/server/pm/PackageArchiver;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 359
    invoke-static {v6, v1, p4}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->getInstance(Landroid/content/Context;Landroid/os/Handler;Landroid/content/ComponentName;)Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    .line 361
    new-instance p1, Lcom/android/server/pm/InstallDependencyHelper;

    iget-object p2, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 362
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p2

    invoke-direct {p1, v6, p2, p0}, Lcom/android/server/pm/InstallDependencyHelper;-><init>(Landroid/content/Context;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/PackageInstallerService;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    .line 364
    const-class p1, Lcom/android/server/SystemServiceManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/SystemServiceManager;

    new-instance p2, Lcom/android/server/pm/PackageInstallerService$Lifecycle;

    invoke-direct {p2, v6, p0}, Lcom/android/server/pm/PackageInstallerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;)V

    invoke-virtual {p1, p2}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    return-void
.end method

.method public static buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 8

    const/4 v0, 0x0

    .line 2339
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/32 v2, 0x4000000

    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-object p3, v0

    :goto_e
    if-eqz p3, :cond_7a

    .line 2343
    iget-object v1, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_15

    goto :goto_7a

    .line 2347
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 2348
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2349
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2350
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2352
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2348
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2354
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2355
    new-instance p3, Landroid/app/Notification$Builder;

    const-string v1, "DEVICE_ADMIN_ALERTS"

    invoke-direct {p3, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x10803eb

    .line 2356
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 2357
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x106001c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 2359
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 2360
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 2361
    invoke-virtual {p2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 2362
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 2363
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    .line 2344
    :cond_7a
    :goto_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notification not built for package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstaller"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getSessionCount(Landroid/util/SparseArray;I)I
    .registers 6

    .line 2199
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_19

    .line 2201
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 2202
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v3

    if-ne v3, p1, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
    return v2
.end method

.method public static isStageName(Ljava/lang/String;)Z
    .registers 6

    .line 1361
    const-string/jumbo v0, "vmdl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ".tmp"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v2

    .line 1362
    :goto_16
    const-string/jumbo v4, "smdl"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v2

    .line 1363
    :goto_28
    const-string/jumbo v4, "smdl2tmp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_37

    if-nez v1, :cond_37

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    return v2

    :cond_37
    :goto_37
    return v3
.end method

.method public static isValidPackageName(Ljava/lang/String;)Z
    .registers 4

    .line 1381
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    return v2

    :cond_a
    const/4 v0, 0x1

    .line 1385
    invoke-static {p0, v2, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public static varargs newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 3

    .line 2367
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p0, :cond_e

    .line 2369
    array-length v1, p0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 2370
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_e
    return-object v0
.end method

.method public static prepareStageDir(Ljava/io/File;)V
    .registers 6

    .line 1416
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_88

    .line 1421
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 1422
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_16} :catch_70

    .line 1428
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1429
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1430
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-static {v0, v1}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to SELinux.restorecon session dir, path: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], ctx: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]. Retrying via SELinux.fileSelabelLookup/SELinux.setFileContext: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_47

    .line 1435
    const-string v0, "SUCCESS"

    goto :goto_49

    :cond_47
    const-string v0, "FAILURE"

    :goto_49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1432
    const-string v1, "PackageInstaller"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_58

    goto :goto_6f

    .line 1437
    :cond_58
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restorecon session dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    :goto_6f
    return-void

    :catch_70
    move-exception v0

    .line 1425
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare session dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1417
    :cond_88
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session dir already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tryParseSessionId(Ljava/lang/String;)I
    .registers 3

    .line 1369
    const-string/jumbo v0, "vmdl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, ".tmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1373
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    .line 1372
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1374
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1370
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a temporary session directory"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyReportUnarchiveStatusInput(IJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 12

    .line 1996
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p4, 0x1

    if-ne p0, p4, :cond_9

    .line 1998
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-wide/16 v0, 0x0

    const/4 p3, 0x2

    if-ne p0, p3, :cond_1b

    cmp-long v2, p1, v0

    if-lez v2, :cond_13

    goto :goto_1b

    .line 2001
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Insufficient storage error set, but requiredStorageBytes unspecified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    if-eq p0, p3, :cond_37

    cmp-long p1, p1, v0

    if-gtz p1, :cond_22

    goto :goto_37

    .line 2005
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2006
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "requiredStorageBytes set, but error is %s."

    invoke-static {p2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    :goto_37
    const/4 p1, 0x0

    .line 2010
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2011
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2012
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 p1, 0x3

    .line 2013
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 p1, 0x4

    .line 2014
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 p1, 0x5

    .line 2015
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 p1, 0x64

    .line 2016
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2009
    invoke-static/range {v0 .. v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2016
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    return-void

    .line 2017
    :cond_68
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid status code passed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abandonSession(I)V
    .registers 5

    .line 1299
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_1a

    .line 1301
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 1304
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 1305
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    goto :goto_31

    .line 1302
    :cond_1a
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller has no access to session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1305
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_18

    throw p0
.end method

.method public addDeveloperVerificationExperiment(Ljava/lang/String;I[I)V
    .registers 7

    .line 2148
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2149
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2152
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2153
    :goto_11
    array-length v2, p3

    if-ge v1, v2, :cond_20

    .line 2154
    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2156
    :cond_20
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->addExperiment(Ljava/lang/String;ILjava/util/List;)V

    return-void

    .line 2150
    :cond_26
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to add developer verification experiment"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5

    .line 672
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1d

    .line 673
    const-string v0, "PackageInstaller"

    const-string v1, "Historical sessions size reaches threshold, clear the oldest"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x190

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 676
    :cond_1d
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->createHistoricalSession()Lcom/android/server/pm/PackageInstallerHistoricalSession;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p1

    .line 680
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 681
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 680
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final allocateSessionIdLocked()I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1350
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1351
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1352
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v2

    :cond_1b
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_23

    move v1, v2

    goto :goto_2

    .line 1357
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to allocate session ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;
    .registers 6

    .line 539
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter p2

    .line 541
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v0

    .line 542
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 543
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 544
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_14} :catch_18
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 545
    :try_start_14
    monitor-exit p2

    return-object p0

    :catchall_16
    move-exception p0

    goto :goto_1f

    :catch_18
    move-exception p0

    .line 547
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 549
    :goto_1f
    monitor-exit p2
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_16

    throw p0
.end method

.method public final buildAppIconFile(I)Ljava/io/File;
    .registers 5

    .line 732
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_icon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final buildExternalStageCid(I)Ljava/lang/String;
    .registers 3

    .line 1443
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "smdl"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;
    .registers 5

    .line 1403
    iget-boolean v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_57

    iget v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    goto :goto_57

    .line 1407
    :cond_c
    iget-object p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1408
    sget-boolean p2, Lcom/android/server/pm/PackageInstallerService;->DEBUG:Z

    if-eqz p2, :cond_56

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerService;->tryParseSessionId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    goto :goto_56

    .line 1409
    :cond_2d
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "session folder format is off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_56
    :goto_56
    return-object p0

    .line 1404
    :cond_57
    :goto_57
    iget-object p0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1405
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "session_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public final buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;
    .registers 5

    .line 1398
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1399
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vmdl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public bypassNextAllowedApexUpdateCheck(Z)V
    .registers 3

    .line 1837
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1840
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    return-void

    .line 1838
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to bypass allowed apex update check"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bypassNextStagedInstallerCheck(Z)V
    .registers 3

    .line 1829
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1832
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    return-void

    .line 1830
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to bypass staged installer check"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/os/RemoteCallback;)V
    .registers 11

    .line 1755
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1756
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService;->checkInstallConstraintsInternal(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;J)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 1758
    new-instance p1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda6;

    invoke-direct {p1, p4}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda6;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final checkInstallConstraintsInternal(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;J)Ljava/util/concurrent/CompletableFuture;
    .registers 11

    .line 1728
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1732
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1733
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1734
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1738
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_54

    .line 1739
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1740
    invoke-interface {v0, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 1741
    invoke-virtual {p0, v4, p1, v1, v3}, Lcom/android/server/pm/PackageInstallerService;->isValidForInstallConstraints(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_24

    .line 1743
    :cond_3d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller has no access to package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1748
    :cond_54
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/pm/GentleUpdateHelper;->checkInstallConstraints(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;J)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 1735
    :cond_5b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The installerPackageName set by the caller doesn\'t match the caller\'s own package name."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 1319
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallFlags()I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    goto :goto_26

    .line 1322
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    return v2

    .line 1326
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_26

    return v2

    :cond_26
    :goto_26
    return v0
.end method

.method public cleanupDraftIfUnclaimed(I)V
    .registers 4

    .line 1245
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1246
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1247
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallFlags()I

    move-result p1

    const/high16 v1, 0x20000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_1c

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 1250
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public clearDeveloperVerificationExperiment(Ljava/lang/String;)V
    .registers 3

    .line 2161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2162
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2165
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->clearExperiment(Ljava/lang/String;)V

    return-void

    .line 2163
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to clear developer verification experiment"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12

    .line 739
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    .line 740
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 742
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need the com.android.permission.USE_INSTALLER_V2 permission to use a data loader"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 748
    :cond_17
    :goto_17
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    .line 749
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    move-exception v0

    move-object p0, v0

    .line 752
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 44

    move-object/from16 v4, p0

    move-object/from16 v12, p1

    .line 759
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    const/4 v9, 0x1

    .line 760
    const-string v10, "createSession"

    const/4 v8, 0x1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v5 .. v10}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v10, v6

    .line 762
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "no_install_apps"

    invoke-virtual {v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c0

    .line 769
    iget v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_43

    .line 770
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    .line 772
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_43

    .line 774
    :cond_3b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "INSTALL_REASON_ROLLBACK requires the MANAGE_ROLLBACKS permission or the TEST_MANAGE_ROLLBACKS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_43
    :goto_43
    iget-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->isValidPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 783
    iput-object v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 786
    :cond_50
    iget-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 790
    iget-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_68

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->isValidPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 792
    iput-object v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    :cond_68
    if-eqz p2, :cond_72

    .line 796
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageInstallerService;->isValidPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72

    move-object v0, v1

    goto :goto_74

    :cond_72
    move-object/from16 v0, p2

    .line 801
    :goto_74
    iget-object v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    if-eqz v3, :cond_79

    goto :goto_7a

    :cond_79
    move-object v3, v0

    .line 804
    :goto_7a
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v6, :cond_df

    .line 805
    invoke-static {v12}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v6

    if-nez v6, :cond_df

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 806
    invoke-static {v10, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isAdoptedShell(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_91

    goto :goto_df

    :cond_91
    if-eq v10, v2, :cond_98

    .line 814
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v6, v10, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 818
    :cond_98
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ad

    .line 819
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v6, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_ad

    .line 821
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v6, v10, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 825
    :cond_ad
    iget v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v11, -0x8000061

    and-int/2addr v6, v11

    or-int/2addr v6, v8

    .line 828
    iput v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v11, 0x10000

    and-int/2addr v6, v11

    if-eqz v6, :cond_cb

    .line 829
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 830
    invoke-virtual {v6, v5, v10}, Lcom/android/server/pm/PackageManagerService;->isCallerVerifier(Lcom/android/server/pm/Computer;I)Z

    move-result v6

    if-nez v6, :cond_cb

    .line 831
    iget v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v11, -0x10001

    and-int/2addr v6, v11

    iput v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 833
    :cond_cb
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.INSTALL_TEST_ONLY_PACKAGE"

    invoke-virtual {v6, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_db

    .line 835
    iget v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v6, v6, -0x5

    iput v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 839
    :cond_db
    iput v9, v12, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    :goto_dd
    move-object v13, v0

    goto :goto_e8

    .line 807
    :cond_df
    :goto_df
    iget v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 810
    const-string v0, "com.android.shell"

    goto :goto_dd

    .line 843
    :goto_e8
    iget v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_fc

    if-eq v0, v10, :cond_fc

    .line 845
    invoke-interface {v5, v0}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fc

    .line 846
    array-length v11, v0

    if-lez v11, :cond_fc

    .line 848
    aget-object v0, v0, v9

    move-object v14, v0

    goto :goto_fd

    :cond_fc
    move-object v14, v1

    .line 852
    :goto_fd
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_111

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v11

    if-eqz v11, :cond_108

    goto :goto_111

    .line 855
    :cond_108
    iget v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v15, -0x100001

    and-int/2addr v11, v15

    iput v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_118

    .line 853
    :cond_111
    :goto_111
    iget v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v15, 0x100000

    or-int/2addr v11, v15

    iput v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 858
    :goto_118
    iget v11, v4, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    const v15, -0x80001

    if-eq v11, v6, :cond_134

    .line 859
    iget v11, v4, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    if-ne v10, v11, :cond_12b

    .line 860
    iget v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v15, 0x80000

    or-int/2addr v11, v15

    iput v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_130

    .line 863
    :cond_12b
    iget v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v11, v15

    iput v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 866
    :goto_130
    iput v6, v4, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    :cond_132
    :goto_132
    move-object v11, v3

    goto :goto_143

    .line 867
    :cond_134
    iget v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v11, 0x24

    move/from16 p2, v15

    const/16 v15, 0x24

    if-eq v1, v15, :cond_132

    and-int v1, v11, p2

    .line 870
    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_132

    .line 874
    :goto_143
    iget-wide v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    move-wide/from16 v17, v2

    const-wide/16 v1, 0x0

    cmp-long v3, v17, v1

    const/high16 v15, 0x40000

    if-lez v3, :cond_171

    .line 875
    iget v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v3, v15

    if-eqz v3, :cond_169

    .line 879
    iget-object v3, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    move/from16 v19, v15

    const-string v15, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v3, v15}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_161

    goto :goto_177

    .line 881
    :cond_161
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Setting rollback lifetime requires the MANAGE_ROLLBACKS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set rollbackLifetimeMillis when rollback is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_171
    move/from16 v19, v15

    cmp-long v3, v17, v1

    if-ltz v3, :cond_5b7

    .line 889
    :goto_177
    iget v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    const/4 v15, 0x1

    if-eq v3, v15, :cond_18b

    if-ne v3, v8, :cond_17f

    goto :goto_18b

    :cond_17f
    if-ltz v3, :cond_182

    goto :goto_19b

    .line 902
    :cond_182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rollbackImpactLevel can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_18b
    :goto_18b
    iget v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int v3, v3, v19

    if-eqz v3, :cond_5af

    .line 896
    iget-object v3, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v3, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5a7

    .line 905
    :goto_19b
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1a4

    move v1, v15

    goto :goto_1a5

    :cond_1a4
    move v1, v9

    :goto_1a5
    if-eqz v1, :cond_1c4

    .line 907
    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGE_UPDATES"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_1d1

    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    .line 909
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_1bc

    goto :goto_1d1

    .line 911
    :cond_1bc
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to perform APEX updates"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_1c4
    iget-boolean v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v2, :cond_1d1

    .line 914
    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    const-string v6, "PackageInstaller"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d1
    :goto_1d1
    if-eqz v1, :cond_20b

    .line 918
    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v2

    if-eqz v2, :cond_203

    .line 922
    iget-boolean v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v2, :cond_1fb

    .line 925
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_1f3

    iget-boolean v2, v4, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    if-eqz v2, :cond_1ea

    goto :goto_1f3

    .line 931
    :cond_1ea
    iget v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v3, -0x800001

    and-int/2addr v2, v3

    iput v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_20b

    .line 927
    :cond_1f3
    :goto_1f3
    iget v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_20b

    .line 923
    :cond_1fb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A multi-session can\'t be set as APEX."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This device doesn\'t support the installation of APEX files"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_20b
    :goto_20b
    iget v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_22a

    .line 936
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_22a

    if-nez v0, :cond_22a

    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 938
    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isAdoptedShell(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22a

    .line 941
    iget v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x1000001

    and-int/2addr v0, v2

    iput v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 944
    :cond_22a
    iget v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    iput v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 945
    invoke-static {}, Lcom/android/server/pm/PackageArchiver;->isArchivingEnabled()Z

    move-result v0

    if-eqz v0, :cond_267

    iget-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_267

    .line 946
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-interface {v0, v2, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_267

    .line 949
    invoke-interface {v0, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v2

    if-eqz v2, :cond_267

    .line 951
    invoke-static {v0}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_267

    .line 953
    iget v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    iput v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 957
    :cond_267
    iget v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/16 v2, 0x800

    and-int/2addr v0, v2

    if-eqz v0, :cond_284

    .line 958
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-nez v0, :cond_284

    .line 959
    invoke-interface {v5, v10}, Lcom/android/server/pm/Computer;->getFlagsForUid(I)I

    move-result v0

    and-int/2addr v0, v15

    if-eqz v0, :cond_27c

    goto :goto_284

    .line 961
    :cond_27c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system apps could use the PackageManager.INSTALL_INSTANT_APP flag."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_284
    :goto_284
    iget-boolean v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_2a1

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-nez v0, :cond_2a1

    .line 966
    iget-boolean v0, v4, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-nez v0, :cond_2a1

    .line 967
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageInstallerService;->isStagedInstallerAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_299

    goto :goto_2a1

    .line 968
    :cond_299
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit staged install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a1
    :goto_2a1
    if-eqz v1, :cond_2bc

    .line 971
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-nez v0, :cond_2bc

    .line 972
    iget-boolean v0, v4, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-nez v0, :cond_2bc

    .line 973
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageInstallerService;->isStagedInstallerAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b4

    goto :goto_2bc

    .line 974
    :cond_2b4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit non-staged APEX install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_2bc
    :goto_2bc
    iput-boolean v9, v4, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 980
    iput-boolean v9, v4, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    .line 982
    iget-boolean v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_3b2

    .line 983
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d0

    move v0, v15

    goto :goto_2d1

    :cond_2d0
    move v0, v9

    .line 988
    :goto_2d1
    iget v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_2e2

    if-eqz v0, :cond_2da

    goto :goto_2e2

    .line 990
    :cond_2da
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to use the PackageManager.INSTALL_GRANT_ALL_REQUESTED_PERMISSIONS flag"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_2e2
    :goto_2e2
    invoke-virtual {v12}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v3

    .line 997
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_30f

    if-nez v0, :cond_30f

    move v0, v9

    .line 999
    :goto_2ef
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v0, v6, :cond_30f

    .line 1000
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1001
    sget-object v9, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_307

    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x0

    goto :goto_2ef

    .line 1002
    :cond_307
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to grant runtime permissions for a session"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1011
    :cond_30f
    iget-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_33b

    .line 1012
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1014
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    .line 1015
    iget-object v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v6, v0, 0x2

    if-gt v3, v6, :cond_333

    iget-object v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 1016
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, v6, :cond_33b

    .line 1017
    :cond_333
    iget-object v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-static {v3, v0, v0, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 1022
    :cond_33b
    iget v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-eq v0, v15, :cond_35b

    if-ne v0, v8, :cond_342

    goto :goto_35b

    .line 1027
    :cond_342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid install mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_35b
    :goto_35b
    iget v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_372

    .line 1033
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    if-eqz v0, :cond_36a

    goto :goto_3b2

    .line 1034
    :cond_36a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No suitable internal storage available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_372
    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_399

    or-int/lit8 v0, v0, 0x10

    .line 1039
    iput v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1042
    :try_start_37a
    iget-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_37f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37a .. :try_end_37f} :catch_380

    goto :goto_3b2

    .line 1044
    :catch_380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid volumeUuid value in session params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_399
    or-int/lit8 v0, v0, 0x10

    .line 1049
    iput v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1055
    :try_start_3a1
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;
    :try_end_3a9
    .catchall {:try_start_3a1 .. :try_end_3a9} :catchall_3ad

    .line 1057
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3b2

    :catchall_3ad
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    throw v0

    .line 1062
    :cond_3b2
    :goto_3b2
    iget-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_3c9

    .line 1063
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_3c1

    goto :goto_3c9

    .line 1064
    :cond_3c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Originating URI exceeds 2048 length limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_3c9
    :goto_3c9
    iget-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    if-eqz v0, :cond_3e0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_3d8

    goto :goto_3e0

    .line 1069
    :cond_3d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Referrer URI exceeds 2048 length limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_3e0
    :goto_3e0
    iget-object v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    if-eqz v0, :cond_3ed

    .line 1074
    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1075
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->getAllPlatformRestrictedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 1074
    invoke-interface {v0, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 1078
    :cond_3ed
    invoke-virtual {v12}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageInstallerService;->validatePermissionStates(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_59f

    if-eqz v11, :cond_401

    const-wide/16 v2, 0x0

    .line 1086
    invoke-interface {v5, v11, v2, v3, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    :goto_3ff
    const/4 v2, -0x1

    goto :goto_403

    :cond_401
    const/4 v0, -0x1

    goto :goto_3ff

    :goto_403
    if-ne v0, v2, :cond_407

    const/4 v15, 0x0

    goto :goto_408

    :cond_407
    move-object v15, v11

    .line 1096
    :goto_408
    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1098
    :try_start_40b
    iget-object v3, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-static {v3, v10}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    move-result v3

    .line 1099
    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_43d

    int-to-long v5, v3

    const-wide/16 v8, 0x400

    cmp-long v3, v5, v8

    if-gez v3, :cond_423

    goto :goto_444

    .line 1102
    :cond_423
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many active sessions for UID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_43a
    move-exception v0

    goto/16 :goto_59d

    :cond_43d
    int-to-long v5, v3

    const-wide/16 v8, 0x32

    cmp-long v3, v5, v8

    if-gez v3, :cond_586

    .line 1109
    :goto_444
    iget-object v3, v4, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    int-to-long v5, v3

    const-wide/32 v8, 0x100000

    cmp-long v3, v5, v8

    if-gez v3, :cond_56f

    .line 1115
    invoke-virtual {v4, v0, v12, v7}, Lcom/android/server/pm/PackageInstallerService;->getExistingDraftSessionId(ILandroid/content/pm/PackageInstaller$SessionParams;I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_45b

    :goto_459
    move v8, v3

    goto :goto_460

    .line 1118
    :cond_45b
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v3

    goto :goto_459

    .line 1119
    :goto_460
    monitor-exit v2
    :try_end_461
    .catchall {:try_start_40b .. :try_end_461} :catchall_43a

    .line 1121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1125
    iget-boolean v5, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v5, :cond_47c

    .line 1126
    iget v5, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_475

    .line 1127
    invoke-virtual {v4, v8, v12}, Lcom/android/server/pm/PackageInstallerService;->buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;

    move-result-object v5

    :goto_473
    const/4 v6, 0x0

    goto :goto_47e

    .line 1129
    :cond_475
    invoke-virtual {v4, v8}, Lcom/android/server/pm/PackageInstallerService;->buildExternalStageCid(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    const/4 v5, 0x0

    goto :goto_47e

    :cond_47c
    const/4 v5, 0x0

    goto :goto_473

    .line 1134
    :goto_47e
    iget-boolean v9, v12, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    if-eqz v9, :cond_48b

    .line 1135
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v9

    if-nez v9, :cond_48b

    const/4 v9, 0x0

    .line 1136
    iput-boolean v9, v12, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 1140
    :cond_48b
    const-class v9, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1142
    iget v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v16, -0x4000001

    and-int v11, v11, v16

    iput v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    if-eqz v9, :cond_4ab

    .line 1143
    invoke-virtual {v9, v7}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result v9

    if-eqz v9, :cond_4ab

    .line 1144
    iget v9, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v11, 0x4000000

    or-int/2addr v9, v11

    iput v9, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_4ab
    if-nez v1, :cond_4b8

    .line 1147
    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.ENFORCE_UPDATE_OWNERSHIP"

    invoke-virtual {v1, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v9, -0x1

    if-ne v1, v9, :cond_4c0

    .line 1149
    :cond_4b8
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v9, -0x2000001

    and-int/2addr v1, v9

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1152
    :cond_4c0
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    move-object/from16 v17, v15

    move-object/from16 v18, p3

    move/from16 v16, v0

    move/from16 v19, v1

    invoke-static/range {v13 .. v19}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v11

    .line 1156
    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 1157
    :try_start_4d1
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v34

    .line 1159
    monitor-exit v1
    :try_end_4d9
    .catchall {:try_start_4d1 .. :try_end_4d9} :catchall_56c

    .line 1160
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    move-wide v13, v2

    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v3, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v17, v5

    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    iget-object v9, v4, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 1161
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    const-string v31, ""

    iget-object v15, v4, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    move-object/from16 p2, v0

    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    const/16 v37, 0x0

    move-object/from16 v33, v15

    const-wide/16 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    move/from16 v35, v34

    move-object/from16 v36, v0

    move-object/from16 v18, v6

    move-object v6, v9

    move-object/from16 v0, p2

    move/from16 v9, p5

    invoke-direct/range {v0 .. v37}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/verify/developer/DeveloperVerifierController;IILcom/android/server/pm/InstallDependencyHelper;Z)V

    .line 1168
    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1169
    :try_start_527
    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1170
    monitor-exit v2
    :try_end_52d
    .catchall {:try_start_527 .. :try_end_52d} :catchall_569

    .line 1171
    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->addInstallerPackageName(Lcom/android/server/pm/InstallSource;)V

    .line 1173
    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v1, v2, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->-$$Nest$mnotifySessionCreated(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    .line 1175
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {v0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    .line 1177
    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v0, :cond_568

    .line 1178
    const-string v0, "PackageInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " staged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_568
    return v8

    :catchall_569
    move-exception v0

    .line 1170
    :try_start_56a
    monitor-exit v2
    :try_end_56b
    .catchall {:try_start_56a .. :try_end_56b} :catchall_569

    throw v0

    :catchall_56c
    move-exception v0

    .line 1159
    :try_start_56d
    monitor-exit v1
    :try_end_56e
    .catchall {:try_start_56d .. :try_end_56e} :catchall_56c

    throw v0

    .line 1111
    :cond_56f
    :try_start_56f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many historical sessions for UID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_586
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many active sessions for UID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :goto_59d
    monitor-exit v2
    :try_end_59e
    .catchall {:try_start_56f .. :try_end_59e} :catchall_43a

    throw v0

    .line 1079
    :cond_59f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Permissions states exceeds total size limit 16384 in length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_5a7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Setting rollbackImpactLevel requires the MANAGE_ROLLBACKS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_5af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set rollbackImpactLevel when rollback is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_5b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rollbackLifetimeMillis can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_5c0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "User restriction prevents installing"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableVerificationForUid(I)V
    .registers 3

    .line 1845
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1848
    iput p1, p0, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    return-void

    .line 1846
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Operation not allowed for caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 12

    .line 2537
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2538
    :try_start_3
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 2539
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 2540
    new-instance v3, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v3}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 2542
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1a
    if-ge v6, v4, :cond_4d

    .line 2544
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 2546
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v8

    if-eqz v8, :cond_36

    .line 2547
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v8

    goto :goto_37

    :catchall_33
    move-exception p0

    goto/16 :goto_be

    :cond_36
    move-object v8, v7

    :goto_37
    if-nez v8, :cond_3d

    .line 2551
    invoke-virtual {v2, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_4a

    .line 2556
    :cond_3d
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v9

    if-eqz v9, :cond_47

    .line 2557
    invoke-virtual {v3, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_4a

    .line 2561
    :cond_47
    invoke-virtual {v1, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    :goto_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 2564
    :cond_4d
    const-string v4, "Active"

    invoke-virtual {v1, v4, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2566
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->containsSession()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 2569
    const-string v1, "Orphaned"

    invoke-virtual {v2, v1, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2572
    :cond_5d
    const-string v1, "Finalized"

    invoke-virtual {v3, v1, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2574
    const-string v1, "Historical install sessions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2576
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_70
    if-ge v5, v1, :cond_83

    .line 2578
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerHistoricalSession;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageInstallerHistoricalSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2579
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 2581
    :cond_83
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2582
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2584
    const-string v1, "Legacy install sessions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2586
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2588
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2589
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_3 .. :try_end_a1} :catchall_33

    .line 2590
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SilentUpdatePolicy;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2591
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/GentleUpdateHelper;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2592
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 2593
    :try_start_ae
    const-string v0, "VerificationPolicyPerUser"

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    .line 2594
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2593
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2595
    monitor-exit v1

    return-void

    :catchall_bb
    move-exception p0

    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_ae .. :try_end_bd} :catchall_bb

    throw p0

    .line 2589
    :goto_be
    :try_start_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_33

    throw p0
.end method

.method public final expireSessionsLocked()V
    .registers 11

    .line 621
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_7a

    .line 624
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 625
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_77

    .line 629
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long/2addr v4, v6

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getUpdatedMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 632
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v8

    const-string v9, "PackageInstaller"

    if-eqz v8, :cond_40

    .line 633
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v4

    if-eqz v4, :cond_77

    const-wide/32 v4, 0x6c258c00

    cmp-long v4, v6, v4

    if-gez v4, :cond_5d

    goto :goto_77

    :cond_40
    const-wide/32 v6, 0xf731400

    cmp-long v4, v4, v6

    if-ltz v4, :cond_77

    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abandoning old session created at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove old session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 645
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PackageInstallerService;->removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;Z)V

    :cond_77
    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_7a
    return-void
.end method

.method public freeStageDirs(Ljava/lang/String;)V
    .registers 11

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 509
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v3, 0x0

    .line 510
    :goto_c
    :try_start_c
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_7f

    .line 511
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 512
    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_7c

    .line 516
    :cond_25
    iget-wide v5, v4, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x1b77400

    cmp-long v5, v5, v7

    if-ltz v5, :cond_77

    .line 520
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v5

    if-nez v5, :cond_38

    move-object v5, v4

    goto :goto_44

    .line 521
    :cond_38
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    :goto_44
    if-nez v5, :cond_6d

    .line 523
    const-string v5, "PackageInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "freeStageDirs: found an orphaned session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " parent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 523
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :catchall_6b
    move-exception p0

    goto :goto_84

    .line 525
    :cond_6d
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_7c

    .line 526
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    goto :goto_7c

    .line 530
    :cond_77
    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 533
    :cond_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_c .. :try_end_80} :catchall_6b

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    return-void

    .line 533
    :goto_84
    :try_start_84
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_6b

    throw p0
.end method

.method public getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .registers 10

    .line 1509
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1510
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x0

    .line 1511
    const-string v5, "getAllSessions"

    const/4 v3, 0x1

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1513
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v3

    move v5, v4

    .line 1515
    :goto_1b
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4f

    .line 1516
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 1517
    iget v7, v6, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v7, v2, :cond_4c

    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 1518
    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_4c

    goto :goto_45

    :catchall_42
    move-exception v0

    move-object p0, v0

    goto :goto_5e

    .line 1519
    :cond_45
    :goto_45
    invoke-virtual {v6, v4, v1}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1522
    :cond_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_1b .. :try_end_50} :catchall_42

    .line 1523
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1524
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 1522
    :goto_5e
    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_42

    throw p0
.end method

.method public getDeveloperVerificationPolicy(I)I
    .registers 6

    .line 2026
    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingUid()I

    move-result v0

    .line 2027
    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingPid()I

    move-result v1

    .line 2028
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVELOPER_VERIFICATION_AGENT"

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_27

    .line 2030
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2031
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 2030
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/PackageInstallerService;->isCallerDeveloperVerificationPolicyDelegate(Lcom/android/server/pm/Computer;II)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_27

    .line 2032
    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not allowed to read the developer verification policy"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2036
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2037
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3c

    .line 2042
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_3a
    move-exception p0

    goto :goto_58

    .line 2038
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verification policy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist. Does the user exist?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2043
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_2a .. :try_end_59} :catchall_3a

    throw p0
.end method

.method public getDeveloperVerificationPolicyDelegatePackage(I)Ljava/lang/String;
    .registers 5

    .line 2084
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub;->getDeveloperVerificationPolicyDelegatePackage_enforcePermission()V

    .line 2086
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 2087
    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingUid()I

    move-result v1

    .line 2088
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/PackageInstallerService;->isCallerDeveloperVerifier(Lcom/android/server/pm/Computer;II)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2092
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getDeveloperVerificationPolicyDelegatePackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_1d

    return-object v2

    .line 2097
    :cond_1d
    invoke-interface {v0, p0, v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 2099
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_33

    .line 2102
    :cond_2e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    :goto_33
    return-object v2

    .line 2089
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The caller is not the developer verifier and cannot query the policy delegate app."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDeveloperVerificationServiceProvider()Landroid/content/ComponentName;
    .registers 5

    .line 2131
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    .line 2132
    invoke-virtual {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->getVerifierComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 2136
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2137
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 2138
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    return-object v1

    :cond_1f
    return-object v0
.end method

.method public getDeveloperVerificationUserConfirmationInfo(I)Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;
    .registers 3

    .line 1479
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub;->getDeveloperVerificationUserConfirmationInfo_enforcePermission()V

    .line 1481
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1482
    :try_start_6
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p0, :cond_17

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->generateDeveloperVerificationUserConfirmationInfo()Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;

    move-result-object p0

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    .line 1486
    :goto_18
    monitor-exit v0

    return-object p0

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public getExistingDraftSessionId(ILandroid/content/pm/PackageInstaller$SessionParams;I)I
    .registers 5

    .line 1193
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1194
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->getExistingDraftSessionIdInternal(ILandroid/content/pm/PackageInstaller$SessionParams;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 1195
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getExistingDraftSessionIdInternal(ILandroid/content/pm/PackageInstaller$SessionParams;I)I
    .registers 8

    .line 1201
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1202
    invoke-static {}, Lcom/android/server/pm/PackageArchiver;->isArchivingEnabled()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_5e

    if-eq p1, v2, :cond_5e

    if-nez v0, :cond_e

    goto :goto_5e

    .line 1206
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/16 v3, 0x3e8

    invoke-interface {v1, v0, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 1208
    invoke-interface {v1, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_5e

    .line 1215
    :cond_27
    iget p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    if-lez p2, :cond_3f

    .line 1216
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p2, :cond_3e

    .line 1218
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/server/pm/PackageInstallerService;->isValidDraftSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 1219
    iget p0, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    return p0

    :cond_3e
    return v2

    :cond_3f
    const/4 p2, 0x0

    .line 1225
    :goto_40
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_5e

    .line 1226
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_5b

    .line 1228
    invoke-virtual {p0, v1, v0, p1, p3}, Lcom/android/server/pm/PackageInstallerService;->isValidDraftSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 1229
    iget p0, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    return p0

    :cond_5b
    add-int/lit8 p2, p2, 0x1

    goto :goto_40

    :cond_5e
    :goto_5e
    return v2
.end method

.method public getGentleUpdateHelper()Lcom/android/server/pm/GentleUpdateHelper;
    .registers 1

    .line 1824
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    return-object p0
.end method

.method public getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;
    .registers 9

    .line 1554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1555
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x0

    .line 1556
    const-string v5, "getAllSessions"

    const/4 v3, 0x1

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1558
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1559
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1560
    :goto_1a
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3f

    .line 1561
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerHistoricalSession;

    const/4 v6, -0x1

    if-eq v2, v6, :cond_35

    .line 1562
    iget v6, v5, Lcom/android/server/pm/PackageInstallerHistoricalSession;->userId:I

    if-ne v6, v2, :cond_3c

    goto :goto_35

    :catchall_32
    move-exception v0

    move-object p0, v0

    goto :goto_4e

    .line 1563
    :cond_35
    :goto_35
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerHistoricalSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1566
    :cond_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_32

    .line 1567
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1568
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 1566
    :goto_4e
    :try_start_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_32

    throw p0
.end method

.method public getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 10

    .line 1529
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 1530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    .line 1531
    const-string v6, "getMySessions"

    const/4 v4, 0x1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1532
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p2, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1534
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    .line 1536
    :goto_21
    :try_start_21
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_64

    .line 1537
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    const/16 v5, 0x3e8

    .line 1540
    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 1541
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v6, v3, :cond_61

    .line 1542
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v6

    if-nez v6, :cond_61

    .line 1543
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 1544
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getInstallFlags()I

    move-result v4

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-nez v4, :cond_61

    .line 1546
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :catchall_5e
    move-exception v0

    move-object p0, v0

    goto :goto_6b

    :cond_61
    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1549
    :cond_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_21 .. :try_end_65} :catchall_5e

    .line 1550
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 1549
    :goto_6b
    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_5e

    throw p0
.end method

.method public getSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 3

    .line 1812
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1813
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1814
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 6

    .line 1464
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1466
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1467
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v2, 0x0

    if-eqz p1, :cond_27

    .line 1468
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_37

    :cond_21
    :goto_21
    const/4 v3, 0x1

    .line 1469
    invoke-virtual {p1, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    goto :goto_28

    :cond_27
    move-object p1, v2

    .line 1471
    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_1f

    .line 1472
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    if-eqz p0, :cond_36

    return-object v2

    :cond_36
    return-object p1

    .line 1471
    :goto_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_1f

    throw p0
.end method

.method public getSessionVerifier()Lcom/android/server/pm/PackageSessionVerifier;
    .registers 1

    .line 1819
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

    return-object p0
.end method

.method public getStagedSessions()Landroid/content/pm/ParceledListSlice;
    .registers 8

    .line 1492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1493
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1494
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 1495
    :goto_e
    :try_start_e
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_37

    .line 1496
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 1497
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_34

    .line 1498
    invoke-virtual {v5, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_4c

    :cond_34
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1501
    :cond_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_32

    .line 1502
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 1503
    new-instance v3, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1504
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 1501
    :goto_4c
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_32

    throw p0
.end method

.method public final getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 481
    sget-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p0

    .line 484
    invoke-static {p1}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 485
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-object p0
.end method

.method public getStagingManager()Lcom/android/server/pm/StagingManager;
    .registers 1

    .line 369
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object p0
.end method

.method public final getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 1394
    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    .registers 14

    .line 1689
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move v2, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)Landroid/util/Pair;

    move-result-object p1

    .line 1692
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1693
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/IntentSender;

    if-eqz p1, :cond_1f

    .line 1695
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {p2, p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V

    :cond_1f
    return-void
.end method

.method public installPackageArchived(Landroid/content/pm/ArchivedPackageParcel;Landroid/content/pm/PackageInstaller$SessionParams;Landroid/content/IntentSender;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 15

    .line 1901
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    iget-object v0, p1, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    .line 1910
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1908
    const-string v1, "Requested archived install of package %s for user %s."

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1907
    const-string v1, "PackageInstaller"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1912
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1913
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const/4 v7, 0x1

    .line 1914
    const-string v8, "installPackageArchived"

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v4, v5

    .line 1917
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_75

    .line 1924
    iget v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1925
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v0, :cond_6d

    const/4 v0, 0x0

    .line 1931
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v0

    .line 1930
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 1932
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forArchived(Landroid/content/pm/ArchivedPackageParcel;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v5

    .line 1937
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v7, p1

    move-object v2, p2

    move-object v6, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;Landroid/content/IntentSender;Landroid/content/pm/ArchivedPackageParcel;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    .line 1926
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incompatible session param: dataLoaderParams has to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1919
    :cond_75
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need the com.android.permission.INSTALL_PACKAGES permission to request archived package install"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isCallerDeveloperVerificationPolicyDelegate(Lcom/android/server/pm/Computer;II)Z
    .registers 10

    .line 2118
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getDeveloperVerificationPolicyDelegatePackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const-wide/16 v2, 0x0

    const/16 v5, 0x3e8

    move-object v0, p1

    move v4, p3

    .line 2123
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p0

    .line 2125
    invoke-static {p2, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public final isCallerDeveloperVerifier(Lcom/android/server/pm/Computer;II)Z
    .registers 10

    .line 2106
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->getVerifierPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const-wide/16 v2, 0x0

    const/16 v5, 0x3e8

    move-object v0, p1

    move v4, p3

    .line 2111
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p0

    .line 2113
    invoke-static {p2, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public final isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3

    .line 2210
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    if-eqz p1, :cond_11

    .line 2214
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p1

    if-ne p0, p1, :cond_11

    return v0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public final isStagedInstallerAllowed(Ljava/lang/String;)Z
    .registers 2

    .line 1254
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getWhitelistedStagedInstallers()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSystemAppProtectionRoleHolder(Lcom/android/server/pm/Computer;II)Ljava/lang/Boolean;
    .registers 6

    .line 1651
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/PackageInstallerService;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_10

    .line 1664
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_10
    const-wide/16 v0, 0x0

    .line 1666
    invoke-interface {p1, p0, v0, v1, p2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, p3, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final isValidDraftSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;II)Z
    .registers 6

    .line 1238
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallFlags()I

    move-result p0

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_1f

    iget-object p0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1239
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    iget p0, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne p0, p4, :cond_1f

    .line 1241
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p0

    if-ne p3, p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final isValidForInstallConstraints(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6

    .line 1714
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 1715
    const-string v0, "android.permission.INSTALL_SELF_UPDATES"

    .line 1716
    invoke-interface {p0, v0, p3}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_18

    .line 1718
    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    move p0, v0

    goto :goto_19

    :cond_18
    move p0, p3

    .line 1720
    :goto_19
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p4

    iget-object p4, p4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_35

    .line 1721
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_35

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    return p3

    :cond_35
    :goto_35
    return v0
.end method

.method public final synthetic lambda$getAllSessions$2(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    .line 1523
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getHistoricalSessions$3(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    .line 1567
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getStagedSessions$1(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    .line 1503
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$installPackageArchived$9(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;Landroid/content/IntentSender;Landroid/content/pm/ArchivedPackageParcel;)V
    .registers 16

    const/4 v1, 0x0

    .line 1941
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    .line 1940
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    .line 1942
    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_43
    .catchall {:try_start_1 .. :try_end_12} :catchall_40

    .line 1943
    :try_start_12
    const-string v4, "base"

    .line 1944
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    .line 1943
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageInstallerSession;->addFile(ILjava/lang/String;J[B[B)V

    const/4 p0, 0x0

    .line 1945
    invoke-virtual {v2, p5, p0}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    .line 1946
    const-string p0, "PackageInstaller"

    const-string p1, "Installed archived app %s."

    iget-object p2, p6, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_34} :catch_3c
    .catchall {:try_start_12 .. :try_end_34} :catchall_38

    .line 1952
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    return-void

    :catchall_38
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto :goto_4a

    :catch_3c
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto :goto_45

    :catchall_40
    move-exception v0

    move-object p0, v0

    goto :goto_4a

    :catch_43
    move-exception v0

    move-object p0, v0

    .line 1949
    :goto_45
    :try_start_45
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_40

    :goto_4a
    if-eqz v1, :cond_4f

    .line 1952
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    .line 1954
    :cond_4f
    throw p0
.end method

.method public final synthetic lambda$isSystemAppProtectionRoleHolder$5(I)Ljava/lang/String;
    .registers 4

    .line 1652
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return-object v0

    .line 1656
    :cond_10
    const-string v1, "android.app.role.SYSTEM_APP_PROTECTION_SERVICE"

    .line 1657
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 1656
    invoke-virtual {p0, v1, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 1658
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    return-object v0

    :cond_21
    const/4 p1, 0x0

    .line 1661
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final synthetic lambda$new$0()Ljava/lang/Boolean;
    .registers 1

    .line 328
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessions()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$uninstall$4(Landroid/content/pm/VersionedPackage;Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;II)V
    .registers 5

    .line 1626
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    return-void
.end method

.method public final synthetic lambda$waitForInstallConstraints$7(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;Landroid/content/pm/PackageInstaller$InstallConstraintsResult;)V
    .registers 13

    .line 1775
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 1776
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1777
    const-string p1, "android.content.pm.extra.INSTALL_CONSTRAINTS"

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1778
    const-string p1, "android.content.pm.extra.INSTALL_CONSTRAINTS_RESULT"

    invoke-virtual {v3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1780
    :try_start_1d
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 1781
    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1782
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1783
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p3

    .line 1782
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_32
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1d .. :try_end_32} :catch_32

    :catch_32
    return-void
.end method

.method public final matchesInstaller(Lcom/android/server/pm/PackageInstallerSession;II)Z
    .registers 6

    .line 2733
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p0

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p1, :cond_11

    .line 2735
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-ne p0, p2, :cond_10

    return v1

    :cond_10
    return v0

    .line 2737
    :cond_11
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    if-ne p1, p0, :cond_18

    return v1

    :cond_18
    return v0
.end method

.method public okToSendBroadcasts()Z
    .registers 1

    .line 377
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return p0
.end method

.method public final onBroadcastReady()V
    .registers 2

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return-void
.end method

.method public onInstallerPackageDeleted(II)V
    .registers 7

    .line 2714
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2715
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 2716
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 2717
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->matchesInstaller(Lcom/android/server/pm/PackageInstallerSession;II)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_42

    .line 2721
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_2e

    .line 2722
    :cond_22
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    :goto_2e
    if-eqz v2, :cond_42

    .line 2723
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->matchesInstaller(Lcom/android/server/pm/PackageInstallerSession;II)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2724
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_42

    .line 2725
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    goto :goto_42

    :catchall_40
    move-exception p0

    goto :goto_47

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2728
    :cond_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_4 .. :try_end_48} :catchall_40

    throw p0
.end method

.method public onPrivateVolumeMounted(Ljava/lang/String;)V
    .registers 3

    .line 498
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 499
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 500
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public onUserAdded(I)V
    .registers 4

    .line 2169
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2170
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2171
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 3

    .line 2175
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2176
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2177
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 2

    .line 1311
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 1313
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final openSessionInternal(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 5

    .line 1335
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1336
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 1337
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 1340
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 1341
    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception p0

    goto :goto_2f

    .line 1338
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller has no access to session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1342
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_16

    throw p0
.end method

.method public final readSessionsLocked()V
    .registers 16

    .line 563
    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v0, :cond_c

    const-string v0, "PackageInstaller"

    const-string/jumbo v1, "readSessionsLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 569
    :try_start_12
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_18} :catch_b5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_18} :catch_b1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_12 .. :try_end_18} :catch_b1
    .catchall {:try_start_12 .. :try_end_18} :catchall_ae

    .line 570
    :try_start_18
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 573
    :cond_1c
    :goto_1c
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_a9

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1c

    .line 575
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 576
    const-string/jumbo v4, "session"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_31} :catch_a7
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_31} :catch_a4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_31} :catch_a4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_18 .. :try_end_31} :catch_a4
    .catchall {:try_start_18 .. :try_end_31} :catchall_5d

    if-eqz v4, :cond_79

    .line 579
    :try_start_33
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 580
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    iget-object v12, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget-object v13, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_49} :catch_6d
    .catchall {:try_start_33 .. :try_end_49} :catchall_5d

    move-object v10, p0

    .line 579
    :try_start_4a
    invoke-static/range {v3 .. v13}, Lcom/android/server/pm/PackageInstallerSession;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4e} :catch_6a
    .catchall {:try_start_4a .. :try_end_4e} :catchall_5d

    .line 587
    :try_start_4e
    iget-object v0, v10, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v4, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 588
    iget-object v0, v10, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p0, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_77

    :catchall_5d
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto/16 :goto_c2

    :catch_62
    move-exception v0

    :goto_63
    move-object p0, v0

    move-object v1, v2

    goto/16 :goto_b7

    :catch_67
    :goto_67
    move-object v1, v2

    goto/16 :goto_be

    :catch_6a
    move-exception v0

    :goto_6b
    move-object p0, v0

    goto :goto_70

    :catch_6d
    move-exception v0

    move-object v10, p0

    goto :goto_6b

    .line 584
    :goto_70
    const-string v0, "PackageInstaller"

    const-string v4, "Could not read session"

    invoke-static {v0, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_77
    :goto_77
    move-object p0, v10

    goto :goto_1c

    :cond_79
    move-object v10, p0

    .line 589
    const-string p0, "developerVerificationPolicyPerUser"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    .line 590
    const-string/jumbo p0, "userId"

    const/4 v0, -0x1

    invoke-interface {v3, v1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_8d

    goto :goto_77

    .line 594
    :cond_8d
    const-string v4, "developerVerificationPolicy"

    .line 595
    invoke-interface {v3, v1, v4, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_96

    goto :goto_77

    .line 599
    :cond_96
    iget-object v5, v10, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    monitor-enter v5
    :try_end_99
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_99} :catch_67
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_99} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_99} :catch_62
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4e .. :try_end_99} :catch_62
    .catchall {:try_start_4e .. :try_end_99} :catchall_5d

    .line 600
    :try_start_99
    iget-object v0, v10, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 601
    monitor-exit v5

    goto :goto_77

    :catchall_a0
    move-exception v0

    move-object p0, v0

    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_a0

    :try_start_a3
    throw p0
    :try_end_a4
    .catch Ljava/io/FileNotFoundException; {:try_start_a3 .. :try_end_a4} :catch_67
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a4} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a3 .. :try_end_a4} :catch_62
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a3 .. :try_end_a4} :catch_62
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_5d

    :catch_a4
    move-exception v0

    move-object v10, p0

    goto :goto_63

    :catch_a7
    move-object v10, p0

    goto :goto_67

    :cond_a9
    move-object v10, p0

    .line 610
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_c6

    :catchall_ae
    move-exception v0

    move-object p0, v0

    goto :goto_c2

    :catch_b1
    move-exception v0

    move-object v10, p0

    move-object p0, v0

    goto :goto_b7

    :catch_b5
    move-object v10, p0

    goto :goto_be

    .line 608
    :goto_b7
    :try_start_b7
    const-string v0, "PackageInstaller"

    const-string v2, "Failed reading install sessions"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_ae

    .line 610
    :goto_be
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_c6

    :goto_c2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 611
    throw p0

    :goto_c6
    const/4 p0, 0x0

    .line 613
    :goto_c7
    iget-object v0, v10, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_df

    .line 614
    iget-object v0, v10, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 615
    iget-object v1, v10, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onAfterSessionRead(Landroid/util/SparseArray;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_c7

    :cond_df
    return-void
.end method

.method public final reconcileStagesLocked(Ljava/lang/String;)V
    .registers 4

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const/4 v0, 0x0

    .line 472
    :goto_5
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 473
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 474
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 476
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    return-void
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .registers 10

    .line 1792
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 1793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    const-string/jumbo v6, "registerCallback"

    const/4 v4, 0x1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1795
    new-instance p2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda7;

    invoke-direct {p2, v3}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V
    .registers 5

    .line 1802
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    new-instance v0, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;-><init>(ILjava/util/function/IntPredicate;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->register(Landroid/content/pm/IPackageInstallerCallback;Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;)V

    return-void
.end method

.method public final removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 6

    .line 656
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    if-eqz p2, :cond_f

    .line 659
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionExpired()V

    .line 661
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 662
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 663
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    if-eqz p2, :cond_17

    .line 665
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionExpired()V

    goto :goto_17

    :cond_33
    return-void
.end method

.method public final removeStagingDirs(Landroid/util/ArraySet;)V
    .registers 5

    .line 491
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting orphan stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageInstaller"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->removeCodePath(Ljava/io/File;)V

    goto :goto_4

    :cond_2c
    return-void
.end method

.method public reportUnarchivalStatus(IIJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 11

    .line 1965
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/server/pm/PackageInstallerService;->verifyReportUnarchiveStatusInput(IJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V

    .line 1968
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p6

    .line 1969
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1971
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1972
    :try_start_e
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v2, :cond_4d

    .line 1973
    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v3, p6, :cond_4d

    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v3, :cond_4d

    .line 1981
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    if-eqz p0, :cond_34

    move p0, p2

    move p2, p1

    move p1, p0

    move-object p0, v2

    .line 1988
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageInstallerSession;->reportUnarchivalStatus(IIJLandroid/app/PendingIntent;)V

    .line 1990
    monitor-exit v1

    return-void

    :catchall_31
    move-exception v0

    move-object p0, v0

    goto :goto_6b

    :cond_34
    move p2, p1

    .line 1982
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The caller UID %s does not have access to the session with unarchiveId %d."

    .line 1985
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 1982
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    move p2, p1

    .line 1975
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p3, "No valid session with unarchival ID %s found for user %s."

    .line 1978
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    .line 1976
    invoke-static {p3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 1990
    :goto_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_e .. :try_end_6c} :catchall_31

    throw p0
.end method

.method public requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 6

    .line 1880
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageArchiver;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V

    return-void
.end method

.method public requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 5

    .line 1890
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageArchiver;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V

    return-void
.end method

.method public restoreAndApplyStagedSessionIfNeeded()V
    .registers 7

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 441
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7e

    .line 442
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 443
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_7b

    .line 446
    :cond_20
    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 447
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v4

    if-nez v4, :cond_66

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 448
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->getParentSessionId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    if-nez v4, :cond_66

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An orphan staged session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is found, parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->getParentSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is missing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x80

    .line 449
    invoke-interface {v3, v5, v4}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_7b

    :catchall_64
    move-exception p0

    goto :goto_8b

    .line 454
    :cond_66
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v4

    if-nez v4, :cond_7b

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isCommitted()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 455
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v4

    if-nez v4, :cond_7b

    .line 458
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7b
    :goto_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 461
    :cond_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_9 .. :try_end_7f} :catchall_64

    .line 465
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/StagingManager;->restoreSessions(Ljava/util/List;Z)V

    return-void

    .line 461
    :goto_8b
    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_64

    throw p0
.end method

.method public final sendSessionUpdatedBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V
    .registers 5

    .line 2699
    iget-object v0, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2702
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.SESSION_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.content.pm.extra.SESSION"

    .line 2703
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 2704
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2705
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V
    .registers 3

    .line 1856
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1859
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SilentUpdatePolicy;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    return-void

    .line 1857
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to unlimite silent updates"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDeveloperVerificationPolicy(II)Z
    .registers 6

    .line 2051
    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingUid()I

    move-result v0

    .line 2052
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 2053
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/pm/PackageInstallerService;->isCallerDeveloperVerifier(Lcom/android/server/pm/Computer;II)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2054
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/pm/PackageInstallerService;->isCallerDeveloperVerificationPolicyDelegate(Lcom/android/server/pm/Computer;II)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1f

    .line 2055
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not allowed to change the developer verification policy"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2058
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-virtual {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->getVerifierPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    return v1

    .line 2062
    :cond_29
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->isValidVerificationPolicy(I)Z

    move-result v0

    if-nez v0, :cond_30

    return v1

    .line 2065
    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2066
    :try_start_33
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_53

    .line 2071
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq p1, v1, :cond_50

    .line 2072
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2074
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    goto :goto_50

    :catchall_4e
    move-exception p0

    goto :goto_6f

    .line 2076
    :cond_50
    :goto_50
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 2067
    :cond_53
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification policy for user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exist. Does the user exist?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2076
    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_33 .. :try_end_70} :catchall_4e

    throw p0
.end method

.method public setDeveloperVerificationUserResponse(II)V
    .registers 5

    .line 2184
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub;->setDeveloperVerificationUserResponse_enforcePermission()V

    .line 2186
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2187
    :try_start_6
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p0, :cond_16

    .line 2189
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setVerificationUserResponse(I)V

    goto :goto_31

    :catchall_14
    move-exception p0

    goto :goto_33

    .line 2191
    :cond_16
    const-string p0, "PackageInstaller"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :goto_31
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_14

    throw p0
.end method

.method public setPermissionsResult(IZ)V
    .registers 4

    .line 1702
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub;->setPermissionsResult_enforcePermission()V

    .line 1704
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1705
    :try_start_6
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p0, :cond_16

    .line 1707
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_18

    .line 1709
    :cond_16
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_14

    throw p0
.end method

.method public setSilentUpdatesThrottleTime(J)V
    .registers 4

    .line 1867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1870
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/SilentUpdatePolicy;->setSilentUpdatesThrottleTime(J)V

    return-void

    .line 1868
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to set silent updates throttle time"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final shouldFilterSession(Lcom/android/server/pm/Computer;II)Z
    .registers 5

    .line 2219
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p0

    const/4 p3, 0x0

    if-nez p0, :cond_8

    return p3

    .line 2223
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v0

    if-eq p2, v0, :cond_1a

    .line 2224
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return p3
.end method

.method public final shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 1450
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    .line 1451
    invoke-virtual {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->getVerifierPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1453
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->getVerifierPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 1454
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1453
    invoke-interface {p1, p0, v1, v2, v3}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, p2, :cond_1f

    return v0

    .line 1458
    :cond_1f
    invoke-virtual {p3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerUid()I

    move-result p0

    if-eq p2, p0, :cond_31

    .line 1459
    invoke-virtual {p3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    return v0
.end method

.method public systemReady()V
    .registers 8

    .line 381
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 382
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager;->systemReady()V

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/GentleUpdateHelper;->systemReady()V

    .line 385
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 386
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->readSessionsLocked()V

    .line 387
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->expireSessionsLocked()V

    .line 389
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 392
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 391
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 395
    :goto_30
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 396
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 397
    iget v4, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :catchall_4c
    move-exception p0

    goto/16 :goto_c7

    .line 401
    :cond_4f
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 402
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting orphan icon "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_53

    .line 405
    :cond_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_19 .. :try_end_7a} :catchall_4c

    .line 409
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 411
    :try_start_85
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_8d
    if-ltz v3, :cond_a6

    .line 413
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 414
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_a3

    :catchall_a1
    move-exception p0

    goto :goto_c5

    :cond_a3
    :goto_a3
    add-int/lit8 v3, v3, -0x1

    goto :goto_8d

    :cond_a6
    move v3, v2

    .line 419
    :goto_a7
    array-length v4, v0

    if-ge v3, v4, :cond_be

    .line 420
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    aget v5, v0, v3

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_bb

    .line 421
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    aget v5, v0, v3

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_bb
    add-int/lit8 v3, v3, 0x1

    goto :goto_a7

    .line 424
    :cond_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_85 .. :try_end_bf} :catchall_a1

    .line 428
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->runNow()Z

    return-void

    .line 424
    :goto_c5
    :try_start_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_a1

    throw p0

    .line 405
    :goto_c7
    :try_start_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_4c

    throw p0
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .registers 14

    .line 1580
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1581
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1574
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageInstallerService;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;III)V

    return-void
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;III)V
    .registers 19

    move/from16 v8, p7

    .line 1586
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x1

    .line 1587
    const-string/jumbo v5, "uninstall"

    const/4 v3, 0x1

    move/from16 v2, p5

    move/from16 v1, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move-object v10, v0

    move v9, v1

    .line 1588
    invoke-static {v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1589
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v9, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1594
    :cond_21
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1595
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_31

    .line 1597
    invoke-virtual {v0, p2, v9}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1599
    :cond_31
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1598
    invoke-static {v0, v10, v2, v9}, Lcom/android/server/pm/PackageInstallerSession;->isEmergencyInstallerEnabled(Ljava/lang/String;Lcom/android/server/pm/Computer;II)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3b
    const/4 v0, 0x1

    :goto_3c
    move v4, v0

    goto :goto_40

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3c

    .line 1601
    :goto_40
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1602
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    move v7, p3

    move v5, v2

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZILcom/android/server/pm/PackageArchiver;I)V

    .line 1604
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v1, v2, v8, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_6a

    move-object v3, v0

    .line 1607
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    move-object v1, p1

    move v4, p3

    move/from16 v3, p5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;III)V

    return-void

    :cond_6a
    move/from16 v2, p5

    move-object v3, v0

    if-eqz v4, :cond_93

    .line 1612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1614
    :try_start_73
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, p3}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_8d

    .line 1616
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, 0x71

    .line 1619
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 1620
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 1621
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void

    :catchall_8d
    move-exception v0

    move-object p0, v0

    .line 1616
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1617
    throw p0

    .line 1622
    :cond_93
    invoke-virtual {p0, v10, v2, v9}, Lcom/android/server/pm/PackageInstallerService;->isSystemAppProtectionRoleHolder(Lcom/android/server/pm/Computer;II)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1625
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;

    move-object v1, p0

    move v5, p3

    move v4, v2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/VersionedPackage;Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :cond_aa
    move-object v0, v3

    const-wide/16 v3, 0x0

    .line 1629
    invoke-interface {v10, p2, v3, v4, v2}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 1630
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt p2, v2, :cond_bf

    .line 1631
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {p0, p2, v8, v9, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1636
    :cond_bf
    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1637
    const-string/jumbo p2, "package"

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1638
    new-instance p1, Landroid/content/pm/PackageManager$UninstallCompleteCallback;

    .line 1639
    invoke-virtual {v0}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$UninstallCompleteCallback;-><init>(Landroid/os/IBinder;)V

    .line 1638
    const-string p2, "android.content.pm.extra.CALLBACK"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_ef

    .line 1643
    const-string p1, "android.content.pm.extra.DELETE_FLAGS"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1645
    :cond_ef
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    return-void
.end method

.method public uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    .registers 17

    .line 1672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1673
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x1

    .line 1675
    const-string/jumbo v5, "uninstall"

    const/4 v3, 0x1

    move/from16 v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1676
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1677
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1680
    :cond_27
    new-instance v6, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1681
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v8, p3

    move/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 1682
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v11}, Lcom/android/server/pm/PackageManagerService;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    return-void
.end method

.method public unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 2

    .line 1807
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->unregister(Landroid/content/pm/IPackageInstallerCallback;)V

    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .registers 7

    .line 1259
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1260
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_48

    .line 1261
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_48

    if-eqz p2, :cond_39

    .line 1267
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 1269
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p1

    .line 1270
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    if-gt v2, v3, :cond_34

    .line 1271
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v3, :cond_39

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_5f

    :cond_34
    :goto_34
    const/4 v2, 0x1

    .line 1272
    invoke-static {p2, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1276
    :cond_39
    iget-object p1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    const-wide/16 v2, -0x1

    .line 1277
    iput-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 1279
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1280
    monitor-exit v0

    return-void

    .line 1262
    :cond_48
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller has no access to session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1280
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_32

    throw p0
.end method

.method public updateSessionAppLabel(ILjava/lang/String;)V
    .registers 6

    .line 1285
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1286
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_2b

    .line 1287
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1290
    iget-object p1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 1291
    iget-object p1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 1292
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_42

    .line 1294
    :cond_29
    :goto_29
    monitor-exit v0

    return-void

    .line 1288
    :cond_2b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller has no access to session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1294
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_27

    throw p0
.end method

.method public final validatePermissionStates(Ljava/util/Map;)Z
    .registers 4

    .line 1185
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1186
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_a

    :cond_1c
    const/16 p0, 0x4000

    if-gt v0, p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    return p1
.end method

.method public waitForInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V
    .registers 14

    .line 1768
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_22

    const-wide/32 v0, 0x240c8400

    cmp-long v0, p5, v0

    if-gtz v0, :cond_22

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p5

    .line 1772
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageInstallerService;->checkInstallConstraintsInternal(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;J)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 1774
    new-instance p1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;

    invoke-direct {p1, v1, v3, v4, p4}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageInstallerService;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :cond_22
    move-wide v5, p5

    .line 1770
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid timeoutMillis="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeSessions()Z
    .registers 10

    .line 685
    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v0, :cond_c

    const-string v0, "PackageInstaller"

    const-string/jumbo v1, "writeSessions()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 688
    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 689
    new-array v2, v1, [Lcom/android/server/pm/PackageInstallerSession;

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v1, :cond_2b

    .line 691
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :catchall_28
    move-exception p0

    goto/16 :goto_9e

    .line 693
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_28

    const/4 v0, 0x0

    .line 697
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_96

    .line 699
    :try_start_33
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 700
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 701
    const-string/jumbo v6, "sessions"

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v6, v3

    :goto_43
    if-ge v6, v1, :cond_51

    .line 702
    aget-object v7, v2, v6

    .line 703
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v7, v5, v8}, Lcom/android/server/pm/PackageInstallerSession;->write(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/io/File;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    :catch_4f
    move-object v0, v4

    goto :goto_96

    .line 705
    :cond_51
    const-string/jumbo v1, "sessions"

    invoke-interface {v5, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 708
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    monitor-enter v1
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_5a} :catch_4f

    move v2, v3

    .line 709
    :goto_5b
    :try_start_5b
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_89

    .line 710
    const-string v6, "developerVerificationPolicyPerUser"

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    const-string/jumbo v6, "userId"

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    .line 712
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 711
    invoke-interface {v5, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    const-string v6, "developerVerificationPolicy"

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mDeveloperVerificationPolicyPerUser:Landroid/util/SparseIntArray;

    .line 714
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 713
    invoke-interface {v5, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    const-string v6, "developerVerificationPolicyPerUser"

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :catchall_87
    move-exception v0

    goto :goto_94

    .line 717
    :cond_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_5b .. :try_end_8a} :catchall_87

    .line 718
    :try_start_8a
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 720
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_92} :catch_4f

    const/4 p0, 0x1

    return p0

    .line 717
    :goto_94
    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_87

    :try_start_95
    throw v0
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_96} :catch_4f

    :catch_96
    :goto_96
    if-eqz v0, :cond_9d

    .line 724
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_9d
    return v3

    .line 693
    :goto_9e
    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_28

    throw p0
.end method
