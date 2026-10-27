.class public final Lcom/android/server/pm/SessionMetrics;
.super Ljava/lang/Object;
.source "SessionMetrics.java"


# instance fields
.field public mApksSizeBytes:J

.field public final mApplicationEnabledSettingPersistent:Z

.field public final mChildSessionIds:[I

.field public mCommittedMillis:J

.field public final mCreatedMillis:J

.field public final mDataLoaderType:I

.field public final mDefaultDeveloperVerificationPolicy:I

.field public mDeveloperVerificationCancelled:Z

.field public mDeveloperVerificationDurationMillis:J

.field public mDeveloperVerificationFailureReason:I

.field public mDeveloperVerificationPolicyOverride:I

.field public mDeveloperVerificationRetryCount:I

.field public mDeveloperVerificationRetryDurationMillis:J

.field public mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

.field public mDeveloperVerificationUserActionRequiredReason:I

.field public mDeveloperVerificationUserResponse:I

.field public mDeveloperVerifierBindStartedMillis:J

.field public mDeveloperVerifierConnectedMillis:J

.field public mDeveloperVerifierRequestSentMillis:J

.field public mDeveloperVerifierRetryRequestSentMillis:J

.field public mDeveloperVerifierUid:I

.field public mFinishedMillis:J

.field public final mForceQueryableOverride:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHasDeveloperVerificationExtensionParams:Z

.field public final mInstallFlags:I

.field public final mInstallLocation:I

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallerUid:I

.field public mInternalInstallationFinished:J

.field public mInternalInstallationStarted:J

.field public final mIsAutoInstallDependenciesEnabled:Z

.field public mIsDeveloperVerificationBypassedReason:I

.field public mIsDeveloperVerificationPolicyOverridden:Z

.field public mIsDeveloperVerificationTimeoutExtensionRequested:Z

.field public mIsExpired:Z

.field public final mIsMultiPackage:Z

.field public mIsPreapproval:Z

.field public final mIsStaged:Z

.field public final mIsUnarchive:Z

.field public final mMode:I

.field public mNativeLibExtractionFinishedMillis:J

.field public mNativeLibExtractionStartedMillis:J

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPackageNameWhenDeveloperVerificationFailed:Ljava/lang/String;

.field public final mParentSessionId:I

.field public final mRequireUserAction:I

.field public final mRequiredInstalledVersionCode:J

.field public final mRollbackDataPolicy:I

.field public final mRollbackImpactLevel:I

.field public final mRollbackLifetimeMillis:J

.field public final mSessionId:I

.field public mStatusCode:I

.field public mUidOfPackageInstalled:I

.field public final mUserId:I

.field public mVerificationFinishedMillis:J

.field public mVerificationStartedMillis:J

.field public mWasDeveloperVerificationUserActionRequired:Z

.field public mWasDeveloperVerificationUserResponseReceived:Z

.field public mWasUserActionIntentSent:Z

.field public mWasUserResponseReceived:Z


# direct methods
.method public static synthetic $r8$lambda$HPdgdodDIe85Kuk-YOCQhA2pUQA(Lcom/android/server/pm/SessionMetrics;JJJJJJJJ)V
    .registers 17

    .line 0
    invoke-virtual/range {p0 .. p16}, Lcom/android/server/pm/SessionMetrics;->lambda$reportStats$0(JJJJJJJJ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;IIILandroid/content/pm/PackageInstaller$SessionParams;JJZ[IIII)V
    .registers 20

    move-object/from16 v0, p11

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/android/server/pm/SessionMetrics;->mIsExpired:Z

    const/4 v2, -0x1

    .line 88
    iput v2, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierUid:I

    .line 89
    iput v1, p0, Lcom/android/server/pm/SessionMetrics;->mIsDeveloperVerificationBypassedReason:I

    .line 91
    iput-boolean v1, p0, Lcom/android/server/pm/SessionMetrics;->mIsDeveloperVerificationTimeoutExtensionRequested:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/server/pm/SessionMetrics;->mIsDeveloperVerificationPolicyOverridden:Z

    .line 94
    sget-object v3, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->UNKNOWN:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    iput-object v3, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 98
    iput-boolean v1, p0, Lcom/android/server/pm/SessionMetrics;->mWasDeveloperVerificationUserActionRequired:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/server/pm/SessionMetrics;->mWasDeveloperVerificationUserResponseReceived:Z

    .line 102
    iput v2, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationUserResponse:I

    const/4 v3, 0x0

    .line 107
    iput-object v3, p0, Lcom/android/server/pm/SessionMetrics;->mPackageNameWhenDeveloperVerificationFailed:Ljava/lang/String;

    .line 110
    iput v2, p0, Lcom/android/server/pm/SessionMetrics;->mUidOfPackageInstalled:I

    .line 118
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    iput-object v4, p0, Lcom/android/server/pm/SessionMetrics;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 119
    iput-object p1, p0, Lcom/android/server/pm/SessionMetrics;->mHandler:Landroid/os/Handler;

    .line 120
    iput p2, p0, Lcom/android/server/pm/SessionMetrics;->mSessionId:I

    .line 121
    iput p3, p0, Lcom/android/server/pm/SessionMetrics;->mUserId:I

    .line 122
    iput p4, p0, Lcom/android/server/pm/SessionMetrics;->mInstallerUid:I

    if-nez v0, :cond_35

    goto :goto_3a

    .line 124
    :cond_35
    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    :goto_3a
    iput-object v3, p0, Lcom/android/server/pm/SessionMetrics;->mChildSessionIds:[I

    move/from16 p1, p12

    .line 125
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mParentSessionId:I

    .line 126
    iput-wide p6, p0, Lcom/android/server/pm/SessionMetrics;->mCreatedMillis:J

    if-eqz p10, :cond_45

    goto :goto_47

    :cond_45
    const-wide/16 p8, 0x0

    .line 127
    :goto_47
    iput-wide p8, p0, Lcom/android/server/pm/SessionMetrics;->mCommittedMillis:J

    move/from16 p1, p13

    .line 128
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mStatusCode:I

    .line 130
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mMode:I

    .line 131
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mRequireUserAction:I

    .line 132
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mInstallFlags:I

    .line 133
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mInstallLocation:I

    .line 134
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mInstallReason:I

    .line 135
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mInstallScenario:I

    .line 136
    iget-boolean p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean p1, p0, Lcom/android/server/pm/SessionMetrics;->mIsStaged:Z

    .line 137
    iget-wide p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p1, p0, Lcom/android/server/pm/SessionMetrics;->mRequiredInstalledVersionCode:J

    .line 138
    iget-object p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez p1, :cond_73

    move p1, v1

    goto :goto_77

    .line 139
    :cond_73
    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p1

    :goto_77
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mDataLoaderType:I

    .line 140
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mRollbackDataPolicy:I

    .line 141
    iget-wide p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    iput-wide p1, p0, Lcom/android/server/pm/SessionMetrics;->mRollbackLifetimeMillis:J

    .line 142
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mRollbackImpactLevel:I

    .line 143
    iget-boolean p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean p1, p0, Lcom/android/server/pm/SessionMetrics;->mForceQueryableOverride:Z

    .line 144
    iget-boolean p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean p1, p0, Lcom/android/server/pm/SessionMetrics;->mApplicationEnabledSettingPersistent:Z

    .line 145
    iget-boolean p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean p1, p0, Lcom/android/server/pm/SessionMetrics;->mIsMultiPackage:Z

    .line 146
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    const/4 p2, 0x1

    if-eq p1, v2, :cond_98

    move p1, p2

    goto :goto_99

    :cond_98
    move p1, v1

    :goto_99
    iput-boolean p1, p0, Lcom/android/server/pm/SessionMetrics;->mIsUnarchive:Z

    .line 147
    iget-boolean p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/pm/SessionMetrics;->mIsAutoInstallDependenciesEnabled:Z

    move/from16 p1, p14

    .line 148
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mDefaultDeveloperVerificationPolicy:I

    .line 149
    iget-object p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->extensionParams:Landroid/os/PersistableBundle;

    if-eqz p1, :cond_ae

    .line 150
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ae

    move v1, p2

    :cond_ae
    iput-boolean v1, p0, Lcom/android/server/pm/SessionMetrics;->mHasDeveloperVerificationExtensionParams:Z

    return-void
.end method

.method public static getTranslatedAppMetadataVerificationStatusForStats(I)I
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

.method public static getTranslatedDeveloperVerificationUserActionReasonForStats(I)I
    .registers 2

    .line 0
    if-eqz p0, :cond_e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    return v0

    :cond_e
    const/4 p0, 0x4

    return p0
.end method

.method public static getTranslatedDeveloperVerificationUserResponseForStats(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x4

    return p0

    :cond_f
    return v0

    :cond_10
    return v1

    :cond_11
    return v0
.end method

.method public static getTranslatedPolicyCodeForStats(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x4

    return p0

    :cond_f
    return v0

    :cond_10
    return v1

    :cond_11
    return v0
.end method

.method public static getTranslatedResponseCodeForStats(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_14

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/4 p0, 0x5

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :pswitch_d
    const/4 p0, 0x3

    return p0

    :pswitch_f
    const/4 p0, 0x2

    return p0

    :pswitch_11
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static getTranslatedStatusCodeForStats(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_20

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0xb

    return p0

    :pswitch_8
    const/16 p0, 0xa

    return p0

    :pswitch_b
    const/16 p0, 0x9

    return p0

    :pswitch_e
    const/16 p0, 0x8

    return p0

    :pswitch_11
    const/4 p0, 0x7

    return p0

    :pswitch_13
    const/4 p0, 0x6

    return p0

    :pswitch_15
    const/4 p0, 0x5

    return p0

    :pswitch_17
    const/4 p0, 0x4

    return p0

    :pswitch_19
    const/4 p0, 0x3

    return p0

    :pswitch_1b
    const/4 p0, 0x2

    return p0

    :pswitch_1d
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_20
    .packed-switch -0x2
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getTranslatedModeForStats(I)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    const/4 v0, 0x1

    if-eq p1, p0, :cond_d

    const/4 p0, 0x2

    if-eq p1, v0, :cond_c

    if-eq p1, p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x3

    :cond_c
    return p0

    :cond_d
    return v0
.end method

.method public getTranslatedRollbackDataPolicyForStats(I)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_d

    if-eq p1, p0, :cond_c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x4

    return p0

    :cond_c
    const/4 p0, 0x3

    :cond_d
    return p0
.end method

.method public getTranslatedRollbackImpactLevelForStats(I)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_d

    const/4 v0, 0x2

    if-eq p1, p0, :cond_c

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    return v0

    :cond_d
    return p0
.end method

.method public final synthetic lambda$reportStats$0(JJJJJJJJ)V
    .registers 88

    move-object/from16 v0, p0

    .line 300
    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mSessionId:I

    iget v2, v0, Lcom/android/server/pm/SessionMetrics;->mUserId:I

    iget v3, v0, Lcom/android/server/pm/SessionMetrics;->mInstallerUid:I

    iget-object v4, v0, Lcom/android/server/pm/SessionMetrics;->mChildSessionIds:[I

    iget v5, v0, Lcom/android/server/pm/SessionMetrics;->mParentSessionId:I

    iget v6, v0, Lcom/android/server/pm/SessionMetrics;->mMode:I

    .line 307
    invoke-virtual {v0, v6}, Lcom/android/server/pm/SessionMetrics;->getTranslatedModeForStats(I)I

    move-result v6

    iget v7, v0, Lcom/android/server/pm/SessionMetrics;->mRequireUserAction:I

    iget v8, v0, Lcom/android/server/pm/SessionMetrics;->mInstallFlags:I

    iget v9, v0, Lcom/android/server/pm/SessionMetrics;->mInstallLocation:I

    iget v10, v0, Lcom/android/server/pm/SessionMetrics;->mInstallReason:I

    iget v11, v0, Lcom/android/server/pm/SessionMetrics;->mInstallScenario:I

    iget-boolean v12, v0, Lcom/android/server/pm/SessionMetrics;->mIsStaged:Z

    iget-wide v13, v0, Lcom/android/server/pm/SessionMetrics;->mRequiredInstalledVersionCode:J

    iget v15, v0, Lcom/android/server/pm/SessionMetrics;->mDataLoaderType:I

    move/from16 v16, v1

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mRollbackDataPolicy:I

    .line 316
    invoke-virtual {v0, v1}, Lcom/android/server/pm/SessionMetrics;->getTranslatedRollbackDataPolicyForStats(I)I

    move-result v1

    move/from16 v18, v1

    move/from16 v17, v2

    iget-wide v1, v0, Lcom/android/server/pm/SessionMetrics;->mRollbackLifetimeMillis:J

    move-wide/from16 v19, v1

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mRollbackImpactLevel:I

    .line 318
    invoke-virtual {v0, v1}, Lcom/android/server/pm/SessionMetrics;->getTranslatedRollbackImpactLevelForStats(I)I

    move-result v1

    iget-boolean v2, v0, Lcom/android/server/pm/SessionMetrics;->mForceQueryableOverride:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mApplicationEnabledSettingPersistent:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mIsMultiPackage:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mIsPreapproval:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mIsUnarchive:Z

    move/from16 v25, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mIsAutoInstallDependenciesEnabled:Z

    move/from16 v27, v1

    move/from16 v26, v2

    iget-wide v1, v0, Lcom/android/server/pm/SessionMetrics;->mApksSizeBytes:J

    move-wide/from16 v28, v1

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mStatusCode:I

    .line 327
    invoke-static {v1}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    .line 326
    invoke-static {v1}, Lcom/android/server/pm/SessionMetrics;->getTranslatedStatusCodeForStats(I)I

    move-result v1

    iget-boolean v2, v0, Lcom/android/server/pm/SessionMetrics;->mWasUserActionIntentSent:Z

    move/from16 v30, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mIsExpired:Z

    move/from16 v31, v1

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mDefaultDeveloperVerificationPolicy:I

    .line 336
    invoke-static {v1}, Lcom/android/server/pm/SessionMetrics;->getTranslatedPolicyCodeForStats(I)I

    move-result v43

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierUid:I

    move/from16 v44, v1

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mIsDeveloperVerificationBypassedReason:I

    move/from16 v45, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mIsDeveloperVerificationTimeoutExtensionRequested:Z

    move/from16 v46, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mHasDeveloperVerificationExtensionParams:Z

    move/from16 v47, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mIsDeveloperVerificationPolicyOverridden:Z

    move/from16 v48, v1

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationPolicyOverride:I

    .line 342
    invoke-static {v1}, Lcom/android/server/pm/SessionMetrics;->getTranslatedPolicyCodeForStats(I)I

    move-result v49

    iget-object v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 345
    invoke-virtual {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->getInternalStatus()I

    move-result v1

    .line 344
    invoke-static {v1}, Lcom/android/server/pm/SessionMetrics;->getTranslatedResponseCodeForStats(I)I

    move-result v50

    iget-object v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 347
    invoke-virtual {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->getAppMetadataVerificationStatus()I

    move-result v1

    .line 346
    invoke-static {v1}, Lcom/android/server/pm/SessionMetrics;->getTranslatedAppMetadataVerificationStatusForStats(I)I

    move-result v51

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mWasDeveloperVerificationUserActionRequired:Z

    move/from16 v52, v1

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationUserActionRequiredReason:I

    .line 350
    invoke-static {v1}, Lcom/android/server/pm/SessionMetrics;->getTranslatedDeveloperVerificationUserActionReasonForStats(I)I

    move-result v53

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationUserResponse:I

    .line 352
    invoke-static {v1}, Lcom/android/server/pm/SessionMetrics;->getTranslatedDeveloperVerificationUserResponseForStats(I)I

    move-result v54

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationRetryCount:I

    move/from16 v55, v1

    iget-object v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 355
    invoke-virtual {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->isLiteVerification()Z

    move-result v56

    iget v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationFailureReason:I

    move/from16 v57, v1

    iget-object v1, v0, Lcom/android/server/pm/SessionMetrics;->mPackageNameWhenDeveloperVerificationFailed:Ljava/lang/String;

    move-object/from16 v58, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationCancelled:Z

    move/from16 v59, v1

    move/from16 v32, v2

    iget-wide v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationDurationMillis:J

    move-wide/from16 v60, v1

    iget-wide v1, v0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationRetryDurationMillis:J

    move-wide/from16 v64, v1

    iget-boolean v1, v0, Lcom/android/server/pm/SessionMetrics;->mWasUserResponseReceived:Z

    iget-boolean v2, v0, Lcom/android/server/pm/SessionMetrics;->mWasDeveloperVerificationUserResponseReceived:Z

    iget v0, v0, Lcom/android/server/pm/SessionMetrics;->mUidOfPackageInstalled:I

    move/from16 v70, v0

    const/16 v0, 0x44d

    move-wide/from16 v33, p3

    move-wide/from16 v35, p5

    move-wide/from16 v37, p7

    move-wide/from16 v39, p9

    move-wide/from16 v41, p11

    move-wide/from16 v62, p13

    move-wide/from16 v66, p15

    move/from16 v68, v1

    move/from16 v69, v2

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v16, v18

    move-wide/from16 v17, v19

    move/from16 v19, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v20, v26

    move/from16 v25, v27

    move-wide/from16 v26, v28

    move/from16 v28, v30

    move/from16 v30, v31

    move/from16 v29, v32

    move-wide/from16 v31, p1

    .line 300
    invoke-static/range {v0 .. v70}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[IIIIIIIIZJIIJIZZZZZZJIZZJJJJJJIIIZZZIIIZIIIZILjava/lang/String;ZJJJJZZI)V

    return-void
.end method

.method public onAddedApksSizeBytesCalculated(J)V
    .registers 3

    .line 279
    iput-wide p1, p0, Lcom/android/server/pm/SessionMetrics;->mApksSizeBytes:J

    return-void
.end method

.method public onDeveloperVerificationBindStarted(I)V
    .registers 4

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierBindStartedMillis:J

    .line 211
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierUid:I

    return-void
.end method

.method public onDeveloperVerificationBypassed(I)V
    .registers 2

    .line 228
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mIsDeveloperVerificationBypassedReason:I

    return-void
.end method

.method public onDeveloperVerificationCancelled()V
    .registers 2

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationCancelled:Z

    return-void
.end method

.method public onDeveloperVerificationFailed(ILjava/lang/String;)V
    .registers 3

    .line 270
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationFailureReason:I

    .line 271
    iput-object p2, p0, Lcom/android/server/pm/SessionMetrics;->mPackageNameWhenDeveloperVerificationFailed:Ljava/lang/String;

    return-void
.end method

.method public onDeveloperVerificationFinished(Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;)V
    .registers 10

    .line 242
    iput-object p1, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    iget-wide v2, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierRequestSentMillis:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_18

    iget-wide v6, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierRetryRequestSentMillis:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_18

    sub-long/2addr v0, v2

    .line 246
    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationDurationMillis:J

    return-void

    .line 248
    :cond_18
    iget-wide v2, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierRetryRequestSentMillis:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_24

    .line 250
    iget-wide v4, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationRetryDurationMillis:J

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationRetryDurationMillis:J

    :cond_24
    return-void
.end method

.method public onDeveloperVerificationPolicyOverridden(I)V
    .registers 3

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/android/server/pm/SessionMetrics;->mIsDeveloperVerificationPolicyOverridden:Z

    .line 238
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationPolicyOverride:I

    return-void
.end method

.method public onDeveloperVerificationRequestSent()V
    .registers 3

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierRequestSentMillis:J

    return-void
.end method

.method public onDeveloperVerificationRetryRequestSent()V
    .registers 3

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierRetryRequestSentMillis:J

    .line 224
    iget v0, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationRetryCount:I

    return-void
.end method

.method public onDeveloperVerificationTimeoutExtensionRequested()V
    .registers 2

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/android/server/pm/SessionMetrics;->mIsDeveloperVerificationTimeoutExtensionRequested:Z

    return-void
.end method

.method public onDeveloperVerificationUserActionRequired(I)V
    .registers 3

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/android/server/pm/SessionMetrics;->mWasDeveloperVerificationUserActionRequired:Z

    .line 259
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationUserActionRequiredReason:I

    return-void
.end method

.method public onDeveloperVerificationUserResponseReceived(I)V
    .registers 2

    .line 264
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerificationUserResponse:I

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/android/server/pm/SessionMetrics;->mWasDeveloperVerificationUserResponseReceived:Z

    return-void
.end method

.method public onDeveloperVerifierConnectionEstablished()V
    .registers 3

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierConnectedMillis:J

    return-void
.end method

.method public onInternalInstallationFinished()V
    .registers 3

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mInternalInstallationFinished:J

    return-void
.end method

.method public onInternalInstallationStarted()V
    .registers 3

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mInternalInstallationStarted:J

    return-void
.end method

.method public onNativeLibExtractionFinished()V
    .registers 3

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mNativeLibExtractionFinishedMillis:J

    return-void
.end method

.method public onNativeLibExtractionStarted()V
    .registers 3

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mNativeLibExtractionStartedMillis:J

    return-void
.end method

.method public onPreapprovalSet()V
    .registers 2

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/server/pm/SessionMetrics;->mIsPreapproval:Z

    return-void
.end method

.method public onSessionCommitted(J)V
    .registers 3

    .line 166
    iput-wide p1, p0, Lcom/android/server/pm/SessionMetrics;->mCommittedMillis:J

    return-void
.end method

.method public onSessionExpired()V
    .registers 3

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mFinishedMillis:J

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/android/server/pm/SessionMetrics;->mIsExpired:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->reportStats()V

    return-void
.end method

.method public onSessionFinished(ILjava/lang/String;)V
    .registers 6

    .line 194
    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mStatusCode:I

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mFinishedMillis:J

    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    if-eqz p2, :cond_19

    .line 197
    iget-object p1, p0, Lcom/android/server/pm/SessionMetrics;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/android/server/pm/SessionMetrics;->mUserId:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/SessionMetrics;->mUidOfPackageInstalled:I

    .line 200
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->reportStats()V

    return-void
.end method

.method public onSessionVerificationFinished()V
    .registers 3

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mVerificationFinishedMillis:J

    return-void
.end method

.method public onSessionVerificationStarted()V
    .registers 3

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/SessionMetrics;->mVerificationStartedMillis:J

    return-void
.end method

.method public onUserActionIntentSent()V
    .registers 2

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/android/server/pm/SessionMetrics;->mWasUserActionIntentSent:Z

    return-void
.end method

.method public onUserResponseReceived()V
    .registers 2

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/android/server/pm/SessionMetrics;->mWasUserResponseReceived:Z

    return-void
.end method

.method public final reportStats()V
    .registers 24

    move-object/from16 v1, p0

    .line 283
    iget-wide v2, v1, Lcom/android/server/pm/SessionMetrics;->mCommittedMillis:J

    iget-wide v4, v1, Lcom/android/server/pm/SessionMetrics;->mCreatedMillis:J

    move-wide v6, v2

    sub-long v2, v6, v4

    .line 284
    iget-wide v8, v1, Lcom/android/server/pm/SessionMetrics;->mFinishedMillis:J

    sub-long v6, v8, v6

    .line 285
    iget-wide v10, v1, Lcom/android/server/pm/SessionMetrics;->mNativeLibExtractionFinishedMillis:J

    iget-wide v12, v1, Lcom/android/server/pm/SessionMetrics;->mNativeLibExtractionStartedMillis:J

    sub-long/2addr v10, v12

    .line 287
    iget-wide v12, v1, Lcom/android/server/pm/SessionMetrics;->mVerificationFinishedMillis:J

    iget-wide v14, v1, Lcom/android/server/pm/SessionMetrics;->mVerificationStartedMillis:J

    sub-long/2addr v12, v14

    .line 289
    iget-wide v14, v1, Lcom/android/server/pm/SessionMetrics;->mInternalInstallationFinished:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lcom/android/server/pm/SessionMetrics;->mInternalInstallationStarted:J

    sub-long/2addr v14, v2

    sub-long/2addr v8, v4

    .line 293
    iget-wide v2, v1, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierConnectedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_28

    goto :goto_2c

    .line 295
    :cond_28
    iget-wide v4, v1, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierBindStartedMillis:J

    sub-long v4, v2, v4

    .line 296
    :goto_2c
    iget-wide v2, v1, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierRequestSentMillis:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/android/server/pm/SessionMetrics;->mDeveloperVerifierBindStartedMillis:J

    sub-long v2, v18, v2

    .line 299
    iget-object v0, v1, Lcom/android/server/pm/SessionMetrics;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v0, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;

    move-wide/from16 v21, v14

    move-wide v14, v2

    move-wide/from16 v2, v16

    move-wide/from16 v16, v4

    move-wide v4, v6

    move-wide v6, v10

    move-wide/from16 v10, v21

    move-wide/from16 v21, v12

    move-wide v12, v8

    move-wide/from16 v8, v21

    move-object/from16 v20, v18

    invoke-direct/range {v0 .. v17}, Lcom/android/server/pm/SessionMetrics$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/SessionMetrics;JJJJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
