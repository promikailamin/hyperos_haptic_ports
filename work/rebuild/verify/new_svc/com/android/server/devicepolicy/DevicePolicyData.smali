.class public Lcom/android/server/devicepolicy/DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyData.java"


# instance fields
.field public final mAcceptedCaCertificates:Landroid/util/ArraySet;

.field public mAdminBroadcastPending:Z

.field public final mAdminList:Ljava/util/ArrayList;

.field public final mAdminMap:Landroid/util/ArrayMap;

.field public mAffiliationIds:Ljava/util/Set;

.field public mAppsSuspended:Z

.field public mBypassDevicePolicyManagementRoleQualifications:Z

.field public mCurrentInputMethodSet:Z

.field public mCurrentRoleHolder:Ljava/lang/String;

.field public final mDelegationMap:Landroid/util/ArrayMap;

.field public mDeviceProvisioningConfigApplied:Z

.field public mDoNotAskCredentialsOnBoot:Z

.field public mEffectiveKeepProfilesRunning:Z

.field public mFactoryResetFlags:I

.field public mFactoryResetReason:Ljava/lang/String;

.field public mFailedPasswordAttempts:I

.field public mInitBundle:Landroid/os/PersistableBundle;

.field public mLastBugReportRequestTime:J

.field public mLastMaximumTimeToLock:J

.field public mLastNetworkLogsRetrievalTime:J

.field public mLastSecurityLogRetrievalTime:J

.field public mLockTaskFeatures:I

.field public mLockTaskPackages:Ljava/util/List;

.field public mNewUserDisclaimer:Ljava/lang/String;

.field public mOwnerInstalledCaCerts:Ljava/util/Set;

.field public mPaired:Z

.field public mPasswordOwner:I

.field public mPasswordTokenHandle:J

.field public mPasswordValidAtLastCheckpoint:Z

.field public mPermissionPolicy:I

.field public final mRemovingAdmins:Ljava/util/ArrayList;

.field public mRestrictionsProvider:Landroid/content/ComponentName;

.field public mSecondaryLockscreenEnabled:Z

.field public mStatusBarDisabled:Z

.field public mUserControlDisabledPackages:Ljava/util/List;

.field public final mUserId:I

.field public mUserProvisioningState:I

.field public mUserSetupComplete:Z


# direct methods
.method public constructor <init>(I)V
    .registers 6

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    const-wide/16 v1, -0x1

    .line 110
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 111
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 123
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    .line 128
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    const/16 v3, 0x10

    .line 140
    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 142
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 147
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 149
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    .line 151
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 153
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 155
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 157
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 159
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 161
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 164
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 167
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    const/4 v1, 0x0

    .line 168
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    const-wide/16 v1, 0x0

    .line 170
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 174
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 178
    const-string/jumbo v1, "not_needed"

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 184
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 187
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    return-void
.end method

