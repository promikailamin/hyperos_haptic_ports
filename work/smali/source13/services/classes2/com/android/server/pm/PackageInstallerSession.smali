.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerSession$InstallResult;,
        Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;,
        Lcom/android/server/pm/PackageInstallerSession$UserActionRequirement;,
        Lcom/android/server/pm/PackageInstallerSession$StagedSession;,
        Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;,
        Lcom/android/server/pm/PackageInstallerSession$FileEntry;
    }
.end annotation


# static fields
.field private static final APEX_FILE_EXTENSION:Ljava/lang/String; = ".apex"

.field private static final ATTR_ABI_OVERRIDE:Ljava/lang/String; = "abiOverride"

.field private static final ATTR_APP_ICON:Ljava/lang/String; = "appIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_APP_LABEL:Ljava/lang/String; = "appLabel"

.field private static final ATTR_APP_PACKAGE_NAME:Ljava/lang/String; = "appPackageName"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "callingPackage"

.field private static final ATTR_CHECKSUM_KIND:Ljava/lang/String; = "checksumKind"

.field private static final ATTR_CHECKSUM_VALUE:Ljava/lang/String; = "checksumValue"

.field private static final ATTR_COMMITTED:Ljava/lang/String; = "committed"

.field private static final ATTR_COMMITTED_MILLIS:Ljava/lang/String; = "committedMillis"

.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_DATALOADER_ARGUMENTS:Ljava/lang/String; = "dataLoaderArguments"

.field private static final ATTR_DATALOADER_CLASS_NAME:Ljava/lang/String; = "dataLoaderClassName"

.field private static final ATTR_DATALOADER_PACKAGE_NAME:Ljava/lang/String; = "dataLoaderPackageName"

.field private static final ATTR_DATALOADER_TYPE:Ljava/lang/String; = "dataLoaderType"

.field private static final ATTR_DESTROYED:Ljava/lang/String; = "destroyed"

.field private static final ATTR_INITIATING_PACKAGE_NAME:Ljava/lang/String; = "installInitiatingPackageName"

.field private static final ATTR_INSTALLER_ATTRIBUTION_TAG:Ljava/lang/String; = "installerAttributionTag"

.field private static final ATTR_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "installerPackageName"

.field private static final ATTR_INSTALLER_UID:Ljava/lang/String; = "installerUid"

.field private static final ATTR_INSTALL_FLAGS:Ljava/lang/String; = "installFlags"

.field private static final ATTR_INSTALL_LOCATION:Ljava/lang/String; = "installLocation"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "installRason"

.field private static final ATTR_IS_APPLIED:Ljava/lang/String; = "isApplied"

.field private static final ATTR_IS_DATALOADER:Ljava/lang/String; = "isDataLoader"

.field private static final ATTR_IS_FAILED:Ljava/lang/String; = "isFailed"

.field private static final ATTR_IS_READY:Ljava/lang/String; = "isReady"

.field private static final ATTR_LENGTH_BYTES:Ljava/lang/String; = "lengthBytes"

.field private static final ATTR_LOCATION:Ljava/lang/String; = "location"

.field private static final ATTR_METADATA:Ljava/lang/String; = "metadata"

.field private static final ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final ATTR_MULTI_PACKAGE:Ljava/lang/String; = "multiPackage"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_ORIGINATING_PACKAGE_NAME:Ljava/lang/String; = "installOriginatingPackageName"

.field private static final ATTR_ORIGINATING_UID:Ljava/lang/String; = "originatingUid"

.field private static final ATTR_ORIGINATING_URI:Ljava/lang/String; = "originatingUri"

.field private static final ATTR_PACKAGE_SOURCE:Ljava/lang/String; = "packageSource"

.field private static final ATTR_PARENT_SESSION_ID:Ljava/lang/String; = "parentSessionId"

.field private static final ATTR_PREPARED:Ljava/lang/String; = "prepared"

.field private static final ATTR_REFERRER_URI:Ljava/lang/String; = "referrerUri"

.field private static final ATTR_SEALED:Ljava/lang/String; = "sealed"

.field private static final ATTR_SESSION_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final ATTR_SESSION_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final ATTR_SESSION_STAGE_CID:Ljava/lang/String; = "sessionStageCid"

.field private static final ATTR_SESSION_STAGE_DIR:Ljava/lang/String; = "sessionStageDir"

.field private static final ATTR_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final ATTR_SIZE_BYTES:Ljava/lang/String; = "sizeBytes"

.field private static final ATTR_STAGED_SESSION:Ljava/lang/String; = "stagedSession"

.field private static final ATTR_UPDATED_MILLIS:Ljava/lang/String; = "updatedMillis"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field private static final DEFAULT_FILEBRIDGE_READ_BUFFER_SIZE:I = 0x2000

.field private static final EMPTY_CHILD_SESSION_ARRAY:[I

.field private static final EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

.field private static final INCREMENTAL_STORAGE_BLOCKED_TIMEOUT_MS:I = 0x7d0

.field private static final INCREMENTAL_STORAGE_UNHEALTHY_MONITORING_MS:I = 0xea60

.field private static final INCREMENTAL_STORAGE_UNHEALTHY_TIMEOUT_MS:I = 0x1b58

.field private static final INVALID_TARGET_SDK_VERSION:I = 0x7fffffff

.field private static final LOGD:Z = true

.field private static final MSG_INSTALL:I = 0x3

.field private static final MSG_ON_PACKAGE_INSTALLED:I = 0x4

.field private static final MSG_ON_SESSION_SEALED:I = 0x1

.field private static final MSG_SESSION_VALIDATION_FAILURE:I = 0x5

.field private static final MSG_STREAM_VALIDATE_AND_COMMIT:I = 0x2

.field private static final PM_PROPERTY_INSTALLATION_BUFFER_SIZE:Ljava/lang/String; = "ro.miui.pm.install.buffer.size"

.field private static final PROPERTY_NAME_INHERIT_NATIVE:Ljava/lang/String; = "pi.inherit_native_on_dont_kill"

.field private static final REMOVE_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field private static final SYSTEM_DATA_LOADER_PACKAGE:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "PackageInstallerSession"

.field private static final TAG_AUTO_REVOKE_PERMISSIONS_MODE:Ljava/lang/String; = "auto-revoke-permissions-mode"

.field static final TAG_CHILD_SESSION:Ljava/lang/String; = "childSession"

.field private static final TAG_GRANTED_RUNTIME_PERMISSION:Ljava/lang/String; = "granted-runtime-permission"

.field static final TAG_SESSION:Ljava/lang/String; = "session"

.field static final TAG_SESSION_CHECKSUM:Ljava/lang/String; = "sessionChecksum"

.field static final TAG_SESSION_CHECKSUM_SIGNATURE:Ljava/lang/String; = "sessionChecksumSignature"

.field static final TAG_SESSION_FILE:Ljava/lang/String; = "sessionFile"

.field private static final TAG_WHITELISTED_RESTRICTED_PERMISSION:Ljava/lang/String; = "whitelisted-restricted-permission"

.field private static final USER_ACTION_NOT_NEEDED:I = 0x0

.field private static final USER_ACTION_PENDING_APK_PARSING:I = 0x2

.field private static final USER_ACTION_REQUIRED:I = 0x1

.field private static final sAddedApkFilter:Ljava/io/FileFilter;

.field private static final sAddedFilter:Ljava/io/FileFilter;

.field private static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field private final MAX_INSTALL_DURATION:I

.field private committedMillis:J

.field final createdMillis:J

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mBridges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private mCallingPackage:Ljava/lang/String;

.field private mChecksums:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;",
            ">;"
        }
    .end annotation
.end field

.field private mChildSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mClientProgress:F

.field private final mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private volatile mDataLoaderFinished:Z

.field private volatile mDestroyed:Z

.field private final mFds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mFiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/PackageInstallerSession$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalMessage:Ljava/lang/String;

.field private mFinalStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHasDeviceAdminReceiver:Z

.field private mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

.field private mIncrementalProgress:F

.field private mInheritedFilesBase:Ljava/io/File;

.field private mInstallSource:Lcom/android/server/pm/InstallSource;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private volatile mInstallerUid:I

.field private mInternalProgress:F

.field private mIsPerfLockAcquired:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOriginalInstallerPackageName:Ljava/lang/String;

.field private final mOriginalInstallerUid:I

.field private mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field private mPackageName:Ljava/lang/String;

.field private mParentSessionId:I

.field private mPendingAbandonCallback:Ljava/lang/Runnable;

.field private mPerfBoostInstall:Landroid/util/BoostFramework;

.field private mPermissionsManuallyAccepted:Z

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPrepared:Z

.field private mProgress:F

.field private final mProgressLock:Ljava/lang/Object;

.field private mRemoteStatusReceiver:Landroid/content/IntentSender;

.field private mReportedProgress:F

.field private mResolvedBaseFile:Ljava/io/File;

.field private final mResolvedInheritedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedInstructionSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedNativeLibPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z

.field private mSessionApplied:Z

.field private mSessionErrorCode:I

.field private mSessionErrorMessage:Ljava/lang/String;

.field private mSessionFailed:Z

.field private final mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

.field private mSessionReady:Z

.field private mShouldBeSealed:Z

.field private mSigningDetails:Landroid/content/pm/SigningDetails;

.field private final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field private mStageDirInUse:Z

.field final mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

.field private final mStagingManager:Lcom/android/server/pm/StagingManager;

.field private final mTiming:Lcom/android/server/pm/InstallationTiming;

.field private final mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mValidatedTargetSdk:I

.field private mVerityFoundForApks:Z

.field private mVersionCode:J

.field final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final sessionId:I

.field final stageCid:Ljava/lang/String;

.field final stageDir:Ljava/io/File;

.field private updatedMillis:J

