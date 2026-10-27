.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# static fields
.field public static final EMPTY_CHILD_SESSION_ARRAY:[I

.field public static final EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

.field public static final sAddedApkFilter:Ljava/io/FileFilter;

.field public static final sAddedFilter:Ljava/io/FileFilter;

.field public static final sArtManagedFilter:Ljava/io/FileFilter;

.field public static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field public committedMillis:J

.field public final createdMillis:J

.field public final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mBridges:Ljava/util/ArrayList;

.field public final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field public final mChecksums:Landroid/util/ArrayMap;

.field public final mChildSessions:Landroid/util/SparseArray;

.field public mClientProgress:F

.field public final mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentVerificationPolicy:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile mDataLoaderFinished:Z

.field public mDependencyInstallerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile mDestroyed:Z

.field public mDeveloperVerificationExtensionResponse:Landroid/os/PersistableBundle;

.field public final mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

.field public mDeveloperVerificationUserActionState:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;

.field public final mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

.field public final mFds:Ljava/util/ArrayList;

.field public final mFiles:Landroid/util/ArraySet;

.field public mFinalMessage:Ljava/lang/String;

.field public mFinalStatus:I

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerCallback:Landroid/os/Handler$Callback;

.field public mHasAppMetadataFile:Z

.field public mHasDeviceAdminReceiver:Z

.field public mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

.field public mIncrementalProgress:F

.field public mInheritedFilesBase:Ljava/io/File;

.field public final mInitialVerificationPolicy:I

.field public final mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

.field public mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public volatile mInstallerUid:I

.field public mInternalProgress:F

.field public final mLock:Ljava/lang/Object;

.field public final mMetrics:Lcom/android/server/pm/SessionMetrics;

.field public mMissingSharedLibraryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mOriginalInstallerPackageName:Ljava/lang/String;

.field public final mOriginalInstallerUid:I

.field public mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public mPackageName:Ljava/lang/String;

.field public mParentSessionId:I

.field public mPendingAbandonCallback:Ljava/lang/Runnable;

.field public mPermissionsManuallyAccepted:Z

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field public mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

.field public mPreapprovalRemoteStatusReceiver:Landroid/content/IntentSender;

.field public final mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mPrepared:Z

.field public mProgress:F

.field public final mProgressLock:Ljava/lang/Object;

.field public mRemoteStatusReceiver:Landroid/content/IntentSender;

.field public mReportedProgress:F

.field public mResolvedBaseFile:Ljava/io/File;

.field public final mResolvedInheritedFiles:Ljava/util/List;

.field public final mResolvedNativeLibPaths:Ljava/util/List;

.field public final mResolvedOatSubDirs:Ljava/util/List;

.field public final mResolvedStagedFiles:Ljava/util/List;

.field public mSealed:Z

.field public mSessionApplied:Z

.field public mSessionErrorCode:I

.field public mSessionErrorMessage:Ljava/lang/String;

.field public mSessionFailed:Z

.field public final mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

.field public mSessionReady:Z

.field public mShouldBeSealed:Z

.field public mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field public mStageDirInUse:Z

.field public final mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

.field public final mStagingManager:Lcom/android/server/pm/StagingManager;

.field public final mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUnarchivalListeners:Ljava/util/Set;

.field public mUnarchivalStatus:I

.field public mUserActionRequired:Ljava/lang/Boolean;

.field public mUserActionRequirement:I

.field public mValidatedTargetSdk:I

.field public mVerificationInProgress:Z

.field public mVersionCode:J

.field public final mWarnings:Ljava/util/List;

.field public final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field public final sessionId:I

.field public final stageCid:Ljava/lang/String;

.field public final stageDir:Ljava/io/File;

.field public updatedMillis:J

.field public final userId:I


# direct methods
.method public static synthetic $r8$lambda$0FI6V7-ybABGQZMWSFqHjpwcxjM(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x104073f

    .line 6739
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0mmjgGeSklVnOwwaxEzoHFt-2jE(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 6081
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6QZSynd3dwZoYEcAkidZ0TQYWzo(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->lambda$install$9(Ljava/util/List;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6oYW4e3FgnC8b1SYZZ8mwr5Sdy8(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->onConnectionEstablished()V

    return-void
.end method

.method public static synthetic $r8$lambda$Fctdvp3x_oY-U4uTqEzbNz-I8mE(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->lambda$verifyNonStaged$8(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HK4MtggJnZWTjRTNzBTWe_UZJoI(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;Ljava/lang/Void;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->lambda$performDeveloperVerification$3(Ljava/util/List;Ljava/lang/Void;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J09R237BDM_Hc6C5gwP-OBTme9Q(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x1040740

    .line 6737
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LbBxopYIHQIJ5jM3mc1r1y3CuzM(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 4391
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$MQptqNuD7R-M-y9273yUj75SrSk(Ljava/lang/Runnable;)V
    .registers 2

    const/4 v0, -0x2

    .line 3354
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3356
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$PRZKug1BDQz1xwL3EtGP0yZAlPw(Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2

    .line 2981
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageInstallerSession;->checkUserActionRequirement(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/IntentSender;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ylf3gUq7YzwIj6heEAAMGnsTNiw(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->lambda$abandon$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZSovw1HE8wLS5dPgAJOdR5HuzA0(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->lambda$runExtractNativeLibraries$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$_5Xc0L22JQg26xDuOt4zRao71fM(Lcom/android/server/pm/PackageInstallerSession;IJLandroid/app/PendingIntent;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageInstallerSession;->lambda$reportUnarchivalStatus$14(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9uu2JsAeqFlF-CRdPv1b3cu40g(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->lambda$onSystemDataLoaderUnrecoverable$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cpaSBsGhfR1fLiMwWccyIWaSU48(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->lambda$doWriteInternal$0(Landroid/system/Int64Ref;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$f6n35EaqIZ4S6NFJy5mm0eUIK6Y(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->processDeveloperVerificationResults(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m1GAE7rc7GevgWTF6HRtnAvBG28(Ljava/lang/Runnable;)V
    .registers 3

    .line 3353
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "extractNativeLibraries"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3358
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$mZJkrLVSxEHUlYMzBXkYws-oEfI(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->lambda$verifyNonStaged$7(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rqa432KSCxtI2mUOHDc5Z7NtM3I(Lcom/android/server/art/model/ValidationResult;Ljava/io/File;)Z
    .registers 2

    .line 5234
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/art/model/ValidationResult;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChildSessions(Lcom/android/server/pm/PackageInstallerSession;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentVerificationPolicy(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCurrentVerificationPolicy:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeveloperVerifierController(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerifierController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProgressLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionErrorMessage(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionProvider(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageSessionProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDeveloperVerificationExtensionResponse(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/PersistableBundle;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationExtensionResponse:Landroid/os/PersistableBundle;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIncrementalProgress(Lcom/android/server/pm/PackageInstallerSession;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertCallerIsOwnerOrRootOrSystem(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystem()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertNotChild(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcomputeProgressLocked(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionSealed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionValidationFailure(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoWriteInternal(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRemoteStatusReceiver(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/IntentSender;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleDependencyResolutionFailure(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageManagerException;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->handleDependencyResolutionFailure(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleInstall(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleInstall()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnNativeLibsExtracted(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleOnNativeLibsExtracted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePreapprovalRequest(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->handlePreapprovalRequest()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleSessionSealed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStreamValidateAndCommit(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleStreamValidateAndCommit()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleVerificationUserResponse(Lcom/android/server/pm/PackageInstallerSession;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->handleVerificationUserResponse(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minstall(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/CompletableFuture;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misInTerminalState(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInstallerDeviceOwnerOrAffiliatedProfileOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSessionVerificationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemDataLoaderUnrecoverable(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->onSystemDataLoaderUnrecoverable()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendDeveloperVerificationUserAction(Lcom/android/server/pm/PackageInstallerSession;ILjava/util/concurrent/CompletableFuture;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->sendDeveloperVerificationUserAction(ILjava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldSendUserActionForVerification(Lcom/android/server/pm/PackageInstallerSession;Z)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->shouldSendUserActionForVerification(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartDeveloperVerificationSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->startDeveloperVerificationSession(Ljava/util/concurrent/CompletableFuture;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverify(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetVerificationFailureReason(I)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->getVerificationFailureReason(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisAppMetadata(Ljava/io/File;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isAppMetadata(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 0
    invoke-static/range {p0 .. p9}, Lcom/android/server/pm/PackageInstallerSession;->sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 352
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/4 v0, 0x0

    .line 353
    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    .line 922
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    .line 936
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    .line 946
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$3;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    .line 954
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$4;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sArtManagedFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/verify/developer/DeveloperVerifierController;IILcom/android/server/pm/InstallDependencyHelper;Z)V
    .registers 54

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v4, p9

    move/from16 v5, p10

    move-object/from16 v2, p11

    move-object/from16 v6, p12

    move-wide/from16 v7, p13

    move-object/from16 v3, p17

    move-object/from16 v9, p18

    move-object/from16 v10, p19

    move-object/from16 v11, p20

    move-object/from16 v12, p25

    .line 1277
    invoke-direct {v0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 482
    sget-object v13, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->UNKNOWN:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    const/4 v13, 0x0

    .line 489
    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationExtensionResponse:Landroid/os/PersistableBundle;

    .line 495
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 497
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 503
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 526
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    const/4 v14, 0x0

    .line 528
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 530
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 533
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    const/high16 v13, -0x40800000    # -1.0f

    .line 535
    iput v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 537
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    .line 541
    iput-boolean v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 543
    iput-boolean v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 545
    iput-boolean v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 548
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v13, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 549
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v13, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 556
    iput-boolean v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 565
    iput-boolean v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    .line 568
    iput-boolean v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 576
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 578
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 597
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 614
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mDependencyInstallerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 615
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mMissingSharedLibraryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 650
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    .line 671
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 680
    iput v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 685
    iput-boolean v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 883
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 885
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 887
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedOatSubDirs:Ljava/util/List;

    .line 888
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 891
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalListeners:Ljava/util/Set;

    .line 902
    iput-boolean v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 903
    iput-boolean v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    const v13, 0x7fffffff

    .line 914
    iput v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    const/4 v13, -0x1

    .line 917
    iput v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalStatus:I

    .line 920
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mWarnings:Ljava/util/List;

    .line 977
    new-instance v13, Lcom/android/server/pm/PackageInstallerSession$5;

    invoke-direct {v13, v0}, Lcom/android/server/pm/PackageInstallerSession$5;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    move-object/from16 v14, p1

    .line 1278
    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    move-object/from16 v14, p2

    .line 1279
    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 1280
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-eqz v1, :cond_e7

    .line 1281
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    goto :goto_e8

    :cond_e7
    const/4 v1, 0x0

    :goto_e8
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v1, p4

    .line 1282
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    move-object/from16 v1, p5

    .line 1283
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 1284
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v14, p6

    invoke-direct {v1, v14, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p7

    .line 1285
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    move-object/from16 v1, p33

    .line 1286
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    move/from16 v1, p34

    .line 1287
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInitialVerificationPolicy:I

    .line 1288
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v13, p35

    invoke-direct {v1, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCurrentVerificationPolicy:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v1, p36

    .line 1289
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    move/from16 v1, p8

    .line 1291
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 1292
    iput v4, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 1293
    iput v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 1294
    iput v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1295
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 1296
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    .line 1297
    iput-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1298
    iput-wide v7, v0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 1299
    iput-wide v7, v0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    move-wide/from16 v13, p15

    .line 1300
    iput-wide v13, v0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 1301
    iput-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 1302
    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    move/from16 v2, p24

    .line 1303
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v12, :cond_151

    .line 1305
    array-length v2, v12

    :goto_13c
    if-ge v15, v2, :cond_151

    aget v1, v12, v15

    move/from16 p1, v2

    .line 1308
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p1

    move/from16 v1, p8

    move-object/from16 v3, p17

    goto :goto_13c

    :cond_151
    const/4 v3, 0x0

    move/from16 v1, p26

    .line 1311
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-eqz v10, :cond_183

    .line 1314
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    array-length v15, v10

    invoke-virtual {v2, v15}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 1315
    array-length v2, v10

    const/4 v15, 0x0

    :goto_160
    if-ge v15, v2, :cond_183

    .line 1316
    aget-object v3, v10, v15

    .line 1317
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    move/from16 p1, v2

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-direct {v2, v15, v3}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17b

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p1

    move/from16 v1, p26

    const/4 v3, 0x0

    goto :goto_160

    .line 1318
    :cond_17b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add a duplicate installation file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_183
    if-eqz v11, :cond_18a

    .line 1325
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1328
    :cond_18a
    iget-boolean v1, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    const/4 v2, 0x1

    if-nez v1, :cond_19b

    if-nez p17, :cond_193

    move v1, v2

    goto :goto_194

    :cond_193
    const/4 v1, 0x0

    :goto_194
    if-nez v9, :cond_198

    move v15, v2

    goto :goto_199

    :cond_198
    const/4 v15, 0x0

    :goto_199
    if-eq v1, v15, :cond_19e

    :cond_19b
    move/from16 v1, p21

    goto :goto_1a6

    .line 1329
    :cond_19e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :goto_1a6
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 1334
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v11, p22

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move/from16 v1, p23

    .line 1335
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    move/from16 v1, p27

    .line 1336
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    move/from16 v1, p29

    .line 1337
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    move/from16 v1, p28

    .line 1338
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    move/from16 v1, p30

    .line 1339
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    if-eqz p31, :cond_1c8

    move-object/from16 v3, p31

    goto :goto_1ca

    .line 1341
    :cond_1c8
    const-string v3, ""

    :goto_1ca
    iput-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 1342
    iget-boolean v3, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v3, :cond_1d6

    new-instance v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-direct {v3, v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_1d7

    :cond_1d6
    const/4 v3, 0x0

    :goto_1d7
    iput-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    move-object/from16 v3, p32

    .line 1343
    iput-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 1345
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v3

    if-eqz v3, :cond_20a

    .line 1346
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v3

    if-nez v3, :cond_202

    .line 1351
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation()Z

    move-result v3

    if-eqz v3, :cond_20a

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v9, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    invoke-virtual {v3, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1fa

    goto :goto_20a

    .line 1354
    :cond_1fa
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the com.android.permission.USE_SYSTEM_DATA_LOADERS permission to use system data loaders"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1347
    :cond_202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DataLoader installation of APEX modules is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1360
    :cond_20a
    :goto_20a
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v3

    if-eqz v3, :cond_21f

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->isAllowed()Z

    move-result v3

    if-eqz v3, :cond_217

    goto :goto_21f

    .line 1361
    :cond_217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incremental installation not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_21f
    :goto_21f
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation()Z

    move-result v3

    if-eqz v3, :cond_246

    .line 1365
    iget v3, v6, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v3, v2, :cond_23e

    .line 1369
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isStreamingInstallation()Z

    move-result v2

    if-eqz v2, :cond_236

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation()Z

    move-result v2

    if-eqz v2, :cond_236

    goto :goto_246

    .line 1370
    :cond_236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archived installation can only use Streaming System DataLoader."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1366
    :cond_23e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archived installation can only be full install."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1375
    :cond_246
    :goto_246
    new-instance v1, Lcom/android/server/pm/SessionMetrics;

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    iget v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mInitialVerificationPolicy:I

    move/from16 v3, p8

    move-wide v9, v13

    move/from16 v13, p26

    move/from16 v14, p30

    invoke-direct/range {v1 .. v15}, Lcom/android/server/pm/SessionMetrics;-><init>(Landroid/os/Handler;IIILandroid/content/pm/PackageInstaller$SessionParams;JJZ[IIII)V

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    if-nez p37, :cond_298

    .line 1383
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->shouldUseVerificationService()Z

    move-result v2

    if-eqz v2, :cond_298

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_298

    .line 1384
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1385
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v3, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1384
    invoke-virtual {v2, v5, v4, v3}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->bindToVerifierServiceIfNeeded(Ljava/util/function/Supplier;ILjava/lang/Runnable;)Z

    .line 1386
    iget-object v2, v6, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_289

    .line 1387
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget-object v3, v6, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->notifyPackageNameAvailable(Ljava/lang/String;I)V

    .line 1390
    :cond_289
    monitor-enter v1

    .line 1391
    :try_start_28a
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    .line 1392
    invoke-virtual {v0, v4}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->getVerifierUidIfBound(I)I

    move-result v0

    .line 1391
    invoke-virtual {v1, v0}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationBindStarted(I)V

    .line 1393
    monitor-exit v1

    return-void

    :catchall_295
    move-exception v0

    monitor-exit v1
    :try_end_297
    .catchall {:try_start_28a .. :try_end_297} :catchall_295

    throw v0

    :cond_298
    return-void
.end method

.method public static buildAppIconFile(ILjava/io/File;)Ljava/io/File;
    .registers 5

    .line 6806
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_icon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static checkUserActionRequirement(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/IntentSender;)Z
    .registers 7

    .line 2886
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2892
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->computeUserActionRequirement()I

    move-result v0

    .line 2893
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->updateUserActionRequirement(I)V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_51

    const/4 v3, 0x3

    if-ne v0, v3, :cond_16

    goto :goto_51

    .line 2900
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v3

    if-nez v3, :cond_50

    const/4 v3, 0x2

    if-ne v0, v3, :cond_50

    .line 2901
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isTargetSdkConditionSatisfied(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2902
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    return v2

    .line 2906
    :cond_29
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    if-ne v0, v3, :cond_50

    .line 2907
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 2908
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2907
    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/SilentUpdatePolicy;->isSilentUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 2911
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    return v2

    .line 2914
    :cond_43
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2915
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2914
    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/SilentUpdatePolicy;->track(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    return v1

    .line 2896
    :cond_51
    :goto_51
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    return v2
.end method

.method public static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .registers 10

    .line 5406
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    const-string v3, ".tmp"

    if-ge v2, v1, :cond_1c

    aget-object v4, v0, v2

    .line 5407
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5408
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5412
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "PackageInstallerSession"

    if-eqz v1, :cond_da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 5413
    const-string v4, "inherit"

    invoke-static {v4, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 5414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5415
    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 5419
    :try_start_56
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1a4

    invoke-static {v5, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_5f
    .catch Landroid/system/ErrnoException; {:try_start_56 .. :try_end_5f} :catch_a6

    .line 5423
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Renaming "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5425
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_89

    goto :goto_20

    .line 5426
    :cond_89
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to rename "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5421
    :catch_a6
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to chmod "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5416
    :cond_bd
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to copy "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5429
    :cond_da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " files into "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;
    .registers 8

    .line 1733
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1734
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1d

    aget-object v3, p1, v2

    .line 1735
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1736
    invoke-interface {p2, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1737
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return-object v0
.end method

.method public static getAppMetadataSizeLimit()J
    .registers 6

    .line 2027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2029
    :try_start_4
    const-string/jumbo v2, "package_manager_service"

    const-string v3, "app_metadata_byte_size_limit"

    const-wide/16 v4, 0x7d00

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 2032
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2033
    throw v2
.end method

.method public static getDeviceOwnerInstalledPackageMsg(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    .line 6734
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_1a

    .line 6736
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;)V

    const-string p0, "Core.PACKAGE_UPDATED_BY_DO"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6738
    :cond_1a
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;)V

    const-string p0, "Core.PACKAGE_INSTALLED_BY_DO"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPreVerifiedDomainLengthLimit()J
    .registers 6

    .line 6356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6358
    :try_start_4
    const-string/jumbo v2, "package_manager_service"

    const-string/jumbo v3, "pre_verified_domain_length_limit"

    const-wide/16 v4, 0x100

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 6362
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6363
    throw v2
.end method

.method public static getPreVerifiedDomainsCountLimit()J
    .registers 6

    .line 6345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6347
    :try_start_4
    const-string/jumbo v2, "package_manager_service"

    const-string/jumbo v3, "pre_verified_domains_count_limit"

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 6351
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6352
    throw v2
.end method

.method public static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .line 5352
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 5353
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 5355
    const-string v0, "/."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 5359
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5360
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5363
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " outside base: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5356
    :cond_3e
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid path (was relative) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".removed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1941
    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    .line 1942
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid marker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVerificationFailureReason(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method public static hasEmergencyInstallerPermission(Lcom/android/server/pm/Computer;I)Z
    .registers 3

    .line 1091
    const-string v0, "android.permission.EMERGENCY_INSTALL_PACKAGES"

    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static hasSystemInstallerPermissions(Lcom/android/server/pm/Computer;I)Z
    .registers 3

    .line 1082
    const-string v0, "android.permission.INSTALL_PACKAGES"

    .line 1083
    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "android.permission.INSTALL_PACKAGE_UPDATES"

    .line 1085
    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "android.permission.INSTALL_SELF_UPDATES"

    .line 1087
    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static isAppMetadata(Ljava/io/File;)Z
    .registers 1

    .line 1997
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isAppMetadata(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isAppMetadata(Ljava/lang/String;)Z
    .registers 2

    .line 1993
    const-string v0, "app.metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isArchivedInstallation(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static isArchivedInstallationAllowed(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 1

    .line 962
    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isEmergencyInstallerEnabled(Ljava/lang/String;Lcom/android/server/pm/Computer;II)Z
    .registers 6

    .line 1064
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    .line 1065
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_3d

    .line 1068
    :cond_14
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {p2, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 1069
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getEmergencyInstaller()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 1071
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1070
    invoke-static {v1, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_3d

    .line 1075
    :cond_31
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->hasSystemInstallerPermissions(Lcom/android/server/pm/Computer;I)Z

    move-result p0

    if-nez p0, :cond_38

    return v0

    .line 1078
    :cond_38
    invoke-static {p1, p3}, Lcom/android/server/pm/PackageInstallerSession;->hasEmergencyInstallerPermission(Lcom/android/server/pm/Computer;I)Z

    move-result p0

    return p0

    :cond_3d
    :goto_3d
    return v0
.end method

.method public static isIncrementalInstallationAllowed(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    .line 2550
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_19

    .line 2553
    :cond_a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result p0

    if-nez p0, :cond_17

    return v0

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    return v0
.end method

.method public static isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    .line 5198
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p1

    .line 5199
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 5200
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 5201
    iget-wide v1, v1, Landroid/system/StructStat;->st_dev:J

    iget-wide v3, p1, Landroid/system/StructStat;->st_dev:J
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_25} :catch_2a

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    return v0

    :catch_2a
    move-exception p0

    goto :goto_2e

    :cond_2c
    const/4 p0, 0x1

    return p0

    .line 5206
    :goto_2e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to detect if linking possible: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstallerSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSecureFrpInstallAllowed(Landroid/content/Context;I)Z
    .registers 5

    .line 2506
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2507
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 2509
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 2511
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v2

    .line 2517
    :cond_1f
    const-string p1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    return v2
.end method

.method public static isStagedSessionStateValid(ZZZ)Z
    .registers 3

    .line 0
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
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 2

    .line 966
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 969
    :cond_8
    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 970
    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 969
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTargetSdkConditionSatisfied(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 5

    .line 2933
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2934
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    .line 2935
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2936
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_36

    .line 2938
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2939
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2940
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2942
    const-string/jumbo p0, "platform_compat"

    .line 2943
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 2942
    invoke-static {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    if-eq v1, v2, :cond_35

    const-wide/32 v1, 0x1917e762    # 2.08000136E-315

    .line 2948
    :try_start_25
    invoke-interface {p0, v1, v2, v0}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_29} :catch_2d

    if-eqz p0, :cond_35

    const/4 p0, 0x1

    return p0

    :catch_2d
    move-exception p0

    .line 2950
    const-string v0, "PackageInstallerSession"

    const-string v1, "Failed to get a response from PLATFORM_COMPAT_SERVICE"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    return v3

    :catchall_36
    move-exception p0

    .line 2936
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public static isValidVerificationPolicy(I)Z
    .registers 2

    .line 0
    if-ltz p0, :cond_7

    const/4 v0, 0x3

    if-gt p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static maybeRenameFile(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    .line 4298
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 4299
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2e

    .line 4300
    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not rename file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x6e

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerSession;
    .registers 69

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 7012
    const-string/jumbo v2, "sessionId"

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 7013
    const-string/jumbo v3, "userId"

    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 7014
    const-string v3, "installerPackageName"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7015
    const-string v3, "installerPackageUid"

    const/4 v4, -0x1

    invoke-interface {v0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 7017
    const-string/jumbo v3, "updateOwnererPackageName"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7019
    const-string v3, "installerAttributionTag"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7021
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const-wide/16 v13, 0x2000

    .line 7022
    invoke-interface {v3, v6, v13, v14, v12}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 7021
    const-string v5, "installerUid"

    invoke-interface {v0, v1, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 7024
    const-string v3, "installInitiatingPackageName"

    .line 7025
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7026
    const-string v5, "installOriginatingPackageName"

    .line 7027
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7028
    const-string v10, "createdMillis"

    invoke-interface {v0, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    .line 7029
    const-string/jumbo v10, "updatedMillis"

    invoke-interface {v0, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 7030
    const-string v10, "committedMillis"

    const-wide/16 v14, 0x0

    invoke-interface {v0, v1, v10, v14, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v18

    .line 7031
    const-string/jumbo v10, "sessionStageDir"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6c

    .line 7032
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v14

    goto :goto_6e

    :cond_6c
    move-object/from16 v20, v1

    .line 7033
    :goto_6e
    const-string/jumbo v10, "sessionStageCid"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 7034
    const-string/jumbo v10, "prepared"

    const/4 v14, 0x1

    invoke-interface {v0, v1, v10, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v24

    .line 7035
    const-string v10, "committed"

    const/4 v15, 0x0

    invoke-interface {v0, v1, v10, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v25

    .line 7036
    const-string v10, "destroyed"

    invoke-interface {v0, v1, v10, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v26

    .line 7037
    const-string/jumbo v10, "sealed"

    invoke-interface {v0, v1, v10, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v27

    .line 7038
    const-string/jumbo v10, "parentSessionId"

    invoke-interface {v0, v1, v10, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v29

    .line 7040
    const-string v10, "initialVerificationPolicy"

    invoke-interface {v0, v1, v10, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v37

    .line 7042
    const-string v10, "currentVerificationPolicy"

    invoke-interface {v0, v1, v10, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v38

    .line 7045
    new-instance v10, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v10, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 7047
    const-string/jumbo v14, "multiPackage"

    invoke-interface {v0, v1, v14, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v10, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 7048
    const-string/jumbo v14, "stagedSession"

    invoke-interface {v0, v1, v14, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v10, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 7049
    const-string/jumbo v14, "mode"

    invoke-interface {v0, v1, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    iput v15, v10, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 7050
    const-string v15, "installFlags"

    invoke-interface {v0, v1, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    iput v15, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 7051
    const-string v15, "installLocation"

    invoke-interface {v0, v1, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    iput v15, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 7052
    const-string/jumbo v15, "sizeBytes"

    move-object/from16 v30, v5

    invoke-interface {v0, v1, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 7053
    const-string v4, "appPackageName"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 7054
    const-string v4, "appIcon"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 7055
    const-string v4, "appLabel"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 7056
    const-string/jumbo v4, "originatingUri"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 7057
    const-string/jumbo v4, "originatingUid"

    const/4 v5, -0x1

    .line 7058
    invoke-interface {v0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 7059
    const-string/jumbo v4, "referrerUri"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 7060
    const-string v4, "abiOverride"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 7061
    const-string/jumbo v4, "volumeUuid"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 7062
    const-string v4, "installRason"

    invoke-interface {v0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 7063
    const-string/jumbo v4, "packageSource"

    invoke-interface {v0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 7064
    const-string v4, "applicationEnabledSettingPersistent"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 7067
    const-string v4, "isDataLoader"

    invoke-interface {v0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 7068
    new-instance v4, Landroid/content/pm/DataLoaderParams;

    const-string v5, "dataLoaderType"

    .line 7069
    invoke-interface {v0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v15, Landroid/content/ComponentName;

    const-string v1, "dataLoaderPackageName"

    .line 7071
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v3

    const-string v3, "dataLoaderClassName"

    .line 7072
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dataLoaderArguments"

    .line 7073
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v15, v1}, Landroid/content/pm/DataLoaderParams;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;)V

    iput-object v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    :goto_16c
    move-object/from16 v1, p6

    goto :goto_172

    :cond_16f
    move-object/from16 v32, v3

    goto :goto_16c

    .line 7076
    :goto_172
    invoke-static {v11, v1}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 7077
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 7078
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 7079
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 7081
    :cond_18c
    const-string v1, "isReady"

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v3, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 7082
    const-string v4, "isFailed"

    invoke-interface {v0, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 7083
    const-string v4, "isApplied"

    invoke-interface {v0, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v33, v6

    .line 7084
    const-string v6, "errorCode"

    invoke-interface {v0, v3, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v34

    .line 7086
    const-string v3, "errorMessage"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7088
    invoke-static {v1, v4, v15}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionStateValid(ZZZ)Z

    move-result v5

    if-eqz v5, :cond_467

    .line 7098
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7099
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move/from16 p6, v1

    .line 7100
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v35, v3

    .line 7101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v36, v4

    .line 7103
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    move/from16 v39, v7

    .line 7104
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v40, v8

    .line 7105
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v41, v9

    .line 7106
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    move/from16 v42, v11

    .line 7107
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    move/from16 v43, v12

    .line 7108
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    move/from16 v44, v13

    const/4 v13, 0x3

    move/from16 v45, v13

    move/from16 v46, v15

    .line 7110
    :goto_1fc
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v15

    move-object/from16 v47, v10

    const/4 v10, 0x1

    if-eq v15, v10, :cond_20e

    if-ne v15, v13, :cond_211

    .line 7111
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v12, :cond_20e

    goto :goto_211

    :cond_20e
    const/4 v10, 0x0

    goto/16 :goto_383

    :cond_211
    :goto_211
    if-eq v15, v13, :cond_216

    const/4 v10, 0x4

    if-ne v15, v10, :cond_21d

    :cond_216
    move/from16 v49, v12

    move-object/from16 v50, v14

    const/4 v10, 0x0

    goto/16 :goto_2ce

    .line 7115
    :cond_21d
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v48

    sparse-switch v48, :sswitch_data_470

    :goto_22b
    const/4 v10, -0x1

    goto/16 :goto_2a4

    :sswitch_22e
    const-string v10, "deny-permission"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_237

    goto :goto_22b

    :cond_237
    const/16 v10, 0x9

    goto/16 :goto_2a4

    :sswitch_23b
    const-string v10, "grant-permission"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_244

    goto :goto_22b

    :cond_244
    const/16 v10, 0x8

    goto/16 :goto_2a4

    :sswitch_248
    const-string v10, "auto-revoke-permissions-mode"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_251

    goto :goto_22b

    :cond_251
    const/4 v10, 0x7

    goto :goto_2a4

    :sswitch_253
    const-string/jumbo v10, "sessionChecksum"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25d

    goto :goto_22b

    :cond_25d
    const/4 v10, 0x6

    goto :goto_2a4

    :sswitch_25f
    const-string/jumbo v10, "whitelisted-restricted-permission"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_269

    goto :goto_22b

    :cond_269
    const/4 v10, 0x5

    goto :goto_2a4

    :sswitch_26b
    const-string/jumbo v10, "sessionFile"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_275

    goto :goto_22b

    :cond_275
    const/4 v10, 0x4

    goto :goto_2a4

    :sswitch_277
    const-string/jumbo v10, "preVerifiedDomains"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_281

    goto :goto_22b

    :cond_281
    move v10, v13

    goto :goto_2a4

    :sswitch_283
    const-string v10, "granted-runtime-permission"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28c

    goto :goto_22b

    :cond_28c
    const/4 v10, 0x2

    goto :goto_2a4

    :sswitch_28e
    const-string/jumbo v10, "sessionChecksumSignature"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_298

    goto :goto_22b

    :cond_298
    const/4 v10, 0x1

    goto :goto_2a4

    :sswitch_29a
    const-string v10, "childSession"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2a3

    goto :goto_22b

    :cond_2a3
    const/4 v10, 0x0

    :goto_2a4
    const-string/jumbo v15, "signature"

    const-string/jumbo v13, "name"

    packed-switch v10, :pswitch_data_49a

    :goto_2ad
    move/from16 v49, v12

    move-object/from16 v50, v14

    :goto_2b1
    const/4 v10, 0x0

    goto :goto_2ce

    .line 7123
    :pswitch_2b3
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2ad

    .line 7120
    :pswitch_2bb
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2ad

    :pswitch_2c3
    const/4 v10, 0x0

    .line 7129
    invoke-interface {v0, v10, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    move/from16 v49, v12

    move/from16 v45, v13

    move-object/from16 v50, v14

    :goto_2ce
    const/4 v12, -0x1

    goto/16 :goto_37a

    :pswitch_2d1
    const/4 v10, 0x0

    .line 7144
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7145
    new-instance v15, Landroid/content/pm/Checksum;

    move/from16 v49, v12

    const-string v12, "checksumKind"

    move-object/from16 v50, v14

    const/4 v14, 0x0

    .line 7146
    invoke-interface {v0, v10, v12, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    const-string v10, "checksumValue"

    .line 7147
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v15, v12, v10}, Landroid/content/pm/Checksum;-><init>(I[B)V

    .line 7149
    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-nez v10, :cond_2fc

    .line 7151
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 7152
    invoke-virtual {v8, v13, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7154
    :cond_2fc
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b1

    :pswitch_300
    move/from16 v49, v12

    move-object/from16 v50, v14

    .line 7126
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b1

    :pswitch_30c
    move/from16 v49, v12

    move-object/from16 v50, v14

    .line 7136
    new-instance v51, Landroid/content/pm/InstallationFile;

    const-string v10, "location"

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 7137
    invoke-interface {v0, v12, v10, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v52

    .line 7138
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v10, "lengthBytes"

    move-object/from16 v23, v15

    const-wide/16 v14, -0x1

    .line 7139
    invoke-interface {v0, v12, v10, v14, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v54

    const-string/jumbo v10, "metadata"

    .line 7140
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v56

    move-object/from16 v10, v23

    .line 7141
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v57

    invoke-direct/range {v51 .. v57}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    move-object/from16 v10, v51

    .line 7136
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2b1

    :pswitch_33f
    move/from16 v49, v12

    move-object/from16 v50, v14

    .line 7162
    const-string v10, "domain"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2b1

    :pswitch_34e
    move/from16 v49, v12

    move-object/from16 v50, v14

    .line 7117
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2b1

    :pswitch_35b
    move/from16 v49, v12

    move-object/from16 v50, v14

    move-object v10, v15

    .line 7157
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 7158
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v10

    .line 7159
    invoke-virtual {v9, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b1

    :pswitch_36d
    move/from16 v49, v12

    move-object/from16 v50, v14

    const/4 v10, 0x0

    const/4 v12, -0x1

    .line 7132
    invoke-interface {v0, v10, v2, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/util/IntArray;->add(I)V

    :goto_37a
    move-object/from16 v10, v47

    move/from16 v12, v49

    move-object/from16 v14, v50

    const/4 v13, 0x3

    goto/16 :goto_1fc

    .line 7167
    :goto_383
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_391

    .line 7168
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v15, v47

    invoke-virtual {v15, v5, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setPermissionStates(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_396

    :cond_391
    move-object/from16 v15, v47

    .line 7170
    invoke-virtual {v15, v6, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setPermissionStates(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 7173
    :goto_396
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39e

    .line 7174
    iput-object v3, v15, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    :cond_39e
    move/from16 v13, v45

    .line 7177
    iput v13, v15, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 7180
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_3c1

    .line 7181
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 7182
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_3b3
    if-ge v5, v1, :cond_3be

    .line 7183
    invoke-virtual {v4, v5}, Landroid/util/IntArray;->get(I)I

    move-result v2

    aput v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b3

    :cond_3be
    :goto_3be
    move-object/from16 v28, v0

    goto :goto_3c4

    .line 7186
    :cond_3c1
    sget-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    goto :goto_3be

    .line 7190
    :goto_3c4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d6

    .line 7191
    sget-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/content/pm/InstallationFile;

    move-object/from16 v22, v3

    goto :goto_3d8

    :cond_3d6
    move-object/from16 v22, v10

    .line 7195
    :goto_3d8
    invoke-virtual {v8}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41a

    .line 7196
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 7197
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3ec
    if-ge v1, v0, :cond_417

    .line 7198
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7199
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 7200
    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 7201
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 7202
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/pm/Checksum;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/Checksum;

    invoke-direct {v6, v4, v5}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;-><init>([Landroid/content/pm/Checksum;[B)V

    .line 7201
    invoke-virtual {v3, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ec

    :cond_417
    move-object/from16 v23, v3

    goto :goto_41c

    :cond_41a
    move-object/from16 v23, v10

    .line 7208
    :goto_41c
    invoke-virtual {v11}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_424

    move-object v1, v10

    goto :goto_429

    :cond_424
    new-instance v1, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v1, v11}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    .line 7210
    :goto_429
    iget v10, v15, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    move-object/from16 v5, v30

    move-object/from16 v4, v32

    move-object/from16 v6, v33

    move/from16 v32, v36

    move/from16 v7, v39

    move-object/from16 v8, v40

    move-object/from16 v9, v41

    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v14

    .line 7213
    new-instance v3, Lcom/android/server/pm/PackageInstallerSession;

    const/16 v40, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v30, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v36, p9

    move-object/from16 v39, p10

    move/from16 v33, v34

    move-object/from16 v34, v35

    move/from16 v11, v42

    move/from16 v12, v43

    move/from16 v13, v44

    move/from16 v31, v46

    move-object/from16 v35, v1

    invoke-direct/range {v3 .. v40}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/verify/developer/DeveloperVerifierController;IILcom/android/server/pm/InstallDependencyHelper;Z)V

    return-object v3

    .line 7089
    :cond_467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t restore staged session with invalid state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_470
    .sparse-switch
        -0x5ce79226 -> :sswitch_29a
        -0x51290c41 -> :sswitch_28e
        -0x242664ca -> :sswitch_283
        -0x29c68dc -> :sswitch_277
        -0x15d4ece -> :sswitch_26b
        0x96d971a -> :sswitch_25f
        0x263d4cf9 -> :sswitch_253
        0x5b2b4b95 -> :sswitch_248
        0x6093e720 -> :sswitch_23b
        0x62d33430 -> :sswitch_22e
    .end sparse-switch

    :pswitch_data_49a
    .packed-switch 0x0
        :pswitch_36d
        :pswitch_35b
        :pswitch_34e
        :pswitch_33f
        :pswitch_30c
        :pswitch_300
        :pswitch_2d1
        :pswitch_2c3
        :pswitch_2bb
        :pswitch_2b3
    .end packed-switch
.end method

.method public static sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)V
    .registers 17

    move-object/from16 v2, p9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, p6, :cond_2c

    if-eqz p3, :cond_2c

    if-eqz v2, :cond_13

    .line 6673
    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_14

    :cond_13
    move v4, v3

    .line 6675
    :goto_14
    invoke-static {p0, v4}, Lcom/android/server/pm/PackageInstallerSession;->getDeviceOwnerInstalledPackageMsg(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 6674
    invoke-static {p0, v4, p5, p4}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 6679
    const-string/jumbo v5, "notification"

    .line 6680
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    const/16 v6, 0x15

    .line 6681
    invoke-virtual {v5, p5, v6, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 6686
    :cond_2c
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 6687
    const-string v5, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v4, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6688
    const-string v0, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6689
    const-string v0, "android.content.pm.extra.STATUS"

    .line 6690
    invoke-static {p6}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v5

    .line 6689
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6691
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    move-object v5, p8

    .line 6692
    invoke-static {p6, p8}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6691
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6693
    const-string v0, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v4, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6694
    const-string v0, "android.content.pm.extra.PRE_APPROVAL"

    invoke-virtual {v4, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v2, :cond_be

    .line 6696
    const-string v0, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6698
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 6699
    const-string v1, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6701
    :cond_6b
    const-string v0, "android.content.pm.extra.WARNINGS"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6702
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 6703
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 6705
    :cond_7a
    const-string v0, "android.content.pm.extra.DEVELOPER_VERIFICATION_FAILURE_REASON"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 6707
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 6706
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6709
    :cond_89
    const-string v0, "android.content.pm.extra.DEVELOPER_VERIFICATION_LITE_PERFORMED"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 6711
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 6710
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6713
    :cond_98
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 6714
    const-class v1, Landroid/content/Intent;

    .line 6715
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 6714
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6717
    :cond_ab
    const-string v0, "android.content.pm.extra.DEVELOPER_VERIFICATION_EXTENSION_RESPONSE"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 6718
    const-class v1, Landroid/os/PersistableBundle;

    .line 6719
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 6718
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6724
    :cond_be
    :try_start_be
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 6725
    invoke-virtual {v0, v3}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 6727
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object p3, p0

    move-object p2, p1

    move-object p7, v0

    move-object p8, v1

    move-object/from16 p9, v2

    move p4, v3

    move-object p5, v4

    move-object p6, v5

    .line 6726
    invoke-virtual/range {p2 .. p9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_d9
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_be .. :try_end_d9} :catch_d9

    :catch_d9
    return-void
.end method

.method public static sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V
    .registers 12

    if-nez p1, :cond_a

    .line 6647
    const-string p0, "PackageInstallerSession"

    const-string p1, "Missing receiver for pending user action."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6650
    :cond_a
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 6651
    const-string v0, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6652
    const-string p2, "android.content.pm.extra.STATUS"

    const/4 v0, -0x1

    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6653
    const-string p2, "android.content.pm.action.CONFIRM_PRE_APPROVAL"

    .line 6654
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 6653
    const-string v0, "android.content.pm.extra.PRE_APPROVAL"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6655
    const-string p2, "android.intent.extra.INTENT"

    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6657
    :try_start_2e
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    const/4 p3, 0x0

    .line 6658
    invoke-virtual {p2, p3}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 6660
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    .line 6659
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_43
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2e .. :try_end_43} :catch_43

    :catch_43
    return-void
.end method

.method public static sendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .registers 12

    if-nez p1, :cond_a

    .line 6748
    const-string p0, "PackageInstallerSession"

    const-string p1, "Missing receiver for pending streaming status."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6752
    :cond_a
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 6753
    const-string v0, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6754
    const-string p2, "android.content.pm.extra.STATUS"

    const/4 v0, -0x2

    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6755
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    if-nez p2, :cond_3c

    .line 6756
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Staging Image Not Ready ["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_41

    .line 6759
    :cond_3c
    const-string p2, "Staging Image Not Ready"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6762
    :goto_41
    :try_start_41
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    const/4 p3, 0x0

    .line 6763
    invoke-virtual {p2, p3}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 6765
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    .line 6764
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_56
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_41 .. :try_end_56} :catch_56

    :catch_56
    return-void
.end method

.method public static userActionRequirementToReason(I)I
    .registers 2

    .line 0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, 0x2

    return p0
.end method

.method public static verifySdmSignatures(Ljava/util/List;Landroid/content/pm/SigningDetails;)V
    .registers 6

    .line 5260
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 5261
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5262
    const-string v2, ".sdm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_8

    :cond_1d
    const/4 v2, 0x3

    .line 5269
    invoke-static {v0, v1, v2}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 5270
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    const/4 v3, -0x2

    if-nez v2, :cond_3e

    .line 5274
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_8

    .line 5275
    :cond_36
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "SDM signatures are inconsistent with APK"

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 5271
    :cond_3e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Failed to verify SDM signatures"

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_46
    return-void
.end method

.method public static writeAutoRevokePermissionsMode(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .registers 5

    const/4 v0, 0x0

    .line 6799
    const-string v1, "auto-revoke-permissions-mode"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6800
    const-string/jumbo v2, "mode"

    invoke-interface {p0, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6801
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePermissionsLocked(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/content/pm/PackageInstaller$SessionParams;)V
    .registers 7

    .line 6773
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object p1

    const/4 v0, 0x0

    .line 6774
    :goto_5
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 6775
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6776
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6777
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    const-string v2, "grant-permission"

    goto :goto_23

    .line 6778
    :cond_21
    const-string v2, "deny-permission"

    :goto_23
    const/4 v3, 0x0

    .line 6779
    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6780
    const-string/jumbo v4, "name"

    invoke-static {p0, v4, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6781
    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_33
    return-void
.end method

.method public static writeWhitelistedRestrictedPermissionsLocked(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .registers 8

    if-eqz p1, :cond_22

    .line 6788
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    const/4 v2, 0x0

    .line 6790
    const-string/jumbo v3, "whitelisted-restricted-permission"

    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6791
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6792
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 5

    .line 5676
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5677
    :try_start_3
    const-string v1, "abandon"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 5678
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystem()V

    .line 5679
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5681
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_3b

    :cond_15
    const/4 v1, 0x1

    .line 5683
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 5684
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 5694
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    if-eqz v2, :cond_2a

    .line 5696
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Ljava/lang/Runnable;

    .line 5697
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 5698
    monitor-exit v0

    return-void

    .line 5700
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_13

    .line 5702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5705
    :try_start_2f
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_36

    .line 5707
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5708
    throw p0

    .line 5700
    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_13

    throw p0
.end method

.method public final acquireTransactionLock()V
    .registers 3

    .line 6046
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_b

    return-void

    .line 6047
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Concurrent access not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final activate()V
    .registers 3

    .line 5604
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_e

    .line 5605
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    :cond_e
    return-void
.end method

.method public addChildSessionId(I)V
    .registers 7

    .line 6057
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v0, :cond_146

    .line 6061
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    if-eqz v0, :cond_12a

    .line 6066
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v2, :cond_10e

    .line 6070
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-ne v3, v1, :cond_e6

    .line 6075
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v2

    if-ne v1, v2, :cond_be

    .line 6080
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->containsApkSession()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_39

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_39

    :cond_37
    move v1, v3

    goto :goto_3a

    :cond_39
    :goto_39
    move v1, v2

    .line 6081
    :goto_3a
    new-instance v4, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_4d

    :cond_4c
    move v2, v3

    .line 6082
    :cond_4d
    :goto_4d
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v3, :cond_60

    if-eqz v1, :cond_60

    if-nez v2, :cond_58

    goto :goto_60

    .line 6083
    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mix of APK and APEX is not supported for non-staged multi-package session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6088
    :cond_60
    :goto_60
    :try_start_60
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 6089
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 6091
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->canBeAddedAsChild(I)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 6095
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_99

    .line 6096
    :try_start_71
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 6097
    const-string v2, "addChildSessionId"

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 6099
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_8b

    .line 6101
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_71 .. :try_end_82} :catchall_89

    .line 6107
    :goto_82
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 6108
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    return-void

    :catchall_89
    move-exception p1

    goto :goto_97

    .line 6103
    :cond_8b
    :try_start_8b
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 6104
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6105
    monitor-exit v1

    goto :goto_82

    :goto_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_8b .. :try_end_98} :catchall_89

    :try_start_98
    throw p1

    :catchall_99
    move-exception p1

    goto :goto_b7

    .line 6092
    :cond_9b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add child session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as it is in an invalid state."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b7
    .catchall {:try_start_98 .. :try_end_b7} :catchall_99

    .line 6107
    :goto_b7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 6108
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 6109
    throw p1

    .line 6076
    :cond_be
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multipackage Inconsistency: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and session "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " have inconsistent rollback settings"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6071
    :cond_e6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multipackage Inconsistency: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and session "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " have inconsistent staged settings"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6067
    :cond_10e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multi-session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be a child."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6063
    :cond_12a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add child session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as it does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6058
    :cond_146
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Single-session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " can\'t have child."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addClientProgress(F)V
    .registers 4

    .line 1652
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1653
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1654
    :try_start_6
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 1655
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public addFile(ILjava/lang/String;J[B[B)V
    .registers 17

    .line 5737
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->addFile_enforcePermission()V

    .line 5738
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 5742
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStreamingInstallation()Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez p1, :cond_12

    goto :goto_29

    .line 5744
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Non-incremental installation only supports /data/app placement: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    :goto_29
    if-eqz p5, :cond_8d

    .line 5753
    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 5757
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5758
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 5759
    const-string v0, "addFile"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 5761
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-instance v3, Landroid/content/pm/InstallationFile;

    move v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5d

    .line 5765
    monitor-exit v1

    return-void

    :catchall_5a
    move-exception v0

    move-object p0, v0

    goto :goto_74

    .line 5763
    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "File already added: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5765
    :goto_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_34 .. :try_end_75} :catchall_5a

    throw p0

    .line 5754
    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid name: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5749
    :cond_8d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DataLoader installation requires valid metadata: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5739
    :cond_a4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add files to non-data loader installation session."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final appendDeveloperVerificationExtensionResponse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 4083
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationExtensionResponse:Landroid/os/PersistableBundle;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    if-nez p1, :cond_c

    .line 4087
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4089
    :cond_c
    const-string v0, "android.content.pm.extra.DEVELOPER_VERIFICATION_EXTENSION_RESPONSE"

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationExtensionResponse:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1
.end method

.method public final assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;)V
    .registers 6

    .line 5066
    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V

    .line 5067
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_18

    return-void

    .line 5068
    :cond_18
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signatures are inconsistent"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x2

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final assertCallerIsOwnerOrRoot()V
    .registers 4

    .line 2277
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_22

    .line 2278
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, p0, :cond_b

    goto :goto_22

    .line 2279
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session does not belong to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    return-void
.end method

.method public final assertCallerIsOwnerOrRootOrSystem()V
    .registers 4

    .line 2288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_26

    .line 2289
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-eq v0, p0, :cond_26

    const/16 p0, 0x3e8

    if-ne v0, p0, :cond_f

    goto :goto_26

    .line 2291
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session does not belong to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method public final assertCallerIsOwnerRootOrVerifier()V
    .registers 4

    .line 2260
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_33

    .line 2261
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, v1, :cond_b

    goto :goto_33

    .line 2264
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_33

    .line 2269
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session does not belong to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public final assertCanWrite(Z)V
    .registers 4

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1974
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1975
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1976
    :try_start_c
    const-string v1, "assertCanWrite"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 1977
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1a

    if-eqz p1, :cond_19

    .line 1979
    const-string p1, "Reverse mode"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertShellOrSystemCalling(Ljava/lang/String;)V

    :cond_19
    return-void

    :catchall_1a
    move-exception p0

    .line 1977
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0

    .line 1971
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot write regular files in a data loader installation session."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertNoWriteFileTransfersOpenLocked()V
    .registers 7

    .line 2301
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    const-string v4, "Files still open"

    if-ge v3, v1, :cond_21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Landroid/os/RevocableFileDescriptor;

    .line 2302
    invoke-virtual {v5}, Landroid/os/RevocableFileDescriptor;->isRevoked()Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_8

    .line 2303
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2306
    :cond_21
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_27
    if-ge v2, v0, :cond_3e

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Landroid/os/FileBridge;

    .line 2307
    invoke-virtual {v1}, Landroid/os/FileBridge;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_27

    .line 2308
    :cond_38
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    return-void
.end method

.method public final assertNotChild(Ljava/lang/String;)V
    .registers 4

    .line 5644
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5645
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be called on a child session, id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " parentId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5646
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final assertNotLocked(Ljava/lang/String;)V
    .registers 3

    .line 1589
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 1590
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is holding mLock"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    .line 5076
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " inconsistent with "

    const/4 v2, -0x2

    if-eqz v0, :cond_65

    .line 5080
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_3c

    .line 5081
    :cond_18
    new-instance p3, Lcom/android/server/pm/PackageManagerException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " specified package "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p3

    .line 5085
    :cond_3c
    :goto_3c
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    cmp-long p2, v3, p3

    if-nez p2, :cond_43

    return-void

    .line 5086
    :cond_43
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version code "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 5077
    :cond_65
    new-instance p3, Lcom/android/server/pm/PackageManagerException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " package "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p3
.end method

.method public final assertPreapprovalDetailsConsistentIfNeededLocked(Landroid/content/pm/parsing/PackageLite;Landroid/content/pm/PackageInfo;)V
    .registers 9

    .line 5095
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    if-eqz v0, :cond_c5

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPreapprovalRequested()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_c5

    .line 5099
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, -0x6e

    if-eqz v0, :cond_a7

    .line 5104
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_27

    goto :goto_35

    .line 5107
    :cond_27
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {p2, v4, v2, v3, v5}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 5110
    :goto_35
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz p2, :cond_4b

    .line 5112
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5113
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5115
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4b

    goto/16 :goto_c5

    .line 5121
    :cond_4b
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 5120
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_9e

    .line 5129
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object p1

    .line 5130
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 5131
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_6c
    if-ltz v2, :cond_82

    if-nez v3, :cond_82

    .line 5134
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->getAppLabel(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    or-int/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_6c

    :cond_82
    if-eqz v3, :cond_85

    goto :goto_c5

    .line 5138
    :cond_85
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " inconsistent with app label"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 5123
    :cond_9e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p1, -0x2

    const-string p2, "Failure to obtain package info from APK files."

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 5100
    :cond_a7
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " inconsistent with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_c5
    :goto_c5
    return-void
.end method

.method public final assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    .registers 3

    .line 1618
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result p0

    if-nez p0, :cond_a

    return-void

    .line 1620
    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after commit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V
    .registers 3

    .line 1626
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-eqz v0, :cond_20

    .line 1629
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez p0, :cond_9

    return-void

    .line 1630
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after destruction"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1627
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before prepared"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertPreparedAndNotPreapprovalRequestedLocked(Ljava/lang/String;)V
    .registers 3

    .line 1602
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPreapprovalRequested()Z

    move-result p0

    if-nez p0, :cond_a

    return-void

    .line 1604
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after requesting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    .registers 3

    .line 1610
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 1611
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez p0, :cond_8

    return-void

    .line 1612
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after sealing"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertSealed(Ljava/lang/String;)V
    .registers 3

    .line 1595
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1596
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before sealing"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertShellOrSystemCalling(Ljava/lang/String;)V
    .registers 3

    .line 1959
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    if-eqz p0, :cond_26

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_26

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_f

    goto :goto_26

    .line 1965
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " only supported from shell or system"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method public final canBeAddedAsChild(I)Z
    .registers 4

    .line 6038
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6039
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v1, p1, :cond_1c

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_1f

    .line 6040
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    monitor-exit v0

    return p0

    .line 6042
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_e

    throw p0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 5611
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    return-void
.end method

.method public final closeInternal(Z)V
    .registers 3

    .line 5615
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_b

    .line 5617
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    goto :goto_b

    :catchall_9
    move-exception p0

    goto :goto_10

    .line 5619
    :cond_b
    :goto_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_9

    .line 5620
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->deactivate()V

    return-void

    .line 5619
    :goto_10
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_9

    throw p0
.end method

.method public commit(Landroid/content/IntentSender;Z)V
    .registers 9

    .line 2315
    const-string v0, "commit"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    const-wide/32 v0, 0xe578ada

    .line 2317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2316
    invoke-static {v0, v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2318
    invoke-virtual {p1}, Landroid/content/IntentSender;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_21

    .line 2319
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The commit() status receiver should come from a mutable PendingIntent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2323
    :cond_21
    :goto_21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    move-result p1

    if-nez p1, :cond_28

    return-void

    .line 2326
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5a

    .line 2327
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2329
    :try_start_32
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v0

    :goto_3b
    if-ltz v1, :cond_52

    .line 2332
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    move-result v4

    if-nez v4, :cond_4d

    move v3, v2

    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    :catchall_50
    move-exception p0

    goto :goto_58

    :cond_52
    if-eqz v3, :cond_56

    .line 2337
    monitor-exit p1

    return-void

    .line 2339
    :cond_56
    monitor-exit p1

    goto :goto_5a

    :goto_58
    monitor-exit p1
    :try_end_59
    .catchall {:try_start_32 .. :try_end_59} :catchall_50

    throw p0

    .line 2342
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2343
    :try_start_5d
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    if-eqz p2, :cond_9d

    .line 2344
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedAppMetadataFile()Ljava/io/File;

    move-result-object p2

    .line 2345
    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession;->getAppMetadataSizeLimit()J

    move-result-wide v1

    .line 2346
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gtz v3, :cond_81

    .line 2352
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 2355
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getTmpAppMetadataFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_9d

    :catchall_7f
    move-exception p0

    goto :goto_a2

    .line 2347
    :cond_81
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 2348
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 2349
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App metadata size exceeds the maximum allowed limit of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2358
    :cond_9d
    :goto_9d
    monitor-exit p1
    :try_end_9e
    .catchall {:try_start_5d .. :try_end_9e} :catchall_7f

    .line 2360
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionSealed()V

    return-void

    .line 2358
    :goto_a2
    :try_start_a2
    monitor-exit p1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_7f

    throw p0
.end method

.method public final computeProgressLocked(Z)V
    .registers 8

    .line 1660
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_20

    .line 1666
    :cond_12
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    sub-float v3, v0, v3

    float-to-double v3, v3

    cmpl-double v3, v3, v1

    if-ltz v3, :cond_38

    .line 1671
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    goto :goto_38

    .line 1661
    :cond_20
    :goto_20
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v5

    .line 1662
    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    :cond_38
    :goto_38
    if-nez p1, :cond_46

    .line 1676
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr p1, v0

    float-to-double v3, p1

    cmpl-double p1, v3, v1

    if-ltz p1, :cond_45

    goto :goto_46

    :cond_45
    return-void

    .line 1677
    :cond_46
    :goto_46
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 1678
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    return-void
.end method

.method public final computeUserActionRequirement()I
    .registers 21

    move-object/from16 v0, p0

    .line 1120
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1121
    :try_start_5
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    .line 1122
    monitor-exit v1

    return v3

    :catchall_c
    move-exception v0

    goto/16 :goto_1b0

    .line 1125
    :cond_f
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_14

    goto :goto_26

    .line 1127
    :cond_14
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    if-eqz v2, :cond_25

    .line 1128
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 1132
    :goto_26
    iget-boolean v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    .line 1133
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_c

    .line 1138
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v6, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v6, v6, 0x400

    const/4 v7, 0x1

    if-nez v6, :cond_39

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    if-ne v1, v7, :cond_37

    goto :goto_39

    :cond_37
    move v1, v3

    goto :goto_3a

    :cond_39
    :goto_39
    move v1, v7

    .line 1147
    :goto_3a
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    .line 1148
    const-string v8, "android.permission.INSTALL_PACKAGES"

    iget v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1149
    invoke-interface {v6, v8, v9}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_4c

    move v8, v7

    goto :goto_4d

    :cond_4c
    move v8, v3

    .line 1151
    :goto_4d
    const-string v9, "android.permission.INSTALL_SELF_UPDATES"

    iget v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1152
    invoke-interface {v6, v9, v10}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_59

    move v9, v7

    goto :goto_5a

    :cond_59
    move v9, v3

    .line 1154
    :goto_5a
    const-string v10, "android.permission.INSTALL_PACKAGE_UPDATES"

    iget v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1155
    invoke-interface {v6, v10, v11}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_66

    move v10, v7

    goto :goto_67

    :cond_66
    move v10, v3

    .line 1157
    :goto_67
    const-string v11, "android.permission.UPDATE_PACKAGES_WITHOUT_USER_ACTION"

    iget v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v6, v11, v12}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_73

    move v11, v7

    goto :goto_74

    :cond_73
    move v11, v3

    .line 1160
    :goto_74
    const-string v12, "android.permission.INSTALL_DPC_PACKAGES"

    iget v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v6, v12, v13}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_80

    move v12, v7

    goto :goto_81

    :cond_80
    move v12, v3

    .line 1165
    :goto_81
    const-string v13, "android.permission.INSTALL_DEPENDENCY_SHARED_LIBRARIES"

    iget v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v6, v13, v14}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_8d

    move v13, v7

    goto :goto_8e

    :cond_8d
    move v13, v3

    :goto_8e
    const-wide v14, 0x100000000L

    .line 1171
    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v6, v2, v14, v15, v3}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    const/4 v14, -0x1

    if-ne v3, v14, :cond_a5

    .line 1173
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v14

    if-eqz v14, :cond_a3

    goto :goto_a5

    :cond_a3
    const/4 v14, 0x0

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v14, v7

    :goto_a6
    if-eqz v14, :cond_af

    .line 1175
    iget v15, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v6, v2, v15}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    move-result-object v15

    goto :goto_b0

    :cond_af
    const/4 v15, 0x0

    :goto_b0
    if-eqz v15, :cond_b9

    .line 1178
    invoke-virtual {v15}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v17

    goto :goto_ba

    :cond_b9
    const/4 v4, 0x0

    :goto_ba
    if-eqz v15, :cond_c1

    .line 1181
    invoke-virtual {v15}, Landroid/content/pm/InstallSourceInfo;->getUpdateOwnerPackageName()Ljava/lang/String;

    move-result-object v15

    goto :goto_c2

    :cond_c1
    const/4 v15, 0x0

    :goto_c2
    move/from16 v17, v7

    if-eqz v14, :cond_d3

    .line 1184
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d3

    move/from16 v4, v17

    goto :goto_d4

    :cond_d3
    const/4 v4, 0x0

    .line 1186
    :goto_d4
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1185
    invoke-static {v15, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    move/from16 v18, v1

    .line 1187
    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v3, v1, :cond_e5

    move/from16 v1, v17

    goto :goto_e6

    :cond_e5
    const/4 v1, 0x0

    .line 1188
    :goto_e6
    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move/from16 v19, v1

    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1189
    invoke-static {v2, v6, v3, v1}, Lcom/android/server/pm/PackageInstallerSession;->isEmergencyInstallerEnabled(Ljava/lang/String;Lcom/android/server/pm/Computer;II)Z

    move-result v1

    .line 1191
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1192
    :try_start_f3
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v3, :cond_10c

    .line 1194
    invoke-virtual {v3}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v3

    if-nez v3, :cond_109

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v3}, Landroid/content/pm/parsing/PackageLite;->isIsStaticLibrary()Z

    move-result v3

    if-eqz v3, :cond_10c

    goto :goto_109

    :catchall_106
    move-exception v0

    goto/16 :goto_1ae

    :cond_109
    :goto_109
    move/from16 v3, v17

    goto :goto_10d

    :cond_10c
    const/4 v3, 0x0

    .line 1196
    :goto_10d
    monitor-exit v2
    :try_end_10e
    .catchall {:try_start_f3 .. :try_end_10e} :catchall_106

    if-nez v8, :cond_123

    if-eqz v10, :cond_114

    if-nez v14, :cond_123

    :cond_114
    if-eqz v9, :cond_118

    if-nez v19, :cond_123

    :cond_118
    if-eqz v12, :cond_11c

    if-nez v5, :cond_123

    :cond_11c
    if-eqz v13, :cond_121

    if-eqz v3, :cond_121

    goto :goto_123

    :cond_121
    const/4 v2, 0x0

    goto :goto_125

    :cond_123
    :goto_123
    move/from16 v2, v17

    .line 1202
    :goto_125
    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v3, :cond_12c

    move/from16 v3, v17

    goto :goto_12d

    :cond_12c
    const/4 v3, 0x0

    .line 1203
    :goto_12d
    iget v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v8, 0x3e8

    if-ne v5, v8, :cond_136

    move/from16 v5, v17

    goto :goto_137

    :cond_136
    const/4 v5, 0x0

    .line 1204
    :goto_137
    iget v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v9, 0x7d0

    if-ne v8, v9, :cond_140

    move/from16 v8, v17

    goto :goto_141

    :cond_140
    const/4 v8, 0x0

    .line 1205
    :goto_141
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v9, v9, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v10, 0x4000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_14d

    move/from16 v9, v17

    goto :goto_14e

    :cond_14d
    const/4 v9, 0x0

    .line 1208
    :goto_14e
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isUpdateOwnershipEnforcementAvailable()Z

    move-result v10

    if-eqz v10, :cond_159

    if-eqz v15, :cond_159

    move/from16 v10, v17

    goto :goto_15a

    :cond_159
    const/4 v10, 0x0

    .line 1213
    :goto_15a
    iget-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v12, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v13, 0x40000000    # 2.0f

    and-int/2addr v12, v13

    if-eqz v12, :cond_166

    move/from16 v16, v17

    goto :goto_168

    :cond_166
    const/16 v16, 0x0

    :goto_168
    if-nez v3, :cond_1ad

    if-nez v5, :cond_1ad

    .line 1219
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v3

    if-nez v3, :cond_1ad

    if-nez v1, :cond_1ad

    if-eqz v16, :cond_177

    goto :goto_1ad

    :cond_177
    if-eqz v10, :cond_187

    .line 1227
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_187

    if-nez v7, :cond_187

    if-nez v8, :cond_187

    if-nez v9, :cond_187

    const/4 v0, 0x3

    return v0

    :cond_187
    if-eqz v2, :cond_18a

    return v18

    .line 1239
    :cond_18a
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v6, v1, v2, v3}, Lcom/android/server/pm/Computer;->isInstallDisabledForPackage(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_199

    return v17

    .line 1245
    :cond_199
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1ac

    if-eqz v11, :cond_1ac

    if-eqz v10, :cond_1a7

    if-eqz v7, :cond_1a9

    goto :goto_1ab

    :cond_1a7
    if-nez v4, :cond_1ab

    :cond_1a9
    if-eqz v19, :cond_1ac

    :cond_1ab
    :goto_1ab
    return v1

    :cond_1ac
    return v17

    :cond_1ad
    :goto_1ad
    return v18

    .line 1196
    :goto_1ae
    :try_start_1ae
    monitor-exit v2
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_106

    throw v0

    .line 1133
    :goto_1b0
    :try_start_1b0
    monitor-exit v1
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_c

    throw v0
.end method

.method public containsApkSession()Z
    .registers 2

    .line 4391
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public createHistoricalSession()Lcom/android/server/pm/PackageInstallerHistoricalSession;
    .registers 44

    move-object/from16 v0, p0

    .line 1400
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1401
    :try_start_5
    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 1402
    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 1403
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c7

    .line 1404
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    move/from16 v18, v2

    .line 1405
    :try_start_f
    new-instance v2, Lcom/android/server/pm/PackageInstallerHistoricalSession;

    move/from16 v17, v3

    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v4, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-wide v9, v0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    iget-wide v11, v0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    iget-wide v13, v0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    iget-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 1408
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v19

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isPreapprovalRequested()Z

    move-result v20

    move-object/from16 v21, v2

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    move/from16 v22, v2

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    move/from16 v23, v2

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    move/from16 v24, v2

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    move/from16 v25, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 1409
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v26, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v27, v2

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    move/from16 v28, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    move-object/from16 v29, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    move-object/from16 v30, v2

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 1410
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v31

    move/from16 v32, v2

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    move/from16 v33, v2

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    move/from16 v34, v2

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    move/from16 v35, v2

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    move/from16 v36, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    move-object/from16 v37, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    move-object/from16 v38, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    move-object/from16 v39, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    move-object/from16 v40, v2

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInitialVerificationPolicy:I

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mCurrentVerificationPolicy:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1413
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v41

    move-object/from16 v42, v40

    move/from16 v40, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move/from16 v30, v32

    move/from16 v32, v33

    move/from16 v33, v34

    move/from16 v34, v35

    move/from16 v35, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v42

    invoke-direct/range {v2 .. v41}, Lcom/android/server/pm/PackageInstallerHistoricalSession;-><init>(IIILjava/lang/String;Lcom/android/server/pm/InstallSource;IJJJLjava/io/File;Ljava/lang/String;FFZZZZZZIIILjava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;I[IZZZILjava/lang/String;Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/pm/verify/domain/DomainSet;Ljava/lang/String;II)V

    move-object/from16 v16, v2

    monitor-exit v1

    return-object v16

    :catchall_c4
    move-exception v0

    .line 1414
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_f .. :try_end_c6} :catchall_c4

    throw v0

    :catchall_c7
    move-exception v0

    .line 1403
    :try_start_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v0
.end method

.method public final createInstallingSession(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallingSession;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4216
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4217
    :try_start_7
    iget-boolean v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v3, :cond_d3

    .line 4221
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->markStageDirInUseLocked()V

    .line 4222
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d1

    .line 4224
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    .line 4226
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_34

    .line 4227
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v2, :cond_34

    .line 4229
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-object v3

    .line 4233
    :cond_34
    :goto_34
    new-instance v7, Lcom/android/server/pm/PackageInstallerSession$7;

    invoke-direct {v7, v0, v1}, Lcom/android/server/pm/PackageInstallerSession$7;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;)V

    .line 4251
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_45

    .line 4252
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    :goto_43
    move-object v10, v1

    goto :goto_4d

    .line 4254
    :cond_45
    new-instance v1, Landroid/os/UserHandle;

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_43

    .line 4257
    :goto_4d
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v2, :cond_5a

    .line 4258
    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 4261
    :cond_5a
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_9a

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_9a

    .line 4262
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4264
    :try_start_69
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-nez v2, :cond_8d

    .line 4265
    const-string v2, "PackageInstallerSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Don\'t have a valid PackageLite."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :catchall_8b
    move-exception v0

    goto :goto_98

    .line 4267
    :cond_8d
    :goto_8d
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 4268
    monitor-exit v1

    goto :goto_9a

    :goto_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_69 .. :try_end_99} :catchall_8b

    throw v0

    .line 4271
    :cond_9a
    :goto_9a
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4272
    :try_start_9d
    new-instance v4, Lcom/android/server/pm/InstallingSession;

    iget v5, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    iget-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mDependencyInstallerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4274
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mMissingSharedLibraryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4275
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mWarnings:Ljava/util/List;

    move-object/from16 v20, v0

    move/from16 v16, v2

    move-object/from16 v19, v3

    invoke-direct/range {v4 .. v20}, Lcom/android/server/pm/InstallingSession;-><init>(ILjava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/PackageManagerService;ZZILcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    :catchall_ce
    move-exception v0

    .line 4277
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_9d .. :try_end_d0} :catchall_ce

    throw v0

    :catchall_d1
    move-exception v0

    goto :goto_dd

    .line 4218
    :cond_d3
    :try_start_d3
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session not sealed"

    const/16 v3, -0x6e

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4222
    :goto_dd
    monitor-exit v2
    :try_end_de
    .catchall {:try_start_d3 .. :try_end_de} :catchall_d1

    throw v0
.end method

.method public final createOatDirs(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)V
    .registers 4

    .line 5369
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/pm/Installer;->createOatDirs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 5371
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method

.method public final createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    .registers 3

    .line 1950
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1951
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1952
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 1954
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final createRevocableFdInternal(Landroid/os/RevocableFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 2117
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p2

    .line 2118
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 2119
    invoke-virtual {v0, p2}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 2120
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 2121
    invoke-virtual {p1}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final deactivate()V
    .registers 3

    .line 5625
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5626
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 5627
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_13

    if-nez v1, :cond_12

    .line 5629
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    :cond_12
    return-void

    :catchall_13
    move-exception p0

    .line 5627
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final destroy(Ljava/lang/String;)V
    .registers 3

    .line 6523
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    .line 6524
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 6525
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public final destroyInternal(Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_27

    .line 6534
    const-string v0, "PackageInstallerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] was destroyed because of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6538
    :cond_27
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 6539
    :try_start_2b
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 6540
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v1, :cond_39

    .line 6541
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    goto :goto_39

    :catchall_36
    move-exception p0

    goto/16 :goto_b0

    .line 6544
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_41
    if-ge v3, v1, :cond_4f

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/os/RevocableFileDescriptor;

    .line 6545
    invoke-virtual {v4}, Landroid/os/RevocableFileDescriptor;->revoke()V

    goto :goto_41

    .line 6547
    :cond_4f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_55
    if-ge v2, v1, :cond_63

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/os/FileBridge;

    .line 6548
    invoke-virtual {v3}, Landroid/os/FileBridge;->forceClose()V

    goto :goto_55

    .line 6550
    :cond_63
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    const/4 v1, 0x0

    .line 6551
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 6552
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_2b .. :try_end_69} :catchall_36

    if-eqz v0, :cond_6e

    .line 6555
    :try_start_6b
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUpAndMarkComplete()V

    .line 6557
    :cond_6e
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz p1, :cond_81

    .line 6558
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 6559
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6b .. :try_end_81} :catch_81

    .line 6563
    :catch_81
    :cond_81
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->shouldUseVerificationService()Z

    move-result p1

    if-eqz p1, :cond_af

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 6564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_af

    .line 6565
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_af

    .line 6568
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->notifyVerificationCancelled(Ljava/lang/String;I)V

    .line 6570
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter p1

    .line 6571
    :try_start_a5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationCancelled()V

    .line 6572
    monitor-exit p1

    goto :goto_af

    :catchall_ac
    move-exception p0

    monitor-exit p1
    :try_end_ae
    .catchall {:try_start_a5 .. :try_end_ae} :catchall_ac

    throw p0

    :cond_af
    :goto_af
    return-void

    .line 6552
    :goto_b0
    :try_start_b0
    monitor-exit p1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_36

    throw p0
.end method

.method public final dispatchPendingAbandonCallback()Z
    .registers 5

    .line 5658
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5659
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 5660
    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_1c

    .line 5662
    :cond_c
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 5663
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 5664
    iput-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Ljava/lang/Runnable;

    .line 5665
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_a

    if-eqz v1, :cond_1b

    .line 5667
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v2

    .line 5665
    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_a

    throw p0
.end method

.method public final dispatchPreapprovalRequest()V
    .registers 3

    .line 6272
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6273
    :try_start_3
    const-string v1, "dispatchPreapprovalRequest"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotPreapprovalRequestedLocked(Ljava/lang/String;)V

    .line 6274
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_17

    .line 6277
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->markAsPreapprovalRequested()V

    .line 6279
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_17
    move-exception p0

    .line 6274
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 6169
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPreapprovalRequested()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    .line 6168
    :goto_11
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 6172
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6173
    :try_start_17
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 6174
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 6175
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 6176
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_69

    .line 6177
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v3

    .line 6178
    :try_start_23
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {v0}, Lcom/android/server/pm/SessionMetrics;->onInternalInstallationFinished()V

    .line 6179
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/SessionMetrics;->onSessionFinished(ILjava/lang/String;)V

    .line 6180
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_66

    if-ne p1, v2, :cond_32

    move p2, v2

    goto :goto_33

    :cond_32
    move p2, v1

    :goto_33
    if-eqz p3, :cond_3d

    .line 6186
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3e

    :cond_3d
    move v1, v2

    :cond_3e
    if-eqz p2, :cond_57

    if-eqz v1, :cond_57

    .line 6187
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageInstallerService;->okToSendBroadcasts()Z

    move-result p3

    if-eqz p3, :cond_57

    .line 6188
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    .line 6191
    :cond_57
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p3, p0, p2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 6192
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result p2

    if-eqz p2, :cond_65

    .line 6193
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->logDataLoaderInstallationSession(I)V

    :cond_65
    return-void

    :catchall_66
    move-exception p0

    .line 6180
    :try_start_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0

    :catchall_69
    move-exception p0

    .line 6176
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public final dispatchSessionPreapproved()V
    .registers 9

    .line 6217
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPreapprovalRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object v0

    .line 6218
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 6219
    const-string v1, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6220
    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6221
    const-string v1, "android.content.pm.extra.PRE_APPROVAL"

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6223
    :try_start_1c
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 6224
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 6225
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 6226
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 6225
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_31
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1c .. :try_end_31} :catch_31

    :catch_31
    return-void
.end method

.method public final dispatchSessionSealed()V
    .registers 2

    .line 2422
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final dispatchSessionValidationFailure(ILjava/lang/String;)V
    .registers 5

    .line 6013
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6014
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final dispatchStreamValidateAndCommit()V
    .registers 2

    .line 2434
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 21

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    .line 2131
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2132
    :try_start_7
    sget-boolean v7, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1d

    .line 2133
    new-instance v6, Landroid/os/RevocableFileDescriptor;

    invoke-direct {v6}, Landroid/os/RevocableFileDescriptor;-><init>()V

    .line 2135
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v6

    move-object v10, v8

    goto :goto_29

    :catchall_19
    move-exception v0

    move-object p0, v0

    goto/16 :goto_129

    .line 2138
    :cond_1d
    new-instance v6, Landroid/os/FileBridge;

    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    .line 2139
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v6

    move-object v9, v8

    .line 2141
    :goto_29
    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_19

    .line 2145
    :try_start_2a
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 2149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_2a .. :try_end_34} :catch_122

    .line 2151
    :try_start_34
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v11, v12, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_105

    .line 2153
    :try_start_3b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2158
    const-string v5, "app.metadata"

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v0, 0x1a0

    goto :goto_4b

    :cond_49
    const/16 v0, 0x1a4

    .line 2160
    :goto_4b
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->O_CREAT:I

    sget v12, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v6, v12

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/server/pm/PackageInstallerSession;->openTargetInternal(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 2162
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 2166
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_82

    cmp-long v0, v3, v5

    if-lez v0, :cond_82

    .line 2167
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v11, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2168
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v13, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2169
    invoke-static {v13}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v13

    .line 2167
    invoke-virtual {v0, v11, v3, v4, v13}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    :cond_82
    cmp-long v0, v1, v5

    if-lez v0, :cond_8f

    .line 2173
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget v11, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v1, v2, v11}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_8f
    .catch Landroid/system/ErrnoException; {:try_start_3b .. :try_end_8f} :catch_122

    :cond_8f
    if-eqz p6, :cond_f3

    .line 2182
    :try_start_91
    new-instance v0, Landroid/system/Int64Ref;

    invoke-direct {v0, v5, v6}, Landroid/system/Int64Ref;-><init>(J)V

    .line 2183
    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v2, v1

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v5, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V

    const/4 v4, 0x0

    move-object v0, v2

    move-wide/from16 v2, p4

    invoke-static/range {v0 .. v6}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_b0
    .catchall {:try_start_91 .. :try_end_b0} :catchall_d0

    .line 2196
    :try_start_b0
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2197
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2201
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b9
    .catch Landroid/system/ErrnoException; {:try_start_b0 .. :try_end_b9} :catch_122

    if-eqz v7, :cond_c4

    .line 2203
    :try_start_bb
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_cc

    :catchall_c1
    move-exception v0

    move-object p0, v0

    goto :goto_ce

    .line 2205
    :cond_c4
    invoke-virtual {v10}, Landroid/os/FileBridge;->forceClose()V

    .line 2206
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2208
    :goto_cc
    monitor-exit v1

    return-object v8

    :goto_ce
    monitor-exit v1
    :try_end_cf
    .catchall {:try_start_bb .. :try_end_cf} :catchall_c1

    :try_start_cf
    throw p0

    :catchall_d0
    move-exception v0

    .line 2196
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2197
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2201
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_da
    .catch Landroid/system/ErrnoException; {:try_start_cf .. :try_end_da} :catch_122

    .line 2202
    :try_start_da
    sget-boolean v2, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v2, :cond_e7

    .line 2203
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_ef

    :catchall_e4
    move-exception v0

    move-object p0, v0

    goto :goto_f1

    .line 2205
    :cond_e7
    invoke-virtual {v10}, Landroid/os/FileBridge;->forceClose()V

    .line 2206
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2208
    :goto_ef
    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_da .. :try_end_f0} :catchall_e4

    .line 2209
    :try_start_f0
    throw v0
    :try_end_f1
    .catch Landroid/system/ErrnoException; {:try_start_f0 .. :try_end_f1} :catch_122

    .line 2208
    :goto_f1
    :try_start_f1
    monitor-exit v1
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_e4

    :try_start_f2
    throw p0

    :cond_f3
    if-eqz v7, :cond_fa

    .line 2212
    invoke-virtual {p0, v9, v12}, Lcom/android/server/pm/PackageInstallerSession;->createRevocableFdInternal(Landroid/os/RevocableFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 2214
    :cond_fa
    invoke-virtual {v10, v12}, Landroid/os/FileBridge;->setTargetFile(Landroid/os/ParcelFileDescriptor;)V

    .line 2215
    invoke-virtual {v10}, Landroid/os/FileBridge;->start()V

    .line 2216
    invoke-virtual {v10}, Landroid/os/FileBridge;->getClientSocket()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :catchall_105
    move-exception v0

    move-object p0, v0

    .line 2153
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2154
    throw p0

    .line 2146
    :cond_10b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_122
    .catch Landroid/system/ErrnoException; {:try_start_f2 .. :try_end_122} :catch_122

    :catch_122
    move-exception v0

    move-object p0, v0

    .line 2220
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 2141
    :goto_129
    :try_start_129
    monitor-exit v5
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_19

    throw p0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    .line 6577
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6578
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 6579
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 6584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6585
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 6587
    const-string/jumbo v0, "userId"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6588
    const-string v0, "mOriginalInstallerUid"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6589
    const-string v0, "mOriginalInstallerPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6590
    const-string v0, "installerPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6591
    const-string v0, "installInitiatingPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6592
    const-string v0, "installOriginatingPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6593
    const-string v0, "mInstallerUid"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6594
    const-string v0, "createdMillis"

    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6595
    const-string/jumbo v0, "updatedMillis"

    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6596
    const-string v0, "committedMillis"

    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6597
    const-string/jumbo v0, "stageDir"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6598
    const-string/jumbo v0, "stageCid"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6599
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 6601
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 6605
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6606
    :try_start_9f
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 6607
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 6608
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_1b4

    .line 6609
    const-string v0, "mClientProgress"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6610
    const-string v0, "mProgress"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6611
    const-string v0, "mCommitted"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6612
    const-string v0, "mPreapprovalRequested"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6613
    const-string v0, "mSealed"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6614
    const-string v0, "mPermissionsManuallyAccepted"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6615
    const-string v0, "mStageDirInUse"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6616
    const-string v0, "mDestroyed"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6617
    const-string v0, "mFds"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6618
    const-string v0, "mBridges"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6619
    const-string v0, "mFinalStatus"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6620
    const-string v0, "mFinalMessage"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6621
    const-string/jumbo v0, "params.isMultiPackage"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6622
    const-string/jumbo v0, "params.isStaged"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6623
    const-string v0, "mParentSessionId"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6624
    const-string v0, "mChildSessionIds"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6625
    const-string v0, "mSessionApplied"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6626
    const-string v0, "mSessionFailed"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6627
    const-string v0, "mSessionReady"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6628
    const-string v0, "mSessionErrorCode"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6629
    const-string v0, "mSessionErrorMessage"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6630
    const-string v0, "mPreapprovalDetails"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6631
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    if-eqz v0, :cond_193

    .line 6632
    const-string v1, "mPreVerifiedDomains"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6634
    :cond_193
    const-string v0, "mInitialVerificationPolicy"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInitialVerificationPolicy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6635
    const-string v0, "mCurrentVerificationPolicy"

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCurrentVerificationPolicy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 6636
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 6638
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_1b4
    move-exception p0

    .line 6608
    :try_start_1b5
    monitor-exit v0
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_1b4

    throw p0
.end method

.method public final enableFsVerityToAddedApksWithIdsig()V
    .registers 5

    .line 1765
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object p0

    .line 1766
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1767
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".idsig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1768
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_3d

    goto :goto_8

    :cond_3c
    return-void

    :catch_3d
    move-exception p0

    .line 1772
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enable fs-verity to verify with idsig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x76

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final extractNativeLibraries(Ljava/io/File;)V
    .registers 6

    const/4 v0, 0x0

    .line 5436
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4f

    .line 5437
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_51

    .line 5439
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-static {v2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_53
    .catchall {:try_start_9 .. :try_end_f} :catchall_51

    .line 5446
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->markStageDirInUseLocked()V

    .line 5447
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_51

    .line 5450
    :try_start_13
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-string v2, "extract_native_libraries"

    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 5451
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 5452
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result p0

    .line 5451
    invoke-static {v0, p1, v1, p0}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_4f

    const/4 p1, 0x1

    if-ne p0, p1, :cond_38

    .line 5458
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5459
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    const-string p1, "extract_native_libraries"

    invoke-virtual {p0, p1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    return-void

    .line 5454
    :cond_38
    :try_start_38
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to extract native libraries, res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception p0

    goto :goto_60

    :catchall_51
    move-exception p0

    goto :goto_5e

    :catch_53
    move-exception p0

    .line 5441
    :try_start_54
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Failed to extract native libraries"

    const/16 v3, -0x6e

    invoke-direct {p1, v3, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 5447
    :goto_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_51

    :try_start_5f
    throw p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_4f

    .line 5458
    :goto_60
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5459
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    const-string v0, "extract_native_libraries"

    invoke-virtual {p1, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 5460
    throw p0
.end method

.method public final fetchPackageName()Ljava/lang/String;
    .registers 7

    .line 2396
    const-string v0, "fetchPackageName"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertSealed(Ljava/lang/String;)V

    .line 2397
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2398
    :try_start_8
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    .line 2399
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v2

    .line 2400
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 2402
    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 2403
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 2407
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/ApkLite;

    .line 2408
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 2410
    monitor-exit v0

    return-object v3

    :catchall_3d
    move-exception p0

    goto :goto_75

    .line 2404
    :cond_3f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse package for session="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2405
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2413
    :cond_5c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t fetch package name for session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2414
    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_8 .. :try_end_76} :catchall_3d

    throw p0
.end method

.method public fetchPackageNames()Ljava/util/List;
    .registers 3

    .line 2385
    const-string v0, "fetchPackageNames"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getSelfOrChildSessions()Ljava/util/List;

    move-result-object p0

    .line 2388
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2389
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 2390
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->fetchPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2d
    return-object v0
.end method

.method public generateDeveloperVerificationUserConfirmationInfo()Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;
    .registers 3

    .line 1540
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationUserActionState:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1543
    :cond_6
    new-instance v0, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCurrentVerificationPolicy:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1544
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationUserActionState:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;->mUserActionNeededReason:I

    invoke-direct {v0, v1, p0}, Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;-><init>(II)V

    return-object v0
.end method

.method public generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3

    .line 1438
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->shouldScrubData(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 10

    .line 1452
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 1454
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1455
    :try_start_8
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 1456
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_141

    .line 1457
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1458
    :try_start_e
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 1459
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 1460
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 1461
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1462
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 1463
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_INSTALLED_SESSION_PATHS"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_4e

    .line 1466
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-nez v1, :cond_46

    .line 1469
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v5

    .line 1470
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_46

    .line 1471
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    goto :goto_46

    :catchall_43
    move-exception p0

    goto/16 :goto_13f

    :cond_46
    :goto_46
    if-eqz v1, :cond_4e

    .line 1475
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 1478
    :cond_4e
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 1479
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 1481
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPreapprovalRequested()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    .line 1482
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_69

    const/4 v4, 0x1

    :cond_69
    iput-boolean v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 1484
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 1485
    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 1486
    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    .line 1487
    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 1488
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    if-eqz v2, :cond_86

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_8e

    .line 1489
    :cond_86
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_8c

    move-object v1, v2

    goto :goto_8e

    :cond_8c
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    :goto_8e
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    if-eqz p1, :cond_a9

    .line 1491
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    if-eqz p1, :cond_a3

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_a3

    .line 1492
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_a7

    :cond_a3
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    :goto_a7
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 1495
    :cond_a9
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    if-eqz p1, :cond_b2

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_b6

    :cond_b2
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    :goto_b6
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 1497
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    if-nez p2, :cond_c4

    .line 1499
    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 1501
    :cond_c4
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    if-nez p2, :cond_ce

    .line 1503
    iget-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 1505
    :cond_ce
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionParams;->getLegacyGrantedRuntimePermissions()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 1506
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 1507
    iget p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 1508
    iget p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 1509
    iget-wide v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    .line 1510
    iget p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    .line 1511
    iget-boolean p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    .line 1512
    iget-boolean p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    .line 1513
    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 1514
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 1515
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object p1

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 1516
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    .line 1517
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    .line 1518
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    .line 1519
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->setSessionErrorCode(ILjava/lang/String;)V

    .line 1520
    iget-wide p1, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    iput-wide p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    .line 1521
    iget-wide p1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    iput-wide p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    .line 1522
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    .line 1523
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    .line 1524
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    .line 1525
    iget-boolean p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    .line 1526
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequirement:I

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->userActionRequirementToReason(I)I

    move-result p1

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    .line 1527
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    iput-boolean p0, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isAutoInstallingDependenciesEnabled:Z

    .line 1528
    monitor-exit v3

    return-object v0

    :goto_13f
    monitor-exit v3
    :try_end_140
    .catchall {:try_start_e .. :try_end_140} :catchall_43

    throw p0

    :catchall_141
    move-exception p0

    .line 1456
    :try_start_142
    monitor-exit v1
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    throw p0
.end method

.method public generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3

    const/4 v0, 0x1

    .line 1448
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAddedApkLitesLocked()Ljava/util/List;
    .registers 11

    .line 1779
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6c

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v0

    .line 1782
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1784
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v3

    .line 1785
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    :goto_1e
    if-ge v1, v4, :cond_5f

    .line 1787
    invoke-virtual {v3}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    const/16 v9, 0x20

    .line 1786
    invoke-static {v7, v8, v9}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 1789
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-nez v8, :cond_4d

    .line 1793
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/parsing/ApkLite;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1794
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1790
    :cond_4d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    .line 1791
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 1798
    :cond_5f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 1799
    :try_start_62
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/SessionMetrics;->onAddedApksSizeBytesCalculated(J)V

    .line 1800
    monitor-exit v0

    return-object v2

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_69

    throw p0

    .line 1804
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v0

    .line 1805
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1807
    array-length v3, v0

    :goto_77
    if-ge v1, v3, :cond_10f

    .line 1808
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1809
    sget-object v5, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    invoke-interface {v5, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_8f

    goto :goto_bc

    .line 1815
    :cond_8f
    :try_start_8f
    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v5
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_99} :catch_104

    .line 1820
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getMode()B

    move-result v6

    const/4 v7, 0x4

    const/16 v8, -0x16

    if-ne v6, v7, :cond_ed

    .line 1825
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v5

    if-eqz v5, :cond_d6

    .line 1830
    iget-object v6, v5, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_bf

    iget-object v6, v5, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    if-eqz v6, :cond_bf

    .line 1834
    new-instance v6, Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v5}, Landroid/content/pm/parsing/ApkLite;-><init>(Ljava/lang/String;Landroid/content/pm/ArchivedPackageParcel;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_bc
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 1831
    :cond_bf
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArchivedPackage does not contain required info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1827
    :cond_d6
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata does not contain ArchivedPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1821
    :cond_ed
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File metadata is not for ARCHIVED package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_104
    move-exception p0

    .line 1817
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    const-string v2, "Failed to "

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_10f
    return-object v2
.end method

.method public final getAddedApksLocked()Ljava/util/List;
    .registers 3

    .line 1745
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    .line 1746
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getApksSize(Ljava/lang/String;)J
    .registers 7

    .line 4331
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 4332
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_11

    return-wide v0

    .line 4336
    :cond_11
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_18

    return-wide v0

    .line 4340
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    const-string v2, ".apk"

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 4341
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    .line 4343
    :cond_33
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_3a

    return-wide v0

    .line 4346
    :cond_3a
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    .line 4348
    :goto_3f
    array-length v3, p0

    if-ge p1, v3, :cond_5c

    .line 4349
    aget-object v3, p0, p1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 4350
    aget-object v3, p0, p1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v0, v3

    :cond_59
    add-int/lit8 p1, p1, 0x1

    goto :goto_3f

    :cond_5c
    return-wide v0
.end method

.method public final getAppLabel(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 9

    .line 5145
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5146
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 5147
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5150
    :try_start_14
    invoke-static {p1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object p1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_3c

    const/4 v3, 0x1

    .line 5155
    new-array v3, v3, [Landroid/content/res/ApkAssets;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 5156
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 5157
    new-instance p1, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-direct {p1, v1, p2, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 5158
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/PackageInstallerSession;->tryLoadingAppLabel(Landroid/content/res/Resources;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 5152
    :catch_3c
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failure to get resources from package archive "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x2

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public getAppMetadataFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 2002
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2003
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2004
    :try_start_6
    const-string v1, "getAppMetadataFd"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 2005
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    if-nez v1, :cond_14

    const/4 p0, 0x0

    .line 2006
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_22

    .line 2009
    :cond_14
    :try_start_14
    const-string v1, "app.metadata"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_1c
    .catchall {:try_start_14 .. :try_end_1a} :catchall_12

    :try_start_1a
    monitor-exit v0

    return-object p0

    :catch_1c
    move-exception p0

    .line 2011
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 2013
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_12

    throw p0
.end method

.method public final getArtManagedFilePathsLocked()Ljava/util/List;
    .registers 8

    .line 1751
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    .line 1752
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1753
    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_29

    aget-object v4, v0, v3

    .line 1754
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1755
    sget-object v4, Lcom/android/server/pm/PackageInstallerSession;->sArtManagedFilter:Ljava/io/FileFilter;

    invoke-interface {v4, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1756
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_29
    return-object v1
.end method

.method public getChildSessionIds()[I
    .registers 2

    .line 6032
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6033
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 6034
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getChildSessionIdsLocked()[I
    .registers 5

    .line 6019
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 6021
    sget-object p0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    return-object p0

    .line 6023
    :cond_b
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1b

    .line 6025
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    return-object v1
.end method

.method public getChildSessions()Ljava/util/List;
    .registers 2

    .line 2697
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2698
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 2699
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getChildSessionsLocked()Ljava/util/List;
    .registers 5

    .line 2685
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2686
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2687
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2688
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_24

    .line 2690
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    return-object v1

    :cond_25
    return-object v0
.end method

.method public getCommittedMillis()J
    .registers 4

    .line 5308
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5309
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception p0

    .line 5310
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCurrentVerificationPolicy()I
    .registers 1

    .line 6390
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 6391
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCurrentVerificationPolicy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final getDataLoader(I)Landroid/content/pm/IDataLoader;
    .registers 3

    .line 6004
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoaderManager()Landroid/content/pm/DataLoaderManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/DataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    .line 6006
    :cond_b
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x14

    const-string v0, "Failure to obtain data loader"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final getDataLoaderManager()Landroid/content/pm/DataLoaderManager;
    .registers 3

    .line 5995
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/pm/DataLoaderManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/DataLoaderManager;

    if-eqz p0, :cond_d

    return-object p0

    .line 5997
    :cond_d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x14

    const-string v1, "Failed to find data loader manager service"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;
    .registers 1

    .line 5729
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getDataLoaderParams_enforcePermission()V

    .line 5730
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDeveloperVerificationUserActionIntent()Landroid/content/Intent;
    .registers 3

    .line 3773
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CONFIRM_DEVELOPER_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3775
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.SESSION_ID"

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 3776
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getIncrementalFileStorages()Landroid/os/incremental/IncrementalFileStorages;
    .registers 2

    .line 4950
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4951
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 4952
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getInitialVerificationPolicy()I
    .registers 1

    .line 6381
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 6382
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInitialVerificationPolicy:I

    return p0
.end method

.method public getInstallFlags()I
    .registers 1

    .line 5723
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return p0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .registers 2

    .line 5322
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5323
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 5324
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;
    .registers 4

    .line 1725
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    .line 1726
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 1727
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->getFile()Landroid/content/pm/InstallationFile;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_e

    :cond_25
    return-object v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .registers 1

    .line 5314
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallerUid()I
    .registers 1

    .line 5285
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    return p0
.end method

.method public getNames()[Ljava/lang/String;
    .registers 3

    .line 1684
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerRootOrVerifier()V

    .line 1685
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1686
    :try_start_6
    const-string v1, "getNames"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1689
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    :catchall_16
    move-exception p0

    goto :goto_24

    .line 1691
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStageDirContentsLocked()[Ljava/lang/String;

    move-result-object p0

    .line 1693
    :goto_1c
    const-string v1, "app.metadata"

    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1694
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_16

    throw p0
.end method

.method public final getNamesLocked()[Ljava/lang/String;
    .registers 5

    .line 1711
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1712
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStageDirContentsLocked()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1715
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object p0

    .line 1716
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 1717
    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_21

    .line 1718
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_21
    return-object v0
.end method

.method public final getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;
    .registers 4

    .line 4283
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz p0, :cond_5

    return-object p0

    .line 4287
    :cond_5
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    .line 4289
    invoke-static {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 4290
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 4294
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/parsing/PackageLite;

    return-object p0

    .line 4291
    :cond_1a
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 4292
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    const/16 v0, -0x6e

    invoke-direct {p1, v0, p2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPackageLite()Landroid/content/pm/parsing/PackageLite;
    .registers 2

    .line 5334
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5335
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 5336
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 5293
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5294
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 5295
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getParentSessionId()I
    .registers 2

    .line 6159
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6160
    :try_start_3
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 6161
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;
    .registers 3

    .line 6369
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 6370
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6371
    :try_start_6
    const-string v1, "getPreVerifiedDomains"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 6372
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 6373
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final getPreapprovalRemoteStatusReceiver()Landroid/content/IntentSender;
    .registers 2

    .line 3831
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3832
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRemoteStatusReceiver:Landroid/content/IntentSender;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3833
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getRemoteStatusReceiver()Landroid/content/IntentSender;
    .registers 2

    .line 3819
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3820
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3821
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getRemovedFilesLocked()Ljava/util/List;
    .registers 3

    .line 1841
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    .line 1842
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getSelfOrChildSessions()Ljava/util/List;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    .line 5328
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5329
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 5330
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getStageDirContentsLocked()[Ljava/lang/String;
    .registers 1

    .line 1699
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-nez p0, :cond_7

    .line 1700
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 1702
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f

    .line 1704
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_f
    return-object p0
.end method

.method public final getStagedAppMetadataFile()Ljava/io/File;
    .registers 3

    .line 1989
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-string v1, "app.metadata"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTmpAppMetadataFile()Ljava/io/File;
    .registers 4

    .line 1984
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "app.metadata"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUnarchivalListeners()Ljava/util/Set;
    .registers 3

    .line 6479
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6480
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 6481
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getUnarchivalStatus()I
    .registers 1

    .line 6507
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalStatus:I

    return p0
.end method

.method public getUpdatedMillis()J
    .registers 4

    .line 5302
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5303
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception p0

    .line 5304
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getUserActionRequired()Z
    .registers 2

    .line 5344
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    if-eqz p0, :cond_9

    .line 5345
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 5347
    :cond_9
    const-string p0, "PackageInstallerSession"

    const-string v0, "mUserActionRequired should not be null."

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final handleDependencyResolutionFailure(Lcom/android/server/pm/PackageManagerException;)V
    .registers 10

    .line 4199
    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 4200
    iget v1, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 4201
    iget v1, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionDependencyResolveFailure(ILjava/lang/String;)V

    .line 4202
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 4203
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMissingSharedLibraryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4204
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 4202
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageMetrics;->onDependencyInstallationFailure(ILjava/lang/String;IILandroid/content/pm/PackageInstaller$SessionParams;I)V

    return-void
.end method

.method public final handleInstall()V
    .registers 4

    .line 2986
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x70

    .line 2988
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2989
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2990
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    :cond_19
    const/4 v0, 0x0

    .line 3004
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntentIfNeeded(Z)Z

    move-result v0

    .line 3005
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    if-nez v1, :cond_28

    .line 3006
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    :cond_28
    if-eqz v0, :cond_3a

    .line 3011
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->deactivate()V

    .line 3012
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 3013
    :try_start_30
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onUserActionIntentSent()V

    .line 3014
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_37

    throw p0

    .line 3016
    :cond_3a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3020
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->activate()V

    .line 3023
    :cond_45
    :try_start_45
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 3024
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 3025
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 3026
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->prepareInheritedFiles()V

    .line 3027
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->parseApk()V

    goto :goto_53

    :catch_66
    move-exception v0

    goto :goto_6f

    .line 3030
    :cond_68
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareInheritedFiles()V

    .line 3031
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->parseApk()V
    :try_end_6e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_45 .. :try_end_6e} :catch_66

    goto :goto_84

    .line 3034
    :goto_6f
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 3035
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v2, v1}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3036
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 3037
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3039
    :cond_84
    :goto_84
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isVerificationServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 3040
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->performDeveloperVerification()V

    goto :goto_91

    .line 3043
    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resumeVerify()V

    :goto_91
    return-void
.end method

.method public final handleOnNativeLibsExtracted()V
    .registers 4

    .line 3338
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->verifyNonStaged()V
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 3340
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 3341
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v2, v1}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3342
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 3343
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final handlePreapprovalRequest()V
    .registers 2

    const/4 v0, 0x1

    .line 2464
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntentIfNeeded(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 2468
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionPreapproved()V

    return-void
.end method

.method public final handleSessionSealed()V
    .registers 2

    .line 2426
    const-string v0, "dispatchSessionSealed"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertSealed(Ljava/lang/String;)V

    .line 2429
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2430
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchStreamValidateAndCommit()V

    return-void
.end method

.method public final handleStreamValidateAndCommit()V
    .registers 5

    .line 2443
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 2444
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_9

    :catch_1b
    move-exception v0

    goto :goto_30

    :cond_1d
    if-eqz v1, :cond_2f

    .line 2446
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2447
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_2f} :catch_1b

    :cond_2f
    return-void

    .line 2450
    :goto_30
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 2451
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    .line 2452
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2453
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    return-void
.end method

.method public final handleVerificationUserResponse(I)V
    .registers 4

    .line 5505
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSessionFailed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3f

    .line 5509
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationUserActionState:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;

    if-nez v0, :cond_2a

    .line 5510
    const-string p1, "PackageInstallerSession"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User action was not requested for this verification. SessionID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    if-eqz p1, :cond_39

    .line 5516
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 5517
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationUserResponseReceived(I)V

    .line 5518
    monitor-exit v0

    goto :goto_39

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_36

    throw p0

    .line 5520
    :cond_39
    :goto_39
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationUserActionState:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;->onUserResponseReceived(I)V

    return-void

    .line 5506
    :cond_3f
    :goto_3f
    const-string p1, "PackageInstallerSession"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " already abandoned or marked as failed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hasParentSessionId()Z
    .registers 3

    .line 6152
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6153
    :try_start_3
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 6154
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final inheritFileLocked(Ljava/io/File;Ljava/util/List;)V
    .registers 5

    .line 5041
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5043
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->maybeInheritV4SignatureLocked(Ljava/io/File;)V

    .line 5047
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 5046
    invoke-static {p2, v0}, Lcom/android/server/art/ArtManagedInstallFileHelper;->filterPathsForApk(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5048
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5049
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 5052
    :cond_2b
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->findDigestsForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 5054
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5056
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->findSignatureForDigests(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 5058
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    return-void
.end method

.method public final install()Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 4032
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 4033
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {v1}, Lcom/android/server/pm/SessionMetrics;->onInternalInstallationStarted()V

    .line 4034
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    .line 4037
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->installNonStaged()Ljava/util/List;

    move-result-object v0

    .line 4038
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/concurrent/CompletableFuture;

    .line 4039
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :catchall_27
    move-exception p0

    .line 4034
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final installNonStaged()Ljava/util/List;
    .registers 7

    .line 4101
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4102
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4104
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->createInstallingSession(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    .line 4105
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 4106
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p0

    .line 4107
    new-instance v2, Ljava/util/ArrayList;

    .line 4108
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 4109
    :goto_25
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_45

    .line 4110
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 4111
    new-instance v5, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4112
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4114
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->createInstallingSession(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallingSession;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 4116
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 4119
    :cond_45
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_57

    .line 4120
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallingSession;->installStage(Ljava/util/List;)V

    return-object v0

    :cond_52
    if-eqz v1, :cond_57

    .line 4123
    invoke-virtual {v1}, Lcom/android/server/pm/InstallingSession;->installStage()V
    :try_end_57
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_57} :catch_58

    :cond_57
    return-object v0

    :catch_58
    move-exception p0

    .line 4128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4129
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isApexSession()Z
    .registers 2

    .line 4371
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationEnabledSettingPersistent()Z
    .registers 1

    .line 6291
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    return p0
.end method

.method public final isArchivedInstallation()Z
    .registers 1

    .line 1043
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation(I)Z

    move-result p0

    return p0
.end method

.method public isCommitted()Z
    .registers 1

    .line 1567
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final isDataLoaderInstallation()Z
    .registers 1

    .line 1027
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result p0

    return p0
.end method

.method public isDestroyed()Z
    .registers 2

    .line 1572
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1573
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1574
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isInTerminalState()Z
    .registers 3

    .line 1578
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1579
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    if-nez v1, :cond_10

    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz p0, :cond_c

    goto :goto_10

    :cond_c
    const/4 p0, 0x0

    goto :goto_11

    :catchall_e
    move-exception p0

    goto :goto_13

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    monitor-exit v0

    return p0

    .line 1580
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_e

    throw p0
.end method

.method public final isIncrementalInstallation()Z
    .registers 2

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final isInstallationAllowed(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_36

    .line 2522
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_36

    .line 2525
    :cond_a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isUpdatableSystem()Z

    move-result v1

    if-eqz v1, :cond_15

    return v0

    .line 2528
    :cond_15
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-nez p0, :cond_34

    .line 2529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Overriding updatableSystem because the installer is root: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2529
    const-string p1, "PackageInstallerSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_34
    const/4 p0, 0x0

    return p0

    :cond_36
    :goto_36
    return v0
.end method

.method public final isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z
    .registers 4

    .line 1050
    const-string v0, "isInstallerDeviceOwnerOrAffiliatedProfileOwner"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    .line 1051
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    return v2

    .line 1054
    :cond_13
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1055
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_2d

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1058
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    return v2
.end method

.method public isMultiPackage()Z
    .registers 1

    .line 5713
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return p0
.end method

.method public isPreapprovalRequested()Z
    .registers 1

    .line 1562
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isRequestUpdateOwnership()Z
    .registers 2

    .line 6296
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isSealed()Z
    .registers 2

    .line 1555
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1556
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1557
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isSessionApplied()Z
    .registers 2

    .line 6446
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6447
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 6448
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isSessionFailed()Z
    .registers 2

    .line 6453
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6454
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 6455
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isSessionReady()Z
    .registers 2

    .line 6439
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6440
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 6441
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isStaged()Z
    .registers 1

    .line 5718
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    return p0
.end method

.method public isStagedAndInTerminalState()Z
    .registers 2

    .line 1585
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isStreamingInstallation()Z
    .registers 2

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    return v0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemDataLoaderInstallation()Z
    .registers 1

    .line 1039
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result p0

    return p0
.end method

.method public final isVerificationServiceEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$abandon$12()V
    .registers 4

    .line 5685
    const-string v0, "abandonStaged"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    .line 5686
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5687
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->abortCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 5689
    :cond_18
    const-string v0, "Session was abandoned"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, -0x73

    .line 5690
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 5691
    const-string v0, "Session was abandoned because the parent session is abandoned"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$doWriteInternal$0(Landroid/system/Int64Ref;J)V
    .registers 8

    .line 2186
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 2187
    iget-wide v0, p1, Landroid/system/Int64Ref;->value:J

    sub-long v0, p2, v0

    .line 2188
    iput-wide p2, p1, Landroid/system/Int64Ref;->value:J

    .line 2189
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2190
    :try_start_13
    iget p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    long-to-float p3, v0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    long-to-float v0, v0

    div-float/2addr p3, v0

    add-float/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 2192
    monitor-exit p1

    return-void

    :catchall_22
    move-exception p0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    return-void
.end method

.method public final synthetic lambda$install$9(Ljava/util/List;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 8

    if-nez p3, :cond_80

    .line 4041
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionApplied()V

    .line 4042
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4043
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result p3

    const-string v0, "android.content.pm.extra.WARNINGS"

    if-eqz p3, :cond_3e

    .line 4045
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_16
    :goto_16
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CompletableFuture;

    .line 4046
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    .line 4047
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    if-eq v2, p0, :cond_16

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_16

    .line 4048
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4050
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 4051
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    .line 4056
    :cond_3e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CompletableFuture;

    .line 4057
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    .line 4058
    iget-object v1, p3, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->extras:Landroid/os/Bundle;

    .line 4059
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-eqz v2, :cond_70

    iget-object v2, p3, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    if-ne v2, p0, :cond_70

    .line 4060
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_70

    if-nez v1, :cond_6d

    .line 4062
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4064
    :cond_6d
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4067
    :cond_70
    iget-object v2, p3, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->appendDeveloperVerificationExtensionResponse(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 4068
    iget-object p3, p3, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    const/4 v2, 0x1

    const-string v3, "Session installed"

    invoke-virtual {p3, v2, v3, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_42

    :cond_7f
    return-void

    .line 4072
    :cond_80
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageManagerException;

    const/4 p2, 0x0

    .line 4073
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->appendDeveloperVerificationExtensionResponse(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 4074
    iget p3, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 4075
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4074
    invoke-virtual {p0, p3, v0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 4076
    iget p3, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 4077
    iget p2, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onSystemDataLoaderUnrecoverable$1(Ljava/lang/String;)V
    .registers 9

    .line 2772
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_25

    .line 2776
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to uninstall package with failed dataloader: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstallerSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public final synthetic lambda$performDeveloperVerification$3(Ljava/util/List;Ljava/lang/Void;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;
    .registers 3

    .line 3181
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->mergeDeveloperVerificationResults(Ljava/util/List;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$reportUnarchivalStatus$14(IJLandroid/app/PendingIntent;)V
    .registers 15

    .line 6497
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 6498
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 6499
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getUnarchivalListeners()Ljava/util/Set;

    move-result-object v8

    iget v9, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move v2, p1

    move-wide v5, p2

    move-object v7, p4

    .line 6497
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/PackageArchiver;->notifyUnarchivalListener(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/util/Set;I)V

    return-void
.end method

.method public final synthetic lambda$runExtractNativeLibraries$6()V
    .registers 4

    .line 3362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_3} :catch_2f
    .catchall {:try_start_0 .. :try_end_3} :catchall_2d

    .line 3363
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {v1}, Lcom/android/server/pm/SessionMetrics;->onNativeLibExtractionStarted()V

    .line 3364
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_51

    .line 3365
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 3366
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 3368
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->prepareExtractNativeLibraries()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 3370
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Ljava/io/File;)V

    goto :goto_17

    :catchall_2d
    move-exception v0

    goto :goto_76

    :catch_2f
    move-exception v0

    goto :goto_54

    .line 3374
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareExtractNativeLibraries()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 3376
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Ljava/io/File;)V

    .line 3379
    :cond_3a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_44
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9 .. :try_end_44} :catch_2f
    .catchall {:try_start_9 .. :try_end_44} :catchall_2d

    .line 3386
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 3387
    :try_start_47
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onNativeLibExtractionFinished()V

    .line 3388
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_4e

    throw p0

    :catchall_51
    move-exception v1

    .line 3364
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v1
    :try_end_54
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_53 .. :try_end_54} :catch_2f
    .catchall {:try_start_53 .. :try_end_54} :catchall_2d

    .line 3381
    :goto_54
    :try_start_54
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 3382
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v2, v1}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3383
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 3384
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_69
    .catchall {:try_start_54 .. :try_end_69} :catchall_2d

    .line 3386
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 3387
    :try_start_6c
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onNativeLibExtractionFinished()V

    .line 3388
    monitor-exit v0

    return-void

    :catchall_73
    move-exception p0

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_73

    throw p0

    .line 3386
    :goto_76
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v1

    .line 3387
    :try_start_79
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onNativeLibExtractionFinished()V

    .line 3388
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_80

    .line 3389
    throw v0

    :catchall_80
    move-exception p0

    .line 3388
    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public final synthetic lambda$verifyNonStaged$7(ILjava/lang/String;)V
    .registers 5

    .line 4000
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 4001
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {v1}, Lcom/android/server/pm/SessionMetrics;->onSessionVerificationFinished()V

    .line 4002
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 4003
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchPendingAbandonCallback()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 4008
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->onVerificationComplete()V

    return-void

    :cond_17
    const/4 v0, 0x0

    .line 4010
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catchall_1c
    move-exception p0

    .line 4002
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final synthetic lambda$verifyNonStaged$8(ILjava/lang/String;)V
    .registers 5

    .line 3999
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 5379
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getIncrementalFileStorages()Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 5380
    invoke-virtual {v0, p2, p3, p4}, Landroid/os/incremental/IncrementalFileStorages;->makeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :catch_d
    move-exception p0

    goto :goto_15

    .line 5384
    :cond_f
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_14} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_d

    return-void

    .line 5386
    :goto_15
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed linkOrCreateDir("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final linkFiles(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .registers 9

    .line 5393
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 5394
    invoke-static {v1, p4}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 5395
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 5396
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 5398
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 5401
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Linked "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " files into "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstallerSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logDataLoaderInstallationSession(I)V
    .registers 13

    .line 4310
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4312
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_e

    move-object v4, v0

    goto :goto_11

    :cond_e
    const-string v1, ""

    move-object v4, v1

    .line 4313
    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1b

    const/4 v3, -0x1

    :goto_19
    move v10, v3

    goto :goto_2a

    .line 4319
    :cond_1b
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const-wide/16 v5, 0x0

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v3, v0, v5, v6, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    goto :goto_19

    .line 4322
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v3

    iget-wide v5, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long v5, v1, v5

    .line 4326
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->getApksSize(Ljava/lang/String;)J

    move-result-wide v8

    const/16 v2, 0x107

    move v7, p1

    .line 4321
    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JIJI)V

    return-void
.end method

.method public final markAsPreapprovalRequested()V
    .registers 2

    .line 6286
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final markAsSealed(Landroid/content/IntentSender;Z)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 2563
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v0

    :goto_e
    const-string/jumbo v3, "statusReceiver can\'t be null for the root session"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2565
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2567
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2568
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commit of session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 2569
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 2572
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v4, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 2573
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v3, :cond_41

    move v3, v1

    goto :goto_45

    .line 2579
    :cond_41
    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    move-result v3

    :goto_45
    if-eqz v3, :cond_5e

    .line 2582
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 2583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->isSecureFrpInstallAllowed(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_54

    goto :goto_5e

    .line 2584
    :cond_54
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can\'t install packages while in secure FRP"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_5c
    move-exception p0

    goto :goto_95

    :cond_5e
    :goto_5e
    if-eqz p2, :cond_77

    .line 2588
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    iget p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq p2, v3, :cond_6f

    goto :goto_7d

    .line 2590
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Session has not been transferred"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2593
    :cond_77
    iget p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-ne p2, v3, :cond_8d

    .line 2598
    :goto_7d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->setRemoteStatusReceiver(Landroid/content/IntentSender;)V

    .line 2601
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz p1, :cond_86

    .line 2602
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_1a .. :try_end_85} :catchall_5c

    return v0

    .line 2606
    :cond_86
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V
    :try_end_89
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_86 .. :try_end_89} :catch_8b
    .catchall {:try_start_86 .. :try_end_89} :catchall_5c

    .line 2610
    :try_start_89
    monitor-exit v2

    return v0

    .line 2608
    :catch_8b
    monitor-exit v2

    return v1

    .line 2594
    :cond_8d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Session has been transferred"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2610
    :goto_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_5c

    throw p0
.end method

.method public final markStageDirInUseLocked()V
    .registers 3

    .line 3915
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 3921
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    return-void

    .line 3916
    :cond_8
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x6e

    const-string v1, "Session destroyed"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public markUpdated()V
    .registers 4

    .line 2840
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2841
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 2842
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final mayInheritNativeLibs()Z
    .registers 4

    .line 4362
    const-string/jumbo v0, "pi.inherit_native_on_dont_kill"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_17

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_17

    return v1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeFinishChildSessions(ILjava/lang/String;)V
    .registers 5

    .line 5638
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v1, 0x0

    .line 5639
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_19
    return-void
.end method

.method public final maybeInheritV4SignatureLocked(Ljava/io/File;)V
    .registers 4

    .line 5033
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".idsig"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5034
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 5035
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public final maybeStageArtManagedInstallFilesLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;)V
    .registers 8

    .line 4929
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 4928
    invoke-static {p3, p1}, Lcom/android/server/art/ArtManagedInstallFileHelper;->filterPathsForApk(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4930
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4931
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 4935
    new-instance v2, Ljava/io/File;

    .line 4936
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/art/ArtManagedInstallFileHelper;->getTargetPathForApk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4937
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 4938
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    .line 4940
    :goto_3e
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 4941
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 4942
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 4932
    :cond_5a
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid filename: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x2

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_72
    return-void
.end method

.method public final maybeStageDigestsLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    .line 4968
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    if-nez p3, :cond_f

    goto :goto_1f

    .line 4972
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4974
    invoke-virtual {p3}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getChecksums()[Landroid/content/pm/Checksum;

    move-result-object p1

    .line 4975
    array-length v0, p1

    if-nez v0, :cond_20

    :goto_1f
    return-void

    .line 4979
    :cond_20
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4980
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4981
    :try_start_2f
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_75
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2f .. :try_end_34} :catch_73
    .catch Ljava/security/SignatureException; {:try_start_2f .. :try_end_34} :catch_73

    .line 4982
    :try_start_34
    invoke-static {v1, p1}, Lcom/android/server/pm/ApkChecksums;->writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V

    .line 4984
    invoke-virtual {p3}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getSignature()[B

    move-result-object p3

    if-eqz p3, :cond_46

    .line 4985
    array-length v2, p3

    if-lez v2, :cond_46

    .line 4986
    invoke-static {p1, p3}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;

    goto :goto_46

    :catchall_44
    move-exception p1

    goto :goto_77

    .line 4990
    :cond_46
    :goto_46
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 4991
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 4990
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/pm/PackageInstallerSession;->storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 4992
    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    if-eqz p3, :cond_6f

    .line 4995
    array-length p1, p3

    if-nez p1, :cond_5a

    goto :goto_6f

    .line 4999
    :cond_5a
    invoke-static {p2}, Lcom/android/server/pm/ApkChecksums;->buildSignaturePathForDigests(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5001
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5003
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 5002
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/PackageInstallerSession;->storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 5004
    invoke-virtual {p0, p2, p2}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V
    :try_end_6f
    .catchall {:try_start_34 .. :try_end_6f} :catchall_44

    .line 5005
    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_75
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6f .. :try_end_72} :catch_73
    .catch Ljava/security/SignatureException; {:try_start_6f .. :try_end_72} :catch_73

    return-void

    :catch_73
    move-exception p1

    goto :goto_80

    :catch_75
    move-exception p1

    goto :goto_9b

    .line 4981
    :goto_77
    :try_start_77
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7f

    :catchall_7b
    move-exception p2

    :try_start_7c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7f
    throw p1
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_75
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7c .. :try_end_80} :catch_73
    .catch Ljava/security/SignatureException; {:try_start_7c .. :try_end_80} :catch_73

    .line 5009
    :goto_80
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to verify digests\' signature for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p3, -0x67

    invoke-direct {p2, p3, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 5006
    :goto_9b
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to store digests for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, -0x4

    invoke-direct {p2, p3, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final maybeStageV4SignatureLocked(Ljava/io/File;Ljava/io/File;)V
    .registers 6

    .line 4918
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".idsig"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4919
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 4920
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4921
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    :cond_3b
    return-void
.end method

.method public final mergeDeveloperVerificationResults(Ljava/util/List;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;
    .registers 11

    .line 3193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 3194
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 3196
    :try_start_d
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_1c} :catch_1c
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_1c} :catch_1c

    :catch_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3201
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v2, p1, :cond_2e

    .line 3203
    const-string p1, "Session failed due to missing developer verification result"

    invoke-virtual {p0, v1, v1, p1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailedDueToDeveloperVerification(IZLjava/lang/String;)V

    :cond_2e
    const/4 p1, 0x0

    move-object v3, p1

    move v2, v1

    move v4, v2

    .line 3211
    :goto_32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_59

    .line 3212
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    .line 3213
    iget-boolean v7, v5, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->mSuccess:Z

    if-nez v7, :cond_56

    if-nez v3, :cond_4b

    .line 3217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_50

    .line 3219
    :cond_4b
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3221
    :goto_50
    iget-object v4, v5, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->mFailedMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v6

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 3228
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    move v2, v1

    move v5, v2

    .line 3229
    :goto_5f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_87

    .line 3230
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 3231
    iget-object v8, v7, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    invoke-virtual {v8}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->isLiteVerification()Z

    move-result v8

    if-eqz v8, :cond_74

    move v5, v6

    .line 3234
    :cond_74
    iget-object v8, v7, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationExtensionResponse:Landroid/os/PersistableBundle;

    if-eqz v8, :cond_84

    if-nez p1, :cond_7f

    .line 3236
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    .line 3238
    :cond_7f
    iget-object v7, v7, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationExtensionResponse:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v7}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 3241
    :cond_87
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->setLiteVerification(Z)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 3242
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationExtensionResponse:Landroid/os/PersistableBundle;

    if-eqz v4, :cond_99

    .line 3248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3246
    invoke-static {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofFailure(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p0

    return-object p0

    .line 3250
    :cond_99
    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p0

    return-object p0
.end method

.method public onAfterSessionRead(Landroid/util/SparseArray;)V
    .registers 8

    .line 2797
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2799
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_42

    .line 2800
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2801
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v3, :cond_24

    .line 2803
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_3f

    :catchall_21
    move-exception p0

    goto/16 :goto_9a

    .line 2805
    :cond_24
    const-string v3, "PackageInstallerSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Child session not existed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2810
    :cond_42
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v1, :cond_98

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_21

    if-eqz v1, :cond_4d

    goto :goto_98

    .line 2814
    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V

    .line 2819
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_8d

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_63

    goto :goto_8d

    .line 2822
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 2823
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    goto :goto_77

    :catch_74
    move-exception p0

    goto :goto_8f

    :cond_76
    move-object p1, p0

    :goto_77
    if-eqz p1, :cond_96

    .line 2825
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result p1

    if-nez p1, :cond_96

    .line 2826
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result p1

    if-eqz p1, :cond_89

    .line 2827
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_96

    .line 2829
    :cond_89
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;
    :try_end_8c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4d .. :try_end_8c} :catch_74
    .catchall {:try_start_4d .. :try_end_8c} :catchall_21

    goto :goto_96

    .line 2820
    :cond_8d
    :goto_8d
    :try_start_8d
    monitor-exit v0

    return-void

    .line 2833
    :goto_8f
    const-string p1, "PackageInstallerSession"

    const-string v1, "Package not valid"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2835
    :cond_96
    :goto_96
    monitor-exit v0

    return-void

    .line 2811
    :cond_98
    :goto_98
    monitor-exit v0

    return-void

    .line 2835
    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_8d .. :try_end_9b} :catchall_21

    throw p0
.end method

.method public final onConnectionEstablished()V
    .registers 2

    .line 3395
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 3396
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerifierConnectionEstablished()V

    .line 3397
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onSessionDependencyResolveFailure(ILjava/lang/String;)V
    .registers 5

    .line 2758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to resolve dependency for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2759
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->appendDeveloperVerificationExtensionResponse(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2761
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2762
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    return-void
.end method

.method public onSessionExpired()V
    .registers 2

    .line 6985
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 6986
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onSessionExpired()V

    .line 6987
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;
    .registers 4

    .line 2730
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    return-object p1
.end method

.method public final onSessionValidationFailure(ILjava/lang/String;)V
    .registers 5

    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to validate session, error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2738
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSessionVerificationFailure(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 2742
    const-string v0, "PackageInstallerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to verify session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_39

    .line 2744
    const-string v0, "android.content.pm.extra.DEVELOPER_VERIFICATION_FAILURE_REASON"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2745
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2746
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v1

    .line 2747
    :try_start_29
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    const-string v3, "android.content.pm.extra.DEVELOPER_VERIFICATION_FAILURE_REASON"

    .line 2748
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2747
    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationFailed(ILjava/lang/String;)V

    .line 2749
    monitor-exit v1

    goto :goto_39

    :catchall_36
    move-exception p0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw p0

    .line 2751
    :cond_39
    :goto_39
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageInstallerSession;->appendDeveloperVerificationExtensionResponse(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 2753
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2754
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    return-void
.end method

.method public final onSystemDataLoaderUnrecoverable()V
    .registers 4

    .line 2766
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2767
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 2771
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onVerificationComplete()V
    .registers 5

    .line 4149
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 4150
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4151
    const-string v3, "Session staged"

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;Z)V

    return-void

    .line 4156
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    if-eqz v0, :cond_2b

    .line 4158
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 4159
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDependencyInstallerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4160
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveLibraryDependenciesIfNeeded()V

    return-void

    .line 4162
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public open()V
    .registers 4

    .line 5581
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->activate()V

    .line 5583
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5584
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-nez v1, :cond_27

    .line 5586
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v2, :cond_14

    .line 5587
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    goto :goto_1a

    :catchall_12
    move-exception p0

    goto :goto_30

    .line 5588
    :cond_14
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v2, :cond_1e

    :goto_1a
    const/4 v2, 0x1

    .line 5594
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    goto :goto_27

    .line 5591
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stageDir must be set"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5596
    :cond_27
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_12

    if-nez v1, :cond_2f

    .line 5599
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V

    :cond_2f
    return-void

    .line 5596
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_12

    throw p0
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 2226
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2230
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2231
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2232
    :try_start_c
    const-string/jumbo v1, "openRead"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_18

    .line 2234
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_1a
    .catchall {:try_start_12 .. :try_end_16} :catchall_18

    :try_start_16
    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    goto :goto_20

    :catch_1a
    move-exception p0

    .line 2236
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 2238
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_18

    throw p0

    .line 2227
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot read regular files in a data loader installation session."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 2244
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2247
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2248
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget p1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p0

    .line 2249
    new-instance p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object p1

    .line 2245
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_35
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_35} :catch_35

    :catch_35
    move-exception p0

    .line 2251
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final openTargetInternal(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 2111
    invoke-static {p1, p2, p3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p0

    .line 2112
    new-instance p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object p1
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .registers 14

    const/4 v0, 0x0

    .line 2056
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2058
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception v0

    move-object p0, v0

    .line 2060
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public openWriteAppMetadata()Landroid/os/ParcelFileDescriptor;
    .registers 10

    .line 2038
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2039
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2040
    :try_start_6
    const-string/jumbo v0, "openWriteAppMetadata"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 2041
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_2c

    .line 2043
    :try_start_d
    const-string v3, "app.metadata"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 2045
    iget-object v1, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_25

    const/4 v0, 0x1

    .line 2046
    :try_start_1d
    iput-boolean v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 2047
    monitor-exit v1

    return-object p0

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_21

    :try_start_24
    throw p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception v0

    move-object p0, v0

    .line 2050
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_2c
    move-exception v0

    move-object p0, v0

    .line 2041
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2c

    throw p0
.end method

.method public final parseApk()V
    .registers 4

    .line 3925
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3926
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_61

    .line 3930
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_59

    .line 3934
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v1, :cond_51

    .line 3938
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 3942
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    if-eqz v1, :cond_41

    .line 3946
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v1, :cond_39

    .line 3951
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2f

    .line 3957
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    goto :goto_37

    :catchall_2d
    move-exception p0

    goto :goto_69

    .line 3959
    :cond_2f
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 3961
    :goto_37
    monitor-exit v0

    return-void

    .line 3947
    :cond_39
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session no resolved base file"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3943
    :cond_41
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session no signing data"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3939
    :cond_49
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session no package name"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3935
    :cond_51
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session not sealed"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3931
    :cond_59
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session destroyed"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3927
    :cond_61
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session files in use"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3961
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_2d

    throw p0
.end method

.method public final performDeveloperVerification()V
    .registers 7

    .line 3165
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 3168
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 3169
    new-instance v2, Ljava/util/ArrayList;

    .line 3170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v1

    .line 3171
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 3172
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 3173
    new-instance v5, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3175
    invoke-virtual {v4, v5, v1}, Lcom/android/server/pm/PackageInstallerSession;->startDeveloperVerificationSession(Ljava/util/concurrent/CompletableFuture;Z)V

    .line 3176
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 3179
    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/concurrent/CompletableFuture;

    .line 3180
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    goto :goto_51

    .line 3184
    :cond_49
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3185
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->startDeveloperVerificationSession(Ljava/util/concurrent/CompletableFuture;Z)V

    .line 3187
    :goto_51
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final prepareDataLoaderLocked()Z
    .registers 22

    move-object/from16 v1, p0

    .line 5798
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    return v2

    .line 5801
    :cond_a
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    if-eqz v0, :cond_f

    return v2

    .line 5805
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5806
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5808
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v0

    .line 5809
    array-length v2, v0

    const/4 v13, 0x0

    move v3, v13

    :goto_20
    if-ge v3, v2, :cond_6a

    aget-object v5, v0, v3

    .line 5810
    sget-object v7, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 5811
    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getData()Landroid/content/pm/InstallationFileParcel;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 5814
    :cond_3f
    sget-object v7, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 5815
    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v7

    .line 5816
    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x8

    .line 5815
    invoke-virtual {v7, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 5817
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 5821
    :cond_6a
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 5822
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v7

    xor-int/lit8 v3, v7, 0x1

    .line 5823
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation()Z

    move-result v2

    .line 5824
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$8;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageInstallerSession$8;-><init>(Lcom/android/server/pm/PackageInstallerSession;ZZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V

    if-eqz v7, :cond_fe

    .line 5917
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5918
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageManagerService;->getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object v11

    .line 5920
    new-instance v8, Landroid/os/incremental/StorageHealthCheckParams;

    invoke-direct {v8}, Landroid/os/incremental/StorageHealthCheckParams;-><init>()V

    const/16 v3, 0x7d0

    .line 5921
    iput v3, v8, Landroid/os/incremental/StorageHealthCheckParams;->blockedTimeoutMs:I

    const/16 v3, 0x1b58

    .line 5922
    iput v3, v8, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyTimeoutMs:I

    const v3, 0xea60

    .line 5923
    iput v3, v8, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyMonitoringMs:I

    .line 5925
    new-instance v9, Lcom/android/server/pm/PackageInstallerSession$9;

    invoke-direct {v9, v1, v2}, Lcom/android/server/pm/PackageInstallerSession$9;-><init>(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 5953
    :try_start_a0
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move/from16 v20, v13

    const-wide/16 v13, 0x0

    .line 5954
    invoke-interface {v2, v3, v13, v14, v6}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_cc

    .line 5956
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_cc

    .line 5957
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_cd

    :catch_ca
    move-exception v0

    goto :goto_ee

    :cond_cc
    const/4 v2, 0x0

    .line 5959
    :goto_cd
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-nez v7, :cond_e5

    .line 5960
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    move-object v10, v4

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    new-instance v12, Lcom/android/server/pm/PackageInstallerSession$10;

    invoke-direct {v12, v1}, Lcom/android/server/pm/PackageInstallerSession$10;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    move-object v7, v0

    move-object v6, v5

    move-object v5, v2

    invoke-static/range {v3 .. v12}, Landroid/os/incremental/IncrementalFileStorages;->initialize(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;Ljava/util/List;[Landroid/os/incremental/PerUidReadTimeouts;Landroid/content/pm/IPackageLoadingProgressCallback;)Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    goto :goto_ed

    :cond_e5
    move-object v10, v8

    move-object v12, v11

    move-object v8, v5

    move-object v11, v9

    move-object v9, v0

    .line 5974
    invoke-virtual/range {v7 .. v12}, Landroid/os/incremental/IncrementalFileStorages;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ed} :catch_ca

    :goto_ed
    return v20

    .line 5979
    :goto_ee
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 5980
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/16 v15, -0x14

    invoke-direct {v1, v15, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_fe
    move/from16 v20, v13

    const/16 v15, -0x14

    .line 5985
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoaderManager()Landroid/content/pm/DataLoaderManager;

    move-result-object v14

    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v16

    const-wide/16 v17, 0x0

    move/from16 v19, v15

    move v15, v1

    move/from16 v1, v19

    move-object/from16 v19, v0

    invoke-virtual/range {v14 .. v19}, Landroid/content/pm/DataLoaderManager;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    move-result v0

    if-eqz v0, :cond_11c

    return v20

    .line 5987
    :cond_11c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Failed to initialize data loader"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final prepareExtractNativeLibraries()Ljava/io/File;
    .registers 7

    .line 3966
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3967
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3968
    monitor-exit v0

    return-object v2

    :catchall_a
    move-exception p0

    goto :goto_3f

    .line 3970
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3971
    monitor-exit v0

    return-object v2

    .line 3973
    :cond_14
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_a

    const/high16 v3, 0x3f000000    # 0.5f

    .line 3974
    :try_start_19
    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const/4 v3, 0x1

    .line 3975
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 3976
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_3c

    .line 3977
    :try_start_20
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-string v5, "lib"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3978
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v4

    if-nez v4, :cond_32

    .line 3980
    invoke-static {v1, v3}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 3983
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation()Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 3984
    monitor-exit v0

    return-object v2

    .line 3986
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_a

    return-object v1

    :catchall_3c
    move-exception p0

    .line 3976
    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw p0

    .line 3987
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_a

    throw p0
.end method

.method public final prepareInheritedFiles()V
    .registers 10

    .line 3846
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_107

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto/16 :goto_107

    .line 3849
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3850
    :try_start_12
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_fd

    .line 3854
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_f5

    .line 3858
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_55

    if-eqz v1, :cond_ed

    .line 3865
    :try_start_20
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 3866
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 3867
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3869
    const-string v4, "PackageInstallerSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inherited files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5b

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    if-eqz v4, :cond_4d

    goto :goto_5b

    .line 3871
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "mInheritedFilesBase == null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_55
    move-exception p0

    goto/16 :goto_105

    :catch_58
    move-exception p0

    goto/16 :goto_e4

    .line 3874
    :cond_5b
    :goto_5b
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 3875
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedOatSubDirs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_76

    .line 3876
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "oat"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3877
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedOatSubDirs:Ljava/util/List;

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)V

    .line 3880
    :cond_76
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d9

    .line 3881
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_84
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x2f

    .line 3883
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_c2

    .line 3884
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-lt v6, v7, :cond_a1

    goto :goto_c2

    .line 3890
    :cond_a1
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 3891
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3892
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_b3

    .line 3893
    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    :cond_b3
    add-int/lit8 v6, v6, 0x1

    .line 3895
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3896
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    goto :goto_84

    .line 3885
    :cond_c2
    :goto_c2
    const-string v6, "PackageInstallerSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping native library creation for linking due to invalid path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 3900
    :cond_d9
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    goto :goto_e2

    .line 3904
    :cond_df
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_e2} :catch_58
    .catchall {:try_start_20 .. :try_end_e2} :catchall_55

    .line 3910
    :goto_e2
    :try_start_e2
    monitor-exit v0

    return-void

    .line 3907
    :goto_e4
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Failed to inherit existing install"

    const/4 v3, -0x4

    invoke-direct {v1, v3, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3859
    :cond_ed
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session not sealed"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3855
    :cond_f5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session destroyed"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3851
    :cond_fd
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session files in use"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3910
    :goto_105
    monitor-exit v0
    :try_end_106
    .catchall {:try_start_e2 .. :try_end_106} :catchall_55

    throw p0

    :cond_107
    :goto_107
    return-void
.end method

.method public final processDeveloperVerificationResults(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;)V
    .registers 4

    .line 3256
    iget-boolean v0, p1, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->mSuccess:Z

    if-eqz v0, :cond_8

    .line 3257
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resumeVerify()V

    return-void

    .line 3259
    :cond_8
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->mVerificationFailureReason:I

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->mFailedMessage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailedDueToDeveloperVerification(IZLjava/lang/String;)V

    return-void
.end method

.method public registerUnarchivalListener(Landroid/content/IntentSender;)V
    .registers 3

    .line 6473
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6474
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6475
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final releaseTransactionLock()V
    .registers 3

    .line 6052
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public removeAppMetadata()V
    .registers 3

    .line 2018
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2019
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    if-eqz v1, :cond_14

    .line 2020
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedAppMetadataFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v1, 0x0

    .line 2021
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_16

    .line 2023
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_12

    throw p0
.end method

.method public removeChildSessionId(I)V
    .registers 5

    .line 6114
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6115
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 6116
    const-string/jumbo v1, "removeChildSessionId"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 6118
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_18

    .line 6121
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_3f

    .line 6123
    :cond_18
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_16

    .line 6125
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 6126
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    const/4 v2, -0x1

    .line 6127
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 6128
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_37

    .line 6130
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 6131
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 6133
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p1

    .line 6130
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 6131
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 6132
    throw p1

    .line 6133
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_16

    throw p0
.end method

.method public removeFile(ILjava/lang/String;)V
    .registers 13

    .line 5771
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeFile_enforcePermission()V

    .line 5772
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 5776
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 5780
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5781
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 5782
    const-string/jumbo v0, "removeFile"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 5784
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-instance v3, Landroid/content/pm/InstallationFile;

    .line 5785
    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v6, -0x1

    move v4, p1

    invoke-direct/range {v3 .. v9}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    .line 5784
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 5788
    monitor-exit v1

    return-void

    :catchall_40
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    .line 5786
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File already removed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5788
    :goto_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_16 .. :try_end_5b} :catchall_40

    throw p0

    .line 5777
    :cond_5c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must specify package name to remove a split"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5773
    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add files to non-data loader installation session."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeSplit(Ljava/lang/String;)V
    .registers 4

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1923
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1928
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1929
    :try_start_16
    const-string/jumbo v1, "removeSplit"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_21

    .line 1932
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_23
    .catchall {:try_start_1c .. :try_end_1f} :catchall_21

    .line 1936
    :try_start_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    goto :goto_29

    :catch_23
    move-exception p0

    .line 1934
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 1936
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_21

    throw p0

    .line 1924
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must specify package name to remove a split"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1920
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot remove splits in a data loader installation session."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reportUnarchivalStatus(IIJLandroid/app/PendingIntent;)V
    .registers 12

    .line 6486
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getUnarchivalStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 6493
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalStatus:I

    .line 6496
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;

    move-object v1, p0

    move v2, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageInstallerSession;IJLandroid/app/PendingIntent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_23

    .line 6501
    new-instance p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda2;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_23
    return-void

    .line 6487
    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 6491
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 6488
    const-string p2, "Unarchival status for ID %s has already been set or a session has been created for it already by the caller."

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 13

    .line 1903
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerRootOrVerifier()V

    .line 1904
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1906
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 1905
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1907
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    :goto_1c
    move-object v2, p1

    goto :goto_25

    .line 1908
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    goto :goto_1c

    .line 1910
    :goto_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->requestFileChecksums(Ljava/io/File;Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception v0

    move-object p0, v0

    .line 1913
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public requestUserPreapproval(Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/IntentSender;)V
    .registers 5

    .line 6235
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->validatePreapprovalRequest(Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/IntentSender;)V

    .line 6237
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isPreapprovalRequestAvailable()Z

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/16 v0, -0x81

    .line 6238
    const-string v1, "Request user pre-approval is currently not available."

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;Z)V

    return-void

    .line 6244
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchPreapprovalRequest()V

    return-void
.end method

.method public final resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .registers 6

    .line 5017
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 5020
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5021
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageV4SignatureLocked(Ljava/io/File;Ljava/io/File;)V

    .line 5025
    :cond_c
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageArtManagedInstallFilesLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;)V

    .line 5027
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageDigestsLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public final resolveLibraryDependenciesIfNeeded()V
    .registers 11

    .line 4168
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4169
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    .line 4171
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/InstallDependencyHelper;->getMissingSharedLibraries(Landroid/content/pm/parsing/PackageLite;)Ljava/util/List;

    move-result-object v2
    :try_end_10
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8 .. :try_end_10} :catch_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_15
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    :goto_10
    move-object v4, v2

    goto :goto_2c

    :catchall_12
    move-exception v0

    move-object p0, v0

    goto :goto_4d

    :catch_15
    move-exception v0

    goto :goto_19

    :catch_17
    move-exception v0

    goto :goto_28

    .line 4175
    :goto_19
    :try_start_19
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    .line 4177
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v4, -0x9

    invoke-direct {v3, v4, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 4175
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->handleDependencyResolutionFailure(Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_10

    .line 4173
    :goto_28
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->handleDependencyResolutionFailure(Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_10

    .line 4180
    :goto_2c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMissingSharedLibraryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4181
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4182
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/pm/PackageInstallerSession$6;

    invoke-direct {v9, p0}, Lcom/android/server/pm/PackageInstallerSession$6;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 4181
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallDependencyHelper;->resolveLibraryDependenciesIfNeeded(Ljava/util/List;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/Computer;ILandroid/os/Handler;Landroid/os/OutcomeReceiver;)V

    .line 4195
    monitor-exit v1

    return-void

    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_19 .. :try_end_4e} :catchall_12

    throw p0
.end method

.method public final resumeVerify()V
    .registers 3

    .line 3317
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    if-eqz v0, :cond_1d

    .line 3318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification is already in progress for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageInstallerSession"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    const/4 v0, 0x1

    .line 3321
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    .line 3323
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_2c

    .line 3324
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->verifySession()V

    return-void

    .line 3326
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    return-void
.end method

.method public final runExtractNativeLibraries()V
    .registers 3

    .line 3352
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda16;-><init>()V

    .line 3360
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-static {v1, v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public seal()V
    .registers 3

    .line 2365
    const-string/jumbo v0, "seal"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 2366
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2368
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealInternal()V

    .line 2369
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 2370
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->sealInternal()V
    :try_end_23
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9 .. :try_end_23} :catch_25

    goto :goto_14

    :cond_24
    return-void

    :catch_25
    move-exception p0

    .line 2373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Package is not valid"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final sealInternal()V
    .registers 2

    .line 2378
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2379
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V

    .line 2380
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final sealLocked()V
    .registers 3

    .line 2719
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 2720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sealing of session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2721
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    .line 2725
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method

.method public final sendDeveloperVerificationUserAction(ILjava/util/concurrent/CompletableFuture;)V
    .registers 6

    .line 3734
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;-><init>(Lcom/android/server/pm/PackageInstallerSession;ILjava/util/concurrent/CompletableFuture;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationUserActionState:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;

    .line 3737
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getDeveloperVerificationUserActionIntent()Landroid/content/Intent;

    move-result-object p2

    .line 3740
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3741
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    .line 3742
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 3743
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object v0

    goto :goto_24

    .line 3745
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object v0

    .line 3747
    :goto_24
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, v0, v2, p2}, Lcom/android/server/pm/PackageInstallerSession;->sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V

    .line 3749
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter p2

    .line 3750
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationUserActionRequired(I)V

    .line 3751
    monitor-exit p2

    return-void

    :catchall_35
    move-exception p0

    monitor-exit p2
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final sendPendingUserActionIntent(Landroid/content/IntentSender;)V
    .registers 5

    .line 4138
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPreapprovalRequested()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 4139
    :goto_f
    new-instance v1, Landroid/content/Intent;

    if-eqz v0, :cond_16

    .line 4140
    const-string v0, "android.content.pm.action.CONFIRM_PRE_APPROVAL"

    goto :goto_18

    .line 4141
    :cond_16
    const-string v0, "android.content.pm.action.CONFIRM_INSTALL"

    :goto_18
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4142
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4143
    const-string v0, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4144
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v0, p1, p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V

    return-void
.end method

.method public final sendPendingUserActionIntentIfNeeded(Z)Z
    .registers 3

    .line 2974
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2975
    const-string v0, "PackageInstallerSession#sendPendingUserActionIntentIfNeeded"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    :cond_b
    if-eqz p1, :cond_12

    .line 2979
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPreapprovalRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object p1

    goto :goto_16

    .line 2980
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object p1

    .line 2981
    :goto_16
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda15;-><init>(Landroid/content/IntentSender;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;Z)V
    .registers 7

    if-eqz p4, :cond_7

    .line 6199
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPreapprovalRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object p4

    goto :goto_b

    .line 6200
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object p4

    :goto_b
    if-eqz p4, :cond_3a

    .line 6205
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 6206
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6207
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6208
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 6209
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 6210
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 6211
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPreapprovalRequested()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 6212
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3a
    return-void
.end method

.method public sessionContains(Ljava/util/function/Predicate;)Z
    .registers 3

    .line 4375
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4376
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 4379
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4380
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object p0

    .line 4381
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_2d

    .line 4382
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 4383
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0

    :catchall_2d
    move-exception p0

    .line 4381
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V
    .registers 8

    .line 1848
    array-length v0, p2

    if-nez v0, :cond_4

    return-void

    .line 1852
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 1854
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_17

    .line 1857
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 1859
    :goto_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 1863
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1864
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1866
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 1867
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_ac

    if-eqz p3, :cond_61

    .line 1872
    array-length v0, p3

    if-eqz v0, :cond_61

    .line 1874
    :try_start_41
    invoke-static {p2, p3}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_44} :catch_45
    .catch Ljava/security/SignatureException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_61

    :catch_45
    move-exception p0

    .line 1876
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t verify signature: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1880
    :cond_61
    :goto_61
    array-length v0, p2

    const/4 v1, 0x0

    :goto_63
    if-ge v1, v0, :cond_81

    aget-object v2, p2, v1

    .line 1881
    invoke-virtual {v2}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v3

    if-eqz v3, :cond_79

    .line 1882
    invoke-virtual {v2}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x40

    if-gt v2, v3, :cond_79

    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 1883
    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid checksum."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1887
    :cond_81
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1888
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1889
    :try_start_87
    const-string v1, "addChecksums"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 1891
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 1895
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    invoke-direct {v1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;-><init>([Landroid/content/pm/Checksum;[B)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    monitor-exit v0

    return-void

    :catchall_a0
    move-exception p0

    goto :goto_aa

    .line 1892
    :cond_a2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Duplicate checksums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1896
    :goto_aa
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_87 .. :try_end_ab} :catchall_a0

    throw p0

    .line 1869
    :cond_ac
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t obtain calling installer\'s package."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1860
    :cond_b4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Installer package is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setClientProgress(F)V
    .registers 3

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1645
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1646
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 1647
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final setClientProgressLocked(F)V
    .registers 4

    .line 1637
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1638
    :goto_a
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 1639
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    return-void
.end method

.method public setParentSessionId(I)V
    .registers 5

    .line 6141
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_30

    .line 6142
    :try_start_6
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v2, v1, :cond_b

    goto :goto_30

    .line 6144
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The parent of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is alreadyset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2e
    move-exception p0

    goto :goto_34

    .line 6147
    :cond_30
    :goto_30
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 6148
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_2e

    throw p0
.end method

.method public setPermissionsResult(Z)V
    .registers 4

    .line 5464
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPreapprovalRequested()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 5465
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must be sealed to accept permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5468
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 5469
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {v1}, Lcom/android/server/pm/SessionMetrics;->onUserResponseReceived()V

    .line 5470
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_68

    .line 5474
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5475
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    goto :goto_36

    :cond_35
    move-object v0, p0

    :goto_36
    if-eqz p1, :cond_55

    .line 5479
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x1

    .line 5480
    :try_start_3c
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 5481
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_52

    .line 5482
    iget-object p1, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 5483
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result p0

    if-eqz p0, :cond_49

    const/4 p0, 0x3

    goto :goto_4a

    :cond_49
    const/4 p0, 0x6

    .line 5482
    :goto_4a
    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 5483
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_52
    move-exception p0

    .line 5481
    :try_start_53
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0

    .line 5485
    :cond_55
    const-string p0, "User rejected permissions"

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    .line 5486
    const-string p0, "User rejected permissions"

    const/4 p1, 0x0

    const/16 v1, -0x73

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 5487
    const-string p0, "User rejected permissions"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    return-void

    :catchall_68
    move-exception p0

    .line 5470
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public setPreVerifiedDomains(Landroid/content/pm/verify/domain/DomainSet;)V
    .registers 8

    .line 6302
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_48

    .line 6305
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6306
    const-string v1, "android.permission.ACCESS_INSTANT_APPS"

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_40

    .line 6311
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 6317
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_48

    .line 6318
    :cond_30
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the instant app installer can call this API."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6314
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Instant app installer is not available. Only the instant app installer can call this API."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6308
    :cond_40
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need android.permission.ACCESS_INSTANT_APPS permission to set pre-verified domains."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6322
    :cond_48
    :goto_48
    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession;->getPreVerifiedDomainsCountLimit()J

    move-result-wide v0

    .line 6323
    invoke-virtual {p1}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_ad

    .line 6328
    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession;->getPreVerifiedDomainLengthLimit()J

    move-result-wide v0

    .line 6329
    invoke-virtual {p1}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6330
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_7b

    goto :goto_65

    .line 6331
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-verified domain: ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] exceeds maximum length allowed: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6337
    :cond_9a
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6338
    :try_start_9d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 6339
    const-string/jumbo v0, "setPreVerifiedDomains"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 6340
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 6341
    monitor-exit v2

    return-void

    :catchall_aa
    move-exception p0

    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_9d .. :try_end_ac} :catchall_aa

    throw p0

    .line 6324
    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of pre-verified domains have exceeded the maximum of "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPreapprovalRemoteStatusReceiver(Landroid/content/IntentSender;)V
    .registers 3

    .line 3837
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3838
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 3839
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final setRemoteStatusReceiver(Landroid/content/IntentSender;)V
    .registers 3

    .line 3825
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3826
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 3827
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final setSessionApplied()V
    .registers 5

    .line 6423
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6425
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_44

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz v1, :cond_c

    goto :goto_44

    :cond_c
    const/4 v1, 0x0

    .line 6426
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    const/4 v2, 0x1

    .line 6427
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 6428
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 6429
    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 6430
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 6431
    const-string v1, "PackageInstallerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as applied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6432
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_42

    const/4 v0, 0x0

    .line 6433
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    .line 6434
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void

    :catchall_42
    move-exception p0

    goto :goto_46

    .line 6425
    :cond_44
    :goto_44
    :try_start_44
    monitor-exit v0

    return-void

    .line 6432
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_42

    throw p0
.end method

.method public setSessionFailed(ILjava/lang/String;)V
    .registers 6

    .line 6408
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6410
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_55

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz v1, :cond_c

    goto :goto_55

    :cond_c
    const/4 v1, 0x0

    .line 6411
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 6412
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    const/4 v1, 0x1

    .line 6413
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 6414
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 6415
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 6416
    const-string p1, "PackageInstallerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6417
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_53

    .line 6418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session marked as failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    .line 6419
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void

    :catchall_53
    move-exception p0

    goto :goto_57

    .line 6410
    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v0

    return-void

    .line 6417
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_53

    throw p0
.end method

.method public final setSessionFailedDueToDeveloperVerification(IZLjava/lang/String;)V
    .registers 8

    .line 3757
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3758
    const-string v1, "android.content.pm.extra.DEVELOPER_VERIFICATION_FAILURE_REASON"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3759
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 3760
    invoke-virtual {v2}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->isLiteVerification()Z

    move-result v2

    .line 3759
    const-string v3, "android.content.pm.extra.DEVELOPER_VERIFICATION_LITE_PERFORMED"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_2c

    .line 3762
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getDeveloperVerificationUserActionIntent()Landroid/content/Intent;

    move-result-object p2

    .line 3763
    const-string v2, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3764
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3766
    const-string p1, "android.intent.extra.INTENT"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2c
    const/16 p1, -0x16

    .line 3768
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 3769
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setSessionReady()V
    .registers 3

    .line 6395
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6397
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz v1, :cond_c

    goto :goto_23

    :cond_c
    const/4 v1, 0x1

    .line 6398
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    const/4 v1, 0x0

    .line 6399
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 6400
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 6401
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 6402
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 6403
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 6404
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 6397
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v0

    return-void

    .line 6403
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public setVerificationUserResponse(I)V
    .registers 3

    .line 5498
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 5499
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 5500
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public shouldAllowDeveloperVerificationEmergencyBypass(Ljava/lang/String;)Z
    .registers 10

    .line 3074
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-virtual {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->getVerifierPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-nez p1, :cond_d

    return v1

    .line 3083
    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const/16 v3, 0x3e8

    .line 3084
    invoke-interface {v2, p1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_ba

    .line 3085
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v4

    if-nez v4, :cond_23

    goto/16 :goto_ba

    .line 3090
    :cond_23
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService;->getSystemAppUpdateOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2c

    return v1

    .line 3096
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_33

    return v1

    .line 3100
    :cond_33
    invoke-interface {v2, v4, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_ba

    .line 3102
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-nez v6, :cond_41

    goto/16 :goto_ba

    .line 3106
    :cond_41
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/server/pm/PackageInstallerSession;->hasSystemInstallerPermissions(Lcom/android/server/pm/Computer;I)Z

    move-result v6

    if-nez v6, :cond_4c

    return v1

    .line 3111
    :cond_4c
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x1

    const-string v7, "PackageInstallerSession"

    if-eqz v0, :cond_61

    .line 3112
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3113
    const-string p0, "Bypassing developer verification because the verifier is being updated."

    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 3118
    :cond_61
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3119
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3120
    const-string p0, "Bypassing developer verification because the update-owner of the verifier which is specified in the sysconfig is being updated."

    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 3124
    :cond_73
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getEmergencyInstaller()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7e

    return v1

    .line 3131
    :cond_7e
    invoke-interface {v2, v0, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-eqz v3, :cond_ba

    .line 3134
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-nez v5, :cond_8b

    goto :goto_ba

    .line 3139
    :cond_8b
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 3138
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->hasEmergencyInstallerPermission(Lcom/android/server/pm/Computer;I)Z

    move-result v2

    if-nez v2, :cond_96

    return v1

    .line 3144
    :cond_96
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 3145
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 3146
    const-string p0, "Bypassing developer verification because the emergency installer of the update-owner of the verifier which is specified in the sysconfig is being updated."

    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 3153
    :cond_a8
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 3154
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_ba

    .line 3155
    const-string p0, "Bypassing developer verification because the update-owner of the verifier which is specified in the sysconfig is being updated by its emergency installer."

    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_ba
    :goto_ba
    return v1
.end method

.method public final shouldScrubData(I)Z
    .registers 3

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_c

    .line 1425
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p0

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldSendUserActionForVerification(Z)Z
    .registers 8

    .line 3699
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 3700
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    :cond_e
    const-wide/16 v3, 0x0

    .line 3706
    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 3709
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not find ApplicationInfo for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstallerSession"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3714
    :cond_2f
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getPackageInstallerPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_3d

    return v1

    .line 3720
    :cond_3d
    iget p0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x24

    if-le p0, v4, :cond_46

    xor-int/lit8 p0, p1, 0x1

    return p0

    .line 3727
    :cond_46
    const-string p0, "android.permission.INSTALL_PACKAGES"

    iget p1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_51

    return v1

    :cond_51
    return v2
.end method

.method public final shouldUseVerificationService()Z
    .registers 5

    .line 3052
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isVerificationServiceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3055
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-virtual {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->getVerifierPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    return v1

    .line 3059
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    .line 3061
    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->forceVerification:Z

    if-nez v0, :cond_2b

    .line 3062
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0

    .line 3063
    :try_start_21
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationBypassed(I)V

    .line 3065
    monitor-exit v0

    return v1

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw p0

    :cond_2b
    return v3
.end method

.method public final stageFileLocked(Ljava/io/File;Ljava/io/File;)V
    .registers 3

    .line 4911
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4912
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public stageViaHardLink(Ljava/lang/String;)V
    .registers 5

    .line 2077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_68

    .line 2082
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2083
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2084
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 2087
    :try_start_1c
    invoke-static {p1, p0}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1a4

    .line 2089
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_24
    .catch Landroid/system/ErrnoException; {:try_start_1c .. :try_end_24} :catch_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_2b

    :catch_25
    move-exception p1

    goto :goto_49

    :catch_27
    move-exception p1

    .line 2091
    :try_start_28
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 2093
    :goto_2b
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_32

    return-void

    .line 2094
    :cond_32
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t relabel file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_49} :catch_25

    .line 2098
    :goto_49
    :try_start_49
    invoke-static {p0}, Landroid/system/Os;->unlink(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_63

    .line 2100
    :catch_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unlink session file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageInstallerSession"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :goto_63
    invoke-static {p1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 2079
    :cond_68
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "link() can only be run by the system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startDeveloperVerificationSession(Ljava/util/concurrent/CompletableFuture;Z)V
    .registers 16

    .line 3268
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3269
    new-instance v10, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    invoke-direct {v10, p0, p1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;)V

    .line 3272
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-virtual {p1, v4}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->hasExperiments(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 3275
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-virtual {p1, v4, v10}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->startLocalExperiment(Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    .line 3276
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter p1

    .line 3277
    :try_start_19
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationBypassed(I)V

    .line 3279
    monitor-exit p1

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_21

    throw p0

    .line 3284
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->shouldUseVerificationService()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 3285
    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onDeveloperVerificationSkipped()V

    return-void

    .line 3291
    :cond_2f
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3292
    :try_start_32
    new-instance v6, Landroid/content/pm/SigningInfo;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v6, v0}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    .line 3294
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-nez v0, :cond_40

    const/4 v0, 0x0

    :goto_3e
    move-object v7, v0

    goto :goto_45

    :cond_40
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getDeclaredLibraries()Ljava/util/List;

    move-result-object v0

    goto :goto_3e

    .line 3295
    :goto_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_8d

    .line 3296
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDeveloperVerifierController:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3297
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 3298
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCurrentVerificationPolicy:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3299
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v9, p1, Landroid/content/pm/PackageInstaller$SessionParams;->extensionParams:Landroid/os/PersistableBundle;

    new-instance v11, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;

    invoke-direct {v11, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    move v12, p2

    .line 3296
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->startVerificationSession(Ljava/util/function/Supplier;IILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/SigningInfo;Ljava/util/List;ILandroid/os/PersistableBundle;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;Ljava/lang/Runnable;Z)Z

    move-result p1

    if-nez p1, :cond_76

    .line 3304
    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onConnectionInfeasible()V

    return-void

    .line 3306
    :cond_76
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter p2

    if-nez v12, :cond_84

    .line 3308
    :try_start_7b
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationRequestSent()V

    goto :goto_89

    :catchall_81
    move-exception v0

    move-object p0, v0

    goto :goto_8b

    .line 3310
    :cond_84
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationRetryRequestSent()V

    .line 3312
    :goto_89
    monitor-exit p2

    return-void

    :goto_8b
    monitor-exit p2
    :try_end_8c
    .catchall {:try_start_7b .. :try_end_8c} :catchall_81

    throw p0

    :catchall_8d
    move-exception v0

    move-object p0, v0

    .line 3295
    :try_start_8f
    monitor-exit p1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8d

    throw p0
.end method

.method public final storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    .line 4957
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getIncrementalFileStorages()Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v0

    .line 4958
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result p0

    if-eqz p0, :cond_13

    if-nez v0, :cond_d

    goto :goto_13

    :cond_d
    const/16 p0, 0x1ff

    .line 4961
    invoke-virtual {v0, p1, p3, p0}, Landroid/os/incremental/IncrementalFileStorages;->makeFile(Ljava/lang/String;[BI)V

    return-void

    .line 4959
    :cond_13
    :goto_13
    invoke-static {p2, p3}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public final streamValidateAndCommit()Z
    .registers 7

    .line 2627
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_3} :catch_90
    .catchall {:try_start_0 .. :try_end_3} :catchall_89

    .line 2628
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 2629
    monitor-exit v0

    return v2

    :catchall_c
    move-exception p0

    goto/16 :goto_87

    .line 2634
    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    const/4 v3, 0x0

    if-nez v1, :cond_2b

    .line 2635
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2636
    monitor-exit v0

    return v3

    .line 2639
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2640
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_2b

    .line 2642
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;

    .line 2645
    :cond_2b
    :goto_2b
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    const/16 v4, -0x6e

    if-nez v1, :cond_7f

    .line 2649
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v1

    if-nez v1, :cond_46

    .line 2650
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_c

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2652
    :try_start_3c
    iput v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 2653
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 2654
    monitor-exit v1

    goto :goto_46

    :catchall_43
    move-exception p0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_43

    :try_start_45
    throw p0

    .line 2659
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2661
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 2668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 2669
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_c

    .line 2670
    :try_start_5a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v0
    :try_end_5d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5a .. :try_end_5d} :catch_90
    .catchall {:try_start_5a .. :try_end_5d} :catchall_89

    .line 2671
    :try_start_5d
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/SessionMetrics;->onSessionCommitted(J)V

    .line 2672
    monitor-exit v0

    return v2

    :catchall_66
    move-exception p0

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_66

    :try_start_68
    throw p0
    :try_end_69
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_68 .. :try_end_69} :catch_90
    .catchall {:try_start_68 .. :try_end_69} :catchall_89

    .line 2662
    :cond_69
    :try_start_69
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "The mCommitted of session %d should be false originally"

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 2666
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2664
    invoke-static {v2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v4, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2646
    :cond_7f
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session destroyed"

    invoke-direct {p0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2669
    :goto_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_69 .. :try_end_88} :catchall_c

    :try_start_88
    throw p0
    :try_end_89
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_88 .. :try_end_89} :catch_90
    .catchall {:try_start_88 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p0

    .line 2679
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_90
    move-exception p0

    .line 2675
    throw p0
.end method

.method public transfer(Ljava/lang/String;)V
    .registers 12

    .line 2847
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2848
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2849
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 2854
    const-string v2, "android.permission.INSTALL_PACKAGES"

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v2, v3}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_68

    .line 2862
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->areHiddenOptionsSet()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2866
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2867
    :try_start_2e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2868
    const-string/jumbo v0, "transfer"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_51

    .line 2871
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V
    :try_end_3a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_37 .. :try_end_3a} :catch_54
    .catchall {:try_start_37 .. :try_end_3a} :catchall_51

    .line 2876
    :try_start_3a
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 2877
    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v9, v0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v7, p1

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 2880
    monitor-exit v2

    return-void

    :catchall_51
    move-exception v0

    move-object p0, v0

    goto :goto_5e

    :catch_54
    move-exception v0

    move-object p0, v0

    .line 2873
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Package is not valid"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 2880
    :goto_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_3a .. :try_end_5f} :catchall_51

    throw p0

    .line 2863
    :cond_60
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only transfer sessions that use public options"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_68
    move-object v3, p1

    .line 2856
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Destination package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not have the "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " permission"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8f
    move-object v3, p1

    .line 2851
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p1, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final tryLoadingAppLabel(Landroid/content/res/Resources;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 3

    .line 5165
    iget p0, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz p0, :cond_11

    .line 5167
    :try_start_4
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    :cond_11
    const/4 p0, 0x0

    :goto_12
    if-nez p0, :cond_1b

    .line 5172
    iget-object p0, p2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz p0, :cond_19

    goto :goto_1b

    .line 5173
    :cond_19
    iget-object p0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public final unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .registers 4

    .line 5181
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    const/4 v0, 0x1

    .line 5183
    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 5185
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-nez v0, :cond_16

    .line 5189
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningDetails;

    return-object p0

    .line 5186
    :cond_16
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t obtain signatures from APK : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final updateUserActionRequirement(I)V
    .registers 3

    .line 1256
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1257
    :try_start_3
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequirement:I

    .line 1258
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final validateApexInstallLocked()V
    .registers 6

    .line 4403
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v0

    .line 4404
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_b6

    .line 4410
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_ae

    const/4 v1, 0x0

    .line 4415
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 4418
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4419
    const-string v3, ".apex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_35

    .line 4421
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4422
    :goto_35
    invoke-static {v1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 4427
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4428
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 4429
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 4432
    iput-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 4433
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 4434
    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 4436
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-nez v1, :cond_85

    .line 4440
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/ApkLite;

    .line 4442
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_78

    .line 4443
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 4444
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 4447
    :cond_78
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 4448
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->isHasDeviceAdminReceiver()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    return-void

    .line 4437
    :cond_85
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v1

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 4438
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 4423
    :cond_97
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid filename: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 4411
    :cond_ae
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v0, "Too many files for apex install"

    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 4405
    :cond_b6
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 4406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 4407
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 4406
    const-string v1, "Session: %d. No packages staged in %s"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;
    .registers 24

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 4468
    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 4469
    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 4470
    iput-wide v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 4471
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 4473
    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 4474
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4475
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4476
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mWarnings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4478
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const-wide/32 v4, 0x4000040

    iget v6, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 4483
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v4, -0x2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4a

    if-eqz v3, :cond_42

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_42

    goto :goto_4a

    .line 4485
    :cond_42
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Missing existing base package"

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4489
    :cond_4a
    :goto_4a
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getRemovedFilesLocked()Ljava/util/List;

    move-result-object v0

    .line 4490
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4491
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_7c

    .line 4492
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 4493
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4495
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x8

    .line 4494
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4496
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 4502
    :cond_7c
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    if-nez v0, :cond_85

    .line 4503
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->enableFsVerityToAddedApksWithIdsig()V

    .line 4506
    :cond_85
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApkLitesLocked()Ljava/util/List;

    move-result-object v0

    .line 4507
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 4508
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_9a

    iget-boolean v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    if-nez v7, :cond_9a

    goto :goto_b6

    .line 4509
    :cond_9a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 4510
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 4511
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 4510
    const-string v2, "Session: %d. No packages staged in %s"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4513
    :cond_b6
    :goto_b6
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getArtManagedFilePathsLocked()Ljava/util/List;

    move-result-object v7

    .line 4516
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 4517
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 4518
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 4519
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 4520
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v13

    .line 4521
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v14, v2

    :goto_d7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-string v5, "PackageInstallerSession"

    if-eqz v15, :cond_20a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/parsing/ApkLite;

    .line 4522
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e9

    .line 4527
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->isUpdatableSystem()Z

    move-result v8

    if-nez v8, :cond_11a

    .line 4528
    iget v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-nez v8, :cond_112

    .line 4529
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overriding updatableSystem because the installer is root for: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4530
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4529
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11a

    .line 4532
    :cond_112
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Non updatable system package can\'t be installed or updated"

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4538
    :cond_11a
    :goto_11a
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_12c

    .line 4539
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    move-object v8, v5

    .line 4540
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    goto :goto_12d

    :cond_12c
    move-object v8, v5

    .line 4542
    :goto_12d
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v4, v5, :cond_139

    .line 4543
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 4545
    :cond_139
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->isHasDeviceAdminReceiver()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    .line 4547
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v15}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;)V

    .line 4550
    invoke-static {v15}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    move-result-object v4

    .line 4551
    invoke-static {v4}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d1

    .line 4557
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v5

    const/4 v2, -0x1

    if-eq v5, v2, :cond_18b

    .line 4558
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18b

    .line 4559
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    move-object/from16 v17, v0

    .line 4560
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v0

    if-eq v5, v0, :cond_18d

    .line 4561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " drops manifest attribute android:installLocation in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18d

    :cond_18b
    move-object/from16 v17, v0

    .line 4567
    :cond_18d
    :goto_18d
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4568
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation()Z

    move-result v2

    if-nez v2, :cond_1aa

    .line 4569
    new-instance v2, Ljava/io/File;

    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4571
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v4

    .line 4570
    invoke-virtual {v1, v2, v0, v4, v7}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 4575
    :cond_1aa
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b4

    .line 4576
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    move-object v14, v15

    goto :goto_1bb

    .line 4579
    :cond_1b4
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4583
    :goto_1bb
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 4584
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getSplitTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-object/from16 v0, v17

    const/4 v2, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x2

    const/4 v8, 0x0

    goto/16 :goto_d7

    .line 4552
    :cond_1d1
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4523
    :cond_1e9
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Split "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4524
    invoke-virtual {v15}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was defined multiple times"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_20a
    move-object v8, v5

    .line 4587
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->artManagedInstallFilesValidationApi()Z

    move-result v0

    if-eqz v0, :cond_215

    .line 4588
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageInstallerSession;->validateArtManagedInstallFiles(Ljava/util/List;)V

    goto :goto_21a

    .line 4590
    :cond_215
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-static {v7, v0}, Lcom/android/server/pm/PackageInstallerSession;->verifySdmSignatures(Ljava/util/List;Landroid/content/pm/SigningDetails;)V

    .line 4593
    :goto_21a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28b

    if-eqz v3, :cond_271

    .line 4600
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_227
    if-ge v4, v0, :cond_252

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 4601
    iget-object v15, v3, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v15, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_23a

    goto :goto_227

    .line 4602
    :cond_23a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Split not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4608
    :cond_252
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_260

    .line 4609
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 4610
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 4612
    :cond_260
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v4, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v0, v4, :cond_28b

    .line 4613
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_28b

    .line 4595
    :cond_271
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing existing base package for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4618
    :cond_28b
    :goto_28b
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4619
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4621
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallationAllowed(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v4

    const/16 v5, -0x74

    if-eqz v4, :cond_73b

    .line 4627
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation()Z

    move-result v4

    if-eqz v4, :cond_2d2

    .line 4628
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallationAllowed(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v4

    if-eqz v4, :cond_2ca

    .line 4634
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 4635
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 4634
    invoke-virtual {v4, v15, v2}, Lcom/android/server/pm/PackageArchiver;->verifySupportsUnarchival(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c2

    goto :goto_2d2

    .line 4636
    :cond_2c2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Installer has to support unarchival in order to install archived packages."

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4629
    :cond_2ca
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Archived installation of this package is not allowed."

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4643
    :cond_2d2
    :goto_2d2
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v2

    if-eqz v2, :cond_2dd

    .line 4644
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getTmpAppMetadataFile()Ljava/io/File;

    move-result-object v2

    goto :goto_2e1

    :cond_2dd
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getStagedAppMetadataFile()Ljava/io/File;

    move-result-object v2

    .line 4645
    :goto_2e1
    iget-boolean v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    if-eqz v4, :cond_309

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2ec

    goto :goto_309

    .line 4646
    :cond_2ec
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App metadata file expected but not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 4647
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4650
    :cond_309
    :goto_309
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v2

    if-eqz v2, :cond_34b

    .line 4651
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallationAllowed(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0

    if-eqz v0, :cond_341

    .line 4658
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    if-eqz v0, :cond_34b

    .line 4659
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getTmpAppMetadataFile()Ljava/io/File;

    move-result-object v2

    .line 4661
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getIncrementalFileStorages()Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v0

    .line 4663
    :try_start_321
    const-string v4, "app.metadata"

    .line 4664
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v15

    invoke-static {v15}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v15

    const/16 v5, 0x1a0

    .line 4663
    invoke-virtual {v0, v4, v15, v5}, Landroid/os/incremental/IncrementalFileStorages;->makeFile(Ljava/lang/String;[BI)V
    :try_end_330
    .catch Ljava/io/IOException; {:try_start_321 .. :try_end_330} :catch_336
    .catchall {:try_start_321 .. :try_end_330} :catchall_334

    .line 4669
    :goto_330
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_34b

    :catchall_334
    move-exception v0

    goto :goto_33d

    :catch_336
    move-exception v0

    .line 4667
    :try_start_337
    const-string v4, "Failed to write app metadata to incremental storage"

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33c
    .catchall {:try_start_337 .. :try_end_33c} :catchall_334

    goto :goto_330

    .line 4669
    :goto_33d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4670
    throw v0

    .line 4652
    :cond_341
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Incremental installation of this package is not allowed."

    const/16 v2, -0x74

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4674
    :cond_34b
    :goto_34b
    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq v0, v2, :cond_36e

    .line 4676
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_364

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_364

    goto :goto_36e

    .line 4678
    :cond_364
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x17

    const-string v2, "Can only transfer sessions that update the original installer"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4683
    :cond_36e
    :goto_36e
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_716

    .line 4689
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const-string v4, "Missing split for "

    const-string v15, "219044664"

    const v2, 0x534e4554

    const/4 v5, 0x1

    if-ne v0, v5, :cond_403

    const/4 v5, 0x0

    .line 4691
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fa

    .line 4694
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_39c

    .line 4695
    invoke-static {v2, v15}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4698
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDontKillApp(Z)V

    .line 4700
    :cond_39c
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->isSplitRequired()Z

    move-result v0

    if-eqz v0, :cond_3c9

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3b0

    .line 4701
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3b0

    goto :goto_3c9

    .line 4702
    :cond_3b0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1c

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4708
    :cond_3c9
    :goto_3c9
    invoke-virtual {v13}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v0, v2, v14, v12, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 4710
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_3e8

    .line 4714
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    move-object v14, v3

    const/4 v3, 0x1

    const/16 v16, 0x0

    goto/16 :goto_683

    .line 4711
    :cond_3e8
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v2

    .line 4712
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4692
    :cond_3fa
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Full install must include a base package"

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_403
    move v0, v2

    .line 4717
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4719
    invoke-virtual {v13}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v12

    new-instance v13, Ljava/io/File;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 4718
    invoke-static {v12, v13, v14}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12

    .line 4720
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v13

    if-nez v13, :cond_706

    .line 4724
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/parsing/PackageLite;

    .line 4726
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object v14, v3

    .line 4727
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getLongVersionCode()J

    move-result-wide v2

    .line 4726
    const-string v0, "Existing"

    invoke-virtual {v1, v0, v13, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V

    .line 4729
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 4730
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v2, v0}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_6fd

    .line 4736
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-nez v0, :cond_45c

    .line 4737
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 4738
    invoke-virtual {v1, v0, v7}, Lcom/android/server/pm/PackageInstallerSession;->inheritFileLocked(Ljava/io/File;Ljava/util/List;)V

    .line 4740
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getBaseRequiredSplitTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    goto :goto_470

    .line 4741
    :cond_45c
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_470

    const v0, 0x534e4554

    .line 4742
    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4745
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDontKillApp(Z)V

    .line 4750
    :cond_470
    :goto_470
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4ba

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4751
    :goto_47c
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_4bb

    .line 4752
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    .line 4753
    new-instance v13, Ljava/io/File;

    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v0

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4754
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 4755
    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b6

    if-nez v15, :cond_4b6

    .line 4757
    invoke-virtual {v1, v13, v7}, Lcom/android/server/pm/PackageInstallerSession;->inheritFileLocked(Ljava/io/File;Ljava/util/List;)V

    .line 4760
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getRequiredSplitTypes()[Ljava/util/Set;

    move-result-object v3

    aget-object v3, v3, v0

    .line 4759
    invoke-static {v11, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 4761
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getSplitTypes()[Ljava/util/Set;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v10, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    goto :goto_4b7

    :cond_4b6
    const/4 v2, 0x1

    :goto_4b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_47c

    :cond_4ba
    const/4 v2, 0x0

    :cond_4bb
    if-eqz v2, :cond_4c9

    .line 4767
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_4c9

    const/4 v2, 0x0

    .line 4770
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDontKillApp(Z)V

    .line 4773
    :cond_4c9
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 4774
    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 4784
    new-instance v3, Ljava/io/File;

    const-string/jumbo v0, "oat"

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4786
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v5, 0x0

    .line 4787
    :try_start_4e5
    new-array v7, v5, [Ljava/nio/file/FileVisitOption;

    invoke-static {v0, v7}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v5
    :try_end_4eb
    .catch Ljava/io/IOException; {:try_start_4e5 .. :try_end_4eb} :catch_549
    .catch Ljava/io/UncheckedIOException; {:try_start_4e5 .. :try_end_4eb} :catch_549

    .line 4788
    :try_start_4eb
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;

    invoke-direct {v7, v5}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4f7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_543

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/nio/file/Path;
    :try_end_503
    .catchall {:try_start_4eb .. :try_end_503} :catchall_53f

    move-object/from16 v19, v5

    const/4 v15, 0x0

    .line 4789
    :try_start_506
    new-array v5, v15, [Ljava/nio/file/LinkOption;

    invoke-static {v13, v5}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_53c

    .line 4790
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v13}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4791
    invoke-interface {v13}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4792
    const-string v13, ""

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_53c

    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedOatSubDirs:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_53c

    .line 4793
    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedOatSubDirs:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_538
    .catchall {:try_start_506 .. :try_end_538} :catchall_539

    goto :goto_53c

    :catchall_539
    move-exception v0

    :goto_53a
    move-object v5, v0

    goto :goto_54b

    :cond_53c
    :goto_53c
    move-object/from16 v5, v19

    goto :goto_4f7

    :catchall_53f
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_53a

    :cond_543
    move-object/from16 v19, v5

    .line 4797
    :try_start_545
    invoke-interface/range {v19 .. v19}, Ljava/util/stream/Stream;->close()V
    :try_end_548
    .catch Ljava/io/IOException; {:try_start_545 .. :try_end_548} :catch_549
    .catch Ljava/io/UncheckedIOException; {:try_start_545 .. :try_end_548} :catch_549

    goto :goto_56a

    :catch_549
    move-exception v0

    goto :goto_556

    :goto_54b
    if-eqz v19, :cond_555

    .line 4787
    :try_start_54d
    invoke-interface/range {v19 .. v19}, Ljava/util/stream/Stream;->close()V
    :try_end_550
    .catchall {:try_start_54d .. :try_end_550} :catchall_551

    goto :goto_555

    :catchall_551
    move-exception v0

    :try_start_552
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_555
    :goto_555
    throw v5
    :try_end_556
    .catch Ljava/io/IOException; {:try_start_552 .. :try_end_556} :catch_549
    .catch Ljava/io/UncheckedIOException; {:try_start_552 .. :try_end_556} :catch_549

    .line 4798
    :goto_556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error walking directory "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4826
    :goto_56a
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_62b

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62b

    const/4 v3, 0x2

    .line 4827
    new-array v5, v3, [Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v7, "lib"

    invoke-direct {v0, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v16, 0x0

    aput-object v0, v5, v16

    new-instance v0, Ljava/io/File;

    const-string v7, "lib64"

    invoke-direct {v0, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v18, 0x1

    aput-object v0, v5, v18

    move/from16 v7, v16

    :goto_591
    if-ge v7, v3, :cond_62d

    .line 4830
    aget-object v0, v5, v7

    .line 4831
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5a1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_5a5

    :cond_5a1
    move-object/from16 v22, v2

    goto/16 :goto_624

    .line 4834
    :cond_5a5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4835
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4836
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    move-object/from16 v19, v0

    move/from16 v0, v16

    :goto_5b8
    if-ge v0, v3, :cond_5fb

    move/from16 v20, v0

    aget-object v0, v19, v20

    .line 4837
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_5c9

    move-object/from16 v22, v2

    move/from16 v21, v3

    goto :goto_5e5

    :cond_5c9
    move/from16 v21, v3

    .line 4842
    :try_start_5cb
    invoke-static {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3
    :try_end_5cf
    .catch Ljava/io/IOException; {:try_start_5cb .. :try_end_5cf} :catch_5ec

    .line 4851
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object/from16 v22, v2

    if-eqz v0, :cond_5e5

    .line 4852
    array-length v2, v0

    if-nez v2, :cond_5db

    goto :goto_5e5

    .line 4856
    :cond_5db
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4857
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5e5
    :goto_5e5
    add-int/lit8 v0, v20, 0x1

    move/from16 v3, v21

    move-object/from16 v2, v22

    goto :goto_5b8

    :catch_5ec
    move-exception v0

    move-object/from16 v22, v2

    .line 4844
    const-string v2, "Skipping linking of native library directory!"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4846
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 4847
    invoke-interface {v15}, Ljava/util/List;->clear()V

    goto :goto_5fd

    :cond_5fb
    move-object/from16 v22, v2

    .line 4859
    :goto_5fd
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v2, v16

    :goto_603
    if-ge v2, v0, :cond_61f

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    move/from16 v19, v0

    .line 4860
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61c

    .line 4861
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61c
    move/from16 v0, v19

    goto :goto_603

    .line 4864
    :cond_61f
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_624
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v22

    const/4 v3, 0x2

    goto/16 :goto_591

    :cond_62b
    const/16 v16, 0x0

    .line 4868
    :cond_62d
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->isSplitRequired()Z

    move-result v0

    if-eqz v0, :cond_681

    .line 4869
    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 4870
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_643

    const/4 v2, 0x1

    goto :goto_645

    :cond_643
    move/from16 v2, v16

    .line 4871
    :goto_645
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_655

    const/4 v5, 0x0

    .line 4872
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_655

    move v0, v3

    goto :goto_657

    :cond_655
    move/from16 v0, v16

    :goto_657
    if-eqz v2, :cond_661

    .line 4873
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_668

    if-nez v0, :cond_668

    .line 4874
    :cond_661
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_668

    goto :goto_682

    .line 4875
    :cond_668
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1c

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_681
    const/4 v3, 0x1

    :goto_682
    move-object v0, v12

    .line 4881
    :goto_683
    invoke-virtual {v1, v0, v14}, Lcom/android/server/pm/PackageInstallerSession;->assertPreapprovalDetailsConsistentIfNeededLocked(Landroid/content/pm/parsing/PackageLite;Landroid/content/pm/PackageInfo;)V

    .line 4883
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isUseEmbeddedDex()Z

    move-result v2

    if-eqz v2, :cond_6cf

    .line 4884
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_692
    :goto_692
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6cf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 4885
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_692

    .line 4886
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/DexOptHelper;->checkUncompressedDexInApk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b5

    goto :goto_692

    .line 4887
    :cond_6b5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Some dex are not uncompressed and aligned correctly for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4894
    :cond_6cf
    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v4, 0x7d0

    if-ne v2, v4, :cond_6d7

    move v8, v3

    goto :goto_6d9

    :cond_6d7
    move/from16 v8, v16

    :goto_6d9
    if-eqz v8, :cond_6f6

    .line 4895
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v2

    if-eqz v2, :cond_6f6

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-eqz v2, :cond_6f6

    .line 4896
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v2

    if-nez v2, :cond_6f6

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isProfileableByShell()Z

    move-result v2

    if-nez v2, :cond_6f6

    .line 4897
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    invoke-virtual {v2}, Landroid/os/incremental/IncrementalFileStorages;->disallowReadLogs()V

    .line 4903
    :cond_6f6
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v2

    iput v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    return-object v0

    .line 4731
    :cond_6fd
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Existing signatures are inconsistent"

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4721
    :cond_706
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 4722
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    const/16 v3, -0x6e

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4684
    :cond_716
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid checksum name(s): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 4686
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v3, ","

    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x74

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_73b
    move v2, v5

    .line 4622
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Installation of this package is not allowed."

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final validateArtManagedInstallFiles(Ljava/util/List;)V
    .registers 7

    .line 5216
    invoke-static {p1}, Lcom/android/server/art/ArtManagedInstallFileHelper;->validateFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/art/model/ValidationResult;

    .line 5217
    invoke-virtual {v1}, Lcom/android/server/art/model/ValidationResult;->getCode()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    const-string v4, "PackageInstallerSession"

    if-eq v2, v3, :cond_9c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_49

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3e

    .line 5242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArtManagedInstallFileHelper.validateFiles returned unknown code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5244
    invoke-virtual {v1}, Lcom/android/server/art/model/ValidationResult;->getCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5242
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 5238
    :cond_3e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p1, -0x2

    .line 5239
    invoke-virtual {v1}, Lcom/android/server/art/model/ValidationResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 5227
    :cond_49
    :try_start_49
    invoke-virtual {v1}, Lcom/android/server/art/model/ValidationResult;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_57} :catch_72

    .line 5232
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mWarnings:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/server/art/model/ValidationResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5233
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    new-instance v3, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/art/model/ValidationResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 5235
    invoke-virtual {v1}, Lcom/android/server/art/model/ValidationResult;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :catch_72
    move-exception p0

    .line 5229
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5230
    invoke-virtual {v1}, Lcom/android/server/art/model/ValidationResult;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, -0x6e

    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 5221
    :cond_9c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized ART-managed install file path \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5222
    invoke-virtual {v1}, Lcom/android/server/art/model/ValidationResult;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5221
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_bb
    return-void
.end method

.method public final validatePreapprovalRequest(Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/IntentSender;)V
    .registers 6

    .line 6252
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 6253
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_43

    if-eqz p2, :cond_3b

    .line 6261
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6262
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request of session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 6263
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 6264
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPreapprovalRemoteStatusReceiver(Landroid/content/IntentSender;)V

    .line 6265
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_38

    .line 6266
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter p1

    .line 6267
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onPreapprovalSet()V

    .line 6268
    monitor-exit p1

    return-void

    :catchall_35
    move-exception p0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw p0

    :catchall_38
    move-exception p0

    .line 6265
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0

    .line 6259
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Status receiver cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6254
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is a parent of multi-package session and requestUserPreapproval on the parent session isn\'t supported."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final verify()V
    .registers 1

    .line 3332
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->runExtractNativeLibraries()V

    return-void
.end method

.method public final verifyNonStaged()V
    .registers 3

    .line 3992
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3993
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->markStageDirInUseLocked()V

    .line 3994
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_22

    .line 3995
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    monitor-enter v1

    .line 3996
    :try_start_a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mMetrics:Lcom/android/server/pm/SessionMetrics;

    invoke-virtual {v0}, Lcom/android/server/pm/SessionMetrics;->onSessionVerificationStarted()V

    .line 3997
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1f

    .line 3998
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0}, Lcom/android/server/pm/PackageSessionProvider;->getSessionVerifier()Lcom/android/server/pm/PackageSessionVerifier;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->verify(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void

    :catchall_1f
    move-exception p0

    .line 3997
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    :catchall_22
    move-exception p0

    .line 3994
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public write(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/io/File;)V
    .registers 14

    .line 6816
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6817
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v1, :cond_12

    .line 6818
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto/16 :goto_398

    .line 6821
    :cond_12
    const-string/jumbo v1, "session"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6823
    const-string/jumbo v1, "sessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6824
    const-string/jumbo v1, "userId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6825
    const-string v1, "installerPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6827
    const-string v1, "installerPackageUid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6828
    const-string/jumbo v1, "updateOwnererPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6830
    const-string v1, "installerAttributionTag"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6832
    const-string v1, "installerUid"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6833
    const-string v1, "installInitiatingPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6835
    const-string v1, "installOriginatingPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6837
    const-string v1, "createdMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 6838
    const-string/jumbo v1, "updatedMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 6839
    const-string v1, "committedMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 6840
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v1, :cond_8b

    .line 6841
    const-string/jumbo v3, "sessionStageDir"

    .line 6842
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 6841
    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6844
    :cond_8b
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_95

    .line 6845
    const-string/jumbo v3, "sessionStageCid"

    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6847
    :cond_95
    const-string/jumbo v1, "prepared"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 6848
    const-string v1, "committed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 6849
    const-string v1, "destroyed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 6850
    const-string/jumbo v1, "sealed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 6852
    const-string/jumbo v1, "multiPackage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 6853
    const-string/jumbo v1, "stagedSession"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 6854
    const-string v1, "isReady"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 6855
    const-string v1, "isFailed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 6856
    const-string v1, "isApplied"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 6857
    const-string/jumbo v1, "packageSource"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6858
    const-string v1, "errorCode"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6859
    const-string v1, "errorMessage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6862
    const-string/jumbo v1, "parentSessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6863
    const-string/jumbo v1, "mode"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6864
    const-string v1, "installFlags"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6865
    const-string v1, "installLocation"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6866
    const-string/jumbo v1, "sizeBytes"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 6867
    const-string v1, "appPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6868
    const-string v1, "appLabel"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6869
    const-string/jumbo v1, "originatingUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 6870
    const-string/jumbo v1, "originatingUid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6871
    const-string/jumbo v1, "referrerUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 6872
    const-string v1, "abiOverride"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6873
    const-string/jumbo v1, "volumeUuid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6874
    const-string v1, "installRason"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6875
    const-string v1, "applicationEnabledSettingPersistent"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 6877
    const-string v1, "initialVerificationPolicy"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInitialVerificationPolicy:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6878
    const-string v1, "currentVerificationPolicy"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCurrentVerificationPolicy:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6879
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 6878
    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6881
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v3, 0x0

    if-eqz v1, :cond_194

    const/4 v1, 0x1

    goto :goto_195

    :cond_194
    move v1, v3

    .line 6882
    :goto_195
    const-string v4, "isDataLoader"

    invoke-static {p1, v4, v1}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1d8

    .line 6884
    const-string v1, "dataLoaderType"

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v4}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v4

    invoke-interface {p1, v2, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6885
    const-string v1, "dataLoaderPackageName"

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 6886
    invoke-virtual {v4}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 6885
    invoke-static {p1, v1, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6887
    const-string v1, "dataLoaderClassName"

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 6888
    invoke-virtual {v4}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 6887
    invoke-static {p1, v1, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6889
    const-string v1, "dataLoaderArguments"

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 6890
    invoke-virtual {v4}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    move-result-object v4

    .line 6889
    invoke-static {p1, v1, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6893
    :cond_1d8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writePermissionsLocked(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/content/pm/PackageInstaller$SessionParams;)V

    .line 6894
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeWhitelistedRestrictedPermissionsLocked(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    .line 6896
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeAutoRevokePermissionsMode(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 6899
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 6900
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_202

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_202

    .line 6901
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto/16 :goto_276

    .line 6902
    :cond_202
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_276

    .line 6903
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v6, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_276

    .line 6904
    const-string v1, "PackageInstallerSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing changed icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22a
    .catchall {:try_start_3 .. :try_end_22a} :catchall_f

    .line 6907
    :try_start_22a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_22f
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_22f} :catch_242
    .catchall {:try_start_22a .. :try_end_22f} :catchall_240

    .line 6908
    :try_start_22f
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_22f .. :try_end_23a} :catch_23e
    .catchall {:try_start_22f .. :try_end_23a} :catchall_23b

    goto :goto_266

    :catchall_23b
    move-exception p0

    move-object v2, v1

    goto :goto_272

    :catch_23e
    move-exception v4

    goto :goto_244

    :catchall_240
    move-exception p0

    goto :goto_272

    :catch_242
    move-exception v4

    move-object v1, v2

    .line 6910
    :goto_244
    :try_start_244
    const-string v5, "PackageInstallerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write icon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_266
    .catchall {:try_start_244 .. :try_end_266} :catchall_23b

    .line 6912
    :goto_266
    :try_start_266
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6915
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    goto :goto_276

    .line 6912
    :goto_272
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6913
    throw p0

    .line 6917
    :cond_276
    :goto_276
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object p2

    .line 6918
    array-length v1, p2

    move v4, v3

    :goto_27c
    if-ge v4, v1, :cond_293

    aget v5, p2, v4

    .line 6919
    const-string v6, "childSession"

    invoke-interface {p1, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6920
    const-string/jumbo v6, "sessionId"

    invoke-interface {p1, v2, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6921
    const-string v5, "childSession"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_27c

    .line 6924
    :cond_293
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object p2

    .line 6925
    array-length v1, p2

    move v4, v3

    :goto_299
    if-ge v4, v1, :cond_2dc

    aget-object v5, p2, v4

    .line 6926
    const-string/jumbo v6, "sessionFile"

    invoke-interface {p1, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6927
    const-string v6, "location"

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v7

    invoke-interface {p1, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6928
    const-string/jumbo v6, "name"

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6929
    const-string v6, "lengthBytes"

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    move-result-wide v7

    invoke-interface {p1, v2, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 6930
    const-string/jumbo v6, "metadata"

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 6931
    const-string/jumbo v6, "signature"

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getSignature()[B

    move-result-object v5

    invoke-static {p1, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 6932
    const-string/jumbo v5, "sessionFile"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_299

    .line 6935
    :cond_2dc
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move v1, v3

    :goto_2e3
    if-ge v1, p2, :cond_329

    .line 6936
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6937
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 6938
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getChecksums()[Landroid/content/pm/Checksum;

    move-result-object v5

    .line 6939
    array-length v6, v5

    move v7, v3

    :goto_2fb
    if-ge v7, v6, :cond_326

    aget-object v8, v5, v7

    .line 6940
    const-string/jumbo v9, "sessionChecksum"

    invoke-interface {p1, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6941
    const-string/jumbo v9, "name"

    invoke-static {p1, v9, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6942
    const-string v9, "checksumKind"

    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getType()I

    move-result v10

    invoke-interface {p1, v2, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 6943
    const-string v9, "checksumValue"

    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v8

    invoke-static {p1, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 6944
    const-string/jumbo v8, "sessionChecksum"

    invoke-interface {p1, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2fb

    :cond_326
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e3

    .line 6947
    :cond_329
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_32f
    if-ge v3, p2, :cond_366

    .line 6948
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6949
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 6950
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getSignature()[B

    move-result-object v4

    if-eqz v4, :cond_363

    .line 6951
    array-length v5, v4

    if-nez v5, :cond_34b

    goto :goto_363

    .line 6954
    :cond_34b
    const-string/jumbo v5, "sessionChecksumSignature"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6955
    const-string/jumbo v5, "name"

    invoke-static {p1, v5, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6956
    const-string/jumbo v1, "signature"

    invoke-static {p1, v1, v4}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 6957
    const-string/jumbo v1, "sessionChecksumSignature"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_363
    :goto_363
    add-int/lit8 v3, v3, 0x1

    goto :goto_32f

    .line 6959
    :cond_366
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    if-eqz p0, :cond_390

    .line 6960
    invoke-virtual {p0}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_372
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_390

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6961
    const-string/jumbo v1, "preVerifiedDomains"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6962
    const-string v1, "domain"

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6963
    const-string/jumbo p2, "preVerifiedDomains"

    invoke-interface {p1, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_372

    .line 6966
    :cond_390
    monitor-exit v0
    :try_end_391
    .catchall {:try_start_266 .. :try_end_391} :catchall_f

    .line 6968
    const-string/jumbo p0, "session"

    invoke-interface {p1, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 6966
    :goto_398
    :try_start_398
    monitor-exit v0
    :try_end_399
    .catchall {:try_start_398 .. :try_end_399} :catchall_f

    throw p0
.end method

.method public write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 8

    if-eqz p6, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 2067
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    .line 2069
    :try_start_8
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    move-object p0, v0

    .line 2071
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