.method public static factoryResetFlagsToString(I)Ljava/lang/String;
    .registers 4

    .line 709
    const-string v0, "FACTORY_RESET_FLAG_"

    int-to-long v1, p0

    const-class p0, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-static {p0, v0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V
    .registers 15

    .line 414
    const-string v0, "DevicePolicyManager"

    .line 415
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    .line 419
    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_306
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_c} :catch_2fc
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_c} :catch_2fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_c} :catch_2fc
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_2fc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_c} :catch_2fc

    .line 420
    :try_start_c
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 423
    :goto_10
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1b

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1b

    goto :goto_10

    .line 426
    :cond_1b
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 427
    const-string/jumbo v6, "policies"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e5

    .line 433
    const-string/jumbo v4, "permission-provider"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 436
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    goto :goto_3f

    :catch_38
    move-exception p2

    move-object v1, v2

    goto/16 :goto_2fd

    :catch_3c
    move-object v1, v2

    goto/16 :goto_306

    .line 438
    :cond_3f
    :goto_3f
    const-string/jumbo v4, "setup-complete"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 441
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 443
    :cond_52
    const-string v4, "device-paired"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 445
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 447
    :cond_64
    const-string v4, "device-provisioning-config-applied"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 450
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 452
    :cond_76
    const-string/jumbo v4, "provisioning-state"

    const/4 v6, -0x1

    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_82

    .line 454
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    .line 456
    :cond_82
    const-string/jumbo v4, "permission-policy"

    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_8d

    .line 458
    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    .line 460
    :cond_8d
    const-string/jumbo v4, "new-user-disclaimer"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 462
    const-string v4, "factory-reset-flags"

    const/4 v6, 0x0

    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 467
    const-string v4, "factory-reset-reason"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 469
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 470
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 471
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 472
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 473
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 474
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 475
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 476
    :cond_c6
    :goto_c6
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v5, :cond_307

    const/4 v8, 0x3

    if-ne v7, v8, :cond_d5

    .line 477
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_307

    :cond_d5
    if-eq v7, v8, :cond_c6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_db

    goto :goto_c6

    .line 481
    :cond_db
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 482
    const-string v8, "admin"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_e5
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_e5} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_e5} :catch_38
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_e5} :catch_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_e5} :catch_38
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_e5} :catch_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_e5} :catch_38

    const-string/jumbo v9, "name"

    if-eqz v8, :cond_122

    .line 483
    :try_start_ea
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_ea .. :try_end_ee} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_ea .. :try_end_ee} :catch_38
    .catch Ljava/lang/NumberFormatException; {:try_start_ea .. :try_end_ee} :catch_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ea .. :try_end_ee} :catch_38
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ee} :catch_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ea .. :try_end_ee} :catch_38

    .line 486
    :try_start_ee
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 485
    invoke-interface {p2, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DeviceAdminInfo;

    if-eqz v8, :cond_c6

    .line 492
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v5

    .line 493
    new-instance v10, Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-direct {v10, v8, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    .line 494
    invoke-virtual {v10, v3, v9}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    .line 495
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    iget-object v9, v10, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_116
    .catch Ljava/lang/RuntimeException; {:try_start_ee .. :try_end_116} :catch_117
    .catch Ljava/io/FileNotFoundException; {:try_start_ee .. :try_end_116} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ee .. :try_end_116} :catch_38
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_116} :catch_38

    goto :goto_c6

    :catch_117
    move-exception v8

    .line 498
    :try_start_118
    const-string v9, "Failed loading admin %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v8, v9, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c6

    .line 500
    :cond_122
    const-string v8, "delegation"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_156

    .line 502
    const-string v7, "delegatePackage"

    invoke-interface {v3, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 504
    const-string/jumbo v8, "scope"

    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 507
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_14b

    .line 510
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 511
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_14b
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c6

    .line 515
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c6

    .line 517
    :cond_156
    const-string v8, "failed-password-attempts"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_15c
    .catch Ljava/io/FileNotFoundException; {:try_start_118 .. :try_end_15c} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_118 .. :try_end_15c} :catch_38
    .catch Ljava/lang/NumberFormatException; {:try_start_118 .. :try_end_15c} :catch_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_118 .. :try_end_15c} :catch_38
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_15c} :catch_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_118 .. :try_end_15c} :catch_38

    const-string/jumbo v10, "value"

    if-eqz v8, :cond_169

    .line 518
    :try_start_161
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    goto/16 :goto_c6

    .line 519
    :cond_169
    const-string/jumbo v8, "password-owner"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17a

    .line 520
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    goto/16 :goto_c6

    .line 521
    :cond_17a
    const-string v8, "accepted-ca-certificate"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18d

    .line 522
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c6

    .line 523
    :cond_18d
    const-string/jumbo v8, "lock-task-component"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a1

    .line 524
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c6

    .line 525
    :cond_1a1
    const-string/jumbo v8, "lock-task-features"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b2

    .line 526
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    goto/16 :goto_c6

    .line 527
    :cond_1b2
    const-string/jumbo v8, "secondary-lock-screen"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c3

    .line 529
    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    goto/16 :goto_c6

    .line 530
    :cond_1c3
    const-string/jumbo v8, "statusbar"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d6

    .line 531
    const-string v7, "disabled"

    .line 532
    invoke-interface {v3, v1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    goto/16 :goto_c6

    .line 533
    :cond_1d6
    const-string v8, "do-not-ask-credentials-on-boot"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e2

    .line 534
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    goto/16 :goto_c6

    .line 535
    :cond_1e2
    const-string v8, "affiliation-id"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f7

    .line 536
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    const-string v8, "id"

    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c6

    .line 537
    :cond_1f7
    const-string/jumbo v8, "last-security-log-retrieval"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_208

    .line 539
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    goto/16 :goto_c6

    .line 540
    :cond_208
    const-string/jumbo v8, "last-bug-report-request"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_219

    .line 542
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    goto/16 :goto_c6

    .line 543
    :cond_219
    const-string/jumbo v8, "last-network-log-retrieval"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22a

    .line 545
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    goto/16 :goto_c6

    .line 546
    :cond_22a
    const-string v8, "admin-broadcast-pending"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_242

    .line 547
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 548
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    goto/16 :goto_c6

    .line 549
    :cond_242
    const-string v8, "initialization-bundle"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_252

    .line 550
    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    goto/16 :goto_c6

    .line 551
    :cond_252
    const-string/jumbo v8, "password-token"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_263

    .line 552
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    goto/16 :goto_c6

    .line 553
    :cond_263
    const-string v8, "current-ime-set"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26f

    .line 554
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    goto/16 :goto_c6

    .line 555
    :cond_26f
    const-string/jumbo v8, "owner-installed-ca-cert"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_285

    .line 556
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    const-string v8, "alias"

    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c6

    .line 557
    :cond_285
    const-string v8, "apps-suspended"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_295

    .line 559
    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    goto/16 :goto_c6

    .line 560
    :cond_295
    const-string v8, "bypass-role-qualifications"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a7

    .line 561
    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 562
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    goto/16 :goto_c6

    .line 563
    :cond_2a7
    const-string/jumbo v8, "keep-profiles-running"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b8

    .line 564
    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    goto/16 :goto_c6

    .line 567
    :cond_2b8
    const-string/jumbo v8, "protected-packages"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d7

    .line 568
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    if-nez v7, :cond_2cc

    .line 569
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 571
    :cond_2cc
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 572
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 571
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c6

    .line 574
    :cond_2d7
    const-string v8, "Unknown tag: %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v8, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_c6

    .line 428
    :cond_2e5
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings do not start with policies tag: found "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2fc
    .catch Ljava/io/FileNotFoundException; {:try_start_161 .. :try_end_2fc} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_161 .. :try_end_2fc} :catch_38
    .catch Ljava/lang/NumberFormatException; {:try_start_161 .. :try_end_2fc} :catch_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_161 .. :try_end_2fc} :catch_38
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_2fc} :catch_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_161 .. :try_end_2fc} :catch_38

    :catch_2fc
    move-exception p2

    .line 582
    :goto_2fd
    const-string p3, "failed parsing %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p2, p3, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_306
    :goto_306
    move-object v2, v1

    :cond_307
    if-eqz v2, :cond_30c

    .line 586
    :try_start_309
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_30c
    .catch Ljava/io/IOException; {:try_start_309 .. :try_end_30c} :catch_30c

    .line 593
    :catch_30c
    :cond_30c
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;)Z
    .registers 30

    move-object/from16 v0, p0

    .line 194
    const-string v1, "admin-broadcast-pending"

    const-string/jumbo v2, "last-network-log-retrieval"

    const-string/jumbo v3, "last-bug-report-request"

    const-string/jumbo v4, "last-security-log-retrieval"

    const-string v5, "affiliation-id"

    const-string v6, "do-not-ask-credentials-on-boot"

    const-string/jumbo v7, "statusbar"

    const-string/jumbo v8, "secondary-lock-screen"

    const-string/jumbo v9, "lock-task-features"

    const-string/jumbo v10, "lock-task-component"

    const-string v11, "accepted-ca-certificate"

    const-string v12, "failed-password-attempts"

    const-string/jumbo v13, "password-owner"

    const-string v14, "admin"

    const-string v15, "delegation"

    move-object/from16 v16, v1

    const-string/jumbo v1, "policies"

    move-object/from16 v17, v2

    .line 197
    :try_start_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v2
    :try_end_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_33} :catch_324
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_324

    move-object/from16 v19, v3

    .line 201
    :try_start_35
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_3d} :catch_31f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3d} :catch_31f

    .line 202
    :try_start_3d
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4
    :try_end_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_41} :catch_319
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_319

    move-object/from16 v21, v2

    .line 203
    :try_start_43
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_45} :catch_314
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_45} :catch_314

    move-object/from16 v22, v3

    const/4 v3, 0x0

    :try_start_48
    invoke-interface {v4, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 205
    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v2, :cond_65

    .line 207
    const-string/jumbo v3, "permission-provider"

    .line 208
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v1

    const/4 v1, 0x0

    .line 207
    invoke-interface {v4, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_67

    :catch_60
    move-exception v0

    :goto_61
    move-object/from16 v2, v21

    goto/16 :goto_329

    :cond_65
    move-object/from16 v23, v1

    .line 210
    :goto_67
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_73

    .line 212
    const-string/jumbo v1, "setup-complete"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    :cond_73
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    if-eqz v1, :cond_7d

    .line 215
    const-string v1, "device-paired"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    :cond_7d
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    if-eqz v1, :cond_87

    .line 218
    const-string v1, "device-provisioning-config-applied"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    :cond_87
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    if-eqz v1, :cond_92

    .line 221
    const-string/jumbo v3, "provisioning-state"

    const/4 v2, 0x0

    invoke-interface {v4, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    :cond_92
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    if-eqz v1, :cond_9d

    .line 224
    const-string/jumbo v2, "permission-policy"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    :cond_9d
    const-string/jumbo v1, "needed"

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 227
    const-string/jumbo v1, "new-user-disclaimer"

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    :cond_b1
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v1, :cond_bb

    .line 235
    const-string v2, "factory-reset-flags"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    :cond_bb
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v1, :cond_c5

    .line 238
    const-string v2, "factory-reset-reason"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c5
    const/4 v1, 0x0

    .line 242
    :goto_c6
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_116

    .line 243
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 247
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_10f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move/from16 v26, v1

    move-object/from16 v1, v25

    check-cast v1, Ljava/lang/String;

    move-object/from16 v25, v3

    const/4 v3, 0x0

    .line 248
    invoke-interface {v4, v3, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v27, v5

    .line 249
    const-string v5, "delegatePackage"

    invoke-interface {v4, v3, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    const-string/jumbo v5, "scope"

    invoke-interface {v4, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    invoke-interface {v4, v3, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v3, v25

    move/from16 v1, v26

    move-object/from16 v5, v27

    goto :goto_e2

    :cond_10f
    move/from16 v26, v1

    move-object/from16 v27, v5

    add-int/lit8 v1, v26, 0x1

    goto :goto_c6

    :cond_116
    move-object/from16 v27, v5

    .line 255
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_11e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_11e} :catch_60
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_11e} :catch_60

    const/4 v2, 0x0

    .line 256
    :goto_11f
    const-string/jumbo v3, "name"

    if-ge v2, v1, :cond_150

    .line 257
    :try_start_124
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v5, :cond_149

    const/4 v15, 0x0

    .line 259
    invoke-interface {v4, v15, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    iget-object v15, v5, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v15}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    move/from16 v25, v1

    const/4 v1, 0x0

    invoke-interface {v4, v1, v3, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    invoke-virtual {v5, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 262
    invoke-interface {v4, v1, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_14b

    :cond_149
    move/from16 v25, v1

    :goto_14b
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v25

    goto :goto_11f

    .line 266
    :cond_150
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I
    :try_end_152
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_124 .. :try_end_152} :catch_60
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_152} :catch_60

    const-string/jumbo v2, "value"

    if-ltz v1, :cond_163

    const/4 v1, 0x0

    .line 267
    :try_start_158
    invoke-interface {v4, v1, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    iget v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-interface {v4, v1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    invoke-interface {v4, v1, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    :cond_163
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v1, :cond_173

    const/4 v1, 0x0

    .line 273
    invoke-interface {v4, v1, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    iget v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-interface {v4, v1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    invoke-interface {v4, v1, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_173
    const/4 v1, 0x0

    .line 278
    :goto_174
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_191

    const/4 v15, 0x0

    .line 279
    invoke-interface {v4, v15, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v15, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    invoke-interface {v4, v15, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_174

    :cond_191
    const/4 v1, 0x0

    .line 284
    :goto_192
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1af

    .line 285
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v15, 0x0

    .line 286
    invoke-interface {v4, v15, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    invoke-interface {v4, v15, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    invoke-interface {v4, v15, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_192

    .line 291
    :cond_1af
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    if-eqz v1, :cond_1bf

    const/4 v3, 0x0

    .line 292
    invoke-interface {v4, v3, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    invoke-interface {v4, v3, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    invoke-interface {v4, v3, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    :cond_1bf
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    if-eqz v1, :cond_1ce

    const/4 v3, 0x0

    .line 298
    invoke-interface {v4, v3, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x1

    .line 299
    invoke-interface {v4, v3, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    invoke-interface {v4, v3, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    :cond_1ce
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    if-eqz v1, :cond_1e0

    const/4 v3, 0x0

    .line 304
    invoke-interface {v4, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    const-string v1, "disabled"

    iget-boolean v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    invoke-interface {v4, v3, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    invoke-interface {v4, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    :cond_1e0
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    if-eqz v1, :cond_1eb

    const/4 v3, 0x0

    .line 310
    invoke-interface {v4, v3, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    invoke-interface {v4, v3, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    :cond_1eb
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v5, v27

    const/4 v15, 0x0

    .line 315
    invoke-interface {v4, v15, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    const-string v6, "id"

    invoke-interface {v4, v15, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    invoke-interface {v4, v15, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v27, v5

    goto :goto_1f1

    .line 320
    :cond_20e
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_224

    move-object/from16 v1, v20

    const/4 v3, 0x0

    .line 321
    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    invoke-interface {v4, v3, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    :cond_224
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_238

    move-object/from16 v1, v19

    const/4 v3, 0x0

    .line 327
    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    invoke-interface {v4, v3, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    :cond_238
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_24c

    move-object/from16 v1, v17

    const/4 v3, 0x0

    .line 333
    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    invoke-interface {v4, v3, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    :cond_24c
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    if-eqz v1, :cond_25e

    move-object/from16 v1, v16

    const/4 v3, 0x0

    .line 339
    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 340
    iget-boolean v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    invoke-interface {v4, v3, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    :cond_25e
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_272

    .line 345
    const-string v1, "initialization-bundle"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 347
    const-string v1, "initialization-bundle"

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    :cond_272
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_28a

    .line 351
    const-string/jumbo v1, "password-token"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    invoke-interface {v4, v3, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    const-string/jumbo v1, "password-token"

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    :cond_28a
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    if-eqz v1, :cond_299

    .line 357
    const-string v1, "current-ime-set"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    const-string v1, "current-ime-set"

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    :cond_299
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2be

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    const-string/jumbo v5, "owner-installed-ca-cert"

    const/4 v15, 0x0

    invoke-interface {v4, v15, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    const-string v5, "alias"

    invoke-interface {v4, v15, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    const-string/jumbo v3, "owner-installed-ca-cert"

    invoke-interface {v4, v15, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_29f

    .line 367
    :cond_2be
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    if-eqz v1, :cond_2d2

    .line 368
    const-string v1, "apps-suspended"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 369
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-interface {v4, v3, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 370
    const-string v1, "apps-suspended"

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    :cond_2d2
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    if-eqz v1, :cond_2e6

    .line 374
    const-string v1, "bypass-role-qualifications"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    const-string v1, "bypass-role-qualifications"

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    :cond_2e6
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    if-eqz v1, :cond_2fc

    .line 380
    const-string/jumbo v1, "keep-profiles-running"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    invoke-interface {v4, v3, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    const-string/jumbo v0, "keep-profiles-running"

    invoke-interface {v4, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2fc
    move-object/from16 v0, v23

    const/4 v3, 0x0

    .line 385
    invoke-interface {v4, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 388
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->flush()V

    .line 389
    invoke-static/range {v22 .. v22}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 390
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_311
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_158 .. :try_end_311} :catch_60
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_311} :catch_60

    const/16 v24, 0x1

    return v24

    :catch_314
    move-exception v0

    move-object/from16 v22, v3

    goto/16 :goto_61

    :catch_319
    move-exception v0

    move-object/from16 v21, v2

    :goto_31c
    move-object/from16 v22, v3

    goto :goto_329

    :catch_31f
    move-exception v0

    move-object/from16 v21, v2

    const/4 v3, 0x0

    goto :goto_31c

    :catch_324
    move-exception v0

    const/4 v3, 0x0

    move-object v2, v3

    move-object/from16 v22, v2

    .line 394
    :goto_329
    const-string v1, "failed writing file %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DevicePolicyManager"

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v22, :cond_339

    .line 397
    :try_start_336
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_339
    .catch Ljava/io/IOException; {:try_start_336 .. :try_end_339} :catch_339

    .line 402
    :catch_339
    :cond_339
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    const/16 v18, 0x0

    return v18
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 8

    .line 652
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled Device Admins (User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", provisioningState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_30
    if-ge v2, v0, :cond_60

    .line 657
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v3, :cond_5d

    .line 659
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 660
    iget-object v4, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 661
    const-string v4, ":"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 663
    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 664
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 665
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 668
    :cond_60
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 669
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Device Admins (User "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 673
    :cond_8e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 674
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 675
    const-string/jumbo v0, "mPasswordOwner="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 676
    const-string/jumbo v0, "mPasswordTokenHandle="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 677
    const-string/jumbo v0, "mAppsSuspended="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 678
    const-string/jumbo v0, "mUserSetupComplete="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 679
    const-string/jumbo v0, "mAffiliationIds="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 680
    const-string/jumbo v0, "mNewUserDisclaimer="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 681
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v0, :cond_fc

    .line 682
    const-string/jumbo v0, "mFactoryResetFlags="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 683
    const-string v0, " ("

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 684
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyData;->factoryResetFlagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x29

    .line 685
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(C)V

    .line 687
    :cond_fc
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v0, :cond_10b

    .line 688
    const-string/jumbo v0, "mFactoryResetReason="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 690
    :cond_10b
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-eqz v0, :cond_188

    .line 691
    const-string/jumbo v0, "mDelegationMap="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v1

    .line 693
    :goto_11d
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_185

    .line 694
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v1

    .line 698
    :goto_159
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_17f

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_159

    .line 701
    :cond_17f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11d

    .line 703
    :cond_185
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 705
    :cond_188
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public isNewUserDisclaimerAcknowledged()Z
    .registers 7

    .line 630
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const-string v1, "DevicePolicyManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1c

    .line 631
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    if-nez p0, :cond_d

    return v2

    .line 635
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 634
    const-string/jumbo v0, "isNewUserDisclaimerAcknowledged(%d): mNewUserDisclaimer is null"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 638
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_62

    goto :goto_4a

    :sswitch_28
    const-string v4, "acked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_4a

    :cond_31
    const/4 v5, 0x2

    goto :goto_4a

    :sswitch_33
    const-string/jumbo v4, "needed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_4a

    :cond_3d
    move v5, v2

    goto :goto_4a

    :sswitch_3f
    const-string/jumbo v4, "not_needed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_4a

    :cond_49
    move v5, v3

    :goto_4a
    packed-switch v5, :pswitch_data_70

    .line 645
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "isNewUserDisclaimerAcknowledged(%d): invalid value %s"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_5f
    return v3

    :pswitch_60
    return v2

    nop

    :sswitch_data_62
    .sparse-switch
        -0x49d9295f -> :sswitch_3f
        -0x3e8c384b -> :sswitch_33
        0x58586e8 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5f
        :pswitch_60
    .end packed-switch
.end method

.method public setDelayedFactoryReset(Ljava/lang/String;ZZZ)V
    .registers 5

    .line 615
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    const/4 p1, 0x1

    .line 617
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz p2, :cond_b

    or-int/lit8 p1, p1, 0x2

    .line 619
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    :cond_b
    if-eqz p3, :cond_13

    .line 622
    iget p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    :cond_13
    if-eqz p4, :cond_1b

    .line 625
    iget p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    :cond_1b
    return-void
.end method

.method public validatePasswordOwner()V
    .registers 4

    .line 597
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ltz v0, :cond_36

    .line 599
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_22

    .line 600
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ne v1, v2, :cond_1f

    return-void

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 606
    :cond_22
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 607
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 606
    const-string v1, "DevicePolicyManager"

    const-string v2, "Previous password owner %s no longer active; disabling"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 608
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    :cond_36
    return-void
.end method