.field final userId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmChildSessions(Lcom/android/server/pm/PackageInstallerSession;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionProvider(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageSessionProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIncrementalProgress(Lcom/android/server/pm/PackageInstallerSession;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$massertCallerIsOwnerOrRootOrSystem(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystem()V

    return-void
.end method

.method static bridge synthetic -$$Nest$massertNotChild(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcomputeProgressLocked(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionSealed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionValidationFailure(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoWriteInternal(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRemoteStatusReceiver(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/IntentSender;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleInstall(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleInstall()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleSessionSealed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStreamValidateAndCommit(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleStreamValidateAndCommit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minstall(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/CompletableFuture;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misInTerminalState(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInstallerDeviceOwnerOrAffiliatedProfileOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSystemDataLoaderUnrecoverable(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->onSystemDataLoaderUnrecoverable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSessionApplied(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionApplied()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mverify(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/PackageInstallerSession;->sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 275
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 276
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    .line 709
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    .line 722
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    .line 732
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$3;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;)V
    .registers 50
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "sessionProvider"    # Lcom/android/server/pm/PackageSessionProvider;
    .param p5, "silentUpdatePolicy"    # Lcom/android/server/pm/SilentUpdatePolicy;
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "stagingManager"    # Lcom/android/server/pm/StagingManager;
    .param p8, "sessionId"    # I
    .param p9, "userId"    # I
    .param p10, "installerUid"    # I
    .param p11, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p12, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p13, "createdMillis"    # J
    .param p15, "committedMillis"    # J
    .param p17, "stageDir"    # Ljava/io/File;
    .param p18, "stageCid"    # Ljava/lang/String;
    .param p19, "files"    # [Landroid/content/pm/InstallationFile;
    .param p21, "prepared"    # Z
    .param p22, "committed"    # Z
    .param p23, "destroyed"    # Z
    .param p24, "sealed"    # Z
    .param p25, "childSessionIds"    # [I
    .param p26, "parentSessionId"    # I
    .param p27, "isReady"    # Z
    .param p28, "isFailed"    # Z
    .param p29, "isApplied"    # Z
    .param p30, "sessionErrorCode"    # I
    .param p31, "sessionErrorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerService$InternalCallback;",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/PackageSessionProvider;",
            "Lcom/android/server/pm/SilentUpdatePolicy;",
            "Landroid/os/Looper;",
            "Lcom/android/server/pm/StagingManager;",
            "III",
            "Lcom/android/server/pm/InstallSource;",
            "Landroid/content/pm/PackageInstaller$SessionParams;",
            "JJ",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/InstallationFile;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;",
            ">;ZZZZ[IIZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 932
    .local p20, "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    move/from16 v3, p10

    move-object/from16 v4, p12

    move-wide/from16 v5, p13

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    move-object/from16 v9, p19

    move-object/from16 v10, p20

    move-object/from16 v11, p25

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 317
    const/4 v12, 0x0

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    .line 318
    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 319
    const/16 v14, 0x4e20

    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->MAX_INSTALL_DURATION:I

    .line 330
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 332
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 338
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v14, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 361
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    .line 363
    const/4 v14, 0x0

    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 365
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 368
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 370
    const/high16 v15, -0x40800000    # -1.0f

    iput v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 372
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    .line 376
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 378
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 380
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 383
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v14, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 390
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 394
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 402
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 404
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 417
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 426
    new-instance v14, Lcom/android/server/pm/InstallationTiming;

    invoke-direct {v14}, Lcom/android/server/pm/InstallationTiming;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    .line 468
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    .line 489
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 498
    iput v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 676
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 678
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 680
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 682
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 694
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 695
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    .line 706
    const v15, 0x7fffffff

    iput v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    .line 753
    new-instance v15, Lcom/android/server/pm/PackageInstallerSession$4;

    invoke-direct {v15, v0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 933
    move-object/from16 v13, p1

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 934
    move-object/from16 v12, p2

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 935
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 936
    if-eqz v1, :cond_c4

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    goto :goto_c5

    :cond_c4
    const/4 v12, 0x0

    :goto_c5
    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    .line 937
    move-object/from16 v12, p4

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    .line 938
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 939
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v12, p6

    invoke-direct {v1, v12, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 940
    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 943
    invoke-virtual {v14}, Lcom/android/server/pm/InstallationTiming;->setStarted()V

    .line 944
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "beginInstall_sessionId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "InstallationTiming"

    invoke-static {v15, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iput v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 948
    move/from16 v14, p9

    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 949
    iput v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 950
    iput v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 951
    invoke-static/range {p11 .. p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/InstallSource;

    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 952
    iget-object v15, v15, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    .line 953
    iput-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 954
    iput-wide v5, v0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 955
    iput-wide v5, v0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 956
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 957
    iput-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 958
    iput-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 959
    move/from16 v15, p24

    iput-boolean v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 960
    if-eqz v11, :cond_13a

    .line 961
    array-length v1, v11

    const/4 v2, 0x0

    :goto_123
    if-ge v2, v1, :cond_138

    move/from16 v17, v1

    aget v1, v11, v2

    .line 964
    .local v1, "childSessionId":I
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 961
    .end local v1    # "childSessionId":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, p10

    move-wide/from16 v5, p13

    move/from16 v1, v17

    goto :goto_123

    :cond_138
    const/4 v5, 0x0

    goto :goto_13b

    .line 960
    :cond_13a
    const/4 v5, 0x0

    .line 967
    :goto_13b
    move/from16 v1, p26

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 969
    if-eqz v9, :cond_168

    .line 970
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    array-length v3, v9

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 971
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v9

    .local v3, "size":I
    :goto_149
    if-ge v2, v3, :cond_168

    .line 972
    aget-object v6, v9, v2

    .line 973
    .local v6, "file":Landroid/content/pm/InstallationFile;
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-direct {v1, v2, v6}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 971
    .end local v6    # "file":Landroid/content/pm/InstallationFile;
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, p26

    const/4 v5, 0x0

    goto :goto_149

    .line 974
    .restart local v6    # "file":Landroid/content/pm/InstallationFile;
    :cond_160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "Trying to add a duplicate installation file"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 980
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v6    # "file":Landroid/content/pm/InstallationFile;
    :cond_168
    if-eqz v10, :cond_16f

    .line 981
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 984
    :cond_16f
    iget-boolean v1, v4, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_188

    const/4 v1, 0x1

    if-nez v7, :cond_178

    move v2, v1

    goto :goto_179

    :cond_178
    const/4 v2, 0x0

    :goto_179
    if-nez v8, :cond_17c

    goto :goto_17d

    :cond_17c
    const/4 v1, 0x0

    :goto_17d
    if-eq v2, v1, :cond_180

    goto :goto_188

    .line 985
    :cond_180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 989
    :cond_188
    :goto_188
    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 990
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v3, p22

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 991
    move/from16 v2, p23

    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 992
    move/from16 v5, p27

    iput-boolean v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 993
    move/from16 v6, p29

    iput-boolean v6, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 994
    move/from16 v1, p28

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 995
    move/from16 v1, p30

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 996
    nop

    .line 997
    if-eqz p31, :cond_1ad

    move-object/from16 v1, p31

    goto :goto_1b1

    :cond_1ad
    const-string v16, ""

    move-object/from16 v1, v16

    :goto_1b1
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 998
    iget-boolean v1, v4, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_1bd

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_1be

    :cond_1bd
    const/4 v1, 0x0

    :goto_1be
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 1000
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v1

    if-eqz v1, :cond_1ed

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_1e5

    .line 1006
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation()Z

    move-result v1

    if-eqz v1, :cond_1ed

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v0, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1dd

    goto :goto_1ed

    .line 1009
    :cond_1dd
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the com.android.permission.USE_SYSTEM_DATA_LOADERS permission to use system data loaders"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_1e5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DataLoader installation of APEX modules is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_1ed
    :goto_1ed
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    if-eqz v0, :cond_202

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->isAllowed()Z

    move-result v0

    if-eqz v0, :cond_1fa

    goto :goto_202

    .line 1016
    :cond_1fa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incremental installation not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :cond_202
    :goto_202
    return-void
.end method

.method private acquireTransactionLock()V
    .registers 4

    .line 4183
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4186
    return-void

    .line 4184
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concurrent access not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "apk"    # Landroid/content/pm/parsing/ApkLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3461
    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V

    .line 3462
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3466
    return-void

    .line 3463
    :cond_18
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signatures are inconsistent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertCallerIsOwnerOrRoot()V
    .registers 5

    .line 1772
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1773
    .local v0, "callingUid":I
    if-eqz v0, :cond_24

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, v1, :cond_b

    goto :goto_24

    .line 1774
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1776
    :cond_24
    :goto_24
    return-void
.end method

.method private assertCallerIsOwnerOrRootOrSystem()V
    .registers 5

    .line 1783
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1784
    .local v0, "callingUid":I
    if-eqz v0, :cond_28

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-eq v0, v1, :cond_28

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    goto :goto_28

    .line 1786
    :cond_f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1788
    :cond_28
    :goto_28
    return-void
.end method

.method private assertCallerIsOwnerRootOrVerifier()V
    .registers 5

    .line 1755
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1756
    .local v0, "callingUid":I
    if-eqz v0, :cond_35

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, v1, :cond_b

    goto :goto_35

    .line 1759
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1c

    .line 1762
    return-void

    .line 1764
    :cond_1c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1757
    :cond_35
    :goto_35
    return-void
.end method

.method private assertCanWrite(Z)V
    .registers 4
    .param p1, "reverseMode"    # Z

    .line 1421
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1425
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1426
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1427
    :try_start_c
    const-string v1, "assertCanWrite"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 1428
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1a

    .line 1429
    if-eqz p1, :cond_19

    .line 1430
    const-string v0, "Reverse mode"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertShellOrSystemCalling(Ljava/lang/String;)V

    .line 1432
    :cond_19
    return-void

    .line 1428
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1

    .line 1422
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write regular files in a data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertNoWriteFileTransfersOpenLocked()V
    .registers 5

    .line 1796
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Files still open"

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RevocableFileDescriptor;

    .line 1797
    .local v1, "fd":Landroid/os/RevocableFileDescriptor;
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->isRevoked()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1800
    .end local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    goto :goto_6

    .line 1798
    .restart local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1801
    .end local v1    # "fd":Landroid/os/RevocableFileDescriptor;
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FileBridge;

    .line 1802
    .local v1, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v1}, Landroid/os/FileBridge;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1805
    .end local v1    # "bridge":Landroid/os/FileBridge;
    goto :goto_27

    .line 1803
    .restart local v1    # "bridge":Landroid/os/FileBridge;
    :cond_3a
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1806
    .end local v1    # "bridge":Landroid/os/FileBridge;
    :cond_40
    return-void
.end method

.method private assertNotChild(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/lang/String;

    .line 3783
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3787
    return-void

    .line 3784
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be called on a child session, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3785
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertNotLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/lang/String;

    .line 1154
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1157
    return-void

    .line 1155
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is holding mLock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3471
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " inconsistent with "

    const/4 v2, -0x2

    if-eqz v0, :cond_73

    .line 3475
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_45

    .line 3476
    :cond_1c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " specified package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3480
    :cond_45
    :goto_45
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    cmp-long v0, v3, p3

    if-nez v0, :cond_4c

    .line 3485
    return-void

    .line 3481
    :cond_4c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3472
    :cond_73
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/lang/String;

    .line 1175
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1179
    return-void

    .line 1177
    :cond_c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed after commit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/lang/String;

    .line 1183
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-eqz v0, :cond_22

    .line 1186
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v0, :cond_9

    .line 1189
    return-void

    .line 1187
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed after destruction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1184
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before prepared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/lang/String;

    .line 1167
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 1168
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v0, :cond_8

    .line 1171
    return-void

    .line 1169
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed after sealing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertSealed(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Ljava/lang/String;

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1163
    return-void

    .line 1161
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before sealing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertShellOrSystemCalling(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .line 1410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sparse-switch v0, :sswitch_data_22

    .line 1416
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " only supported from shell or system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :sswitch_20
    nop

    .line 1418
    return-void

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_20
        0x3e8 -> :sswitch_20
        0x7d0 -> :sswitch_20
    .end sparse-switch
.end method

.method private static buildAppIconFile(ILjava/io/File;)Ljava/io/File;
    .registers 5
    .param p0, "sessionId"    # I
    .param p1, "sessionsDir"    # Ljava/io/File;

    .line 4683
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_icon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private canBeAddedAsChild(I)Z
    .registers 4
    .param p1, "parentCandidate"    # I

    .line 4175
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4176
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v1, p1, :cond_1b

    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4177
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    monitor-exit v0

    .line 4176
    return v1

    .line 4179
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private static checkUserActionRequirement(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/IntentSender;)Z
    .registers 9
    .param p0, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "target"    # Landroid/content/IntentSender;

    .line 2259
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2260
    return v1

    .line 2263
    :cond_8
    const/4 v0, 0x0

    .line 2265
    .local v0, "userActionRequirement":I
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->computeUserActionRequirement()I

    move-result v0

    .line 2266
    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 2267
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    .line 2268
    return v2

    .line 2271
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v3

    if-nez v3, :cond_5b

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5b

    .line 2273
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2274
    :try_start_20
    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    .line 2275
    .local v5, "validatedTargetSdk":I
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_58

    .line 2277
    const v4, 0x7fffffff

    if-eq v5, v4, :cond_30

    const/16 v4, 0x1e

    if-ge v5, v4, :cond_30

    .line 2279
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    .line 2280
    return v2

    .line 2283
    :cond_30
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    if-ne v4, v3, :cond_5b

    .line 2284
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 2285
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2284
    invoke-virtual {v3, v4, v6}, Lcom/android/server/pm/SilentUpdatePolicy;->isSilentUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 2288
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    .line 2289
    return v2

    .line 2291
    :cond_4a
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2292
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2291
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/SilentUpdatePolicy;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 2275
    .end local v5    # "validatedTargetSdk":I
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1

    .line 2296
    :cond_5b
    :goto_5b
    return v1
.end method

.method private closeInternal(Z)V
    .registers 5
    .param p1, "checkCaller"    # Z

    .line 3753
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 3754
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 3755
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 3759
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3760
    if-eqz p1, :cond_14

    .line 3761
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 3764
    :cond_14
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 3765
    .local v2, "activeCount":I
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_23

    .line 3767
    if-nez v2, :cond_22

    .line 3768
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 3770
    :cond_22
    return-void

    .line 3765
    .end local v2    # "activeCount":I
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private computeProgressLocked(Z)V
    .registers 8
    .param p1, "forcePublish"    # Z

    .line 1217
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_22

    .line 1223
    :cond_14
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    sub-float v3, v0, v3

    float-to-double v3, v3

    cmpl-double v3, v3, v1

    if-ltz v3, :cond_3a

    .line 1228
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    goto :goto_3a

    .line 1218
    :cond_22
    :goto_22
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v5

    .line 1219
    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 1233
    :cond_3a
    :goto_3a
    if-nez p1, :cond_46

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    cmpl-double v0, v3, v1

    if-ltz v0, :cond_4f

    .line 1234
    :cond_46
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 1235
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 1237
    :cond_4f
    return-void
.end method

.method private computeUserActionRequirement()I
    .registers 25

    .line 846
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 847
    :try_start_5
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    .line 848
    monitor-exit v2

    return v3

    .line 850
    :cond_c
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 851
    .local v0, "packageName":Ljava/lang/String;
    iget-boolean v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    .line 852
    .local v4, "hasDeviceAdminReceiver":Z
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_111

    .line 854
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v2, v2, 0x400

    const/4 v5, 0x1

    if-nez v2, :cond_23

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    if-ne v2, v5, :cond_21

    goto :goto_23

    :cond_21
    move v2, v3

    goto :goto_24

    :cond_23
    :goto_23
    move v2, v5

    .line 857
    .local v2, "forcePermissionPrompt":Z
    :goto_24
    if-eqz v2, :cond_27

    .line 858
    return v5

    .line 862
    :cond_27
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    .line 863
    .local v6, "snapshot":Lcom/android/server/pm/Computer;
    const-string v7, "android.permission.INSTALL_PACKAGES"

    iget v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 864
    invoke-interface {v6, v7, v8}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_39

    move v7, v5

    goto :goto_3a

    :cond_39
    move v7, v3

    .line 866
    .local v7, "isInstallPermissionGranted":Z
    :goto_3a
    const-string v8, "android.permission.INSTALL_SELF_UPDATES"

    iget v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 867
    invoke-interface {v6, v8, v9}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_46

    move v8, v5

    goto :goto_47

    :cond_46
    move v8, v3

    .line 869
    .local v8, "isSelfUpdatePermissionGranted":Z
    :goto_47
    const-string v9, "android.permission.INSTALL_PACKAGE_UPDATES"

    iget v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 870
    invoke-interface {v6, v9, v10}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_53

    move v9, v5

    goto :goto_54

    :cond_53
    move v9, v3

    .line 872
    .local v9, "isUpdatePermissionGranted":Z
    :goto_54
    const-string v10, "android.permission.UPDATE_PACKAGES_WITHOUT_USER_ACTION"

    iget v11, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v6, v10, v11}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_60

    move v10, v5

    goto :goto_61

    :cond_60
    move v10, v3

    .line 875
    .local v10, "isUpdateWithoutUserActionPermissionGranted":Z
    :goto_61
    const-string v11, "android.permission.INSTALL_DPC_PACKAGES"

    iget v12, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v6, v11, v12}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_6d

    move v11, v5

    goto :goto_6e

    :cond_6d
    move v11, v3

    .line 878
    .local v11, "isInstallDpcPackagesPermissionGranted":Z
    :goto_6e
    const-wide/16 v12, 0x0

    iget v14, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v6, v0, v12, v13, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v12

    .line 879
    .local v12, "targetPackageUid":I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_82

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v13

    if-eqz v13, :cond_80

    goto :goto_82

    :cond_80
    move v13, v3

    goto :goto_83

    :cond_82
    :goto_82
    move v13, v5

    .line 880
    .local v13, "isUpdate":Z
    :goto_83
    const/4 v14, 0x0

    if-eqz v13, :cond_8b

    .line 881
    invoke-interface {v6, v0}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v15

    goto :goto_8c

    .line 882
    :cond_8b
    move-object v15, v14

    :goto_8c
    nop

    .line 883
    .local v15, "existingInstallSourceInfo":Landroid/content/pm/InstallSourceInfo;
    if-eqz v15, :cond_94

    .line 884
    invoke-virtual {v15}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v14

    goto :goto_95

    .line 885
    :cond_94
    nop

    :goto_95
    nop

    .line 886
    .local v14, "existingInstallerPackageName":Ljava/lang/String;
    if-eqz v13, :cond_a4

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    const/4 v5, 0x1

    goto :goto_a5

    :cond_a4
    move v5, v3

    .line 888
    .local v5, "isInstallerOfRecord":Z
    :goto_a5
    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v12, v3, :cond_ab

    const/4 v3, 0x1

    goto :goto_ac

    :cond_ab
    const/4 v3, 0x0

    .line 889
    .local v3, "isSelfUpdate":Z
    :goto_ac
    if-nez v7, :cond_be

    if-eqz v9, :cond_b2

    if-nez v13, :cond_be

    :cond_b2
    if-eqz v8, :cond_b6

    if-nez v3, :cond_be

    :cond_b6
    if-eqz v11, :cond_bb

    if-eqz v4, :cond_bb

    goto :goto_be

    :cond_bb
    const/16 v18, 0x0

    goto :goto_c0

    :cond_be
    :goto_be
    const/16 v18, 0x1

    .line 893
    .local v18, "isPermissionGranted":Z
    :goto_c0
    move-object/from16 v19, v0

    .end local v0    # "packageName":Ljava/lang/String;
    .local v19, "packageName":Ljava/lang/String;
    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v0, :cond_c8

    const/4 v0, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    .line 894
    .local v0, "isInstallerRoot":Z
    :goto_c9
    move/from16 v20, v2

    .end local v2    # "forcePermissionPrompt":Z
    .local v20, "forcePermissionPrompt":Z
    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    move/from16 v21, v4

    .end local v4    # "hasDeviceAdminReceiver":Z
    .local v21, "hasDeviceAdminReceiver":Z
    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_d5

    const/4 v2, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v2, 0x0

    .line 898
    .local v2, "isInstallerSystem":Z
    :goto_d6
    if-nez v18, :cond_e5

    if-nez v0, :cond_e5

    if-nez v2, :cond_e5

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v4

    if-eqz v4, :cond_e3

    goto :goto_e5

    :cond_e3
    const/4 v4, 0x0

    goto :goto_e6

    :cond_e5
    :goto_e5
    const/4 v4, 0x1

    .line 901
    .local v4, "noUserActionNecessary":Z
    :goto_e6
    if-eqz v4, :cond_eb

    .line 902
    const/16 v16, 0x0

    return v16

    .line 905
    :cond_eb
    move/from16 v17, v0

    .end local v0    # "isInstallerRoot":Z
    .local v17, "isInstallerRoot":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    move/from16 v22, v2

    .end local v2    # "isInstallerSystem":Z
    .local v22, "isInstallerSystem":Z
    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    move/from16 v23, v4

    .end local v4    # "noUserActionNecessary":Z
    .local v23, "noUserActionNecessary":Z
    iget v4, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v6, v0, v2, v4}, Lcom/android/server/pm/Computer;->isInstallDisabledForPackage(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 908
    const/4 v0, 0x1

    return v0

    .line 911
    :cond_101
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10f

    if-eqz v10, :cond_10f

    if-nez v5, :cond_10e

    if-eqz v3, :cond_10f

    .line 914
    :cond_10e
    return v2

    .line 917
    :cond_10f
    const/4 v0, 0x1

    return v0

    .line 852
    .end local v3    # "isSelfUpdate":Z
    .end local v5    # "isInstallerOfRecord":Z
    .end local v6    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v7    # "isInstallPermissionGranted":Z
    .end local v8    # "isSelfUpdatePermissionGranted":Z
    .end local v9    # "isUpdatePermissionGranted":Z
    .end local v10    # "isUpdateWithoutUserActionPermissionGranted":Z
    .end local v11    # "isInstallDpcPackagesPermissionGranted":Z
    .end local v12    # "targetPackageUid":I
    .end local v13    # "isUpdate":Z
    .end local v14    # "existingInstallerPackageName":Ljava/lang/String;
    .end local v15    # "existingInstallSourceInfo":Landroid/content/pm/InstallSourceInfo;
    .end local v17    # "isInstallerRoot":Z
    .end local v18    # "isPermissionGranted":Z
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "forcePermissionPrompt":Z
    .end local v21    # "hasDeviceAdminReceiver":Z
    .end local v22    # "isInstallerSystem":Z
    .end local v23    # "noUserActionNecessary":Z
    :catchall_111
    move-exception v0

    :try_start_112
    monitor-exit v2
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v0
.end method

.method private static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .registers 11
    .param p1, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3640
    .local p0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    const-string v3, ".tmp"

    if-ge v2, v1, :cond_1c

    aget-object v4, v0, v2

    .line 3641
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3642
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3640
    .end local v4    # "file":Ljava/io/File;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3646
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "PackageInstallerSession"

    if-eqz v1, :cond_ee

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 3647
    .local v1, "fromFile":Ljava/io/File;
    const-string v4, "inherit"

    invoke-static {v4, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 3648
    .local v4, "tmpFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 3653
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1a4

    invoke-static {v5, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_63
    .catch Landroid/system/ErrnoException; {:try_start_5a .. :try_end_63} :catch_b3

    .line 3656
    nop

    .line 3657
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3658
    .local v5, "toFile":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Renaming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 3662
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v4    # "tmpFile":Ljava/io/File;
    .end local v5    # "toFile":Ljava/io/File;
    goto :goto_20

    .line 3660
    .restart local v1    # "fromFile":Ljava/io/File;
    .restart local v4    # "tmpFile":Ljava/io/File;
    .restart local v5    # "toFile":Ljava/io/File;
    :cond_92
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3654
    .end local v5    # "toFile":Ljava/io/File;
    :catch_b3
    move-exception v0

    .line 3655
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to chmod "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3650
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_cd
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3663
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v4    # "tmpFile":Ljava/io/File;
    :cond_ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " files into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    return-void
.end method

.method private createOatDirs(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3600
    .local p2, "instructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3602
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 3605
    nop

    .line 3606
    .end local v1    # "instructionSet":Ljava/lang/String;
    goto :goto_4

    .line 3603
    .restart local v1    # "instructionSet":Ljava/lang/String;
    :catch_1b
    move-exception v0

    .line 3604
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    throw v2

    .line 3607
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v1    # "instructionSet":Ljava/lang/String;
    :cond_21
    return-void
.end method

.method private createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1401
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1402
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1403
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_16} :catch_18

    .line 1406
    .end local v0    # "target":Ljava/io/File;
    nop

    .line 1407
    return-void

    .line 1404
    :catch_18
    move-exception v0

    .line 1405
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private createRevocableFdInternal(Landroid/os/RevocableFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "fd"    # Landroid/os/RevocableFileDescriptor;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1598
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    .line 1599
    .local v0, "releasedFdInt":I
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 1600
    .local v1, "releasedFd":Ljava/io/FileDescriptor;
    invoke-virtual {v1, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1601
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 1602
    invoke-virtual {p1}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method private destroy()V
    .registers 3

    .line 4431
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 4432
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 4433
    .local v1, "child":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {v1}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 4434
    .end local v1    # "child":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_b

    .line 4435
    :cond_1b
    return-void
.end method

.method private destroyInternal()V
    .registers 5

    .line 4442
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4443
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 4444
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v2, :cond_e

    .line 4445
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 4448
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RevocableFileDescriptor;

    .line 4449
    .local v2, "fd":Landroid/os/RevocableFileDescriptor;
    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 4450
    .end local v2    # "fd":Landroid/os/RevocableFileDescriptor;
    goto :goto_14

    .line 4451
    :cond_24
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FileBridge;

    .line 4452
    .local v2, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v2}, Landroid/os/FileBridge;->forceClose()V

    .line 4453
    .end local v2    # "bridge":Landroid/os/FileBridge;
    goto :goto_2a

    .line 4454
    :cond_3a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 4455
    .local v1, "incrementalFileStorages":Landroid/os/incremental/IncrementalFileStorages;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 4456
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_5b

    .line 4458
    if-eqz v1, :cond_45

    .line 4459
    :try_start_42
    invoke-virtual {v1}, Landroid/os/incremental/IncrementalFileStorages;->cleanUpAndMarkComplete()V

    .line 4461
    :cond_45
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_58

    .line 4462
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4463
    .local v0, "tempPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_42 .. :try_end_58} :catch_59

    .line 4466
    .end local v0    # "tempPackageName":Ljava/lang/String;
    :cond_58
    goto :goto_5a

    .line 4465
    :catch_59
    move-exception v0

    .line 4467
    :goto_5a
    return-void

    .line 4456
    .end local v1    # "incrementalFileStorages":Landroid/os/incremental/IncrementalFileStorages;
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private dispatchPendingAbandonCallback()Z
    .registers 5

    .line 3797
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3798
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 3799
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 3800
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Ljava/lang/Runnable;

    .line 3801
    .local v2, "callback":Ljava/lang/Runnable;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Ljava/lang/Runnable;

    .line 3802
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    .line 3803
    if-eqz v2, :cond_18

    .line 3804
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 3805
    const/4 v0, 0x1

    return v0

    .line 3807
    :cond_18
    return v1

    .line 3802
    .end local v2    # "callback":Ljava/lang/Runnable;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 4302
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 4304
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4305
    :try_start_6
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 4306
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 4307
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_45

    .line 4309
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    move v2, v0

    .line 4313
    .local v2, "success":Z
    :goto_12
    if-eqz p3, :cond_1c

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_1c
    move v0, v1

    .line 4314
    .local v0, "isNewInstall":Z
    :cond_1d
    if-eqz v2, :cond_36

    if-eqz v0, :cond_36

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerService;->okToSendBroadcasts()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 4315
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v3, v1, v4}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    .line 4318
    :cond_36
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4319
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 4320
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->logDataLoaderInstallationSession(I)V

    .line 4322
    :cond_44
    return-void

    .line 4307
    .end local v0    # "isNewInstall":Z
    .end local v2    # "success":Z
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private dispatchSessionSealed()V
    .registers 3

    .line 1847
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1848
    return-void
.end method

.method private dispatchSessionValidationFailure(ILjava/lang/String;)V
    .registers 6
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 4150
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4151
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4152
    return-void
.end method

.method private dispatchStreamValidateAndCommit()V
    .registers 3

    .line 1859
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1860
    return-void
.end method

.method private doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 28
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "incomingFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1612
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v12, p4

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1613
    :try_start_b
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_1d

    .line 1614
    new-instance v0, Landroid/os/RevocableFileDescriptor;

    invoke-direct {v0}, Landroid/os/RevocableFileDescriptor;-><init>()V

    .line 1615
    .local v0, "fd":Landroid/os/RevocableFileDescriptor;
    const/4 v6, 0x0

    .line 1616
    .local v6, "bridge":Landroid/os/FileBridge;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v6

    goto :goto_2f

    .line 1618
    .end local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v6    # "bridge":Landroid/os/FileBridge;
    :cond_1d
    const/4 v0, 0x0

    .line 1619
    .restart local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    new-instance v6, Landroid/os/FileBridge;

    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    .line 1622
    .restart local v6    # "bridge":Landroid/os/FileBridge;
    const-string v7, "CopyApk"

    invoke-virtual {v6, v7}, Landroid/os/FileBridge;->setName(Ljava/lang/String;)V

    .line 1624
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v6

    .line 1626
    .end local v0    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .local v14, "fd":Landroid/os/RevocableFileDescriptor;
    .local v15, "bridge":Landroid/os/FileBridge;
    :goto_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_167

    .line 1630
    :try_start_30
    invoke-static/range {p1 .. p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 1634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_3a
    .catch Landroid/system/ErrnoException; {:try_start_30 .. :try_end_3a} :catch_161

    move-wide/from16 v16, v5

    .line 1636
    .local v16, "identity":J
    :try_start_3c
    new-instance v0, Ljava/io/File;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_142

    move-object/from16 v18, v0

    .line 1638
    .local v18, "target":Ljava/io/File;
    :try_start_45
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1639
    nop

    .line 1641
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget v5, Landroid/system/OsConstants;->O_CREAT:I

    sget v6, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v5, v6

    const/16 v6, 0x1a4

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/pm/PackageInstallerSession;->openTargetInternal(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v11, v0

    .line 1643
    .local v11, "targetPfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_60
    .catch Landroid/system/ErrnoException; {:try_start_45 .. :try_end_60} :catch_161

    .line 1647
    const-wide/16 v5, 0x1

    :try_start_62
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1648
    .local v0, "bytes":[B
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "system.advise"

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_75} :catch_76
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_75} :catch_161

    .line 1651
    .end local v0    # "bytes":[B
    goto :goto_7f

    .line 1649
    :catch_76
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/lang/Exception;
    :try_start_77
    const-string v5, "PackageInstallerSession"

    const-string/jumbo v6, "set the value of the extended attribute failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7f
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_a2

    cmp-long v0, v12, v5

    if-lez v0, :cond_a2

    .line 1657
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1658
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v8, v8, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1659
    invoke-static {v8}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v8

    .line 1657
    invoke-virtual {v0, v7, v12, v13, v8}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    .line 1662
    :cond_a2
    cmp-long v0, v3, v5

    if-lez v0, :cond_af

    .line 1663
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v3, v4, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_af
    .catch Landroid/system/ErrnoException; {:try_start_77 .. :try_end_af} :catch_161

    .line 1666
    :cond_af
    if-eqz p6, :cond_11c

    .line 1672
    :try_start_b1
    new-instance v0, Landroid/system/Int64Ref;

    invoke-direct {v0, v5, v6}, Landroid/system/Int64Ref;-><init>(J)V

    .line 1673
    .local v0, "last":Landroid/system/Int64Ref;
    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    new-instance v7, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda6;

    invoke-direct {v7, v1, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V
    :try_end_c9
    .catchall {:try_start_b1 .. :try_end_c9} :catchall_f8

    move-object/from16 v19, v7

    move-wide/from16 v7, p4

    move-object/from16 v20, v11

    .end local v11    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    .local v20, "targetPfd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v11, v19

    :try_start_d1
    invoke-static/range {v5 .. v11}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_f6

    .line 1686
    .end local v0    # "last":Landroid/system/Int64Ref;
    :try_start_d4
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1687
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1691
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_dd
    .catch Landroid/system/ErrnoException; {:try_start_d4 .. :try_end_dd} :catch_161

    .line 1692
    :try_start_dd
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_e7

    .line 1693
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_ef

    .line 1695
    :cond_e7
    invoke-virtual {v15}, Landroid/os/FileBridge;->forceClose()V

    .line 1696
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1698
    :goto_ef
    monitor-exit v5

    .line 1699
    nop

    .line 1700
    const/4 v0, 0x0

    return-object v0

    .line 1698
    :catchall_f3
    move-exception v0

    monitor-exit v5
    :try_end_f5
    .catchall {:try_start_dd .. :try_end_f5} :catchall_f3

    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :goto_f5
    :try_start_f5
    throw v0

    .line 1686
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catchall_f6
    move-exception v0

    goto :goto_fb

    .end local v20    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    :catchall_f8
    move-exception v0

    move-object/from16 v20, v11

    .end local v11    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    :goto_fb
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1687
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1691
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_104
    .catch Landroid/system/ErrnoException; {:try_start_f5 .. :try_end_104} :catch_161

    .line 1692
    :try_start_104
    sget-boolean v6, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v6, :cond_10e

    .line 1693
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_116

    .line 1695
    :cond_10e
    invoke-virtual {v15}, Landroid/os/FileBridge;->forceClose()V

    .line 1696
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1698
    :goto_116
    monitor-exit v5
    :try_end_117
    .catchall {:try_start_104 .. :try_end_117} :catchall_119

    .line 1699
    nop

    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :try_start_118
    throw v0
    :try_end_119
    .catch Landroid/system/ErrnoException; {:try_start_118 .. :try_end_119} :catch_161

    .line 1698
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catchall_119
    move-exception v0

    :try_start_11a
    monitor-exit v5
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    goto :goto_f5

    .line 1701
    .end local v20    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    :cond_11c
    move-object/from16 v20, v11

    .end local v11    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_11e
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_129

    .line 1702
    move-object/from16 v5, v20

    .end local v20    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    .local v5, "targetPfd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {v1, v14, v5}, Lcom/android/server/pm/PackageInstallerSession;->createRevocableFdInternal(Landroid/os/RevocableFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1704
    .end local v5    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    :cond_129
    move-object/from16 v5, v20

    .end local v20    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15, v5}, Landroid/os/FileBridge;->setTargetFile(Landroid/os/ParcelFileDescriptor;)V

    .line 1706
    const-string/jumbo v0, "ro.miui.pm.install.buffer.size"

    const/16 v6, 0x2000

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1708
    .local v0, "size":I
    invoke-virtual {v15, v0}, Landroid/os/FileBridge;->setReadBufferSize(I)V

    .line 1710
    invoke-virtual {v15}, Landroid/os/FileBridge;->start()V

    .line 1711
    invoke-virtual {v15}, Landroid/os/FileBridge;->getClientSocket()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    return-object v6

    .line 1638
    .end local v0    # "size":I
    .end local v5    # "targetPfd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "target":Ljava/io/File;
    :catchall_142
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1639
    nop

    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    throw v0

    .line 1631
    .end local v16    # "identity":J
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :cond_148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    throw v0
    :try_end_161
    .catch Landroid/system/ErrnoException; {:try_start_11e .. :try_end_161} :catch_161

    .line 1714
    .restart local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15    # "bridge":Landroid/os/FileBridge;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catch_161
    move-exception v0

    .line 1715
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1626
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v14    # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15    # "bridge":Landroid/os/FileBridge;
    :catchall_167
    move-exception v0

    :try_start_168
    monitor-exit v5
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    throw v0
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 4477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4478
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4480
    const-string/jumbo v0, "userId"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4481
    const-string/jumbo v0, "mOriginalInstallerUid"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4482
    const-string/jumbo v0, "mOriginalInstallerPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4483
    const-string v0, "installerPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4484
    const-string v0, "installInitiatingPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4485
    const-string v0, "installOriginatingPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4486
    const-string v0, "mInstallerUid"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4487
    const-string v0, "createdMillis"

    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4488
    const-string/jumbo v0, "updatedMillis"

    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4489
    const-string v0, "committedMillis"

    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4490
    const-string/jumbo v0, "stageDir"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4491
    const-string/jumbo v0, "stageCid"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4492
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4494
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4498
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4499
    :try_start_a4
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 4500
    .local v1, "clientProgress":F
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 4501
    .local v2, "progress":F
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_1a2

    .line 4502
    const-string v0, "mClientProgress"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4503
    const-string/jumbo v0, "mProgress"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4504
    const-string v0, "mCommitted"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4505
    const-string/jumbo v0, "mSealed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4506
    const-string/jumbo v0, "mPermissionsManuallyAccepted"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4507
    const-string/jumbo v0, "mStageDirInUse"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4508
    const-string v0, "mDestroyed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4509
    const-string v0, "mFds"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4510
    const-string v0, "mBridges"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4511
    const-string v0, "mFinalStatus"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4512
    const-string v0, "mFinalMessage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4513
    const-string/jumbo v0, "params.isMultiPackage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4514
    const-string/jumbo v0, "params.isStaged"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4515
    const-string/jumbo v0, "mParentSessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4516
    const-string v0, "mChildSessionIds"

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4517
    const-string/jumbo v0, "mSessionApplied"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4518
    const-string/jumbo v0, "mSessionFailed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4519
    const-string/jumbo v0, "mSessionReady"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4520
    const-string/jumbo v0, "mSessionErrorCode"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4521
    const-string/jumbo v0, "mSessionErrorMessage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4524
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallationTiming;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 4525
    const-string/jumbo v0, "mTiming"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4529
    :cond_19b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4531
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4532
    return-void

    .line 4501
    .end local v1    # "clientProgress":F
    .end local v2    # "progress":F
    :catchall_1a2
    move-exception v1

    :try_start_1a3
    monitor-exit v0
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a2

    throw v1
.end method

.method private extractNativeLibraries(Landroid/content/pm/parsing/PackageLite;Ljava/io/File;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "packageLite"    # Landroid/content/pm/parsing/PackageLite;
    .param p2, "packageDir"    # Ljava/io/File;
    .param p3, "abiOverride"    # Ljava/lang/String;
    .param p4, "inherit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3669
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3670
    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3671
    .local v0, "libDir":Ljava/io/File;
    const/4 v1, 0x1

    if-nez p4, :cond_10

    .line 3673
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 3676
    :cond_10
    const/4 v2, 0x0

    .line 3678
    .local v2, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_11
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v3

    move-object v2, v3

    .line 3680
    const-string v3, "copyNativeBinariesWithOverride"

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3681
    nop

    .line 3682
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v3

    .line 3681
    invoke-static {v2, v0, p3, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v3

    .line 3684
    .local v3, "res":I
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2a} :catch_4c
    .catchall {:try_start_11 .. :try_end_2a} :catchall_4a

    .line 3685
    if-ne v3, v1, :cond_31

    .line 3693
    .end local v3    # "res":I
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3694
    nop

    .line 3695
    return-void

    .line 3686
    .restart local v3    # "res":I
    :cond_31
    :try_start_31
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extract native libraries, res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v0    # "libDir":Ljava/io/File;
    .end local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "packageLite":Landroid/content/pm/parsing/PackageLite;
    .end local p2    # "packageDir":Ljava/io/File;
    .end local p3    # "abiOverride":Ljava/lang/String;
    .end local p4    # "inherit":Z
    throw v1
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4a} :catch_4c
    .catchall {:try_start_31 .. :try_end_4a} :catchall_4a

    .line 3693
    .end local v3    # "res":I
    .restart local v0    # "libDir":Ljava/io/File;
    .restart local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "packageLite":Landroid/content/pm/parsing/PackageLite;
    .restart local p2    # "packageDir":Ljava/io/File;
    .restart local p3    # "abiOverride":Ljava/lang/String;
    .restart local p4    # "inherit":Z
    :catchall_4a
    move-exception v1

    goto :goto_57

    .line 3689
    :catch_4c
    move-exception v1

    .line 3690
    .local v1, "e":Ljava/io/IOException;
    :try_start_4d
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/16 v4, -0x6e

    const-string v5, "Failed to extract native libraries"

    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "libDir":Ljava/io/File;
    .end local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "packageLite":Landroid/content/pm/parsing/PackageLite;
    .end local p2    # "packageDir":Ljava/io/File;
    .end local p3    # "abiOverride":Ljava/lang/String;
    .end local p4    # "inherit":Z
    throw v3
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_4a

    .line 3693
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "libDir":Ljava/io/File;
    .restart local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "packageLite":Landroid/content/pm/parsing/PackageLite;
    .restart local p2    # "packageDir":Ljava/io/File;
    .restart local p3    # "abiOverride":Ljava/lang/String;
    .restart local p4    # "inherit":Z
    :goto_57
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3694
    throw v1
.end method

.method private static filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "filter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1286
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1d

    aget-object v3, p1, v2

    .line 1287
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1288
    .local v4, "file":Ljava/io/File;
    invoke-interface {p2, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1289
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1292
    :cond_1d
    return-object v0
.end method

.method private generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 9
    .param p1, "includeIcon"    # Z
    .param p2, "scrubData"    # Z

    .line 1061
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 1063
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1064
    :try_start_8
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 1065
    .local v2, "progress":F
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_fa

    .line 1066
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1067
    :try_start_e
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 1068
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 1069
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 1070
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    .line 1071
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v1, :cond_2b

    .line 1072
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 1073
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 1074
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 1075
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 1076
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_46

    const/4 v1, 0x1

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    :goto_47
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 1078
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 1079
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 1080
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    .line 1081
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 1082
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_66

    goto :goto_6a

    :cond_66
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    :goto_6a
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 1083
    if-eqz p1, :cond_74

    .line 1084
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 1086
    :cond_74
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 1088
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    .line 1089
    if-nez p2, :cond_88

    .line 1090
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 1092
    :cond_88
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    .line 1093
    if-nez p2, :cond_96

    .line 1094
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 1096
    :cond_96
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 1097
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 1098
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 1099
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 1100
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    .line 1101
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    .line 1102
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 1103
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 1104
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 1105
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    .line 1106
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    .line 1107
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    .line 1108
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->setSessionErrorCode(ILjava/lang/String;)V

    .line 1109
    iget-wide v4, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    iput-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    .line 1110
    iget-wide v4, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    iput-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    .line 1111
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    .line 1112
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    .line 1113
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    .line 1114
    monitor-exit v3

    .line 1115
    return-object v0

    .line 1114
    :catchall_f7
    move-exception v1

    monitor-exit v3
    :try_end_f9
    .catchall {:try_start_e .. :try_end_f9} :catchall_f7

    throw v1

    .line 1065
    .end local v2    # "progress":F
    :catchall_fa
    move-exception v2

    :try_start_fb
    monitor-exit v1
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v2
.end method

.method private getAddedApksLocked()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1297
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, "names":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    invoke-static {v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getApksSize(Ljava/lang/String;)J
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2767
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 2768
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 2769
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-wide/16 v2, 0x0

    if-nez v1, :cond_11

    .line 2770
    return-wide v2

    .line 2772
    :cond_11
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPath()Ljava/io/File;

    move-result-object v4

    .line 2773
    .local v4, "apkDirOrPath":Ljava/io/File;
    if-nez v4, :cond_18

    .line 2774
    return-wide v2

    .line 2776
    :cond_18
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    const-string v6, ".apk"

    if-eqz v5, :cond_33

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2777
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2

    .line 2779
    :cond_33
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 2780
    return-wide v2

    .line 2782
    :cond_3a
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 2783
    .local v2, "files":[Ljava/io/File;
    const-wide/16 v7, 0x0

    .line 2784
    .local v7, "apksSize":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_41
    array-length v5, v2

    if-ge v3, v5, :cond_5e

    .line 2785
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 2786
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 2784
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 2789
    .end local v3    # "i":I
    :cond_5e
    return-wide v7
.end method

.method private getChildSessionIdsLocked()[I
    .registers 5

    .line 4156
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4157
    .local v0, "size":I
    if-nez v0, :cond_b

    .line 4158
    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    return-object v1

    .line 4160
    :cond_b
    new-array v1, v0, [I

    .line 4161
    .local v1, "childSessionIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1b

    .line 4162
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 4161
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4164
    .end local v2    # "i":I
    :cond_1b
    return-object v1
.end method

.method private getChildSessionsLocked()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    .line 2080
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2081
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2082
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2083
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 2084
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_25

    .line 2085
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2084
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2088
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_25
    return-object v0
.end method

.method private getDataLoader(I)Landroid/content/pm/IDataLoader;
    .registers 6
    .param p1, "dataLoaderId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 4141
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoaderManager()Landroid/content/pm/DataLoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/DataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object v0

    .line 4142
    .local v0, "dataLoader":Landroid/content/pm/IDataLoader;
    if-eqz v0, :cond_b

    .line 4146
    return-object v0

    .line 4143
    :cond_b
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x14

    const-string v3, "Failure to obtain data loader"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private getDataLoaderManager()Landroid/content/pm/DataLoaderManager;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 4132
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/DataLoaderManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/DataLoaderManager;

    .line 4133
    .local v0, "dataLoaderManager":Landroid/content/pm/DataLoaderManager;
    if-eqz v0, :cond_d

    .line 4137
    return-object v0

    .line 4134
    :cond_d
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x14

    const-string v3, "Failed to find data loader manager service"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static getDeviceOwnerInstalledPackageMsg(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "update"    # Z

    .line 4615
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4616
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_1a

    .line 4617
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;)V

    const-string v3, "Core.PACKAGE_UPDATED_BY_DO"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 4619
    :cond_1a
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;)V

    const-string v3, "Core.PACKAGE_INSTALLED_BY_DO"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    .line 4616
    :goto_29
    return-object v1
.end method

.method private getIncrementalFileStorages()Landroid/os/incremental/IncrementalFileStorages;
    .registers 3

    .line 3314
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3315
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    monitor-exit v0

    return-object v1

    .line 3316
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;
    .registers 6

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    .line 1278
    .local v0, "result":[Landroid/content/pm/InstallationFile;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 1279
    .local v2, "fileEntry":Lcom/android/server/pm/PackageInstallerSession$FileEntry;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->getIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->getFile()Landroid/content/pm/InstallationFile;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1280
    .end local v2    # "fileEntry":Lcom/android/server/pm/PackageInstallerSession$FileEntry;
    goto :goto_e

    .line 1281
    :cond_25
    return-object v0
.end method

.method private getNamesLocked()[Ljava/lang/String;
    .registers 6

    .line 1263
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1264
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStageDirContentsLocked()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1267
    :cond_b
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v0

    .line 1268
    .local v0, "files":[Landroid/content/pm/InstallationFile;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 1269
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "size":I
    :goto_14
    if-ge v2, v3, :cond_21

    .line 1270
    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1269
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1272
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_21
    return-object v1
.end method

.method private getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;
    .registers 9
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2719
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v0, :cond_5

    .line 2720
    return-object v0

    .line 2723
    :cond_5
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 2724
    .local v0, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 2725
    invoke-static {v0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2726
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2730
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/PackageLite;

    return-object v2

    .line 2727
    :cond_1b
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x6e

    .line 2728
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "base"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3584
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3585
    .local v0, "pathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3587
    .local v1, "baseStr":Ljava/lang/String;
    const-string v2, "/."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 3591
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3592
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3595
    :cond_1f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " outside base: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3588
    :cond_42
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid path (was relative) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRemoteStatusReceiver()Landroid/content/IntentSender;
    .registers 3

    .line 2374
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2375
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    monitor-exit v0

    return-object v1

    .line 2376
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1392
    .local v0, "markerName":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1395
    return-object v0

    .line 1393
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid marker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRemovedFilesLocked()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1303
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    .line 1304
    .local v0, "names":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    invoke-static {v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getStageDirContentsLocked()[Ljava/lang/String;
    .registers 2

    .line 1254
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1255
    .local v0, "result":[Ljava/lang/String;
    if-nez v0, :cond_a

    .line 1256
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 1258
    :cond_a
    return-object v0
.end method

.method private handleInstall()V
    .registers 3

    .line 2314
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2315
    const/16 v0, 0x70

    .line 2316
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2317
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2318
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2327
    :cond_19
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntentIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2328
    return-void

    .line 2331
    :cond_20
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_2c

    .line 2332
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->verifySession()V

    goto :goto_2f

    .line 2334
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    .line 2336
    :goto_2f
    return-void
.end method

.method private handleSessionSealed()V
    .registers 2

    .line 1851
    const-string v0, "dispatchSessionSealed"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertSealed(Ljava/lang/String;)V

    .line 1854
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1855
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchStreamValidateAndCommit()V

    .line 1856
    return-void
.end method

.method private handleStreamValidateAndCommit()V
    .registers 5

    .line 1867
    const/4 v0, 0x1

    .line 1868
    .local v0, "allSessionsReady":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 1869
    .local v2, "child":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v3

    and-int/2addr v0, v3

    .line 1870
    .end local v2    # "child":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_9

    .line 1871
    :cond_1b
    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1872
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_2d} :catch_2e

    .line 1879
    .end local v0    # "allSessionsReady":Z
    :cond_2d
    goto :goto_41

    .line 1874
    :catch_2e
    move-exception v0

    .line 1875
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroy()V

    .line 1876
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1877
    .local v1, "msg":Ljava/lang/String;
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1878
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 1880
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v1    # "msg":Ljava/lang/String;
    :goto_41
    return-void
.end method

.method private inheritFileLocked(Ljava/io/File;)V
    .registers 6
    .param p1, "origFile"    # Ljava/io/File;

    .line 3435
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3437
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->maybeInheritFsveritySignatureLocked(Ljava/io/File;)V

    .line 3440
    nop

    .line 3441
    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 3442
    .local v0, "dexMetadataFile":Ljava/io/File;
    if-eqz v0, :cond_17

    .line 3443
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3444
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->maybeInheritFsveritySignatureLocked(Ljava/io/File;)V

    .line 3447
    :cond_17
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->findDigestsForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 3448
    .local v1, "digestsFile":Ljava/io/File;
    if-eqz v1, :cond_2d

    .line 3449
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3451
    invoke-static {v1}, Lcom/android/server/pm/ApkChecksums;->findSignatureForDigests(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 3452
    .local v2, "signatureFile":Ljava/io/File;
    if-eqz v2, :cond_2d

    .line 3453
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3456
    .end local v2    # "signatureFile":Ljava/io/File;
    :cond_2d
    return-void
.end method

.method private install()Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2551
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->installNonStaged()Ljava/util/List;

    move-result-object v0

    .line 2552
    .local v0, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/concurrent/CompletableFuture;

    .line 2553
    .local v1, "arr":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    return-object v2
.end method

.method private installNonStaged()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/server/pm/PackageInstallerSession$InstallResult;",
            ">;>;"
        }
    .end annotation

    .line 2578
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2579
    .local v0, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2580
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2581
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->makeInstallParams(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallParams;

    move-result-object v2

    .line 2582
    .local v2, "installingSession":Lcom/android/server/pm/InstallParams;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 2583
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v3

    .line 2584
    .local v3, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2585
    .local v4, "installingChildSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallParams;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_46

    .line 2586
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 2587
    .local v6, "session":Lcom/android/server/pm/PackageInstallerSession;
    new-instance v7, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v7}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v1, v7

    .line 2588
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2589
    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageInstallerSession;->makeInstallParams(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallParams;

    move-result-object v7

    .line 2590
    .local v7, "installingChildSession":Lcom/android/server/pm/InstallParams;
    if-eqz v7, :cond_43

    .line 2591
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2585
    .end local v6    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v7    # "installingChildSession":Lcom/android/server/pm/InstallParams;
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 2594
    .end local v5    # "i":I
    :cond_46
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4f

    .line 2595
    invoke-virtual {v2, v4}, Lcom/android/server/pm/InstallParams;->installStage(Ljava/util/List;)V

    .line 2597
    .end local v3    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local v4    # "installingChildSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallParams;>;"
    :cond_4f
    goto :goto_94

    :cond_50
    if-eqz v2, :cond_4f

    .line 2599
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2600
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 2599
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerServiceStub;->checkParentalControlPermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2603
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallingPackage:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    if-nez v3, :cond_7a

    .line 2605
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v3

    if-eqz v3, :cond_78

    goto :goto_7a

    :cond_78
    const/4 v3, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v3, 0x1

    :goto_7b
    move v12, v3

    iget v13, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 2603
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/PackageManagerServiceStub;->assertValidApkAndInstaller(Ljava/lang/String;Landroid/content/pm/SigningDetails;ILjava/lang/String;ZI)V

    .line 2606
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallationTiming;->setMiuiVerificationStarted()V

    .line 2607
    invoke-virtual {v2}, Lcom/android/server/pm/InstallParams;->installStage()V

    .line 2608
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallationTiming;->setMiuiVerificationFinished()V

    .line 2609
    iget-object v3, v2, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    iput-object v4, v3, Lcom/android/server/pm/OriginInfo;->mTiming:Lcom/android/server/pm/InstallationTiming;
    :try_end_94
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_94} :catch_95

    .line 2613
    :goto_94
    return-object v0

    .line 2614
    .end local v0    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;>;"
    .end local v1    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;"
    .end local v2    # "installingSession":Lcom/android/server/pm/InstallParams;
    :catch_95
    move-exception v0

    .line 2615
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2616
    .local v1, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;>;"
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2617
    return-object v1
.end method

.method private isDataLoaderInstallation()Z
    .registers 2

    .line 792
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    return v0
.end method

.method static isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 2
    .param p0, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 742
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isFsVerityRequiredForApk(Ljava/io/File;Ljava/io/File;)Z
    .registers 9
    .param p1, "origFile"    # Ljava/io/File;
    .param p2, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3381
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 3382
    return v1

    .line 3386
    :cond_6
    new-instance v0, Ljava/io/File;

    .line 3387
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3388
    .local v0, "originalSignature":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 3389
    const/4 v1, 0x0

    return v1

    .line 3391
    :cond_1b
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    .line 3395
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 3396
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 3397
    goto :goto_23

    .line 3400
    :cond_3c
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3401
    goto :goto_23

    .line 3403
    :cond_4b
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x76

    const-string v4, "Previously staged apk is missing fs-verity signature"

    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 3406
    .end local v3    # "file":Ljava/io/File;
    :cond_55
    return v1
.end method

.method private isInTerminalState()Z
    .registers 3

    .line 1143
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v1, 0x1

    :goto_f
    monitor-exit v0

    return v1

    .line 1145
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private isIncrementalInstallation()Z
    .registers 3

    .line 800
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private static isIncrementalInstallationAllowed(Ljava/lang/String;)Z
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1936
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1937
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1938
    .local v1, "existingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_16

    goto :goto_2d

    .line 1942
    :cond_16
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1943
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    .line 1942
    :goto_2c
    return v2

    .line 1939
    :cond_2d
    :goto_2d
    return v2
.end method

.method private isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z
    .registers 5

    .line 811
    const-string v0, "isInstallerDeviceOwnerOrAffiliatedProfileOwner"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    .line 814
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertSealed(Ljava/lang/String;)V

    .line 815
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    .line 816
    return v2

    .line 818
    :cond_14
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 819
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 822
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_2d

    .line 823
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 822
    invoke-virtual {v0, v1, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    return v2
.end method

.method private static isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .registers 11
    .param p1, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 3506
    .local p0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 3507
    .local v1, "toStat":Landroid/system/StructStat;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 3508
    .local v3, "fromFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    .line 3509
    .local v4, "fromStat":Landroid/system/StructStat;
    iget-wide v5, v4, Landroid/system/StructStat;->st_dev:J

    iget-wide v7, v1, Landroid/system/StructStat;->st_dev:J
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_25} :catch_2e

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2a

    .line 3510
    return v0

    .line 3512
    .end local v3    # "fromFile":Ljava/io/File;
    .end local v4    # "fromStat":Landroid/system/StructStat;
    :cond_2a
    goto :goto_d

    .line 3516
    .end local v1    # "toStat":Landroid/system/StructStat;
    :cond_2b
    nop

    .line 3517
    const/4 v0, 0x1

    return v0

    .line 3513
    :catch_2e
    move-exception v1

    .line 3514
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to detect if linking possible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageInstallerSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    return v0
.end method

.method private static isSecureFrpInstallAllowed(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I

    .line 1917
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1918
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 1920
    .local v1, "systemInstaller":[Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 1921
    .local v3, "callingInstaller":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v3, :cond_1f

    .line 1922
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1924
    return v2

    .line 1928
    :cond_1f
    const-string v4, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_28

    const/4 v2, 0x1

    :cond_28
    return v2
.end method

.method private static isStagedSessionStateValid(ZZZ)Z
    .registers 4
    .param p0, "isReady"    # Z
    .param p1, "isApplied"    # Z
    .param p2, "isFailed"    # Z

    .line 4840
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    if-eqz p2, :cond_18

    :cond_6
    if-eqz p0, :cond_c

    if-nez p1, :cond_c

    if-eqz p2, :cond_18

    :cond_c
    if-nez p0, :cond_12

    if-eqz p1, :cond_12

    if-eqz p2, :cond_18

    :cond_12
    if-nez p0, :cond_1a

    if-nez p1, :cond_1a

    if-eqz p2, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private isStreamingInstallation()Z
    .registers 3

    .line 796
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private isSystemDataLoaderInstallation()Z
    .registers 2

    .line 804
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    return v0
.end method

.method static isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 3
    .param p0, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 746
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 747
    const/4 v0, 0x0

    return v0

    .line 749
    :cond_8
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 750
    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 749
    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$addChildSessionId$8(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2
    .param p0, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 4218
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$containsApkSession$6(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2
    .param p0, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 2827
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getDeviceOwnerInstalledPackageMsg$10(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 4620
    const v0, 0x1040679

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getDeviceOwnerInstalledPackageMsg$9(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 4618
    const v0, 0x104067a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onSystemDataLoaderUnrecoverable$1(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;)V
    .registers 9
    .param p0, "deletePackageHelper"    # Lcom/android/server/pm/DeletePackageHelper;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2146
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    .line 2150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to uninstall package with failed dataloader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    :cond_26
    return-void
.end method

.method static synthetic lambda$sendPendingUserActionIntentIfNeeded$2(Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3
    .param p0, "statusReceiver"    # Landroid/content/IntentSender;
    .param p1, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 2309
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageInstallerSession;->checkUserActionRequirement(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method private linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "fromBase"    # Ljava/lang/String;
    .param p4, "toBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3613
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getIncrementalFileStorages()Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v0

    .line 3614
    .local v0, "incrementalFileStorages":Landroid/os/incremental/IncrementalFileStorages;
    if-eqz v0, :cond_d

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/incremental/IncrementalFileStorages;->makeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3616
    return-void

    .line 3618
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_14

    .line 3622
    .end local v0    # "incrementalFileStorages":Landroid/os/incremental/IncrementalFileStorages;
    nop

    .line 3623
    return-void

    .line 3619
    :catch_14
    move-exception v0

    .line 3620
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed linkOrCreateDir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private linkFiles(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "toDir"    # Ljava/io/File;
    .param p4, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3627
    .local p2, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 3628
    .local v1, "fromFile":Ljava/io/File;
    invoke-static {v1, p4}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 3629
    .local v2, "relativePath":Ljava/lang/String;
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 3630
    .local v3, "fromBase":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 3632
    .local v4, "toBase":Ljava/lang/String;
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3633
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "relativePath":Ljava/lang/String;
    .end local v3    # "fromBase":Ljava/lang/String;
    .end local v4    # "toBase":Ljava/lang/String;
    goto :goto_4

    .line 3635
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Linked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " files into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    return-void
.end method

.method private logDataLoaderInstallationSession(I)V
    .registers 15
    .param p1, "returnCode"    # I

    .line 2746
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2748
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_e

    move-object v4, v0

    goto :goto_11

    :cond_e
    const-string v1, ""

    move-object v4, v1

    .line 2749
    .local v4, "packageNameToLog":Ljava/lang/String;
    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2751
    .local v11, "currentTimestamp":J
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1a

    .line 2753
    const/4 v1, -0x1

    .local v1, "packageUid":I
    goto :goto_28

    .line 2755
    .end local v1    # "packageUid":I
    :cond_1a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 2757
    .restart local v1    # "packageUid":I
    :goto_28
    const/16 v2, 0x107

    .line 2758
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v3

    iget-wide v5, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long v5, v11, v5

    .line 2762
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->getApksSize(Ljava/lang/String;)J

    move-result-wide v8

    .line 2757
    move v7, p1

    move v10, v1

    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JIJI)V

    .line 2764
    return-void
.end method

.method private makeInstallParams(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallParams;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/server/pm/PackageInstallerSession$InstallResult;",
            ">;)",
            "Lcom/android/server/pm/InstallParams;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2655
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2656
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v1, :cond_b6

    .line 2660
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->markStageDirInUseLocked()V

    .line 2661
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c0

    .line 2663
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 2665
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_30

    .line 2666
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_30

    .line 2668
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 2669
    return-object v1

    .line 2672
    :cond_30
    :goto_30
    new-instance v4, Lcom/android/server/pm/PackageInstallerSession$5;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/PackageInstallerSession$5;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;)V

    .line 2690
    .local v4, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_41

    .line 2691
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, v0

    .local v0, "user":Landroid/os/UserHandle;
    goto :goto_49

    .line 2693
    .end local v0    # "user":Landroid/os/UserHandle;
    :cond_41
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, v0

    .line 2696
    .local v1, "user":Landroid/os/UserHandle;
    :goto_49
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_58

    .line 2697
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2700
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_99

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_99

    .line 2701
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2703
    :try_start_67
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-nez v2, :cond_8b

    .line 2704
    const-string v2, "PackageInstallerSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". Don\'t have a valid PackageLite."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    :cond_8b
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 2707
    monitor-exit v0

    goto :goto_99

    :catchall_96
    move-exception v2

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_67 .. :try_end_98} :catchall_96

    throw v2

    .line 2710
    :cond_99
    :goto_99
    iget-object v12, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2711
    :try_start_9c
    new-instance v0, Lcom/android/server/pm/InstallParams;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v2, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/InstallParams;-><init>(Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V

    monitor-exit v12

    return-object v0

    .line 2713
    :catchall_b3
    move-exception v0

    monitor-exit v12
    :try_end_b5
    .catchall {:try_start_9c .. :try_end_b5} :catchall_b3

    throw v0

    .line 2657
    .end local v1    # "user":Landroid/os/UserHandle;
    .end local v4    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :cond_b6
    :try_start_b6
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x6e

    const-string v3, "Session not sealed"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;"
    throw v1

    .line 2661
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;"
    :catchall_c0
    move-exception v1

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_b6 .. :try_end_c2} :catchall_c0

    throw v1
.end method

.method private markAsSealed(Landroid/content/IntentSender;Z)Z
    .registers 10
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .param p2, "forTransfer"    # Z

    .line 1953
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v0

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v1

    :goto_e
    const-string/jumbo v3, "statusReceiver can\'t be null for the root session"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1955
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1957
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1958
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commit of session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1959
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 1961
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 1962
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "secure_frp_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_46

    move v3, v1

    goto :goto_47

    :cond_46
    move v3, v0

    .line 1963
    .local v3, "isSecureFrpEnabled":Z
    :goto_47
    if-eqz v3, :cond_5e

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 1964
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->isSecureFrpInstallAllowed(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_56

    goto :goto_5e

    .line 1965
    :cond_56
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t install packages while in secure FRP"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "statusReceiver":Landroid/content/IntentSender;
    .end local p2    # "forTransfer":Z
    throw v0

    .line 1968
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2    # "forTransfer":Z
    :cond_5e
    :goto_5e
    if-eqz p2, :cond_77

    .line 1969
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq v4, v5, :cond_6f

    goto :goto_7d

    .line 1971
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session has not been transferred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "statusReceiver":Landroid/content/IntentSender;
    .end local p2    # "forTransfer":Z
    throw v0

    .line 1974
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2    # "forTransfer":Z
    :cond_77
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-ne v4, v5, :cond_94

    .line 1979
    :goto_7d
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->setRemoteStatusReceiver(Landroid/content/IntentSender;)V

    .line 1982
    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v4, :cond_86

    .line 1983
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_1a .. :try_end_85} :catchall_9c

    return v1

    .line 1988
    :cond_86
    :try_start_86
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual {v4}, Lcom/android/server/pm/InstallationTiming;->setFileCopied()V

    .line 1990
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V
    :try_end_8e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_86 .. :try_end_8e} :catch_91
    .catchall {:try_start_86 .. :try_end_8e} :catchall_9c

    .line 1993
    nop

    .line 1994
    .end local v3    # "isSecureFrpEnabled":Z
    :try_start_8f
    monitor-exit v2

    .line 1996
    return v1

    .line 1991
    .restart local v3    # "isSecureFrpEnabled":Z
    :catch_91
    move-exception v1

    .line 1992
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    monitor-exit v2

    return v0

    .line 1975
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session has been transferred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "statusReceiver":Landroid/content/IntentSender;
    .end local p2    # "forTransfer":Z
    throw v0

    .line 1994
    .end local v3    # "isSecureFrpEnabled":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2    # "forTransfer":Z
    :catchall_9c
    move-exception v0

    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_9c

    throw v0
.end method

.method private markStageDirInUseLocked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2458
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v0, :cond_8

    .line 2464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 2465
    return-void

    .line 2459
    :cond_8
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    const-string v2, "Session destroyed"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private mayInheritNativeLibs()Z
    .registers 4

    .line 2798
    const-string/jumbo v0, "pi.inherit_native_on_dont_kill"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method private maybeFinishChildSessions(ILjava/lang/String;)V
    .registers 6
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 3777
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 3778
    .local v1, "child":Lcom/android/server/pm/PackageInstallerSession;
    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3779
    .end local v1    # "child":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_8

    .line 3780
    :cond_19
    return-void
.end method

.method private maybeInheritFsveritySignatureLocked(Ljava/io/File;)V
    .registers 4
    .param p1, "origFile"    # Ljava/io/File;

    .line 3426
    new-instance v0, Ljava/io/File;

    .line 3427
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3428
    .local v0, "fsveritySignatureFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3429
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3431
    :cond_18
    return-void
.end method

.method private static maybeRenameFile(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2734
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 2735
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_32

    .line 2736
    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2740
    :cond_32
    :goto_32
    return-void
.end method

.method private maybeStageDexMetadataLocked(Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .param p1, "origFile"    # Ljava/io/File;
    .param p2, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3293
    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 3294
    .local v0, "dexMetadataFile":Ljava/io/File;
    if-nez v0, :cond_7

    .line 3295
    return-void

    .line 3298
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3302
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 3303
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3305
    .local v1, "targetDexMetadataFile":Ljava/io/File;
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 3309
    nop

    .line 3310
    invoke-static {}, Landroid/content/pm/dex/DexMetadataHelper;->isFsVerityRequired()Z

    move-result v2

    .line 3309
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V

    .line 3311
    return-void

    .line 3299
    .end local v1    # "targetDexMetadataFile":Ljava/io/File;
    :cond_2c
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private maybeStageDigestsLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .registers 13
    .param p1, "origFile"    # Ljava/io/File;
    .param p2, "targetFile"    # Ljava/io/File;
    .param p3, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3332
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 3333
    .local v0, "perFileChecksum":Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;
    if-nez v0, :cond_f

    .line 3334
    return-void

    .line 3336
    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3338
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getChecksums()[Landroid/content/pm/Checksum;

    move-result-object v1

    .line 3339
    .local v1, "checksums":[Landroid/content/pm/Checksum;
    array-length v2, v1

    if-nez v2, :cond_20

    .line 3340
    return-void

    .line 3343
    :cond_20
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3344
    .local v2, "targetDigestsPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3345
    .local v3, "targetDigestsFile":Ljava/io/File;
    :try_start_2f
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_9e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2f .. :try_end_34} :catch_80
    .catch Ljava/security/SignatureException; {:try_start_2f .. :try_end_34} :catch_80

    .line 3346
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_34
    invoke-static {v4, v1}, Lcom/android/server/pm/ApkChecksums;->writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V

    .line 3348
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getSignature()[B

    move-result-object v5

    .line 3349
    .local v5, "signature":[B
    if-eqz v5, :cond_43

    array-length v6, v5

    if-lez v6, :cond_43

    .line 3350
    invoke-static {v1, v5}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;

    .line 3354
    :cond_43
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 3355
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 3354
    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/pm/PackageInstallerSession;->storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 3356
    invoke-direct {p0, v3, v3}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 3359
    if-eqz v5, :cond_72

    array-length v6, v5

    if-nez v6, :cond_57

    goto :goto_72

    .line 3363
    :cond_57
    invoke-static {v2}, Lcom/android/server/pm/ApkChecksums;->buildSignaturePathForDigests(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3365
    .local v6, "targetDigestsSignaturePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3366
    .local v7, "targetDigestsSignatureFile":Ljava/io/File;
    nop

    .line 3367
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 3366
    invoke-direct {p0, v6, v8, v5}, Lcom/android/server/pm/PackageInstallerSession;->storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 3368
    invoke-direct {p0, v7, v7}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V
    :try_end_6d
    .catchall {:try_start_34 .. :try_end_6d} :catchall_76

    .line 3369
    .end local v5    # "signature":[B
    .end local v6    # "targetDigestsSignaturePath":Ljava/lang/String;
    .end local v7    # "targetDigestsSignatureFile":Ljava/io/File;
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3375
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    nop

    .line 3376
    return-void

    .line 3369
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "signature":[B
    :cond_72
    :goto_72
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_75} :catch_9e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6d .. :try_end_75} :catch_80
    .catch Ljava/security/SignatureException; {:try_start_6d .. :try_end_75} :catch_80

    .line 3360
    return-void

    .line 3345
    .end local v5    # "signature":[B
    :catchall_76
    move-exception v5

    :try_start_77
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7f

    :catchall_7b
    move-exception v6

    :try_start_7c
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "perFileChecksum":Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;
    .end local v1    # "checksums":[Landroid/content/pm/Checksum;
    .end local v2    # "targetDigestsPath":Ljava/lang/String;
    .end local v3    # "targetDigestsFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "origFile":Ljava/io/File;
    .end local p2    # "targetFile":Ljava/io/File;
    .end local p3    # "splitName":Ljava/lang/String;
    :goto_7f
    throw v5
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_9e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7c .. :try_end_80} :catch_80
    .catch Ljava/security/SignatureException; {:try_start_7c .. :try_end_80} :catch_80

    .line 3372
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "perFileChecksum":Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;
    .restart local v1    # "checksums":[Landroid/content/pm/Checksum;
    .restart local v2    # "targetDigestsPath":Ljava/lang/String;
    .restart local v3    # "targetDigestsFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "origFile":Ljava/io/File;
    .restart local p2    # "targetFile":Ljava/io/File;
    .restart local p3    # "splitName":Ljava/lang/String;
    :catch_80
    move-exception v4

    .line 3373
    .local v4, "e":Ljava/security/GeneralSecurityException;
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const/16 v6, -0x67

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to verify digests\' signature for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3369
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :catch_9e
    move-exception v4

    .line 3370
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const/4 v6, -0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to store digests for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V
    .registers 9
    .param p1, "origFile"    # Ljava/io/File;
    .param p2, "targetFile"    # Ljava/io/File;
    .param p3, "fsVerityRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3278
    new-instance v0, Ljava/io/File;

    .line 3279
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3280
    .local v0, "originalSignature":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3281
    new-instance v1, Ljava/io/File;

    .line 3282
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3283
    .local v1, "stagedSignature":Ljava/io/File;
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .end local v1    # "stagedSignature":Ljava/io/File;
    goto :goto_26

    .line 3284
    :cond_24
    if-nez p3, :cond_28

    :goto_26
    nop

    .line 3288
    return-void

    .line 3285
    :cond_28
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x76

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing corresponding fs-verity signature to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;
    .registers 4
    .param p1, "e"    # Lcom/android/server/pm/PackageManagerException;

    .line 2120
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    .line 2121
    return-object p1
.end method

.method private onSessionValidationFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 2126
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 2128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2129
    return-void
.end method

.method private onSessionVerificationFailure(ILjava/lang/String;)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 2132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to verify session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2135
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 2136
    return-void
.end method

.method private onSystemDataLoaderUnrecoverable()V
    .registers 5

    .line 2139
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 2140
    .local v0, "deletePackageHelper":Lcom/android/server/pm/DeletePackageHelper;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2141
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2143
    return-void

    .line 2145
    :cond_12
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2153
    return-void
.end method

.method private onVerificationComplete()V
    .registers 4

    .line 2638
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2639
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 2640
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Session staged"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2641
    return-void

    .line 2643
    :cond_15
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    .line 2644
    return-void
.end method

.method private openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1739
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1742
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1743
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1744
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v2

    .line 1740
    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "targetFd":Ljava/io/FileDescriptor;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    throw v0
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_37} :catch_37

    .line 1745
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_37
    move-exception v0

    .line 1746
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private openTargetInternal(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1592
    invoke-static {p1, p2, p3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1593
    .local v0, "fd":Ljava/io/FileDescriptor;
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method

.method private parseApkAndExtractNativeLibraries()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2468
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2469
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_96

    .line 2473
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_8e

    .line 2477
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v1, :cond_86

    .line 2483
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2484
    const-string v1, "PackageInstallerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPackageName is null, the system will crash! session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :cond_38
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2488
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2489
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2491
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_55

    .line 2497
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v1

    .local v1, "result":Landroid/content/pm/parsing/PackageLite;
    goto :goto_5b

    .line 2499
    .end local v1    # "result":Landroid/content/pm/parsing/PackageLite;
    :cond_55
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v1

    .line 2501
    .restart local v1    # "result":Landroid/content/pm/parsing/PackageLite;
    :goto_5b
    if-eqz v1, :cond_84

    .line 2502
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 2503
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v2

    if-nez v2, :cond_84

    .line 2504
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_9e

    .line 2505
    const/high16 v3, 0x3f000000    # 0.5f

    :try_start_6a
    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 2506
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 2507
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_81

    .line 2508
    :try_start_71
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2509
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v5

    .line 2508
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Landroid/content/pm/parsing/PackageLite;Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_9e

    goto :goto_84

    .line 2507
    :catchall_81
    move-exception v3

    :try_start_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_83
    throw v3

    .line 2512
    .end local v1    # "result":Landroid/content/pm/parsing/PackageLite;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_84
    :goto_84
    monitor-exit v0

    .line 2513
    return-void

    .line 2478
    :cond_86
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session not sealed"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v1

    .line 2474
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_8e
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session destroyed"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v1

    .line 2470
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_96
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session files in use"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v1

    .line 2512
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_83 .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method private prepareDataLoaderLocked()Z
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3935
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 3936
    return v1

    .line 3938
    :cond_a
    iget-boolean v0, v8, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    if-eqz v0, :cond_f

    .line 3939
    return v1

    .line 3942
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 3943
    .local v14, "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 3945
    .local v12, "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v10

    .line 3946
    .local v10, "files":[Landroid/content/pm/InstallationFile;
    array-length v0, v10

    const/4 v9, 0x0

    move v2, v9

    :goto_22
    if-ge v2, v0, :cond_71

    aget-object v3, v10, v2

    .line 3947
    .local v3, "file":Landroid/content/pm/InstallationFile;
    sget-object v4, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    new-instance v5, Ljava/io/File;

    iget-object v6, v8, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 3948
    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getData()Landroid/content/pm/InstallationFileParcel;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3949
    goto :goto_6e

    .line 3951
    :cond_41
    sget-object v4, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    new-instance v5, Ljava/io/File;

    iget-object v6, v8, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 3952
    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3953
    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".removed"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    .line 3952
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3954
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3946
    .end local v3    # "file":Landroid/content/pm/InstallationFile;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 3958
    :cond_71
    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v11, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 3959
    .local v11, "params":Landroid/content/pm/DataLoaderParams;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    xor-int/2addr v0, v1

    move/from16 v19, v0

    .line 3960
    .local v19, "manualStartAndDestroy":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation()Z

    move-result v15

    .line 3961
    .local v15, "systemDataLoader":Z
    new-instance v13, Lcom/android/server/pm/PackageInstallerSession$6;

    move-object v1, v13

    move-object/from16 v2, p0

    move v3, v15

    move/from16 v4, v19

    move-object v5, v14

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession$6;-><init>(Lcom/android/server/pm/PackageInstallerSession;ZZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V

    .line 4053
    .local v13, "statusListener":Landroid/content/pm/IDataLoaderStatusListener;
    const/16 v1, -0x14

    if-nez v19, :cond_15a

    .line 4054
    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4055
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object v20

    .line 4057
    .local v20, "perUidReadTimeouts":[Landroid/os/incremental/PerUidReadTimeouts;
    new-instance v0, Landroid/os/incremental/StorageHealthCheckParams;

    invoke-direct {v0}, Landroid/os/incremental/StorageHealthCheckParams;-><init>()V

    move-object v7, v0

    .line 4058
    .local v7, "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    const/16 v0, 0x7d0

    iput v0, v7, Landroid/os/incremental/StorageHealthCheckParams;->blockedTimeoutMs:I

    .line 4059
    const/16 v0, 0x1b58

    iput v0, v7, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyTimeoutMs:I

    .line 4060
    const v0, 0xea60

    iput v0, v7, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyMonitoringMs:I

    .line 4062
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$7;

    invoke-direct {v0, v8, v15}, Lcom/android/server/pm/PackageInstallerSession$7;-><init>(Lcom/android/server/pm/PackageInstallerSession;Z)V

    move/from16 v21, v15

    .end local v15    # "systemDataLoader":Z
    .local v21, "systemDataLoader":Z
    move-object v15, v0

    .line 4090
    .local v15, "healthListener":Landroid/os/incremental/IStorageHealthListener;
    :try_start_b7
    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v2, v8, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iget v5, v8, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 4091
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c9} :catch_142

    .line 4093
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_eb

    :try_start_cb
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_eb

    .line 4094
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_de} :catch_df

    goto :goto_ec

    .line 4115
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_df
    move-exception v0

    move-object v9, v7

    move-object/from16 v24, v10

    move-object/from16 v22, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    goto/16 :goto_14c

    .line 4094
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_eb
    const/4 v2, 0x0

    :goto_ec
    move-object/from16 v22, v11

    .end local v11    # "params":Landroid/content/pm/DataLoaderParams;
    .local v22, "params":Landroid/content/pm/DataLoaderParams;
    move-object v11, v2

    .line 4096
    .local v11, "inheritedDir":Ljava/io/File;
    :try_start_ef
    iget-object v2, v8, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f1} :catch_139

    if-nez v2, :cond_123

    .line 4097
    :try_start_f3
    iget-object v2, v8, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget-object v3, v8, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/pm/PackageInstallerSession$8;

    invoke-direct {v4, v8}, Lcom/android/server/pm/PackageInstallerSession$8;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_fc} :catch_11a

    move/from16 v23, v9

    move-object v9, v2

    move-object/from16 v24, v10

    .end local v10    # "files":[Landroid/content/pm/InstallationFile;
    .local v24, "files":[Landroid/content/pm/InstallationFile;
    move-object v10, v3

    move-object/from16 v25, v12

    .end local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v12, v22

    move-object/from16 v26, v14

    .end local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .local v26, "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    move-object v14, v7

    move-object/from16 v16, v26

    move-object/from16 v17, v20

    move-object/from16 v18, v4

    :try_start_10f
    invoke-static/range {v9 .. v18}, Landroid/os/incremental/IncrementalFileStorages;->initialize(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;Ljava/util/List;[Landroid/os/incremental/PerUidReadTimeouts;Landroid/content/pm/IPackageLoadingProgressCallback;)Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v2

    iput-object v2, v8, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_115} :catch_117

    move-object v9, v7

    goto :goto_136

    .line 4115
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "inheritedDir":Ljava/io/File;
    :catch_117
    move-exception v0

    move-object v9, v7

    goto :goto_14c

    .end local v24    # "files":[Landroid/content/pm/InstallationFile;
    .end local v25    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .restart local v10    # "files":[Landroid/content/pm/InstallationFile;
    .restart local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    :catch_11a
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    move-object v9, v7

    .end local v10    # "files":[Landroid/content/pm/InstallationFile;
    .end local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .restart local v24    # "files":[Landroid/content/pm/InstallationFile;
    .restart local v25    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    goto :goto_14c

    .line 4111
    .end local v24    # "files":[Landroid/content/pm/InstallationFile;
    .end local v25    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v10    # "files":[Landroid/content/pm/InstallationFile;
    .restart local v11    # "inheritedDir":Ljava/io/File;
    .restart local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    :cond_123
    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    .end local v10    # "files":[Landroid/content/pm/InstallationFile;
    .end local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .restart local v24    # "files":[Landroid/content/pm/InstallationFile;
    .restart local v25    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    move-object/from16 v3, v22

    move-object v4, v13

    move-object v5, v7

    move-object v6, v15

    move-object v9, v7

    .end local v7    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .local v9, "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    move-object/from16 v7, v20

    :try_start_133
    invoke-virtual/range {v2 .. v7}, Landroid/os/incremental/IncrementalFileStorages;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_137

    .line 4114
    :goto_136
    return v23

    .line 4115
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "inheritedDir":Ljava/io/File;
    :catch_137
    move-exception v0

    goto :goto_14c

    .end local v9    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v24    # "files":[Landroid/content/pm/InstallationFile;
    .end local v25    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .restart local v7    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .restart local v10    # "files":[Landroid/content/pm/InstallationFile;
    .restart local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    :catch_139
    move-exception v0

    move-object v9, v7

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    .end local v7    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v10    # "files":[Landroid/content/pm/InstallationFile;
    .end local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .restart local v9    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .restart local v24    # "files":[Landroid/content/pm/InstallationFile;
    .restart local v25    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    goto :goto_14c

    .end local v9    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v22    # "params":Landroid/content/pm/DataLoaderParams;
    .end local v24    # "files":[Landroid/content/pm/InstallationFile;
    .end local v25    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .restart local v7    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .restart local v10    # "files":[Landroid/content/pm/InstallationFile;
    .local v11, "params":Landroid/content/pm/DataLoaderParams;
    .restart local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    :catch_142
    move-exception v0

    move-object v9, v7

    move-object/from16 v24, v10

    move-object/from16 v22, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    .line 4116
    .end local v7    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v10    # "files":[Landroid/content/pm/InstallationFile;
    .end local v11    # "params":Landroid/content/pm/DataLoaderParams;
    .end local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v9    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .restart local v22    # "params":Landroid/content/pm/DataLoaderParams;
    .restart local v24    # "files":[Landroid/content/pm/InstallationFile;
    .restart local v25    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    :goto_14c
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 4117
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4121
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "healthCheckParams":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v20    # "perUidReadTimeouts":[Landroid/os/incremental/PerUidReadTimeouts;
    .end local v21    # "systemDataLoader":Z
    .end local v22    # "params":Landroid/content/pm/DataLoaderParams;
    .end local v24    # "files":[Landroid/content/pm/InstallationFile;
    .end local v25    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .restart local v10    # "files":[Landroid/content/pm/InstallationFile;
    .restart local v11    # "params":Landroid/content/pm/DataLoaderParams;
    .restart local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .local v15, "systemDataLoader":Z
    :cond_15a
    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v22, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    move/from16 v21, v15

    .end local v10    # "files":[Landroid/content/pm/InstallationFile;
    .end local v11    # "params":Landroid/content/pm/DataLoaderParams;
    .end local v12    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    .end local v15    # "systemDataLoader":Z
    .restart local v21    # "systemDataLoader":Z
    .restart local v22    # "params":Landroid/content/pm/DataLoaderParams;
    .restart local v24    # "files":[Landroid/content/pm/InstallationFile;
    .restart local v25    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    const-wide/16 v2, 0x0

    .line 4122
    .local v2, "bindDelayMs":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoaderManager()Landroid/content/pm/DataLoaderManager;

    move-result-object v27

    iget v0, v8, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v29

    const-wide/16 v30, 0x0

    move/from16 v28, v0

    move-object/from16 v32, v13

    invoke-virtual/range {v27 .. v32}, Landroid/content/pm/DataLoaderManager;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 4128
    return v23

    .line 4124
    :cond_17f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Failed to initialize data loader"

    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private prepareInheritedFiles()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2389
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_108

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto/16 :goto_108

    .line 2392
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2393
    :try_start_12
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_fd

    .line 2397
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_f5

    .line 2401
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_105

    if-eqz v1, :cond_ed

    .line 2408
    :try_start_20
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 2409
    .local v1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 2410
    .local v2, "toDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2412
    .local v3, "tempPackageName":Ljava/lang/String;
    const-string v4, "PackageInstallerSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inherited files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    if-eqz v4, :cond_4f

    goto :goto_57

    .line 2414
    :cond_4f
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "mInheritedFilesBase == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v4

    .line 2417
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_57
    :goto_57
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 2418
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_72

    .line 2419
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "oat"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2420
    .local v4, "oatDir":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)V

    .line 2423
    .end local v4    # "oatDir":Ljava/io/File;
    :cond_72
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d7

    .line 2424
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2426
    .local v5, "libPath":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 2427
    .local v6, "splitIndex":I
    if-ltz v6, :cond_be

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-lt v6, v7, :cond_9d

    goto :goto_be

    .line 2433
    :cond_9d
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2434
    .local v7, "libDirPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2435
    .local v8, "libDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_af

    .line 2436
    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 2438
    :cond_af
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 2439
    .local v9, "archDirPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 2441
    .end local v5    # "libPath":Ljava/lang/String;
    .end local v6    # "splitIndex":I
    .end local v7    # "libDirPath":Ljava/lang/String;
    .end local v8    # "libDir":Ljava/io/File;
    .end local v9    # "archDirPath":Ljava/lang/String;
    goto :goto_80

    .line 2428
    .restart local v5    # "libPath":Ljava/lang/String;
    .restart local v6    # "splitIndex":I
    :cond_be
    :goto_be
    const-string v7, "PackageInstallerSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping native library creation for linking due to invalid path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    goto :goto_80

    .line 2443
    .end local v5    # "libPath":Ljava/lang/String;
    .end local v6    # "splitIndex":I
    :cond_d7
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    goto :goto_e0

    .line 2447
    :cond_dd
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_e0} :catch_e3
    .catchall {:try_start_20 .. :try_end_e0} :catchall_105

    .line 2452
    .end local v1    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v2    # "toDir":Ljava/io/File;
    .end local v3    # "tempPackageName":Ljava/lang/String;
    :goto_e0
    nop

    .line 2453
    :try_start_e1
    monitor-exit v0

    .line 2454
    return-void

    .line 2449
    :catch_e3
    move-exception v1

    .line 2450
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/4 v3, -0x4

    const-string v4, "Failed to inherit existing install"

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v2

    .line 2402
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_ed
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session not sealed"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v1

    .line 2398
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_f5
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session destroyed"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v1

    .line 2394
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_fd
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session files in use"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v1

    .line 2453
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_105
    move-exception v1

    monitor-exit v0
    :try_end_107
    .catchall {:try_start_e1 .. :try_end_107} :catchall_105

    throw v1

    .line 2390
    :cond_108
    :goto_108
    return-void
.end method

.method public static readFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;)Lcom/android/server/pm/PackageInstallerSession;
    .registers 83
    .param p0, "in"    # Landroid/util/TypedXmlPullParser;
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "installerThread"    # Landroid/os/Looper;
    .param p5, "stagingManager"    # Lcom/android/server/pm/StagingManager;
    .param p6, "sessionsDir"    # Ljava/io/File;
    .param p7, "sessionProvider"    # Lcom/android/server/pm/PackageSessionProvider;
    .param p8, "silentUpdatePolicy"    # Lcom/android/server/pm/SilentUpdatePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4866
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string/jumbo v2, "sessionId"

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 4867
    .local v15, "sessionId":I
    const-string/jumbo v3, "userId"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 4868
    .local v13, "userId":I
    const-string v3, "installerPackageName"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4869
    .local v12, "installerPackageName":Ljava/lang/String;
    const-string v3, "installerAttributionTag"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4871
    .local v11, "installerAttributionTag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 4872
    const-wide/16 v4, 0x2000

    invoke-interface {v3, v12, v4, v5, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 4871
    const-string v4, "installerUid"

    invoke-interface {v0, v1, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 4874
    .local v35, "installerUid":I
    nop

    .line 4875
    const-string v3, "installInitiatingPackageName"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4876
    .local v10, "installInitiatingPackageName":Ljava/lang/String;
    nop

    .line 4877
    const-string v3, "installOriginatingPackageName"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4879
    .local v9, "installOriginatingPackageName":Ljava/lang/String;
    const-string v3, "callingPackage"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4880
    .local v8, "callingPackageName":Ljava/lang/String;
    const-string v3, "createdMillis"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v36

    .line 4881
    .local v36, "createdMillis":J
    const-string/jumbo v3, "updatedMillis"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v38

    .line 4882
    .local v38, "updatedMillis":J
    const-string v3, "committedMillis"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v3, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v40

    .line 4883
    .local v40, "committedMillis":J
    const-string/jumbo v3, "sessionStageDir"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4884
    .local v7, "stageDirRaw":Ljava/lang/String;
    if-eqz v7, :cond_67

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v3

    goto :goto_69

    :cond_67
    move-object/from16 v20, v1

    .line 4885
    .local v20, "stageDir":Ljava/io/File;
    :goto_69
    const-string/jumbo v3, "sessionStageCid"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 4886
    .local v42, "stageCid":Ljava/lang/String;
    const-string/jumbo v3, "prepared"

    const/4 v4, 0x1

    invoke-interface {v0, v1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v43

    .line 4887
    .local v43, "prepared":Z
    const-string v3, "committed"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v44

    .line 4888
    .local v44, "committed":Z
    const-string v3, "destroyed"

    invoke-interface {v0, v1, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v45

    .line 4889
    .local v45, "destroyed":Z
    const-string/jumbo v3, "sealed"

    invoke-interface {v0, v1, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v46

    .line 4890
    .local v46, "sealed":Z
    const-string/jumbo v3, "parentSessionId"

    const/4 v6, -0x1

    invoke-interface {v0, v1, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v47

    .line 4893
    .local v47, "parentSessionId":I
    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v3, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 4895
    .local v3, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const-string/jumbo v14, "multiPackage"

    invoke-interface {v0, v1, v14, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 4896
    const-string/jumbo v14, "stagedSession"

    invoke-interface {v0, v1, v14, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 4897
    const-string/jumbo v14, "mode"

    invoke-interface {v0, v1, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 4898
    const-string v4, "installFlags"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 4899
    const-string v4, "installLocation"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 4900
    const-string/jumbo v4, "sizeBytes"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 4901
    const-string v4, "appPackageName"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 4902
    const-string v4, "appIcon"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 4903
    const-string v4, "appLabel"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 4904
    const-string/jumbo v4, "originatingUri"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 4905
    nop

    .line 4906
    const-string/jumbo v4, "originatingUid"

    const/4 v5, -0x1

    invoke-interface {v0, v1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 4907
    const-string/jumbo v4, "referrerUri"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 4908
    const-string v4, "abiOverride"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 4909
    const-string/jumbo v4, "volumeUuid"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 4910
    const-string v4, "installRason"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 4911
    const-string/jumbo v4, "packageSource"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 4913
    const-string v4, "isDataLoader"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_154

    .line 4914
    new-instance v4, Landroid/content/pm/DataLoaderParams;

    .line 4915
    const-string v5, "dataLoaderType"

    invoke-interface {v0, v1, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Landroid/content/ComponentName;

    .line 4917
    const-string v1, "dataLoaderPackageName"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4918
    move-object/from16 v21, v7

    .end local v7    # "stageDirRaw":Ljava/lang/String;
    .local v21, "stageDirRaw":Ljava/lang/String;
    const-string v7, "dataLoaderClassName"

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4919
    const-string v1, "dataLoaderArguments"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1}, Landroid/content/pm/DataLoaderParams;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;)V

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    goto :goto_156

    .line 4913
    .end local v21    # "stageDirRaw":Ljava/lang/String;
    .restart local v7    # "stageDirRaw":Ljava/lang/String;
    :cond_154
    move-object/from16 v21, v7

    .line 4922
    .end local v7    # "stageDirRaw":Ljava/lang/String;
    .restart local v21    # "stageDirRaw":Ljava/lang/String;
    :goto_156
    move-object/from16 v1, p6

    invoke-static {v15, v1}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v48

    .line 4923
    .local v48, "appIconFile":Ljava/io/File;
    invoke-virtual/range {v48 .. v48}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_172

    .line 4924
    invoke-virtual/range {v48 .. v48}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 4925
    invoke-virtual/range {v48 .. v48}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 4927
    :cond_172
    const-string v4, "isReady"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v0, v6, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 4928
    .local v7, "isReady":Z
    const-string v4, "isFailed"

    invoke-interface {v0, v6, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 4929
    .local v4, "isFailed":Z
    const-string v1, "isApplied"

    invoke-interface {v0, v6, v1, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 4930
    .local v1, "isApplied":Z
    move-object/from16 v22, v8

    .end local v8    # "callingPackageName":Ljava/lang/String;
    .local v22, "callingPackageName":Ljava/lang/String;
    const-string v8, "errorCode"

    invoke-interface {v0, v6, v8, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v49

    .line 4932
    .local v49, "sessionErrorCode":I
    const-string v5, "errorMessage"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4934
    .local v50, "sessionErrorMessage":Ljava/lang/String;
    invoke-static {v7, v1, v4}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionStateValid(ZZZ)Z

    move-result v5

    if-eqz v5, :cond_4a9

    .line 4944
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v5

    .line 4945
    .local v8, "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v5

    .line 4946
    .local v6, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x3

    .line 4947
    .local v5, "autoRevokePermissionsMode":I
    new-instance v23, Landroid/util/IntArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/IntArray;-><init>()V

    move-object/from16 v51, v23

    .line 4948
    .local v51, "childSessionIds":Landroid/util/IntArray;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v52, v23

    .line 4949
    .local v52, "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    new-instance v23, Landroid/util/ArrayMap;

    invoke-direct/range {v23 .. v23}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v53, v23

    .line 4950
    .local v53, "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    new-instance v23, Landroid/util/ArrayMap;

    invoke-direct/range {v23 .. v23}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v54, v23

    .line 4951
    .local v54, "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    move/from16 v55, v1

    .end local v1    # "isApplied":Z
    .local v55, "isApplied":Z
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 4953
    .local v1, "outerDepth":I
    :goto_1c9
    move/from16 v23, v4

    .end local v4    # "isFailed":Z
    .local v23, "isFailed":Z
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move/from16 v56, v4

    move/from16 v24, v7

    const/4 v7, 0x1

    .end local v7    # "isReady":Z
    .local v24, "isReady":Z
    .local v56, "type":I
    if-eq v4, v7, :cond_36b

    const/4 v4, 0x3

    move/from16 v16, v13

    move/from16 v13, v56

    .end local v56    # "type":I
    .local v13, "type":I
    .local v16, "userId":I
    if-ne v13, v4, :cond_1f6

    .line 4954
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_1e4

    goto :goto_1f6

    :cond_1e4
    move/from16 v56, v1

    move-object/from16 v17, v9

    move/from16 v58, v15

    move-object/from16 v4, v51

    move-object/from16 v2, v52

    move-object/from16 v9, v54

    move/from16 v51, v13

    move-object/from16 v13, v53

    goto/16 :goto_37d

    .line 4955
    :cond_1f6
    :goto_1f6
    if-eq v13, v4, :cond_33c

    const/4 v4, 0x4

    if-ne v13, v4, :cond_210

    .line 4956
    move/from16 v56, v1

    move-object/from16 v34, v2

    move-object/from16 v17, v9

    move-object/from16 v57, v14

    move/from16 v58, v15

    move-object/from16 v4, v51

    move-object/from16 v2, v52

    move-object/from16 v13, v53

    move-object/from16 v9, v54

    const/4 v15, 0x0

    goto/16 :goto_351

    .line 4958
    :cond_210
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "granted-runtime-permission"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v7, "name"

    if-eqz v4, :cond_226

    .line 4959
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4961
    :cond_226
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move/from16 v56, v1

    .end local v1    # "outerDepth":I
    .local v56, "outerDepth":I
    const-string/jumbo v1, "whitelisted-restricted-permission"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23c

    .line 4962
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4965
    :cond_23c
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "auto-revoke-permissions-mode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24f

    .line 4966
    const/4 v1, 0x0

    invoke-interface {v0, v1, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v5, v4

    .end local v5    # "autoRevokePermissionsMode":I
    .local v4, "autoRevokePermissionsMode":I
    goto :goto_250

    .line 4965
    .end local v4    # "autoRevokePermissionsMode":I
    .restart local v5    # "autoRevokePermissionsMode":I
    :cond_24f
    const/4 v1, 0x0

    .line 4968
    :goto_250
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v1, "childSession"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26a

    .line 4969
    move/from16 v18, v5

    const/4 v1, -0x1

    const/4 v4, 0x0

    .end local v5    # "autoRevokePermissionsMode":I
    .local v18, "autoRevokePermissionsMode":I
    invoke-interface {v0, v4, v2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v4, v51

    .end local v51    # "childSessionIds":Landroid/util/IntArray;
    .local v4, "childSessionIds":Landroid/util/IntArray;
    invoke-virtual {v4, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_26f

    .line 4968
    .end local v4    # "childSessionIds":Landroid/util/IntArray;
    .end local v18    # "autoRevokePermissionsMode":I
    .restart local v5    # "autoRevokePermissionsMode":I
    .restart local v51    # "childSessionIds":Landroid/util/IntArray;
    :cond_26a
    move/from16 v18, v5

    move-object/from16 v4, v51

    const/4 v1, -0x1

    .line 4972
    .end local v5    # "autoRevokePermissionsMode":I
    .end local v51    # "childSessionIds":Landroid/util/IntArray;
    .restart local v4    # "childSessionIds":Landroid/util/IntArray;
    .restart local v18    # "autoRevokePermissionsMode":I
    :goto_26f
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "sessionFile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v5, "signature"

    if-eqz v1, :cond_2b5

    .line 4973
    new-instance v1, Landroid/content/pm/InstallationFile;

    .line 4974
    move-object/from16 v34, v2

    const-string v2, "location"

    move/from16 v51, v13

    move-object/from16 v57, v14

    const/4 v13, 0x0

    const/4 v14, 0x0

    .end local v13    # "type":I
    .local v51, "type":I
    invoke-interface {v0, v14, v2, v13}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v28

    .line 4975
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move v2, v15

    .end local v15    # "sessionId":I
    .local v2, "sessionId":I
    const-wide/16 v14, -0x1

    .line 4976
    const-string v13, "lengthBytes"

    move/from16 v58, v2

    const/4 v2, 0x0

    .end local v2    # "sessionId":I
    .local v58, "sessionId":I
    invoke-interface {v0, v2, v13, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v30

    .line 4977
    const-string/jumbo v2, "metadata"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v32

    .line 4978
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v33

    move-object/from16 v27, v1

    invoke-direct/range {v27 .. v33}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    .line 4973
    move-object/from16 v2, v52

    .end local v52    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2bf

    .line 4972
    .end local v2    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v51    # "type":I
    .end local v58    # "sessionId":I
    .restart local v13    # "type":I
    .restart local v15    # "sessionId":I
    .restart local v52    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    :cond_2b5
    move-object/from16 v34, v2

    move/from16 v51, v13

    move-object/from16 v57, v14

    move/from16 v58, v15

    move-object/from16 v2, v52

    .line 4980
    .end local v13    # "type":I
    .end local v15    # "sessionId":I
    .end local v52    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v2    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v51    # "type":I
    .restart local v58    # "sessionId":I
    :goto_2bf
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v13, "sessionChecksum"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2fe

    .line 4981
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4982
    .local v1, "fileName":Ljava/lang/String;
    new-instance v13, Landroid/content/pm/Checksum;

    .line 4983
    const-string v14, "checksumKind"

    move-object/from16 v17, v9

    const/4 v9, 0x0

    const/4 v15, 0x0

    .end local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .local v17, "installOriginatingPackageName":Ljava/lang/String;
    invoke-interface {v0, v9, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 4984
    const-string v9, "checksumValue"

    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v13, v14, v9}, Landroid/content/pm/Checksum;-><init>(I[B)V

    move-object v9, v13

    .line 4986
    .local v9, "checksum":Landroid/content/pm/Checksum;
    move-object/from16 v13, v53

    .end local v53    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .local v13, "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 4987
    .local v14, "fileChecksums":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Checksum;>;"
    if-nez v14, :cond_2fa

    .line 4988
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v27

    .line 4989
    invoke-virtual {v13, v1, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4991
    :cond_2fa
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_303

    .line 4980
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v13    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .end local v14    # "fileChecksums":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Checksum;>;"
    .end local v17    # "installOriginatingPackageName":Ljava/lang/String;
    .local v9, "installOriginatingPackageName":Ljava/lang/String;
    .restart local v53    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    :cond_2fe
    move-object/from16 v17, v9

    move-object/from16 v13, v53

    const/4 v15, 0x0

    .line 4993
    .end local v9    # "installOriginatingPackageName":Ljava/lang/String;
    .end local v53    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .restart local v13    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .restart local v17    # "installOriginatingPackageName":Ljava/lang/String;
    :goto_303
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "sessionChecksumSignature"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31e

    .line 4994
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4995
    .restart local v1    # "fileName":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v5

    .line 4996
    .local v5, "signature":[B
    move-object/from16 v9, v54

    .end local v54    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    .local v9, "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    invoke-virtual {v9, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4997
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v5    # "signature":[B
    goto :goto_320

    .line 4993
    .end local v9    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    .restart local v54    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    :cond_31e
    move-object/from16 v9, v54

    .line 4953
    .end local v51    # "type":I
    .end local v54    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    .restart local v9    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    :goto_320
    move-object/from16 v52, v2

    move-object/from16 v51, v4

    move-object/from16 v54, v9

    move-object/from16 v53, v13

    move/from16 v13, v16

    move-object/from16 v9, v17

    move/from16 v5, v18

    move/from16 v4, v23

    move/from16 v7, v24

    move-object/from16 v2, v34

    move/from16 v1, v56

    move-object/from16 v14, v57

    move/from16 v15, v58

    goto/16 :goto_1c9

    .line 4955
    .end local v2    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v4    # "childSessionIds":Landroid/util/IntArray;
    .end local v17    # "installOriginatingPackageName":Ljava/lang/String;
    .end local v18    # "autoRevokePermissionsMode":I
    .end local v56    # "outerDepth":I
    .end local v58    # "sessionId":I
    .local v1, "outerDepth":I
    .local v5, "autoRevokePermissionsMode":I
    .local v9, "installOriginatingPackageName":Ljava/lang/String;
    .local v13, "type":I
    .restart local v15    # "sessionId":I
    .local v51, "childSessionIds":Landroid/util/IntArray;
    .restart local v52    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v53    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .restart local v54    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    :cond_33c
    move/from16 v56, v1

    move-object/from16 v34, v2

    move-object/from16 v17, v9

    move-object/from16 v57, v14

    move/from16 v58, v15

    move-object/from16 v4, v51

    move-object/from16 v2, v52

    move-object/from16 v9, v54

    const/4 v15, 0x0

    move/from16 v51, v13

    move-object/from16 v13, v53

    .line 4953
    .end local v1    # "outerDepth":I
    .end local v15    # "sessionId":I
    .end local v51    # "childSessionIds":Landroid/util/IntArray;
    .end local v52    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v53    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .end local v54    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    .restart local v2    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v4    # "childSessionIds":Landroid/util/IntArray;
    .local v9, "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    .local v13, "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .restart local v17    # "installOriginatingPackageName":Ljava/lang/String;
    .restart local v56    # "outerDepth":I
    .restart local v58    # "sessionId":I
    :goto_351
    move-object/from16 v52, v2

    move-object/from16 v51, v4

    move-object/from16 v54, v9

    move-object/from16 v53, v13

    move/from16 v13, v16

    move-object/from16 v9, v17

    move/from16 v4, v23

    move/from16 v7, v24

    move-object/from16 v2, v34

    move/from16 v1, v56

    move-object/from16 v14, v57

    move/from16 v15, v58

    goto/16 :goto_1c9

    .end local v2    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v4    # "childSessionIds":Landroid/util/IntArray;
    .end local v16    # "userId":I
    .end local v17    # "installOriginatingPackageName":Ljava/lang/String;
    .end local v58    # "sessionId":I
    .restart local v1    # "outerDepth":I
    .local v9, "installOriginatingPackageName":Ljava/lang/String;
    .local v13, "userId":I
    .restart local v15    # "sessionId":I
    .restart local v51    # "childSessionIds":Landroid/util/IntArray;
    .restart local v52    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v53    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .restart local v54    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    .local v56, "type":I
    :cond_36b
    move-object/from16 v17, v9

    move/from16 v16, v13

    move/from16 v58, v15

    move-object/from16 v4, v51

    move-object/from16 v2, v52

    move-object/from16 v13, v53

    move-object/from16 v9, v54

    move/from16 v51, v56

    move/from16 v56, v1

    .line 5000
    .end local v1    # "outerDepth":I
    .end local v15    # "sessionId":I
    .end local v52    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v53    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .end local v54    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    .restart local v2    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v4    # "childSessionIds":Landroid/util/IntArray;
    .local v9, "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    .local v13, "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .restart local v16    # "userId":I
    .restart local v17    # "installOriginatingPackageName":Ljava/lang/String;
    .local v51, "type":I
    .local v56, "outerDepth":I
    .restart local v58    # "sessionId":I
    :goto_37d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_38d

    .line 5001
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 5002
    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v3, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 5005
    :cond_38d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_395

    .line 5006
    iput-object v6, v3, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 5009
    :cond_395
    iput v5, v3, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 5012
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_3b4

    .line 5013
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 5014
    .local v1, "childSessionIdsArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v14

    .local v14, "size":I
    :goto_3a8
    if-ge v7, v14, :cond_3b3

    .line 5015
    invoke-virtual {v4, v7}, Landroid/util/IntArray;->get(I)I

    move-result v15

    aput v15, v1, v7

    .line 5014
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a8

    .end local v7    # "i":I
    .end local v14    # "size":I
    :cond_3b3
    goto :goto_3b6

    .line 5018
    .end local v1    # "childSessionIdsArray":[I
    :cond_3b4
    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 5021
    .restart local v1    # "childSessionIdsArray":[I
    :goto_3b6
    const/4 v7, 0x0

    .line 5022
    .local v7, "fileArray":[Landroid/content/pm/InstallationFile;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3c9

    .line 5023
    sget-object v14, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    invoke-interface {v2, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v7, v14

    check-cast v7, [Landroid/content/pm/InstallationFile;

    move-object/from16 v52, v7

    goto :goto_3cb

    .line 5022
    :cond_3c9
    move-object/from16 v52, v7

    .line 5026
    .end local v7    # "fileArray":[Landroid/content/pm/InstallationFile;
    .local v52, "fileArray":[Landroid/content/pm/InstallationFile;
    :goto_3cb
    const/4 v7, 0x0

    .line 5027
    .local v7, "checksumsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_42e

    .line 5028
    new-instance v14, Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v15

    invoke-direct {v14, v15}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v7, v14

    .line 5029
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .local v15, "isize":I
    :goto_3e1
    if-ge v14, v15, :cond_424

    .line 5030
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    .line 5031
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v53, v2

    .end local v2    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .local v53, "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    move-object/from16 v2, v18

    check-cast v2, Ljava/util/List;

    .line 5032
    .local v2, "perFileChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Checksum;>;"
    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v4

    .end local v4    # "childSessionIds":Landroid/util/IntArray;
    .local v19, "childSessionIds":Landroid/util/IntArray;
    move-object/from16 v4, v18

    check-cast v4, [B

    .line 5033
    .local v4, "perFileSignature":[B
    move/from16 v18, v5

    .end local v5    # "autoRevokePermissionsMode":I
    .restart local v18    # "autoRevokePermissionsMode":I
    new-instance v5, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 5034
    move-object/from16 v25, v6

    .end local v6    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/pm/Checksum;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/Checksum;

    invoke-direct {v5, v6, v4}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;-><init>([Landroid/content/pm/Checksum;[B)V

    .line 5033
    invoke-virtual {v7, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5029
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "perFileChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Checksum;>;"
    .end local v4    # "perFileSignature":[B
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v6, v25

    move-object/from16 v2, v53

    goto :goto_3e1

    .end local v18    # "autoRevokePermissionsMode":I
    .end local v19    # "childSessionIds":Landroid/util/IntArray;
    .end local v25    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v53    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .local v4, "childSessionIds":Landroid/util/IntArray;
    .restart local v5    # "autoRevokePermissionsMode":I
    .restart local v6    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_424
    move-object/from16 v53, v2

    move-object/from16 v19, v4

    move/from16 v18, v5

    move-object/from16 v25, v6

    .end local v2    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v4    # "childSessionIds":Landroid/util/IntArray;
    .end local v5    # "autoRevokePermissionsMode":I
    .end local v6    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "autoRevokePermissionsMode":I
    .restart local v19    # "childSessionIds":Landroid/util/IntArray;
    .restart local v25    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v53    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    move-object v0, v7

    goto :goto_437

    .line 5027
    .end local v14    # "i":I
    .end local v15    # "isize":I
    .end local v18    # "autoRevokePermissionsMode":I
    .end local v19    # "childSessionIds":Landroid/util/IntArray;
    .end local v25    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v53    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v2    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .restart local v4    # "childSessionIds":Landroid/util/IntArray;
    .restart local v5    # "autoRevokePermissionsMode":I
    .restart local v6    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_42e
    move-object/from16 v53, v2

    move-object/from16 v19, v4

    move/from16 v18, v5

    move-object/from16 v25, v6

    .end local v2    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v4    # "childSessionIds":Landroid/util/IntArray;
    .end local v5    # "autoRevokePermissionsMode":I
    .end local v6    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "autoRevokePermissionsMode":I
    .restart local v19    # "childSessionIds":Landroid/util/IntArray;
    .restart local v25    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v53    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    move-object v0, v7

    .line 5039
    .end local v7    # "checksumsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;>;"
    .local v0, "checksumsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;>;"
    :goto_437
    iget v2, v3, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    move-object/from16 v15, v17

    .end local v17    # "installOriginatingPackageName":Ljava/lang/String;
    .local v15, "installOriginatingPackageName":Ljava/lang/String;
    invoke-static {v10, v15, v12, v11, v2}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v2

    .local v2, "installSource":Lcom/android/server/pm/InstallSource;
    move-object v14, v2

    .line 5049
    new-instance v54, Lcom/android/server/pm/PackageInstallerSession;

    move-object/from16 v57, v3

    .end local v3    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v57, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v3, v54

    move-object/from16 v60, v19

    move/from16 v59, v23

    .end local v19    # "childSessionIds":Landroid/util/IntArray;
    .end local v23    # "isFailed":Z
    .local v59, "isFailed":Z
    .local v60, "childSessionIds":Landroid/util/IntArray;
    move-object/from16 v4, p1

    move/from16 v61, v18

    .end local v18    # "autoRevokePermissionsMode":I
    .local v61, "autoRevokePermissionsMode":I
    move-object/from16 v5, p2

    move-object/from16 v62, v25

    .end local v25    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v62, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, p3

    move-object/from16 v63, v21

    move/from16 v64, v24

    .end local v21    # "stageDirRaw":Ljava/lang/String;
    .end local v24    # "isReady":Z
    .local v63, "stageDirRaw":Ljava/lang/String;
    .local v64, "isReady":Z
    move-object/from16 v7, p7

    move-object/from16 v65, v2

    move-object/from16 v66, v8

    move-object/from16 v2, v22

    .end local v8    # "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "callingPackageName":Ljava/lang/String;
    .local v2, "callingPackageName":Ljava/lang/String;
    .local v65, "installSource":Lcom/android/server/pm/InstallSource;
    .local v66, "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p8

    move-object/from16 v68, v9

    move-object/from16 v67, v15

    .end local v9    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    .end local v15    # "installOriginatingPackageName":Ljava/lang/String;
    .local v67, "installOriginatingPackageName":Ljava/lang/String;
    .local v68, "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    move-object/from16 v9, p4

    move-object/from16 v69, v10

    .end local v10    # "installInitiatingPackageName":Ljava/lang/String;
    .local v69, "installInitiatingPackageName":Ljava/lang/String;
    move-object/from16 v10, p5

    move-object/from16 v70, v11

    .end local v11    # "installerAttributionTag":Ljava/lang/String;
    .local v70, "installerAttributionTag":Ljava/lang/String;
    move/from16 v11, v58

    move-object/from16 v71, v12

    .end local v12    # "installerPackageName":Ljava/lang/String;
    .local v71, "installerPackageName":Ljava/lang/String;
    move/from16 v12, v16

    move-object/from16 v72, v13

    move/from16 v73, v51

    move/from16 v51, v16

    .end local v13    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .end local v16    # "userId":I
    .local v51, "userId":I
    .local v72, "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .local v73, "type":I
    move/from16 v13, v35

    move-object/from16 v15, v57

    move-wide/from16 v16, v36

    move-wide/from16 v18, v40

    move-object/from16 v21, v42

    move-object/from16 v22, v52

    move-object/from16 v23, v0

    move/from16 v24, v43

    move/from16 v25, v44

    move/from16 v26, v45

    move/from16 v27, v46

    move-object/from16 v28, v1

    move/from16 v29, v47

    move/from16 v30, v64

    move/from16 v31, v59

    move/from16 v32, v55

    move/from16 v33, v49

    move-object/from16 v34, v50

    invoke-direct/range {v3 .. v34}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;)V

    .line 5055
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/server/pm/PackageManagerServiceStub;->setCallingPackage(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 5057
    return-object v3

    .line 4935
    .end local v0    # "checksumsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;>;"
    .end local v2    # "callingPackageName":Ljava/lang/String;
    .end local v51    # "userId":I
    .end local v52    # "fileArray":[Landroid/content/pm/InstallationFile;
    .end local v53    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFile;>;"
    .end local v55    # "isApplied":Z
    .end local v56    # "outerDepth":I
    .end local v57    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v58    # "sessionId":I
    .end local v59    # "isFailed":Z
    .end local v60    # "childSessionIds":Landroid/util/IntArray;
    .end local v61    # "autoRevokePermissionsMode":I
    .end local v62    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v63    # "stageDirRaw":Ljava/lang/String;
    .end local v64    # "isReady":Z
    .end local v65    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v66    # "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v67    # "installOriginatingPackageName":Ljava/lang/String;
    .end local v68    # "signatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    .end local v69    # "installInitiatingPackageName":Ljava/lang/String;
    .end local v70    # "installerAttributionTag":Ljava/lang/String;
    .end local v71    # "installerPackageName":Ljava/lang/String;
    .end local v72    # "checksums":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/Checksum;>;>;"
    .end local v73    # "type":I
    .local v1, "isApplied":Z
    .local v3, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v4, "isFailed":Z
    .local v7, "isReady":Z
    .local v9, "installOriginatingPackageName":Ljava/lang/String;
    .restart local v10    # "installInitiatingPackageName":Ljava/lang/String;
    .restart local v11    # "installerAttributionTag":Ljava/lang/String;
    .restart local v12    # "installerPackageName":Ljava/lang/String;
    .local v13, "userId":I
    .local v15, "sessionId":I
    .restart local v21    # "stageDirRaw":Ljava/lang/String;
    .restart local v22    # "callingPackageName":Ljava/lang/String;
    :cond_4a9
    move/from16 v55, v1

    .end local v1    # "isApplied":Z
    .restart local v55    # "isApplied":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t restore staged session with invalid state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private releaseTransactionLock()V
    .registers 4

    .line 4189
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 4190
    return-void
.end method

.method private resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "origFile"    # Ljava/io/File;
    .param p2, "targetFile"    # Ljava/io/File;
    .param p3, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3412
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 3415
    nop

    .line 3416
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->isFsVerityRequiredForApk(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 3415
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V

    .line 3418
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageDexMetadataLocked(Ljava/io/File;Ljava/io/File;)V

    .line 3420
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageDigestsLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 3421
    return-void
.end method

.method private sealLocked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2109
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sealing of session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 2111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_21

    .line 2116
    nop

    .line 2117
    return-void

    .line 2112
    :catchall_21
    move-exception v0

    .line 2115
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1
.end method

.method private static sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/content/IntentSender;
    .param p2, "sessionId"    # I
    .param p3, "showNotification"    # Z
    .param p4, "userId"    # I
    .param p5, "basePackageName"    # Ljava/lang/String;
    .param p6, "returnCode"    # I
    .param p7, "msg"    # Ljava/lang/String;
    .param p8, "extras"    # Landroid/os/Bundle;

    .line 4558
    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, v11, :cond_37

    if-eqz p3, :cond_37

    .line 4559
    if-eqz v12, :cond_19

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v0

    .line 4560
    .local v1, "update":Z
    :goto_1a
    nop

    .line 4561
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageInstallerSession;->getDeviceOwnerInstalledPackageMsg(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 4560
    move/from16 v13, p4

    invoke-static {v9, v2, v10, v13}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v2

    .line 4564
    .local v2, "notification":Landroid/app/Notification;
    if-eqz v2, :cond_39

    .line 4565
    nop

    .line 4566
    const-string/jumbo v3, "notification"

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 4567
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    const/16 v4, 0x15

    invoke-virtual {v3, v10, v4, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_39

    .line 4558
    .end local v1    # "update":Z
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    :cond_37
    move/from16 v13, p4

    .line 4572
    :cond_39
    :goto_39
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v14, v1

    .line 4573
    .local v14, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v14, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4574
    const-string v1, "android.content.pm.extra.SESSION_ID"

    move/from16 v15, p2

    invoke-virtual {v14, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4575
    nop

    .line 4576
    invoke-static/range {p6 .. p6}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    .line 4575
    const-string v2, "android.content.pm.extra.STATUS"

    invoke-virtual {v14, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4577
    nop

    .line 4578
    invoke-static/range {p6 .. p7}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4577
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v14, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4579
    const-string v1, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v14, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4580
    if-eqz v12, :cond_c0

    .line 4581
    const-string v1, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4583
    .local v1, "existing":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 4584
    const-string v2, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    invoke-virtual {v14, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4587
    :cond_77
    const-string/jumbo v2, "total"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 4588
    .local v3, "total":I
    if-lez v3, :cond_c0

    .line 4589
    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4590
    nop

    .line 4591
    const-string v2, "fileCopying"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 4590
    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4592
    nop

    .line 4593
    const-string v2, "collectingCerts"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 4592
    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4594
    nop

    .line 4595
    const-string/jumbo v2, "miuiVerification"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 4594
    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4596
    nop

    .line 4597
    const-string v2, "googleVerification"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 4596
    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4598
    nop

    .line 4599
    const-string v2, "dexopt"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 4598
    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4600
    nop

    .line 4601
    const-string v2, "extractNativeLib"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 4600
    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4606
    .end local v1    # "existing":Ljava/lang/String;
    .end local v3    # "total":I
    :cond_c0
    :try_start_c0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    move-object v8, v1

    .line 4607
    .local v8, "options":Landroid/app/BroadcastOptions;
    invoke-virtual {v8, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 4608
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4609
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 4608
    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v4, v14

    move-object/from16 v16, v8

    .end local v8    # "options":Landroid/app/BroadcastOptions;
    .local v16, "options":Landroid/app/BroadcastOptions;
    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_db
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c0 .. :try_end_db} :catch_dc

    .line 4611
    .end local v16    # "options":Landroid/app/BroadcastOptions;
    goto :goto_dd

    .line 4610
    :catch_dc
    move-exception v0

    .line 4612
    :goto_dd
    return-void
.end method

.method private static sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/content/IntentSender;
    .param p2, "sessionId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 4539
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4540
    .local v0, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4541
    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4542
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4544
    :try_start_15
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    move-object v9, v1

    .line 4545
    .local v9, "options":Landroid/app/BroadcastOptions;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 4546
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4547
    invoke-virtual {v9}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 4546
    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_15 .. :try_end_2c} :catch_2d

    .line 4549
    .end local v9    # "options":Landroid/app/BroadcastOptions;
    goto :goto_2e

    .line 4548
    :catch_2d
    move-exception v1

    .line 4550
    :goto_2e
    return-void
.end method

.method private static sendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/content/IntentSender;
    .param p2, "sessionId"    # I
    .param p3, "cause"    # Ljava/lang/String;

    .line 4628
    if-nez p1, :cond_a

    .line 4629
    const-string v0, "PackageInstallerSession"

    const-string v1, "Missing receiver for pending streaming status."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4630
    return-void

    .line 4633
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4634
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4635
    const/4 v1, -0x2

    const-string v2, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4636
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    if-nez v1, :cond_3f

    .line 4637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Staging Image Not Ready ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_44

    .line 4640
    :cond_3f
    const-string v1, "Staging Image Not Ready"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4643
    :goto_44
    :try_start_44
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    move-object v9, v1

    .line 4644
    .local v9, "options":Landroid/app/BroadcastOptions;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 4645
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4646
    invoke-virtual {v9}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 4645
    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_44 .. :try_end_5b} :catch_5c

    .line 4648
    .end local v9    # "options":Landroid/app/BroadcastOptions;
    goto :goto_5d

    .line 4647
    :catch_5c
    move-exception v1

    .line 4649
    :goto_5d
    return-void
.end method

.method private sendPendingUserActionIntent(Landroid/content/IntentSender;)V
    .registers 5
    .param p1, "target"    # Landroid/content/IntentSender;

    .line 2625
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2626
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2627
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2629
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V

    .line 2633
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 2634
    return-void
.end method

.method private sendPendingUserActionIntentIfNeeded()Z
    .registers 3

    .line 2306
    const-string v0, "PackageInstallerSession#sendPendingUserActionIntentIfNeeded"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 2308
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object v0

    .line 2309
    .local v0, "statusReceiver":Landroid/content/IntentSender;
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;-><init>(Landroid/content/IntentSender;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v1

    return v1
.end method

.method private sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 4325
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object v0

    .line 4326
    .local v0, "statusReceiver":Landroid/content/IntentSender;
    if-eqz v0, :cond_22

    .line 4330
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 4331
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4332
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4333
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4334
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 4335
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 4336
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4338
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_22
    return-void
.end method

.method private setClientProgressLocked(F)V
    .registers 4
    .param p1, "progress"    # F

    .line 1194
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1195
    .local v0, "forcePublish":Z
    :goto_a
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 1196
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 1197
    return-void
.end method

.method private setRemoteStatusReceiver(Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "remoteStatusReceiver"    # Landroid/content/IntentSender;

    .line 2380
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2381
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 2382
    monitor-exit v0

    .line 2383
    return-void

    .line 2382
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setSessionApplied()V
    .registers 5

    .line 4369
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4371
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_44

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz v1, :cond_c

    goto :goto_44

    .line 4372
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 4373
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 4374
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 4375
    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 4376
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 4377
    const-string v1, "PackageInstallerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as applied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4378
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_46

    .line 4379
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroy()V

    .line 4380
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 4381
    return-void

    .line 4371
    :cond_44
    :goto_44
    :try_start_44
    monitor-exit v0

    return-void

    .line 4378
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private shouldScrubData(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 1034
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v0

    if-eq v0, p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private stageFileLocked(Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .param p1, "origFile"    # Ljava/io/File;
    .param p2, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3271
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3272
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 3273
    return-void
.end method

.method private storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "absolutePath"    # Ljava/lang/String;
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3321
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getIncrementalFileStorages()Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v0

    .line 3322
    .local v0, "incrementalFileStorages":Landroid/os/incremental/IncrementalFileStorages;
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v1

    if-eqz v1, :cond_11

    if-nez v0, :cond_d

    goto :goto_11

    .line 3325
    :cond_d
    invoke-virtual {v0, p1, p3}, Landroid/os/incremental/IncrementalFileStorages;->makeFile(Ljava/lang/String;[B)V

    goto :goto_14

    .line 3323
    :cond_11
    :goto_11
    invoke-static {p2, p3}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    .line 3327
    :goto_14
    return-void
.end method

.method private streamValidateAndCommit()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2011
    const/4 v0, -0x1

    .line 2013
    .local v0, "handle":I
    const/4 v1, -0x1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_5} :catch_b6
    .catchall {:try_start_2 .. :try_end_5} :catchall_af

    .line 2014
    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_19

    .line 2015
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_ac

    .line 2072
    if-eq v0, v1, :cond_18

    .line 2073
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/perf/PerfStub;->perfLockReleaseHandler(I)I

    .line 2015
    :cond_18
    return v4

    .line 2020
    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    const/4 v5, 0x0

    if-nez v3, :cond_54

    .line 2021
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z

    move-result v3

    if-nez v3, :cond_31

    .line 2022
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_ac

    .line 2072
    if-eq v0, v1, :cond_30

    .line 2073
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/perf/PerfStub;->perfLockReleaseHandler(I)I

    .line 2022
    :cond_30
    return v5

    .line 2025
    :cond_31
    :try_start_31
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallationTiming;->setCollectCertsStarted()V

    .line 2026
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x4e20

    invoke-interface {v3, v6, v7, v1}, Landroid/perf/PerfStub;->perfPackageInstallBoost(Ljava/lang/String;II)I

    move-result v3

    move v0, v3

    .line 2029
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2030
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_4f

    .line 2032
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;

    .line 2035
    :goto_4f
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallationTiming;->setCollectCertsFinished()V

    .line 2038
    :cond_54
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    const/16 v6, -0x6e

    if-nez v3, :cond_a4

    .line 2042
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v3

    if-nez v3, :cond_6f

    .line 2043
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_63
    .catchall {:try_start_31 .. :try_end_63} :catchall_ac

    .line 2045
    const/high16 v7, 0x3f800000    # 1.0f

    :try_start_65
    iput v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 2046
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 2047
    monitor-exit v3

    goto :goto_6f

    :catchall_6c
    move-exception v4

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_6c

    .end local v0    # "handle":I
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_6e
    throw v4

    .line 2052
    .restart local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_6f
    :goto_6f
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2054
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 2061
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 2062
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_6e .. :try_end_83} :catchall_ac

    .line 2063
    nop

    .line 2072
    if-eq v0, v1, :cond_8d

    .line 2073
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/perf/PerfStub;->perfLockReleaseHandler(I)I

    .line 2063
    :cond_8d
    return v4

    .line 2055
    :cond_8e
    :try_start_8e
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "The mCommitted of session %d should be false originally"

    new-array v4, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 2059
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    .line 2057
    invoke-static {v7, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v0    # "handle":I
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v3

    .line 2039
    .restart local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_a4
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Session destroyed"

    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v0    # "handle":I
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v3

    .line 2062
    .restart local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_ac
    move-exception v3

    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_8e .. :try_end_ae} :catchall_ac

    .end local v0    # "handle":I
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_ae
    throw v3
    :try_end_af
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_ae .. :try_end_af} :catch_b6
    .catchall {:try_start_ae .. :try_end_af} :catchall_af

    .line 2066
    .restart local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_af
    move-exception v2

    .line 2069
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_b0
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "handle":I
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v3

    .line 2064
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catch_b6
    move-exception v2

    .line 2065
    .local v2, "e":Lcom/android/server/pm/PackageManagerException;
    nop

    .end local v0    # "handle":I
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v2
    :try_end_b9
    .catchall {:try_start_b0 .. :try_end_b9} :catchall_b9

    .line 2072
    .end local v2    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_b9
    move-exception v2

    if-eq v0, v1, :cond_c3

    .line 2073
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/perf/PerfStub;->perfLockReleaseHandler(I)I

    .line 2075
    :cond_c3
    throw v2
.end method

.method private unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3489
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 3490
    .local v0, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 3491
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 3493
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_17

    .line 3497
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SigningDetails;

    return-object v2

    .line 3494
    :cond_17
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/4 v3, -0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t obtain signatures from APK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private validateApexInstallLocked()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2839
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v0

    .line 2840
    .local v0, "addedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-nez v1, :cond_ca

    .line 2846
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-gt v1, v3, :cond_c2

    .line 2851
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 2854
    .local v1, "addedFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2855
    .local v2, "sourceName":Ljava/lang/String;
    const-string v3, ".apex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 2856
    move-object v3, v2

    goto :goto_38

    .line 2857
    :cond_27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_38
    nop

    .line 2858
    .local v3, "targetName":Ljava/lang/String;
    invoke-static {v3}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 2863
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2864
    .local v4, "targetFile":Ljava/io/File;
    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 2865
    iput-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 2868
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2869
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v5

    .line 2870
    .local v5, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-virtual {v5}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    const/16 v8, 0x20

    invoke-static {v6, v7, v8}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 2872
    .local v6, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-nez v7, :cond_97

    .line 2876
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/parsing/ApkLite;

    .line 2878
    .local v7, "apk":Landroid/content/pm/parsing/ApkLite;
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v8, :cond_7a

    .line 2879
    invoke-virtual {v7}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2880
    invoke-virtual {v7}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 2883
    :cond_7a
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/pm/InstallationTiming;->setPackageName(Ljava/lang/String;)V

    .line 2884
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/InstallationTiming;->setInstaller(Ljava/lang/String;)V

    .line 2886
    invoke-virtual {v7}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 2887
    invoke-virtual {v7}, Landroid/content/pm/parsing/ApkLite;->isHasDeviceAdminReceiver()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    .line 2888
    return-void

    .line 2873
    .end local v7    # "apk":Landroid/content/pm/parsing/ApkLite;
    :cond_97
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v8

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    .line 2874
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 2859
    .end local v4    # "targetFile":Ljava/io/File;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v6    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    :cond_a9
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid filename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 2847
    .end local v1    # "addedFile":Ljava/io/File;
    .end local v2    # "sourceName":Ljava/lang/String;
    .end local v3    # "targetName":Ljava/lang/String;
    :cond_c2
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Too many files for apex install"

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2841
    :cond_ca
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 2842
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 2843
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 2842
    const-string v2, "Session: %d. No packages staged in %s"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2906
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    const-string v2, "PackageInstallerSession"

    if-eqz v0, :cond_21

    .line 2907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateApkInstallLocked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :cond_21
    const/4 v0, 0x0

    .line 2912
    .local v0, "baseApk":Landroid/content/pm/parsing/ApkLite;
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 2913
    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2914
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 2915
    sget-object v4, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 2917
    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 2918
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2919
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2921
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const-wide/32 v6, 0x4000040

    iget v8, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2926
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v6, 0x2

    const/4 v7, -0x2

    if-ne v5, v6, :cond_65

    if-eqz v4, :cond_5d

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_5d

    goto :goto_65

    .line 2928
    :cond_5d
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Missing existing base package"

    invoke-direct {v2, v7, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 2933
    :cond_65
    :goto_65
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_81

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v5, v6, :cond_81

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2935
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    move v5, v9

    goto :goto_82

    :cond_81
    move v5, v8

    :goto_82
    iput-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    .line 2937
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemovedFilesLocked()Ljava/util/List;

    move-result-object v5

    .line 2938
    .local v5, "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2939
    .local v10, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_bb

    .line 2940
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_97
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_bb

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 2941
    .local v12, "removedFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2942
    .local v13, "fileName":Ljava/lang/String;
    nop

    .line 2943
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, ".removed"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    .line 2942
    invoke-virtual {v13, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 2944
    .local v14, "splitName":Ljava/lang/String;
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2945
    .end local v12    # "removedFile":Ljava/io/File;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v14    # "splitName":Ljava/lang/String;
    goto :goto_97

    .line 2948
    :cond_bb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v11

    .line 2949
    .local v11, "addedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_ea

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_cc

    goto :goto_ea

    .line 2950
    :cond_cc
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-array v3, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 2951
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 2952
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    .line 2951
    const-string v6, "Session: %d. No packages staged in %s"

    invoke-static {v6, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 2956
    :cond_ea
    :goto_ea
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 2957
    .local v12, "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 2958
    .local v13, "stagedSplitTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 2959
    .local v14, "requiredSplitTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    .line 2960
    .local v15, "splitApks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;>;"
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v6

    .line 2961
    .local v6, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v18, v0

    .end local v0    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .local v18, "baseApk":Landroid/content/pm/parsing/ApkLite;
    :goto_108
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_242

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2971
    .local v0, "addedFile":Ljava/io/File;
    invoke-static {}, Lcom/android/server/pm/PackageInstallerSessionStub;->getInstance()Lcom/android/server/pm/PackageInstallerSessionStub;

    move-result-object v8

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    .line 2972
    invoke-virtual {v8, v6, v0, v3}, Lcom/android/server/pm/PackageInstallerSessionStub;->getParseApkResult(Landroid/content/pm/parsing/result/ParseTypeImpl;Ljava/io/File;Ljava/lang/String;)Landroid/content/pm/parsing/ApkLite;

    move-result-object v3

    .line 2975
    .local v3, "apk":Landroid/content/pm/parsing/ApkLite;
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21c

    .line 2981
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v8, :cond_13a

    .line 2982
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2983
    move-object v8, v10

    .end local v10    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    goto :goto_13b

    .line 2981
    .end local v8    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13a
    move-object v8, v10

    .line 2987
    .end local v10    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_13b
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v9, :cond_160

    iget-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_160

    .line 2988
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateApkInstallLocked mPackageName is null! sessionId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    :cond_160
    iget-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v10, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v9, v10, :cond_16c

    .line 2992
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 2994
    :cond_16c
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->isHasDeviceAdminReceiver()Z

    move-result v9

    iput-boolean v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    .line 2996
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;)V

    .line 2999
    invoke-static {v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    move-result-object v9

    .line 3000
    .local v9, "targetName":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_200

    .line 3006
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v10

    const/4 v7, -0x1

    if-eq v10, v7, :cond_1c6

    .line 3007
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3008
    .local v7, "installerPackageName":Ljava/lang/String;
    if-eqz v7, :cond_1c3

    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v10, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 3009
    move-object/from16 v20, v5

    .end local v5    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v20, "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v5

    if-eq v10, v5, :cond_1c8

    .line 3010
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " drops manifest attribute android:installLocation in "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c8

    .line 3008
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v5    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_1c3
    move-object/from16 v20, v5

    .end local v5    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    goto :goto_1c8

    .line 3006
    .end local v7    # "installerPackageName":Ljava/lang/String;
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v5    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_1c6
    move-object/from16 v20, v5

    .line 3016
    .end local v5    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_1c8
    :goto_1c8
    new-instance v5, Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v5, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3017
    .local v5, "targetFile":Ljava/io/File;
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v5, v7}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 3020
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1e2

    .line 3021
    iput-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 3022
    move-object v7, v3

    move-object/from16 v18, v7

    .end local v18    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .local v7, "baseApk":Landroid/content/pm/parsing/ApkLite;
    goto :goto_1e9

    .line 3024
    .end local v7    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .restart local v18    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    :cond_1e2
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    :goto_1e9
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 3029
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getSplitTypes()Ljava/util/Set;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 3030
    .end local v0    # "addedFile":Ljava/io/File;
    .end local v3    # "apk":Landroid/content/pm/parsing/ApkLite;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local v9    # "targetName":Ljava/lang/String;
    move-object v10, v8

    move-object/from16 v5, v20

    const/4 v3, 0x0

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_108

    .line 3001
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v0    # "addedFile":Ljava/io/File;
    .restart local v3    # "apk":Landroid/content/pm/parsing/ApkLite;
    .local v5, "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v9    # "targetName":Ljava/lang/String;
    :cond_200
    move-object/from16 v20, v5

    .end local v5    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid filename: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x2

    invoke-direct {v2, v7, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 2976
    .end local v8    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v5    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v10    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_21c
    move-object/from16 v20, v5

    .end local v5    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2977
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " was defined multiple times"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x2

    invoke-direct {v2, v7, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 3032
    .end local v0    # "addedFile":Ljava/io/File;
    .end local v3    # "apk":Landroid/content/pm/parsing/ApkLite;
    .end local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v5    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_242
    move-object/from16 v20, v5

    move-object v8, v10

    .end local v5    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v10    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "removedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2bb

    .line 3033
    if-eqz v4, :cond_29f

    .line 3039
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_251
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_280

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3040
    .local v3, "splitName":Ljava/lang/String;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_266

    .line 3044
    .end local v3    # "splitName":Ljava/lang/String;
    goto :goto_251

    .line 3041
    .restart local v3    # "splitName":Ljava/lang/String;
    :cond_266
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Split not found: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x2

    invoke-direct {v0, v5, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3047
    .end local v3    # "splitName":Ljava/lang/String;
    :cond_280
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_28e

    .line 3048
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 3049
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 3051
    :cond_28e
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v3, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v0, v3, :cond_2bb

    .line 3052
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_2bb

    .line 3034
    :cond_29f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing existing base package for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3057
    :cond_2bb
    :goto_2bb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    const/16 v3, -0x74

    if-eqz v0, :cond_2d4

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallationAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2cc

    goto :goto_2d4

    .line 3058
    :cond_2cc
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Incremental installation of this package is not allowed."

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3063
    :cond_2d4
    :goto_2d4
    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq v0, v5, :cond_2f7

    .line 3065
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2ed

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ed

    goto :goto_2f7

    .line 3067
    :cond_2ed
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x17

    const-string v3, "Can only transfer sessions that update the original installer"

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3072
    :cond_2f7
    :goto_2f7
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6fa

    .line 3078
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const-string v3, "Missing split for "

    const/16 v5, -0x1c

    const-string v7, "219044664"

    const v9, 0x534e4554

    const/4 v10, 0x1

    if-ne v0, v10, :cond_398

    .line 3080
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38f

    .line 3083
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_327

    .line 3084
    invoke-static {v9, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3087
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDontKillApp(Z)V

    .line 3089
    :cond_327
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/parsing/ApkLite;->isSplitRequired()Z

    move-result v0

    if-eqz v0, :cond_354

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_33b

    .line 3090
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_33b

    goto :goto_354

    .line 3091
    :cond_33b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3096
    :cond_354
    :goto_354
    nop

    .line 3097
    invoke-virtual {v6}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    move-object/from16 v10, v18

    const/4 v3, 0x1

    .end local v18    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .local v10, "baseApk":Landroid/content/pm/parsing/ApkLite;
    invoke-static {v0, v2, v10, v15, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 3099
    .local v0, "pkgLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_37d

    .line 3103
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/PackageLite;

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 3104
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 3105
    .local v0, "packageLite":Landroid/content/pm/parsing/PackageLite;
    move-object/from16 v21, v4

    move-object/from16 v25, v6

    move-object/from16 v24, v10

    move-object/from16 v23, v11

    const/4 v10, 0x1

    goto/16 :goto_654

    .line 3100
    .local v0, "pkgLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    :cond_37d
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v3

    .line 3101
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v2, v3, v5, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3081
    .end local v0    # "pkgLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    .end local v10    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .restart local v18    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    :cond_38f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Full install must include a base package"

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3106
    :cond_398
    move-object/from16 v10, v18

    .end local v18    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .restart local v10    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3107
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 3108
    invoke-virtual {v6}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    move-object/from16 v21, v4

    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .local v21, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3107
    const/4 v4, 0x0

    invoke-static {v0, v9, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 3109
    .local v9, "pkgLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-nez v0, :cond_6ea

    .line 3113
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/parsing/PackageLite;

    .line 3114
    .local v4, "existing":Landroid/content/pm/parsing/PackageLite;
    move-object/from16 v22, v4

    .line 3115
    .local v22, "packageLite":Landroid/content/pm/parsing/PackageLite;
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3116
    move-object/from16 v24, v10

    move-object/from16 v23, v11

    .end local v10    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .end local v11    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v23, "addedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v24, "baseApk":Landroid/content/pm/parsing/ApkLite;
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getLongVersionCode()J

    move-result-wide v10

    .line 3115
    move-object/from16 v25, v6

    .end local v6    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .local v25, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    const-string v6, "Existing"

    invoke-direct {v1, v6, v0, v10, v11}, Lcom/android/server/pm/PackageInstallerSession;->assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V

    .line 3117
    nop

    .line 3118
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object v6

    .line 3119
    .local v6, "signingDetails":Landroid/content/pm/SigningDetails;
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0, v6}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_6e1

    .line 3125
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-nez v0, :cond_3fe

    .line 3126
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 3127
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->inheritFileLocked(Ljava/io/File;)V

    .line 3129
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getBaseRequiredSplitTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    goto :goto_412

    .line 3130
    :cond_3fe
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_412

    .line 3131
    const v0, 0x534e4554

    invoke-static {v0, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3134
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setDontKillApp(Z)V

    .line 3138
    :cond_412
    :goto_412
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_464

    .line 3139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_41d
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v0, v7, :cond_461

    .line 3140
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v0

    .line 3141
    .local v7, "splitName":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v0

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3142
    .local v10, "splitFile":Ljava/io/File;
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 3143
    .local v11, "splitRemoved":Z
    invoke-virtual {v12, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_45a

    if-nez v11, :cond_45a

    .line 3144
    invoke-direct {v1, v10}, Lcom/android/server/pm/PackageInstallerSession;->inheritFileLocked(Ljava/io/File;)V

    .line 3146
    nop

    .line 3147
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getRequiredSplitTypes()[Ljava/util/Set;

    move-result-object v18

    move-object/from16 v26, v6

    .end local v6    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v26, "signingDetails":Landroid/content/pm/SigningDetails;
    aget-object v6, v18, v0

    .line 3146
    invoke-static {v14, v6}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 3148
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitTypes()[Ljava/util/Set;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-static {v13, v6}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    goto :goto_45c

    .line 3143
    .end local v26    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v6    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_45a
    move-object/from16 v26, v6

    .line 3139
    .end local v6    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v7    # "splitName":Ljava/lang/String;
    .end local v10    # "splitFile":Ljava/io/File;
    .end local v11    # "splitRemoved":Z
    .restart local v26    # "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_45c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v26

    goto :goto_41d

    .end local v26    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v6    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_461
    move-object/from16 v26, v6

    .end local v6    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v26    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto :goto_466

    .line 3138
    .end local v0    # "i":I
    .end local v26    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v6    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_464
    move-object/from16 v26, v6

    .line 3154
    .end local v6    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v26    # "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_466
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 3155
    .local v6, "packageInstallDir":Ljava/io/File;
    iput-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 3156
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "oat"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 3157
    .local v7, "oatDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4e8

    .line 3158
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3163
    .local v0, "archSubdirs":[Ljava/io/File;
    if-eqz v0, :cond_4e1

    array-length v10, v0

    if-lez v10, :cond_4e1

    .line 3164
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v10

    .line 3165
    .local v10, "instructionSets":[Ljava/lang/String;
    array-length v11, v0

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v18, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_495
    if-ge v5, v11, :cond_4da

    aget-object v27, v0, v5

    .line 3167
    .local v27, "archSubDir":Ljava/io/File;
    move-object/from16 v28, v0

    .end local v0    # "archSubdirs":[Ljava/io/File;
    .local v28, "archSubdirs":[Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4aa

    .line 3168
    move-object/from16 v29, v7

    move-object/from16 v30, v10

    goto :goto_4d1

    .line 3171
    :cond_4aa
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3172
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_4cd

    move-object/from16 v29, v7

    .end local v7    # "oatDir":Ljava/io/File;
    .local v29, "oatDir":Ljava/io/File;
    array-length v7, v0

    if-nez v7, :cond_4b8

    .line 3173
    move-object/from16 v30, v10

    goto :goto_4d1

    .line 3176
    :cond_4b8
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    move-object/from16 v30, v10

    .end local v10    # "instructionSets":[Ljava/lang/String;
    .local v30, "instructionSets":[Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3177
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4d1

    .line 3172
    .end local v29    # "oatDir":Ljava/io/File;
    .end local v30    # "instructionSets":[Ljava/lang/String;
    .restart local v7    # "oatDir":Ljava/io/File;
    .restart local v10    # "instructionSets":[Ljava/lang/String;
    :cond_4cd
    move-object/from16 v29, v7

    move-object/from16 v30, v10

    .line 3165
    .end local v0    # "files":[Ljava/io/File;
    .end local v7    # "oatDir":Ljava/io/File;
    .end local v10    # "instructionSets":[Ljava/lang/String;
    .end local v27    # "archSubDir":Ljava/io/File;
    .restart local v29    # "oatDir":Ljava/io/File;
    .restart local v30    # "instructionSets":[Ljava/lang/String;
    :goto_4d1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    move-object/from16 v7, v29

    move-object/from16 v10, v30

    goto :goto_495

    .end local v28    # "archSubdirs":[Ljava/io/File;
    .end local v29    # "oatDir":Ljava/io/File;
    .end local v30    # "instructionSets":[Ljava/lang/String;
    .local v0, "archSubdirs":[Ljava/io/File;
    .restart local v7    # "oatDir":Ljava/io/File;
    .restart local v10    # "instructionSets":[Ljava/lang/String;
    :cond_4da
    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v30, v10

    .end local v0    # "archSubdirs":[Ljava/io/File;
    .end local v7    # "oatDir":Ljava/io/File;
    .end local v10    # "instructionSets":[Ljava/lang/String;
    .restart local v28    # "archSubdirs":[Ljava/io/File;
    .restart local v29    # "oatDir":Ljava/io/File;
    .restart local v30    # "instructionSets":[Ljava/lang/String;
    goto :goto_4ec

    .line 3163
    .end local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v28    # "archSubdirs":[Ljava/io/File;
    .end local v29    # "oatDir":Ljava/io/File;
    .end local v30    # "instructionSets":[Ljava/lang/String;
    .restart local v0    # "archSubdirs":[Ljava/io/File;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "oatDir":Ljava/io/File;
    :cond_4e1
    move-object/from16 v28, v0

    move-object/from16 v18, v5

    move-object/from16 v29, v7

    .end local v0    # "archSubdirs":[Ljava/io/File;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "oatDir":Ljava/io/File;
    .restart local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v28    # "archSubdirs":[Ljava/io/File;
    .restart local v29    # "oatDir":Ljava/io/File;
    goto :goto_4ec

    .line 3157
    .end local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v28    # "archSubdirs":[Ljava/io/File;
    .end local v29    # "oatDir":Ljava/io/File;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "oatDir":Ljava/io/File;
    :cond_4e8
    move-object/from16 v18, v5

    move-object/from16 v29, v7

    .line 3183
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "oatDir":Ljava/io/File;
    .restart local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v29    # "oatDir":Ljava/io/File;
    :goto_4ec
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_5fa

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5fa

    .line 3184
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v7, "lib"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v10, 0x0

    aput-object v5, v0, v10

    new-instance v5, Ljava/io/File;

    const-string v7, "lib64"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v5, v0, v7

    move-object v5, v0

    .line 3187
    .local v5, "libDirs":[Ljava/io/File;
    array-length v7, v5

    move v11, v10

    :goto_512
    if-ge v11, v7, :cond_5f5

    aget-object v16, v5, v11

    .line 3188
    .local v16, "libDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5e4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_52a

    .line 3189
    move-object/from16 v30, v5

    move-object/from16 v34, v6

    move/from16 v31, v7

    goto/16 :goto_5ea

    .line 3191
    :cond_52a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v0

    .line 3192
    .local v19, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v0

    .line 3193
    .local v27, "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v10, v0

    move-object/from16 v30, v5

    const/4 v5, 0x0

    .end local v5    # "libDirs":[Ljava/io/File;
    .local v30, "libDirs":[Ljava/io/File;
    :goto_540
    if-ge v5, v10, :cond_5b8

    move/from16 v31, v7

    aget-object v7, v0, v5

    .line 3194
    .local v7, "archSubDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-nez v32, :cond_557

    .line 3195
    move-object/from16 v32, v0

    move-object/from16 v34, v6

    move/from16 v35, v10

    move-object/from16 v6, v19

    move-object/from16 v10, v27

    goto :goto_592

    .line 3199
    :cond_557
    :try_start_557
    invoke-static {v7, v6}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v32
    :try_end_55b
    .catch Ljava/io/IOException; {:try_start_557 .. :try_end_55b} :catch_5a1

    move-object/from16 v33, v32

    .line 3206
    .local v33, "relLibPath":Ljava/lang/String;
    nop

    .line 3208
    move-object/from16 v32, v0

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3209
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_588

    move-object/from16 v34, v6

    .end local v6    # "packageInstallDir":Ljava/io/File;
    .local v34, "packageInstallDir":Ljava/io/File;
    array-length v6, v0

    if-nez v6, :cond_572

    .line 3210
    move/from16 v35, v10

    move-object/from16 v6, v19

    move-object/from16 v10, v27

    goto :goto_592

    .line 3213
    :cond_572
    move-object/from16 v6, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v33

    .end local v33    # "relLibPath":Ljava/lang/String;
    .local v6, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "relLibPath":Ljava/lang/String;
    .local v19, "archSubDir":Ljava/io/File;
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3214
    nop

    .end local v7    # "relLibPath":Ljava/lang/String;
    .restart local v33    # "relLibPath":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move/from16 v35, v10

    move-object/from16 v10, v27

    .end local v27    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v10, "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v10, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_592

    .line 3209
    .end local v10    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v34    # "packageInstallDir":Ljava/io/File;
    .local v6, "packageInstallDir":Ljava/io/File;
    .local v7, "archSubDir":Ljava/io/File;
    .local v19, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_588
    move-object/from16 v34, v6

    move/from16 v35, v10

    move-object/from16 v6, v19

    move-object/from16 v10, v27

    move-object/from16 v19, v7

    .line 3193
    .end local v0    # "files":[Ljava/io/File;
    .end local v7    # "archSubDir":Ljava/io/File;
    .end local v19    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v33    # "relLibPath":Ljava/lang/String;
    .local v6, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v34    # "packageInstallDir":Ljava/io/File;
    :goto_592
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v19, v6

    move-object/from16 v27, v10

    move/from16 v7, v31

    move-object/from16 v0, v32

    move-object/from16 v6, v34

    move/from16 v10, v35

    goto :goto_540

    .line 3200
    .end local v10    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v34    # "packageInstallDir":Ljava/io/File;
    .local v6, "packageInstallDir":Ljava/io/File;
    .restart local v7    # "archSubDir":Ljava/io/File;
    .restart local v19    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catch_5a1
    move-exception v0

    move-object/from16 v34, v6

    move-object/from16 v6, v19

    move-object/from16 v10, v27

    move-object/from16 v19, v7

    move-object v5, v0

    .end local v7    # "archSubDir":Ljava/io/File;
    .end local v27    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v6, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v19, "archSubDir":Ljava/io/File;
    .restart local v34    # "packageInstallDir":Ljava/io/File;
    move-object v0, v5

    .line 3201
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Skipping linking of native library directory!"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3203
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 3204
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 3205
    goto :goto_5c0

    .line 3193
    .end local v0    # "e":Ljava/io/IOException;
    .end local v10    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v34    # "packageInstallDir":Ljava/io/File;
    .local v6, "packageInstallDir":Ljava/io/File;
    .local v19, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_5b8
    move-object/from16 v34, v6

    move/from16 v31, v7

    move-object/from16 v6, v19

    move-object/from16 v10, v27

    .line 3216
    .end local v19    # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v6, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v34    # "packageInstallDir":Ljava/io/File;
    :goto_5c0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5de

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3217
    .local v5, "subDir":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5dd

    .line 3218
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3220
    .end local v5    # "subDir":Ljava/lang/String;
    :cond_5dd
    goto :goto_5c4

    .line 3221
    :cond_5de
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5ea

    .line 3188
    .end local v10    # "libFilesToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v30    # "libDirs":[Ljava/io/File;
    .end local v34    # "packageInstallDir":Ljava/io/File;
    .local v5, "libDirs":[Ljava/io/File;
    .local v6, "packageInstallDir":Ljava/io/File;
    :cond_5e4
    move-object/from16 v30, v5

    move-object/from16 v34, v6

    move/from16 v31, v7

    .line 3187
    .end local v5    # "libDirs":[Ljava/io/File;
    .end local v6    # "packageInstallDir":Ljava/io/File;
    .end local v16    # "libDir":Ljava/io/File;
    .restart local v30    # "libDirs":[Ljava/io/File;
    .restart local v34    # "packageInstallDir":Ljava/io/File;
    :goto_5ea
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v30

    move/from16 v7, v31

    move-object/from16 v6, v34

    const/4 v10, 0x0

    goto/16 :goto_512

    .end local v30    # "libDirs":[Ljava/io/File;
    .end local v34    # "packageInstallDir":Ljava/io/File;
    .restart local v5    # "libDirs":[Ljava/io/File;
    .restart local v6    # "packageInstallDir":Ljava/io/File;
    :cond_5f5
    move-object/from16 v30, v5

    move-object/from16 v34, v6

    .end local v5    # "libDirs":[Ljava/io/File;
    .end local v6    # "packageInstallDir":Ljava/io/File;
    .restart local v30    # "libDirs":[Ljava/io/File;
    .restart local v34    # "packageInstallDir":Ljava/io/File;
    goto :goto_5fc

    .line 3183
    .end local v30    # "libDirs":[Ljava/io/File;
    .end local v34    # "packageInstallDir":Ljava/io/File;
    .restart local v6    # "packageInstallDir":Ljava/io/File;
    :cond_5fa
    move-object/from16 v34, v6

    .line 3225
    .end local v6    # "packageInstallDir":Ljava/io/File;
    .restart local v34    # "packageInstallDir":Ljava/io/File;
    :goto_5fc
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/parsing/PackageLite;->isSplitRequired()Z

    move-result v0

    if-eqz v0, :cond_651

    .line 3226
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 3227
    .local v0, "existingSplits":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_612

    const/4 v10, 0x1

    goto :goto_613

    :cond_612
    const/4 v10, 0x0

    :goto_613
    move v2, v10

    .line 3228
    .local v2, "allSplitsRemoved":Z
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_624

    .line 3229
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_624

    move v5, v10

    goto :goto_625

    :cond_624
    const/4 v5, 0x0

    .line 3230
    .local v5, "onlyBaseFileStaged":Z
    :goto_625
    if-eqz v2, :cond_62f

    invoke-virtual {v12}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_636

    if-nez v5, :cond_636

    .line 3231
    :cond_62f
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_636

    goto :goto_652

    .line 3232
    :cond_636
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v7, -0x1c

    invoke-direct {v6, v7, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 3225
    .end local v0    # "existingSplits":I
    .end local v2    # "allSplitsRemoved":Z
    .end local v5    # "onlyBaseFileStaged":Z
    :cond_651
    const/4 v10, 0x1

    .line 3237
    .end local v4    # "existing":Landroid/content/pm/parsing/PackageLite;
    .end local v9    # "pkgLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    .end local v18    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v29    # "oatDir":Ljava/io/File;
    .end local v34    # "packageInstallDir":Ljava/io/File;
    :goto_652
    move-object/from16 v0, v22

    .end local v22    # "packageLite":Landroid/content/pm/parsing/PackageLite;
    .local v0, "packageLite":Landroid/content/pm/parsing/PackageLite;
    :goto_654
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isUseEmbeddedDex()Z

    move-result v2

    if-eqz v2, :cond_6a0

    .line 3238
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_660
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 3239
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69f

    .line 3240
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/dex/DexManager;->auditUncompressedDexInApk(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_683

    goto :goto_69f

    .line 3241
    :cond_683
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Some dex are not uncompressed and aligned correctly for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x2

    invoke-direct {v2, v5, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 3245
    .end local v3    # "file":Ljava/io/File;
    :cond_69f
    :goto_69f
    goto :goto_660

    .line 3248
    :cond_6a0
    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_6a9

    move/from16 v28, v10

    goto :goto_6ab

    :cond_6a9
    const/16 v28, 0x0

    :goto_6ab
    move/from16 v2, v28

    .line 3249
    .local v2, "isInstallerShell":Z
    if-eqz v2, :cond_6ca

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v3

    if-eqz v3, :cond_6ca

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-eqz v3, :cond_6ca

    .line 3250
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v3

    if-nez v3, :cond_6ca

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isProfileableByShell()Z

    move-result v3

    if-nez v3, :cond_6ca

    .line 3251
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    invoke-virtual {v3}, Landroid/os/incremental/IncrementalFileStorages;->disallowReadLogs()V

    .line 3257
    :cond_6ca
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v3

    iput v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    .line 3261
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/InstallationTiming;->setPackageName(Ljava/lang/String;)V

    .line 3262
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/InstallationTiming;->setInstaller(Ljava/lang/String;)V

    .line 3265
    return-object v0

    .line 3120
    .end local v0    # "packageLite":Landroid/content/pm/parsing/PackageLite;
    .end local v2    # "isInstallerShell":Z
    .restart local v4    # "existing":Landroid/content/pm/parsing/PackageLite;
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v6, "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v9    # "pkgLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    .restart local v22    # "packageLite":Landroid/content/pm/parsing/PackageLite;
    :cond_6e1
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Existing signatures are inconsistent"

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3110
    .end local v4    # "existing":Landroid/content/pm/parsing/PackageLite;
    .end local v22    # "packageLite":Landroid/content/pm/parsing/PackageLite;
    .end local v23    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v24    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .end local v25    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .local v6, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .local v10, "baseApk":Landroid/content/pm/parsing/ApkLite;
    .local v11, "addedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_6ea
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x6e

    .line 3111
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3073
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "pkgLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    .end local v10    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .end local v21    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    .local v18, "baseApk":Landroid/content/pm/parsing/ApkLite;
    :cond_6fa
    move-object/from16 v21, v4

    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v21    # "pkgInfo":Landroid/content/pm/PackageInfo;
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid checksum name(s): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 3075
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private verify()V
    .registers 6

    .line 2340
    const/4 v0, -0x1

    .line 2343
    .local v0, "handle":I
    :try_start_1
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x4e20

    const/4 v4, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/perf/PerfStub;->perfPackageInstallBoost(Ljava/lang/String;II)I

    move-result v1

    move v0, v1

    .line 2344
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    .line 2345
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2346
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 2347
    .local v3, "child":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {v3}, Lcom/android/server/pm/PackageInstallerSession;->prepareInheritedFiles()V

    .line 2348
    invoke-direct {v3}, Lcom/android/server/pm/PackageInstallerSession;->parseApkAndExtractNativeLibraries()V

    .line 2349
    .end local v3    # "child":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_1c

    :cond_2f
    goto :goto_4c

    .line 2351
    :cond_30
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareInheritedFiles()V

    .line 2353
    const-string/jumbo v2, "parseApkAndExtractNativeLibraries"

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2354
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallationTiming;->setExtractNativeLibStarted()V

    .line 2356
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->parseApkAndExtractNativeLibraries()V

    .line 2358
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallationTiming;->setExtractNativeLibFinished()V

    .line 2359
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2361
    :goto_4c
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->verifyNonStaged()V
    :try_end_4f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_4f} :catch_52
    .catchall {:try_start_1 .. :try_end_4f} :catchall_50

    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    goto :goto_67

    .line 2369
    :catchall_50
    move-exception v1

    goto :goto_70

    .line 2362
    :catch_52
    move-exception v1

    .line 2363
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_53
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 2364
    .local v2, "completeMsg":Ljava/lang/String;
    iget v3, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v3, v2}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2365
    .local v3, "errorMsg":Ljava/lang/String;
    iget v4, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 2366
    iget v4, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-direct {p0, v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V
    :try_end_67
    .catchall {:try_start_53 .. :try_end_67} :catchall_50

    .line 2369
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v2    # "completeMsg":Ljava/lang/String;
    .end local v3    # "errorMsg":Ljava/lang/String;
    :goto_67
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/perf/PerfStub;->perfLockReleaseHandler(I)I

    .line 2370
    nop

    .line 2371
    return-void

    .line 2369
    :goto_70
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/perf/PerfStub;->perfLockReleaseHandler(I)I

    .line 2370
    throw v1
.end method

.method private verifyNonStaged()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2517
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2518
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->markStageDirInUseLocked()V

    .line 2519
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_16

    .line 2520
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0}, Lcom/android/server/pm/PackageSessionProvider;->getSessionVerifier()Lcom/android/server/pm/PackageSessionVerifier;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->verify(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    .line 2533
    return-void

    .line 2519
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private static writeAutoRevokePermissionsMode(Landroid/util/TypedXmlSerializer;I)V
    .registers 5
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4676
    const/4 v0, 0x0

    const-string v1, "auto-revoke-permissions-mode"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4677
    const-string/jumbo v2, "mode"

    invoke-interface {p0, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4678
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4679
    return-void
.end method

.method private static writeGrantedRuntimePermissionsLocked(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;)V
    .registers 8
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "grantedRuntimePermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4653
    if-eqz p1, :cond_1a

    .line 4654
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1a

    aget-object v2, p1, v1

    .line 4655
    .local v2, "permission":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "granted-runtime-permission"

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4656
    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4657
    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4654
    .end local v2    # "permission":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4660
    :cond_1a
    return-void
.end method

.method private static writeWhitelistedRestrictedPermissionsLocked(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V
    .registers 8
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4664
    .local p1, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_22

    .line 4665
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4666
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 4667
    const/4 v2, 0x0

    const-string/jumbo v3, "whitelisted-restricted-permission"

    invoke-interface {p0, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4668
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4669
    invoke-interface {p0, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4666
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4672
    .end local v0    # "permissionCount":I
    .end local v1    # "i":I
    :cond_22
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 4

    .line 3812
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-eqz v0, :cond_e

    .line 3813
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 3814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 3817
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3818
    :try_start_11
    const-string v1, "abandon"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 3819
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystem()V

    .line 3820
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3822
    monitor-exit v0

    return-void

    .line 3824
    :cond_21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 3825
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3835
    .local v1, "r":Ljava/lang/Runnable;
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    if-eqz v2, :cond_36

    .line 3837
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Ljava/lang/Runnable;

    .line 3838
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3839
    monitor-exit v0

    return-void

    .line 3841
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_3b

    .line 3842
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3843
    return-void

    .line 3841
    .end local v1    # "r":Ljava/lang/Runnable;
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public addChildSessionId(I)V
    .registers 8
    .param p1, "childSessionId"    # I

    .line 4194
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v0, :cond_161

    .line 4198
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 4199
    .local v0, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_142

    .line 4203
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_123

    .line 4207
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-ne v1, v2, :cond_f6

    .line 4212
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v2

    if-ne v1, v2, :cond_c9

    .line 4217
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->containsApkSession()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_3d

    :cond_3b
    move v1, v2

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v1, v3

    .line 4218
    .local v1, "hasAPK":Z
    :goto_3e
    new-instance v4, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v4

    if-eqz v4, :cond_50

    :cond_4f
    move v2, v3

    .line 4219
    .local v2, "hasAPEX":Z
    :cond_50
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v3, :cond_63

    if-eqz v1, :cond_63

    if-nez v2, :cond_5b

    goto :goto_63

    .line 4220
    :cond_5b
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Mix of APK and APEX is not supported for non-staged multi-package session"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4225
    :cond_63
    :goto_63
    :try_start_63
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 4226
    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 4228
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->canBeAddedAsChild(I)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 4232
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_74
    .catchall {:try_start_63 .. :try_end_74} :catchall_c1

    .line 4233
    :try_start_74
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 4234
    const-string v4, "addChildSessionId"

    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 4236
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 4237
    .local v4, "indexOfSession":I
    if-ltz v4, :cond_8c

    .line 4238
    monitor-exit v3
    :try_end_85
    .catchall {:try_start_74 .. :try_end_85} :catchall_9f

    .line 4244
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4245
    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4238
    return-void

    .line 4240
    :cond_8c
    :try_start_8c
    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 4241
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4242
    .end local v4    # "indexOfSession":I
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_8c .. :try_end_97} :catchall_9f

    .line 4244
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4245
    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4246
    nop

    .line 4247
    return-void

    .line 4242
    :catchall_9f
    move-exception v4

    :try_start_a0
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    .end local v0    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v1    # "hasAPK":Z
    .end local v2    # "hasAPEX":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "childSessionId":I
    :try_start_a1
    throw v4

    .line 4229
    .restart local v0    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    .restart local v1    # "hasAPK":Z
    .restart local v2    # "hasAPEX":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "childSessionId":I
    :cond_a2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add child session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as it is in an invalid state."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v1    # "hasAPK":Z
    .end local v2    # "hasAPEX":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "childSessionId":I
    throw v3
    :try_end_c1
    .catchall {:try_start_a1 .. :try_end_c1} :catchall_c1

    .line 4244
    .restart local v0    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    .restart local v1    # "hasAPK":Z
    .restart local v2    # "hasAPEX":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "childSessionId":I
    :catchall_c1
    move-exception v3

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4245
    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4246
    throw v3

    .line 4213
    .end local v1    # "hasAPK":Z
    .end local v2    # "hasAPEX":Z
    :cond_c9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multipackage Inconsistency: session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " have inconsistent rollback settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4208
    :cond_f6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multipackage Inconsistency: session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " have inconsistent staged settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4204
    :cond_123
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi-session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be a child."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4200
    :cond_142
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add child session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as it does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4195
    .end local v0    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Single-session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t have child."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addClientProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .line 1209
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1210
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_6
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 1212
    monitor-exit v0

    .line 1213
    return-void

    .line 1212
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public addFile(ILjava/lang/String;J[B[B)V
    .registers 21
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lengthBytes"    # J
    .param p5, "metadata"    # [B
    .param p6, "signature"    # [B

    .line 3875
    move-object v1, p0

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v2, "com.android.permission.USE_INSTALLER_V2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 3880
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStreamingInstallation()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3881
    if-nez p1, :cond_1a

    goto :goto_33

    .line 3882
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-incremental installation only supports /data/app placement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3886
    :cond_33
    :goto_33
    if-eqz p5, :cond_9d

    .line 3891
    invoke-static/range {p2 .. p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 3895
    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3896
    :try_start_3e
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 3897
    const-string v0, "addFile"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 3899
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v11, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v12

    new-instance v13, Landroid/content/pm/InstallationFile;

    move-object v2, v13

    move v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    invoke-direct {v11, v12, v13}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3903
    monitor-exit v10

    .line 3904
    return-void

    .line 3901
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File already added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "location":I
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "lengthBytes":J
    .end local p5    # "metadata":[B
    .end local p6    # "signature":[B
    throw v0

    .line 3903
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "location":I
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "lengthBytes":J
    .restart local p5    # "metadata":[B
    .restart local p6    # "signature":[B
    :catchall_81
    move-exception v0

    monitor-exit v10
    :try_end_83
    .catchall {:try_start_3e .. :try_end_83} :catchall_81

    throw v0

    .line 3892
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3887
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataLoader installation requires valid metadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3877
    :cond_b6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add files to non-data loader installation session."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2

    .line 3746
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 3747
    return-void
.end method

.method public commit(Landroid/content/IntentSender;Z)V
    .registers 8
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .param p2, "forTransfer"    # Z

    .line 1810
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-eqz v0, :cond_e

    .line 1811
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 1812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 1814
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1820
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1821
    return-void

    .line 1823
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1824
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1825
    const/4 v1, 0x0

    .line 1826
    .local v1, "sealFailed":Z
    :try_start_25
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_2d
    if-ltz v2, :cond_42

    .line 1829
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 1830
    const/4 v1, 0x1

    .line 1826
    :cond_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 1833
    .end local v2    # "i":I
    :cond_42
    if-eqz v1, :cond_46

    .line 1834
    monitor-exit v0

    return-void

    .line 1836
    .end local v1    # "sealFailed":Z
    :cond_46
    monitor-exit v0

    goto :goto_4b

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_48

    throw v1

    .line 1839
    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionSealed()V

    .line 1840
    return-void

    .line 1815
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is a child of multi-package session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1817
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and may not be committed directly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method containsApkSession()Z
    .registers 2

    .line 2827
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 4470
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4471
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4472
    monitor-exit v0

    .line 4473
    return-void

    .line 4472
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 4
    .param p1, "includeIcon"    # Z
    .param p2, "callingUid"    # I

    .line 1047
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->shouldScrubData(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3
    .param p1, "includeIcon"    # Z

    .line 1057
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getChildSessionIds()[I
    .registers 3

    .line 4169
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4170
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4171
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method getChildSessions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    .line 2092
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2093
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2094
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method getCommittedMillis()J
    .registers 4

    .line 3552
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3553
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    monitor-exit v0

    return-wide v1

    .line 3554
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;
    .registers 4

    .line 3868
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    :cond_16
    return-object v2
.end method

.method public getInstallFlags()I
    .registers 2

    .line 3857
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return v0
.end method

.method getInstallSource()Lcom/android/server/pm/InstallSource;
    .registers 3

    .line 3566
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3567
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    monitor-exit v0

    return-object v1

    .line 3568
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getInstallationTiming()Lcom/android/server/pm/InstallationTiming;
    .registers 2

    .line 3863
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTiming:Lcom/android/server/pm/InstallationTiming;

    return-object v0
.end method

.method getInstallerAttributionTag()Ljava/lang/String;
    .registers 2

    .line 3562
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 3558
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerUid()I
    .registers 2

    .line 3528
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    return v0
.end method

.method public getNames()[Ljava/lang/String;
    .registers 3

    .line 1241
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerRootOrVerifier()V

    .line 1242
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1243
    :try_start_6
    const-string v1, "getNames"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1244
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1245
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1247
    :cond_19
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStageDirContentsLocked()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1249
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method getPackageLite()Landroid/content/pm/parsing/PackageLite;
    .registers 3

    .line 3578
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3579
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    monitor-exit v0

    return-object v1

    .line 3580
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 3

    .line 3537
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3538
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3539
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getParentSessionId()I
    .registers 3

    .line 4296
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4297
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    monitor-exit v0

    return v1

    .line 4298
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSessionErrorCode()I
    .registers 3

    .line 4406
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4407
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    monitor-exit v0

    return v1

    .line 4408
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSessionErrorMessage()Ljava/lang/String;
    .registers 3

    .line 4413
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4414
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 4415
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 3

    .line 3572
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3573
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    monitor-exit v0

    return-object v1

    .line 3574
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getUpdatedMillis()J
    .registers 4

    .line 3546
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3547
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    monitor-exit v0

    return-wide v1

    .line 3548
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method hasParentSessionId()Z
    .registers 4

    .line 4289
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4290
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    .line 4291
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method isApexSession()Z
    .registers 3

    .line 2807
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method isCommitted()Z
    .registers 2

    .line 1132
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isDestroyed()Z
    .registers 3

    .line 1137
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 1139
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isMultiPackage()Z
    .registers 2

    .line 3847
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return v0
.end method

.method public isPrepared()Z
    .registers 3

    .line 1119
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1120
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    monitor-exit v0

    return v1

    .line 1121
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isSealed()Z
    .registers 3

    .line 1125
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    monitor-exit v0

    return v1

    .line 1127
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isSessionApplied()Z
    .registers 3

    .line 4392
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4393
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    monitor-exit v0

    return v1

    .line 4394
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isSessionFailed()Z
    .registers 3

    .line 4399
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4400
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    monitor-exit v0

    return v1

    .line 4401
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isSessionReady()Z
    .registers 3

    .line 4385
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4386
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    monitor-exit v0

    return v1

    .line 4387
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isStaged()Z
    .registers 2

    .line 3852
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    return v0
.end method

.method public isStagedAndInTerminalState()Z
    .registers 2

    .line 1150
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method synthetic lambda$abandon$7$com-android-server-pm-PackageInstallerSession()V
    .registers 4

    .line 3826
    const-string v0, "abandonStaged"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    .line 3827
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3828
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->abortCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 3830
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroy()V

    .line 3831
    const/4 v0, 0x0

    const/16 v1, -0x73

    const-string v2, "Session was abandoned"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3832
    const-string v0, "Session was abandoned because the parent session is abandoned"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 3834
    return-void
.end method

.method synthetic lambda$doWriteInternal$0$com-android-server-pm-PackageInstallerSession(Landroid/system/Int64Ref;J)V
    .registers 11
    .param p1, "last"    # Landroid/system/Int64Ref;
    .param p2, "progress"    # J

    .line 1676
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 1677
    iget-wide v0, p1, Landroid/system/Int64Ref;->value:J

    sub-long v0, p2, v0

    .line 1678
    .local v0, "delta":J
    iput-wide p2, p1, Landroid/system/Int64Ref;->value:J

    .line 1679
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1680
    :try_start_13
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 1682
    monitor-exit v2

    goto :goto_25

    :catchall_22
    move-exception v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw v3

    .line 1684
    .end local v0    # "delta":J
    :cond_25
    :goto_25
    return-void
.end method

.method synthetic lambda$install$5$com-android-server-pm-PackageInstallerSession(Ljava/util/List;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 11
    .param p1, "futures"    # Ljava/util/List;
    .param p2, "r"    # Ljava/lang/Void;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 2554
    if-nez p3, :cond_27

    .line 2555
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionApplied()V

    .line 2556
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CompletableFuture;

    .line 2557
    .local v1, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    .line 2558
    .local v2, "result":Lcom/android/server/pm/PackageInstallerSession$InstallResult;
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    const/4 v4, 0x1

    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->extras:Landroid/os/Bundle;

    const-string v6, "Session installed"

    invoke-direct {v3, v4, v6, v5}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2560
    .end local v1    # "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/server/pm/PackageInstallerSession$InstallResult;>;"
    .end local v2    # "result":Lcom/android/server/pm/PackageInstallerSession$InstallResult;
    goto :goto_9

    :cond_26
    goto :goto_4f

    .line 2562
    :cond_27
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    .line 2563
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 2564
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2563
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 2565
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2566
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 2568
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_4f
    return-void
.end method

.method synthetic lambda$verifyNonStaged$3$com-android-server-pm-PackageInstallerSession(ILjava/lang/String;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 2522
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchPendingAbandonCallback()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2524
    return-void

    .line 2526
    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 2527
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->onVerificationComplete()V

    goto :goto_11

    .line 2529
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    .line 2531
    :goto_11
    return-void
.end method

.method synthetic lambda$verifyNonStaged$4$com-android-server-pm-PackageInstallerSession(ILjava/lang/String;)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 2521
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2532
    return-void
.end method

.method public markUpdated()V
    .registers 4

    .line 2214
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2215
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 2216
    monitor-exit v0

    .line 2217
    return-void

    .line 2216
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method onAfterSessionRead(Landroid/util/SparseArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    .line 2171
    .local p1, "allSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2173
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_41

    .line 2174
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2175
    .local v2, "childSessionId":I
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 2176
    .local v3, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v3, :cond_21

    .line 2177
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_3e

    .line 2179
    :cond_21
    const-string v4, "PackageInstallerSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child session not existed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2173
    .end local v2    # "childSessionId":I
    .end local v3    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    :goto_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2184
    .end local v1    # "i":I
    :cond_41
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v1, :cond_97

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_99

    if-eqz v1, :cond_4c

    goto :goto_97

    .line 2188
    :cond_4c
    :try_start_4c
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V

    .line 2193
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_62

    goto :goto_8b

    .line 2196
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 2197
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    goto :goto_74

    .line 2198
    :cond_73
    move-object v1, p0

    :goto_74
    nop

    .line 2199
    .local v1, "root":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v2

    if-nez v2, :cond_8a

    .line 2200
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 2201
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_8a

    .line 2203
    :cond_87
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;
    :try_end_8a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4c .. :try_end_8a} :catch_8d
    .catchall {:try_start_4c .. :try_end_8a} :catchall_99

    .line 2208
    .end local v1    # "root":Lcom/android/server/pm/PackageInstallerSession;
    :cond_8a
    :goto_8a
    goto :goto_95

    .line 2194
    :cond_8b
    :goto_8b
    :try_start_8b
    monitor-exit v0

    return-void

    .line 2206
    :catch_8d
    move-exception v1

    .line 2207
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    const-string v2, "PackageInstallerSession"

    const-string v3, "Package not valid"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2209
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_95
    monitor-exit v0

    .line 2210
    return-void

    .line 2185
    :cond_97
    :goto_97
    monitor-exit v0

    return-void

    .line 2209
    :catchall_99
    move-exception v1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_8b .. :try_end_9b} :catchall_99

    throw v1
.end method

.method public open()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3719
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 3720
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 3724
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3725
    :try_start_11
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    move v3, v2

    .line 3726
    .local v3, "wasPrepared":Z
    if-nez v2, :cond_30

    .line 3727
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v2, :cond_1e

    .line 3728
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    goto :goto_24

    .line 3729
    :cond_1e
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v2, :cond_27

    .line 3735
    :goto_24
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    goto :goto_30

    .line 3732
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "stageDir must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v1

    .line 3737
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_30
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_39

    .line 3739
    if-nez v3, :cond_38

    .line 3740
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3742
    :cond_38
    return-void

    .line 3737
    .end local v3    # "wasPrepared":Z
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1721
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1725
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1726
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1727
    :try_start_c
    const-string/jumbo v1, "openRead"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1e

    .line 1729
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_18
    .catchall {:try_start_12 .. :try_end_16} :catchall_1e

    :try_start_16
    monitor-exit v0

    return-object v1

    .line 1730
    :catch_18
    move-exception v1

    .line 1731
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    throw v2

    .line 1733
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v1

    .line 1722
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read regular files in a data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J

    .line 1536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    .line 1538
    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-nez v0, :cond_f

    .line 1539
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    .line 1541
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-eqz v0, :cond_23

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    if-nez v1, :cond_23

    .line 1542
    const/16 v1, 0x1088

    const/4 v2, 0x0

    const/16 v3, 0x4e20

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 1546
    :cond_23
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2c} :catch_2d

    return-object v0

    .line 1547
    :catch_2d
    move-exception v0

    .line 1548
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeChildSessionId(I)V
    .registers 6
    .param p1, "sessionId"    # I

    .line 4251
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4252
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 4253
    const-string/jumbo v1, "removeChildSessionId"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 4255
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 4256
    .local v1, "indexOfSession":I
    if-gez v1, :cond_16

    .line 4258
    monitor-exit v0

    return-void

    .line 4260
    :cond_16
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_3f

    .line 4262
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 4263
    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 4264
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 4265
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_36

    .line 4267
    :try_start_2d
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4268
    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4269
    nop

    .line 4270
    .end local v1    # "indexOfSession":I
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 4271
    return-void

    .line 4267
    .restart local v1    # "indexOfSession":I
    .restart local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_36
    move-exception v3

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4268
    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4269
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "sessionId":I
    throw v3

    .line 4270
    .end local v1    # "indexOfSession":I
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "sessionId":I
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public removeFile(ILjava/lang/String;)V
    .registers 15
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 3908
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 3913
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 3917
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3918
    :try_start_1b
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 3919
    const-string/jumbo v1, "removeFile"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 3921
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-instance v11, Landroid/content/pm/InstallationFile;

    .line 3922
    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    invoke-direct {v2, v3, v11}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    .line 3921
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 3925
    monitor-exit v0

    .line 3926
    return-void

    .line 3923
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File already removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "location":I
    .end local p2    # "name":Ljava/lang/String;
    throw v1

    .line 3925
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "location":I
    .restart local p2    # "name":Ljava/lang/String;
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_1b .. :try_end_61} :catchall_5f

    throw v1

    .line 3914
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify package name to remove a split"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3910
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add files to non-data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSplit(Ljava/lang/String;)V
    .registers 5
    .param p1, "splitName"    # Ljava/lang/String;

    .line 1370
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1374
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1378
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1379
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_16
    const-string/jumbo v1, "removeSplit"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_28

    .line 1383
    :try_start_1c
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_22
    .catchall {:try_start_1c .. :try_end_1f} :catchall_28

    .line 1386
    nop

    .line 1387
    :try_start_20
    monitor-exit v0

    .line 1388
    return-void

    .line 1384
    :catch_22
    move-exception v1

    .line 1385
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "splitName":Ljava/lang/String;
    throw v2

    .line 1387
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "splitName":Ljava/lang/String;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v1

    .line 1375
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify package name to remove a split"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1371
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove splits in a data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "optional"    # I
    .param p3, "required"    # I
    .param p4, "trustedInstallers"    # Ljava/util/List;
    .param p5, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;

    .line 1357
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerRootOrVerifier()V

    .line 1358
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1359
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    .line 1361
    .local v7, "installerPackageName":Ljava/lang/String;
    :try_start_10
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v2, v7

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->requestFileChecksums(Ljava/io/File;Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1a} :catch_1c

    .line 1365
    nop

    .line 1366
    return-void

    .line 1363
    :catch_1c
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method sessionContains(Ljava/util/function/Predicate;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)Z"
        }
    .end annotation

    .line 2811
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2812
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2815
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2816
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object v1

    .line 2817
    .local v1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_2e

    .line 2818
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 2819
    .local v2, "child":Lcom/android/server/pm/PackageInstallerSession;
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2820
    const/4 v0, 0x1

    return v0

    .line 2822
    .end local v2    # "child":Lcom/android/server/pm/PackageInstallerSession;
    :cond_2b
    goto :goto_17

    .line 2823
    :cond_2c
    const/4 v0, 0x0

    return v0

    .line 2817
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1022
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallingPackage:Ljava/lang/String;

    .line 1023
    return-void
.end method

.method public setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checksums"    # [Landroid/content/pm/Checksum;
    .param p3, "signature"    # [B

    .line 1310
    array-length v0, p2

    if-nez v0, :cond_4

    .line 1311
    return-void

    .line 1315
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1316
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    .local v0, "installerPackageName":Ljava/lang/String;
    goto :goto_1d

    .line 1318
    .end local v0    # "installerPackageName":Ljava/lang/String;
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 1320
    .restart local v0    # "installerPackageName":Ljava/lang/String;
    :goto_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 1324
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1325
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1327
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 1328
    .local v2, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 1329
    .local v3, "callingInstaller":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v3, :cond_7e

    .line 1333
    if-eqz p3, :cond_54

    array-length v4, p3

    if-eqz v4, :cond_54

    .line 1335
    :try_start_47
    invoke-static {p2, p3}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catch Ljava/security/SignatureException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 1338
    goto :goto_54

    .line 1336
    :catch_4b
    move-exception v4

    .line 1337
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can\'t verify signature"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1341
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1342
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1343
    :try_start_5a
    const-string v5, "addChecksums"

    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 1345
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 1349
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    invoke-direct {v6, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;-><init>([Landroid/content/pm/Checksum;[B)V

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    monitor-exit v4

    .line 1351
    return-void

    .line 1346
    :cond_73
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Duplicate checksums."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "installerPackageName":Ljava/lang/String;
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v3    # "callingInstaller":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "checksums":[Landroid/content/pm/Checksum;
    .end local p3    # "signature":[B
    throw v5

    .line 1350
    .restart local v0    # "installerPackageName":Ljava/lang/String;
    .restart local v1    # "appOps":Landroid/app/AppOpsManager;
    .restart local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v3    # "callingInstaller":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "checksums":[Landroid/content/pm/Checksum;
    .restart local p3    # "signature":[B
    :catchall_7b
    move-exception v5

    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_5a .. :try_end_7d} :catchall_7b

    throw v5

    .line 1330
    :cond_7e
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t obtain calling installer\'s package."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1321
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v3    # "callingInstaller":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_86
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Installer package is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setClientProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .line 1201
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1202
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1203
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 1204
    monitor-exit v0

    .line 1205
    return-void

    .line 1204
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v1
.end method

.method setParentSessionId(I)V
    .registers 6
    .param p1, "parentSessionId"    # I

    .line 4278
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4279
    const/4 v1, -0x1

    if-eq p1, v1, :cond_32

    :try_start_6
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v2, v1, :cond_b

    goto :goto_32

    .line 4281
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The parent of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is alreadyset to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "parentSessionId":I
    throw v1

    .line 4284
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "parentSessionId":I
    :cond_32
    :goto_32
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 4285
    monitor-exit v0

    .line 4286
    return-void

    .line 4285
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_36

    throw v1
.end method

.method setPermissionsResult(Z)V
    .registers 6
    .param p1, "accepted"    # Z

    .line 3698
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3702
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3703
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, p0

    .line 3705
    .local v0, "root":Lcom/android/server/pm/PackageInstallerSession;
    :goto_18
    if-eqz p1, :cond_2f

    .line 3707
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3708
    const/4 v2, 0x1

    :try_start_1e
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 3709
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    .line 3710
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3f

    .line 3709
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2

    .line 3712
    :cond_2f
    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession;->destroy()V

    .line 3713
    const-string v1, "User rejected permissions"

    const/4 v2, 0x0

    const/16 v3, -0x73

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3714
    const-string v1, "User rejected permissions"

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 3716
    :goto_3f
    return-void

    .line 3699
    .end local v0    # "root":Lcom/android/server/pm/PackageInstallerSession;
    :cond_40
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be sealed to accept permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSessionFailed(ILjava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 4354
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4356
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_46

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz v1, :cond_c

    goto :goto_46

    .line 4357
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 4358
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 4359
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 4360
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 4361
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 4362
    const-string v1, "PackageInstallerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4363
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_48

    .line 4364
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroy()V

    .line 4365
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 4366
    return-void

    .line 4356
    :cond_46
    :goto_46
    :try_start_46
    monitor-exit v0

    return-void

    .line 4363
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method setSessionReady()V
    .registers 3

    .line 4341
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4343
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz v1, :cond_c

    goto :goto_21

    .line 4344
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 4345
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 4346
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 4347
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 4348
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 4349
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_23

    .line 4350
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 4351
    return-void

    .line 4343
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v0

    return-void

    .line 4349
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public stageViaHardLink(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .line 1565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1566
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_54

    .line 1571
    :try_start_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1572
    .local v1, "target":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_4e

    .line 1574
    .local v2, "source":Ljava/io/File;
    :try_start_18
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_28
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_28} :catch_4e

    .line 1579
    goto :goto_2d

    .line 1577
    :catch_29
    move-exception v3

    .line 1578
    .local v3, "e":Landroid/system/ErrnoException;
    :try_start_2a
    invoke-virtual {v3}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 1580
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_2d
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1585
    .end local v1    # "target":Ljava/io/File;
    .end local v2    # "source":Ljava/io/File;
    nop

    .line 1586
    return-void

    .line 1581
    .restart local v1    # "target":Ljava/io/File;
    .restart local v2    # "source":Ljava/io/File;
    :cond_35
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t relabel file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "path":Ljava/lang/String;
    throw v3
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4e} :catch_4e

    .line 1583
    .end local v1    # "target":Ljava/io/File;
    .end local v2    # "source":Ljava/io/File;
    .restart local v0    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_4e
    move-exception v1

    .line 1584
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1567
    .end local v1    # "e":Ljava/io/IOException;
    :cond_54
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "link() can only be run by the system"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public submitSpeedInstallFile(Ljava/lang/String;)Z
    .registers 13
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1440
    return v1

    .line 1443
    :cond_8
    const/4 v0, 0x0

    .line 1444
    .local v0, "installerPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1445
    :try_start_c
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 1446
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_163

    .line 1447
    invoke-static {v0}, Landroid/content/pm/PackageInstaller;->getSpeedInstallDirForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1448
    .local v2, "baseFilePath":Ljava/io/File;
    if-nez v2, :cond_26

    .line 1449
    const-string v3, "PackageInstallerSession"

    const-string/jumbo v4, "speedinstall is not enable"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return v1

    .line 1453
    :cond_26
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 1455
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageInstallerService;->getSpeedInstallRedirectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1456
    if-eqz p1, :cond_44

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 1457
    :cond_44
    const-string v3, "PackageInstallerSession"

    const-string/jumbo v4, "speedinstall apk file path is wrong"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return v1

    .line 1462
    :cond_4d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v3, "speedInstallFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_145

    .line 1469
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_82

    .line 1470
    const-string v4, "PackageInstallerSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "speedinstall apk file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    return v1

    .line 1474
    :cond_82
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1475
    :try_start_85
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1476
    const-string/jumbo v5, "submitSpeedInstallFile"

    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_142

    .line 1479
    :try_start_8e
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 1482
    .local v5, "dataDir":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {v5, v6}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_a4

    .line 1483
    const-string v6, "PackageInstallerSession"

    const-string/jumbo v7, "speedinstall install paths don\'t not martch"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_a2} :catch_13c
    .catch Landroid/system/ErrnoException; {:try_start_8e .. :try_end_a2} :catch_12f
    .catchall {:try_start_8e .. :try_end_a2} :catchall_142

    .line 1484
    :try_start_a2
    monitor-exit v4
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_142

    return v1

    .line 1487
    :cond_a4
    :try_start_a4
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v7, 0x3e8

    invoke-virtual {v6, p1, v7, v7}, Lcom/android/server/pm/Installer;->changeSpeedInstallFileOwner(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_ba

    .line 1489
    const-string v6, "PackageInstallerSession"

    const-string/jumbo v7, "speedinstall can\'t change file owner"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b8} :catch_13c
    .catch Landroid/system/ErrnoException; {:try_start_a4 .. :try_end_b8} :catch_12f
    .catchall {:try_start_a4 .. :try_end_b8} :catchall_142

    .line 1490
    :try_start_b8
    monitor-exit v4
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_142

    return v1

    .line 1492
    :cond_ba
    :try_start_ba
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1493
    .local v6, "targetFile":Ljava/io/File;
    invoke-virtual {v3, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_d5

    .line 1494
    const-string v7, "PackageInstallerSession"

    const-string/jumbo v8, "speedinstall submitSpeedInstallFile  rename failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_d3} :catch_13c
    .catch Landroid/system/ErrnoException; {:try_start_ba .. :try_end_d3} :catch_12f
    .catchall {:try_start_ba .. :try_end_d3} :catchall_142

    .line 1495
    :try_start_d3
    monitor-exit v4
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_142

    return v1

    .line 1498
    :cond_d5
    :try_start_d5
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {v7}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_123

    .line 1499
    const-string v7, "PackageInstallerSession"

    const-string/jumbo v8, "speedinstall restorecon failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_121

    .line 1503
    const/4 v7, 0x1

    .line 1504
    .local v7, "restoreFile":Z
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    move v7, v8

    .line 1505
    if-eqz v7, :cond_100

    .line 1506
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/server/pm/Installer;->changeSpeedInstallFileOwner(Ljava/lang/String;II)Z

    move-result v8

    move v7, v8

    .line 1509
    :cond_100
    if-nez v7, :cond_121

    .line 1510
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 1511
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1513
    :cond_10b
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1515
    const/16 v1, -0x6e

    const-string/jumbo v8, "speed install fialed"

    const/4 v9, 0x0

    invoke-direct {p0, v1, v8, v9}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1517
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v8, "submit install file error"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1518
    .local v1, "e":Ljava/io/IOException;
    nop

    .end local v0    # "installerPackage":Ljava/lang/String;
    .end local v2    # "baseFilePath":Ljava/io/File;
    .end local v3    # "speedInstallFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "filePath":Ljava/lang/String;
    throw v1
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_121} :catch_13c
    .catch Landroid/system/ErrnoException; {:try_start_d5 .. :try_end_121} :catch_12f
    .catchall {:try_start_d5 .. :try_end_121} :catchall_142

    .line 1521
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "restoreFile":Z
    .restart local v0    # "installerPackage":Ljava/lang/String;
    .restart local v2    # "baseFilePath":Ljava/io/File;
    .restart local v3    # "speedInstallFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "filePath":Ljava/lang/String;
    :cond_121
    :try_start_121
    monitor-exit v4
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_142

    return v1

    .line 1523
    :cond_123
    :try_start_123
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1a4

    invoke-static {v1, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_12c} :catch_13c
    .catch Landroid/system/ErrnoException; {:try_start_123 .. :try_end_12c} :catch_12f
    .catchall {:try_start_123 .. :try_end_12c} :catchall_142

    .line 1524
    const/4 v1, 0x1

    :try_start_12d
    monitor-exit v4

    return v1

    .line 1527
    .end local v5    # "dataDir":Ljava/io/File;
    .end local v6    # "targetFile":Ljava/io/File;
    :catch_12f
    move-exception v1

    .line 1528
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to chmod speed install file"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1529
    .local v5, "ioException":Ljava/io/IOException;
    invoke-static {v5}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v6

    .end local v0    # "installerPackage":Ljava/lang/String;
    .end local v2    # "baseFilePath":Ljava/io/File;
    .end local v3    # "speedInstallFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "filePath":Ljava/lang/String;
    throw v6

    .line 1525
    .end local v1    # "e":Landroid/system/ErrnoException;
    .end local v5    # "ioException":Ljava/io/IOException;
    .restart local v0    # "installerPackage":Ljava/lang/String;
    .restart local v2    # "baseFilePath":Ljava/io/File;
    .restart local v3    # "speedInstallFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "filePath":Ljava/lang/String;
    :catch_13c
    move-exception v1

    .line 1526
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "installerPackage":Ljava/lang/String;
    .end local v2    # "baseFilePath":Ljava/io/File;
    .end local v3    # "speedInstallFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "filePath":Ljava/lang/String;
    throw v5

    .line 1531
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "installerPackage":Ljava/lang/String;
    .restart local v2    # "baseFilePath":Ljava/io/File;
    .restart local v3    # "speedInstallFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "filePath":Ljava/lang/String;
    :catchall_142
    move-exception v1

    monitor-exit v4
    :try_end_144
    .catchall {:try_start_12d .. :try_end_144} :catchall_142

    throw v1

    .line 1465
    :cond_145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "speedinstall invalid name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1466
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1446
    .end local v2    # "baseFilePath":Ljava/io/File;
    .end local v3    # "speedInstallFile":Ljava/io/File;
    :catchall_163
    move-exception v1

    :try_start_164
    monitor-exit v2
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_163

    throw v1
.end method

.method public transfer(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2222
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 2223
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    const-wide/16 v1, 0x0

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2224
    .local v1, "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_8b

    .line 2228
    const-string v2, "android.permission.INSTALL_PACKAGES"

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v2, v3}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_60

    .line 2236
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionParams;->areHiddenOptionsSet()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 2240
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2241
    :try_start_2e
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2242
    const-string/jumbo v3, "transfer"

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_55

    .line 2245
    :try_start_37
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V
    :try_end_3a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_37 .. :try_end_3a} :catch_4c
    .catchall {:try_start_37 .. :try_end_3a} :catchall_55

    .line 2248
    nop

    .line 2250
    :try_start_3b
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 2251
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    const/4 v4, 0x0

    invoke-static {p1, v4, p1, v4, v3}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 2253
    monitor-exit v2

    .line 2254
    return-void

    .line 2246
    :catch_4c
    move-exception v3

    .line 2247
    .local v3, "e":Lcom/android/server/pm/PackageManagerException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Package is not valid"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v1    # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v4

    .line 2253
    .end local v3    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v1    # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_55
    move-exception v3

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_55

    throw v3

    .line 2237
    :cond_58
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can only transfer sessions that use public options"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2230
    :cond_60
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destination package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2225
    :cond_8b
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v3, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method write(Landroid/util/TypedXmlSerializer;Ljava/io/File;)V
    .registers 21
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "sessionsDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4693
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4694
    :try_start_7
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_13

    .line 4695
    monitor-exit v3

    return-void

    .line 4698
    :cond_13
    const-string/jumbo v0, "session"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4700
    const-string/jumbo v0, "sessionId"

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4701
    const-string/jumbo v0, "userId"

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4702
    const-string v0, "installerPackageName"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4704
    const-string v0, "installerAttributionTag"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4706
    const-string v0, "installerUid"

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4707
    const-string v0, "installInitiatingPackageName"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4709
    const-string v0, "installOriginatingPackageName"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4712
    const-string v0, "callingPackage"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mCallingPackage:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4713
    const-string v0, "createdMillis"

    iget-wide v5, v1, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 4714
    const-string/jumbo v0, "updatedMillis"

    iget-wide v5, v1, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 4715
    const-string v0, "committedMillis"

    iget-wide v5, v1, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 4716
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_80

    .line 4717
    const-string/jumbo v5, "sessionStageDir"

    .line 4718
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 4717
    invoke-static {v2, v5, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4720
    :cond_80
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v0, :cond_8a

    .line 4721
    const-string/jumbo v5, "sessionStageCid"

    invoke-static {v2, v5, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4723
    :cond_8a
    const-string/jumbo v0, "prepared"

    iget-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 4724
    const-string v0, "committed"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 4725
    const-string v0, "destroyed"

    iget-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 4726
    const-string/jumbo v0, "sealed"

    iget-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 4728
    const-string/jumbo v0, "multiPackage"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 4729
    const-string/jumbo v0, "stagedSession"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 4730
    const-string v0, "isReady"

    iget-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 4731
    const-string v0, "isFailed"

    iget-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 4732
    const-string v0, "isApplied"

    iget-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 4733
    const-string/jumbo v0, "packageSource"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4734
    const-string v0, "errorCode"

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4735
    const-string v0, "errorMessage"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4738
    const-string/jumbo v0, "parentSessionId"

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4739
    const-string/jumbo v0, "mode"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4740
    const-string v0, "installFlags"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4741
    const-string v0, "installLocation"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4742
    const-string/jumbo v0, "sizeBytes"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 4743
    const-string v0, "appPackageName"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4744
    const-string v0, "appLabel"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4745
    const-string/jumbo v0, "originatingUri"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 4746
    const-string/jumbo v0, "originatingUid"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4747
    const-string/jumbo v0, "referrerUri"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 4748
    const-string v0, "abiOverride"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4749
    const-string/jumbo v0, "volumeUuid"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4750
    const-string v0, "installRason"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4752
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_16f

    const/4 v0, 0x1

    goto :goto_170

    :cond_16f
    const/4 v0, 0x0

    :goto_170
    move v6, v0

    .line 4753
    .local v6, "isDataLoader":Z
    const-string v0, "isDataLoader"

    invoke-static {v2, v0, v6}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 4754
    if-eqz v6, :cond_1b4

    .line 4755
    const-string v0, "dataLoaderType"

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v7}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v7

    invoke-interface {v2, v4, v0, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4756
    const-string v0, "dataLoaderPackageName"

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 4757
    invoke-virtual {v7}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 4756
    invoke-static {v2, v0, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4758
    const-string v0, "dataLoaderClassName"

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 4759
    invoke-virtual {v7}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 4758
    invoke-static {v2, v0, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4760
    const-string v0, "dataLoaderArguments"

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 4761
    invoke-virtual {v7}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    move-result-object v7

    .line 4760
    invoke-static {v2, v0, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4764
    :cond_1b4
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->writeGrantedRuntimePermissionsLocked(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;)V

    .line 4765
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->writeWhitelistedRestrictedPermissionsLocked(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V

    .line 4767
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->writeAutoRevokePermissionsMode(Landroid/util/TypedXmlSerializer;I)V

    .line 4770
    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    move-object/from16 v7, p2

    invoke-static {v0, v7}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v8, v0

    .line 4771
    .local v8, "appIconFile":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1e3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 4772
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto/16 :goto_25b

    .line 4773
    :cond_1e3
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25b

    .line 4774
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v11, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_25b

    .line 4775
    const-string v0, "PackageInstallerSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing changed icon "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20d
    .catchall {:try_start_7 .. :try_end_20d} :catchall_36b

    .line 4776
    const/4 v9, 0x0

    .line 4778
    .local v9, "os":Ljava/io/FileOutputStream;
    :try_start_20e
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v9, v0

    .line 4779
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v0, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_21f} :catch_225
    .catchall {:try_start_20e .. :try_end_21f} :catchall_223

    .line 4783
    :goto_21f
    :try_start_21f
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_222
    .catchall {:try_start_21f .. :try_end_222} :catchall_36b

    .line 4784
    goto :goto_24d

    .line 4783
    :catchall_223
    move-exception v0

    goto :goto_256

    .line 4780
    :catch_225
    move-exception v0

    .line 4781
    .local v0, "e":Ljava/io/IOException;
    :try_start_226
    const-string v10, "PackageInstallerSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to write icon "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24c
    .catchall {:try_start_226 .. :try_end_24c} :catchall_223

    goto :goto_21f

    .line 4786
    .end local v0    # "e":Ljava/io/IOException;
    :goto_24d
    :try_start_24d
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    goto :goto_25b

    .line 4783
    :goto_256
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4784
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1    # "out":Landroid/util/TypedXmlSerializer;
    .end local p2    # "sessionsDir":Ljava/io/File;
    throw v0

    .line 4788
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1    # "out":Landroid/util/TypedXmlSerializer;
    .restart local p2    # "sessionsDir":Ljava/io/File;
    :cond_25b
    :goto_25b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v0

    .line 4789
    .local v0, "childSessionIds":[I
    array-length v9, v0

    const/4 v10, 0x0

    :goto_261
    if-ge v10, v9, :cond_279

    aget v11, v0, v10

    .line 4790
    .local v11, "childSessionId":I
    const-string v12, "childSession"

    invoke-interface {v2, v4, v12}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4791
    const-string/jumbo v12, "sessionId"

    invoke-interface {v2, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4792
    const-string v12, "childSession"

    invoke-interface {v2, v4, v12}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4789
    nop

    .end local v11    # "childSessionId":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_261

    .line 4795
    :cond_279
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v9

    .line 4796
    .local v9, "files":[Landroid/content/pm/InstallationFile;
    array-length v10, v9

    const/4 v11, 0x0

    :goto_27f
    if-ge v11, v10, :cond_2c3

    aget-object v12, v9, v11

    .line 4797
    .local v12, "file":Landroid/content/pm/InstallationFile;
    const-string/jumbo v13, "sessionFile"

    invoke-interface {v2, v4, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4798
    const-string v13, "location"

    invoke-virtual {v12}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v14

    invoke-interface {v2, v4, v13, v14}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4799
    const-string/jumbo v13, "name"

    invoke-virtual {v12}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4800
    const-string v13, "lengthBytes"

    invoke-virtual {v12}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    move-result-wide v14

    invoke-interface {v2, v4, v13, v14, v15}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 4801
    const-string/jumbo v13, "metadata"

    invoke-virtual {v12}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v14

    invoke-static {v2, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 4802
    const-string/jumbo v13, "signature"

    invoke-virtual {v12}, Landroid/content/pm/InstallationFile;->getSignature()[B

    move-result-object v14

    invoke-static {v2, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 4803
    const-string/jumbo v13, "sessionFile"

    invoke-interface {v2, v4, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4796
    nop

    .end local v12    # "file":Landroid/content/pm/InstallationFile;
    add-int/lit8 v11, v11, 0x1

    goto :goto_27f

    .line 4806
    :cond_2c3
    const/4 v10, 0x0

    .local v10, "i":I
    iget-object v11, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .local v11, "isize":I
    :goto_2ca
    if-ge v10, v11, :cond_320

    .line 4807
    iget-object v12, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 4808
    .local v12, "fileName":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 4809
    .local v13, "perFileChecksum":Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;
    invoke-virtual {v13}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getChecksums()[Landroid/content/pm/Checksum;

    move-result-object v14

    .line 4810
    .local v14, "checksums":[Landroid/content/pm/Checksum;
    array-length v15, v14

    const/4 v5, 0x0

    :goto_2e2
    if-ge v5, v15, :cond_318

    aget-object v16, v14, v5

    .line 4811
    .local v16, "checksum":Landroid/content/pm/Checksum;
    const-string/jumbo v4, "sessionChecksum"

    move/from16 v17, v6

    const/4 v6, 0x0

    .end local v6    # "isDataLoader":Z
    .local v17, "isDataLoader":Z
    invoke-interface {v2, v6, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4812
    const-string/jumbo v4, "name"

    invoke-static {v2, v4, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4813
    const-string v4, "checksumKind"

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Checksum;->getType()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v2, v7, v4, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4814
    const-string v4, "checksumValue"

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 4815
    const-string/jumbo v4, "sessionChecksum"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4810
    nop

    .end local v16    # "checksum":Landroid/content/pm/Checksum;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, p2

    move/from16 v6, v17

    const/4 v4, 0x0

    goto :goto_2e2

    .end local v17    # "isDataLoader":Z
    .restart local v6    # "isDataLoader":Z
    :cond_318
    move/from16 v17, v6

    .line 4806
    .end local v6    # "isDataLoader":Z
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "perFileChecksum":Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;
    .end local v14    # "checksums":[Landroid/content/pm/Checksum;
    .restart local v17    # "isDataLoader":Z
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p2

    const/4 v4, 0x0

    goto :goto_2ca

    .end local v17    # "isDataLoader":Z
    .restart local v6    # "isDataLoader":Z
    :cond_320
    move/from16 v17, v6

    .line 4818
    .end local v6    # "isDataLoader":Z
    .end local v10    # "i":I
    .end local v11    # "isize":I
    .restart local v17    # "isDataLoader":Z
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .local v5, "isize":I
    :goto_329
    if-ge v4, v5, :cond_362

    .line 4819
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4820
    .local v6, "fileName":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 4821
    .local v7, "perFileChecksum":Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getSignature()[B

    move-result-object v10

    .line 4822
    .local v10, "signature":[B
    if-eqz v10, :cond_35f

    array-length v11, v10

    if-nez v11, :cond_345

    .line 4823
    goto :goto_35f

    .line 4825
    :cond_345
    const-string/jumbo v11, "sessionChecksumSignature"

    const/4 v12, 0x0

    invoke-interface {v2, v12, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4826
    const-string/jumbo v11, "name"

    invoke-static {v2, v11, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4827
    const-string/jumbo v11, "signature"

    invoke-static {v2, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 4828
    const-string/jumbo v11, "sessionChecksumSignature"

    const/4 v12, 0x0

    invoke-interface {v2, v12, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4818
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "perFileChecksum":Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;
    .end local v10    # "signature":[B
    :cond_35f
    :goto_35f
    add-int/lit8 v4, v4, 0x1

    goto :goto_329

    .line 4831
    .end local v0    # "childSessionIds":[I
    .end local v4    # "i":I
    .end local v5    # "isize":I
    .end local v8    # "appIconFile":Ljava/io/File;
    .end local v9    # "files":[Landroid/content/pm/InstallationFile;
    .end local v17    # "isDataLoader":Z
    :cond_362
    monitor-exit v3
    :try_end_363
    .catchall {:try_start_24d .. :try_end_363} :catchall_36b

    .line 4833
    const-string/jumbo v0, "session"

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4834
    return-void

    .line 4831
    :catchall_36b
    move-exception v0

    :try_start_36c
    monitor-exit v3
    :try_end_36d
    .catchall {:try_start_36c .. :try_end_36d} :catchall_36b

    throw v0
.end method

.method public write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 1555
    if-eqz p6, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    .line 1557
    :try_start_8
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_d

    .line 1560
    nop

    .line 1561
    return-void

    .line 1558
    :catch_d
    move-exception v0

    .line 1559
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
