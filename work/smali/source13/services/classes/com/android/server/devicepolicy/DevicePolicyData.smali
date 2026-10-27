.class Lcom/android/server/devicepolicy/DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyData.java"


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_DEVICE_PAIRED:Ljava/lang/String; = "device-paired"

.field private static final ATTR_DEVICE_PROVISIONING_CONFIG_APPLIED:Ljava/lang/String; = "device-provisioning-config-applied"

.field private static final ATTR_DISABLED:Ljava/lang/String; = "disabled"

.field private static final ATTR_FACTORY_RESET_FLAGS:Ljava/lang/String; = "factory-reset-flags"

.field private static final ATTR_FACTORY_RESET_REASON:Ljava/lang/String; = "factory-reset-reason"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NEW_USER_DISCLAIMER:Ljava/lang/String; = "new-user-disclaimer"

.field private static final ATTR_PERMISSION_POLICY:Ljava/lang/String; = "permission-policy"

.field private static final ATTR_PERMISSION_PROVIDER:Ljava/lang/String; = "permission-provider"

.field private static final ATTR_PROVISIONING_STATE:Ljava/lang/String; = "provisioning-state"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final FACTORY_RESET_FLAG_ON_BOOT:I = 0x1

.field public static final FACTORY_RESET_FLAG_WIPE_EUICC:I = 0x4

.field public static final FACTORY_RESET_FLAG_WIPE_EXTERNAL_STORAGE:I = 0x2

.field public static final FACTORY_RESET_FLAG_WIPE_FACTORY_RESET_PROTECTION:I = 0x8

.field static final NEW_USER_DISCLAIMER_ACKNOWLEDGED:Ljava/lang/String; = "acked"

.field static final NEW_USER_DISCLAIMER_NEEDED:Ljava/lang/String; = "needed"

.field static final NEW_USER_DISCLAIMER_NOT_NEEDED:Ljava/lang/String; = "not_needed"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManager"

.field private static final TAG_ACCEPTED_CA_CERTIFICATES:Ljava/lang/String; = "accepted-ca-certificate"

.field private static final TAG_ADMIN_BROADCAST_PENDING:Ljava/lang/String; = "admin-broadcast-pending"

.field private static final TAG_AFFILIATION_ID:Ljava/lang/String; = "affiliation-id"

.field private static final TAG_APPS_SUSPENDED:Ljava/lang/String; = "apps-suspended"

.field private static final TAG_BYPASS_ROLE_QUALIFICATIONS:Ljava/lang/String; = "bypass-role-qualifications"

.field private static final TAG_CURRENT_INPUT_METHOD_SET:Ljava/lang/String; = "current-ime-set"

.field private static final TAG_DO_NOT_ASK_CREDENTIALS_ON_BOOT:Ljava/lang/String; = "do-not-ask-credentials-on-boot"

.field private static final TAG_INITIALIZATION_BUNDLE:Ljava/lang/String; = "initialization-bundle"

.field private static final TAG_LAST_BUG_REPORT_REQUEST:Ljava/lang/String; = "last-bug-report-request"

.field private static final TAG_LAST_NETWORK_LOG_RETRIEVAL:Ljava/lang/String; = "last-network-log-retrieval"

.field private static final TAG_LAST_SECURITY_LOG_RETRIEVAL:Ljava/lang/String; = "last-security-log-retrieval"

.field private static final TAG_LOCK_TASK_COMPONENTS:Ljava/lang/String; = "lock-task-component"

.field private static final TAG_LOCK_TASK_FEATURES:Ljava/lang/String; = "lock-task-features"

.field private static final TAG_OWNER_INSTALLED_CA_CERT:Ljava/lang/String; = "owner-installed-ca-cert"

.field private static final TAG_PASSWORD_TOKEN_HANDLE:Ljava/lang/String; = "password-token"

.field private static final TAG_PASSWORD_VALIDITY:Ljava/lang/String; = "password-validity"

.field private static final TAG_PROTECTED_PACKAGES:Ljava/lang/String; = "protected-packages"

.field private static final TAG_SECONDARY_LOCK_SCREEN:Ljava/lang/String; = "secondary-lock-screen"

.field private static final TAG_STATUS_BAR:Ljava/lang/String; = "statusbar"

.field private static final VERBOSE_LOG:Z = false


# instance fields
.field final mAcceptedCaCertificates:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAdminBroadcastPending:Z

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/devicepolicy/ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/devicepolicy/ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppsSuspended:Z

.field mBypassDevicePolicyManagementRoleQualifications:Z

.field mCurrentInputMethodSet:Z

.field mCurrentRoleHolder:Ljava/lang/String;

.field final mDelegationMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mDeviceProvisioningConfigApplied:Z

.field mDoNotAskCredentialsOnBoot:Z

.field mFactoryResetFlags:I

.field mFactoryResetReason:Ljava/lang/String;

.field mFailedPasswordAttempts:I

.field mInitBundle:Landroid/os/PersistableBundle;

.field mLastBugReportRequestTime:J

.field mLastMaximumTimeToLock:J

.field mLastNetworkLogsRetrievalTime:J

.field mLastSecurityLogRetrievalTime:J

.field mLockTaskFeatures:I

.field mLockTaskPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNewUserDisclaimer:Ljava/lang/String;

.field mOwnerInstalledCaCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPaired:Z

.field mPasswordOwner:I

.field mPasswordTokenHandle:J

.field mPasswordValidAtLastCheckpoint:Z

.field mPermissionPolicy:I

.field final mRemovingAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field mRestrictionsProvider:Landroid/content/ComponentName;

.field mSecondaryLockscreenEnabled:Z

.field mStatusBarDisabled:Z

.field mUserControlDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final mUserId:I

.field mUserProvisioningState:I

.field mUserSetupComplete:Z


# direct methods
.method constructor <init>(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 110
    const-wide/16 v1, -0x1

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

    .line 140
    const/16 v3, 0x10

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

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 170
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 174
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 178
    const-string/jumbo v0, "not_needed"

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 181
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    .line 182
    return-void
.end method

.method static factoryResetFlagsToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "flags"    # I

    .line 694
    const-class v0, Lcom/android/server/devicepolicy/DevicePolicyData;

    int-to-long v1, p0

    const-string v3, "FACTORY_RESET_FLAG_"

    invoke-static {v0, v3, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static load(Lcom/android/server/devicepolicy/DevicePolicyData;ZLcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V
    .registers 27
    .param p0, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyData;
    .param p1, "isFdeDevice"    # Z
    .param p2, "journaledFile"    # Lcom/android/internal/util/JournaledFile;
    .param p4, "ownerComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            "Z",
            "Lcom/android/internal/util/JournaledFile;",
            "Ljava/util/function/Function<",
            "Landroid/content/ComponentName;",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 411
    .local p3, "adminInfoSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/ComponentName;Landroid/app/admin/DeviceAdminInfo;>;"
    move-object/from16 v1, p0

    const-string v2, "DevicePolicyManager"

    const/4 v3, 0x0

    .line 412
    .local v3, "stream":Ljava/io/FileInputStream;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v4

    .line 414
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 416
    .local v5, "needsRewrite":Z
    const/4 v7, 0x1

    :try_start_b
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_3f0
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_3e0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_10} :catch_3e0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_10} :catch_3e0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_3e0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_10} :catch_3e0

    move-object v3, v8

    .line 417
    :try_start_11
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v8

    .line 420
    .local v8, "parser":Landroid/util/TypedXmlPullParser;
    :goto_15
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    if-eq v9, v7, :cond_20

    const/4 v9, 0x2

    if-eq v10, v9, :cond_20

    goto :goto_15

    .line 423
    :cond_20
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 424
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v11, "policies"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3ad

    .line 430
    const-string/jumbo v11, "permission-provider"

    const/4 v12, 0x0

    invoke-interface {v8, v12, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_35} :catch_3da
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_35} :catch_3d3
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_35} :catch_3d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_35} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_35} :catch_3d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_35} :catch_3d3

    .line 431
    .local v11, "permissionProvider":Ljava/lang/String;
    if-eqz v11, :cond_4a

    .line 432
    nop

    .line 433
    :try_start_38
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3e} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_3e} :catch_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_3e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_38 .. :try_end_3e} :catch_3f

    goto :goto_4a

    .line 580
    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "permissionProvider":Ljava/lang/String;
    :catch_3f
    move-exception v0

    move/from16 v16, v5

    move-object v5, v0

    goto/16 :goto_3e4

    .line 578
    :catch_45
    move-exception v0

    move/from16 v16, v5

    goto/16 :goto_3f3

    .line 435
    .restart local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v10    # "type":I
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    :cond_4a
    :goto_4a
    :try_start_4a
    const-string/jumbo v13, "setup-complete"

    invoke-interface {v8, v12, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 436
    .local v13, "userSetupComplete":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_59} :catch_3da
    .catch Ljava/lang/NullPointerException; {:try_start_4a .. :try_end_59} :catch_3d3
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_59} :catch_3d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_59} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_59} :catch_3d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4a .. :try_end_59} :catch_3d3

    if-eqz v14, :cond_5d

    .line 438
    :try_start_5b
    iput-boolean v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_5d} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_5b .. :try_end_5d} :catch_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_5d} :catch_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_5d} :catch_3f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5d} :catch_3f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5b .. :try_end_5d} :catch_3f

    .line 440
    :cond_5d
    :try_start_5d
    const-string v14, "device-paired"

    invoke-interface {v8, v12, v14}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 441
    .local v14, "paired":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_6b} :catch_3da
    .catch Ljava/lang/NullPointerException; {:try_start_5d .. :try_end_6b} :catch_3d3
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_6b} :catch_3d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d .. :try_end_6b} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6b} :catch_3d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_6b} :catch_3d3

    if-eqz v15, :cond_6f

    .line 442
    :try_start_6d
    iput-boolean v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_6f} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_6d .. :try_end_6f} :catch_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_6f} :catch_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_6f} :catch_3f
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_6f} :catch_3f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6d .. :try_end_6f} :catch_3f

    .line 444
    :cond_6f
    :try_start_6f
    const-string v15, "device-provisioning-config-applied"

    invoke-interface {v8, v12, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 446
    .local v15, "deviceProvisioningConfigApplied":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_7d} :catch_3da
    .catch Ljava/lang/NullPointerException; {:try_start_6f .. :try_end_7d} :catch_3d3
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_7d} :catch_3d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_7d} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7d} :catch_3d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6f .. :try_end_7d} :catch_3d3

    if-eqz v6, :cond_81

    .line 447
    :try_start_7f
    iput-boolean v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_81} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_7f .. :try_end_81} :catch_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_81} :catch_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7f .. :try_end_81} :catch_3f
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_81} :catch_3f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7f .. :try_end_81} :catch_3f

    .line 449
    :cond_81
    :try_start_81
    const-string/jumbo v6, "provisioning-state"

    const/4 v7, -0x1

    invoke-interface {v8, v12, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_89} :catch_3da
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_89} :catch_3d3
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_89} :catch_3d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_89} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_89} :catch_3d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_81 .. :try_end_89} :catch_3d3

    .line 450
    .local v6, "provisioningState":I
    if-eq v6, v7, :cond_8d

    .line 451
    :try_start_8b
    iput v6, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_8d} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_8b .. :try_end_8d} :catch_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_8d} :catch_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8d} :catch_3f
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8d} :catch_3f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8b .. :try_end_8d} :catch_3f

    .line 453
    :cond_8d
    :try_start_8d
    const-string/jumbo v7, "permission-policy"
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_90} :catch_3da
    .catch Ljava/lang/NullPointerException; {:try_start_8d .. :try_end_90} :catch_3d3
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_90} :catch_3d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_90} :catch_3d3
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_3d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8d .. :try_end_90} :catch_3d3

    move-object/from16 v17, v3

    const/4 v3, -0x1

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    :try_start_93
    invoke-interface {v8, v12, v7, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7
    :try_end_97
    .catch Ljava/io/FileNotFoundException; {:try_start_93 .. :try_end_97} :catch_3a7
    .catch Ljava/lang/NullPointerException; {:try_start_93 .. :try_end_97} :catch_3a0
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_97} :catch_3a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_93 .. :try_end_97} :catch_3a0
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_97} :catch_3a0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_93 .. :try_end_97} :catch_3a0

    .line 454
    .local v7, "permissionPolicy":I
    if-eq v7, v3, :cond_ab

    .line 455
    :try_start_99
    iput v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_9b} :catch_a4
    .catch Ljava/lang/NullPointerException; {:try_start_99 .. :try_end_9b} :catch_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_9b} :catch_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_9b} :catch_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9b} :catch_9c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_99 .. :try_end_9b} :catch_9c

    goto :goto_ab

    .line 580
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v13    # "userSetupComplete":Ljava/lang/String;
    .end local v14    # "paired":Ljava/lang/String;
    .end local v15    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    :catch_9c
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v3, v17

    move-object v5, v0

    goto/16 :goto_3e4

    .line 578
    :catch_a4
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v3, v17

    goto/16 :goto_3f3

    .line 457
    .restart local v6    # "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    .restart local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v10    # "type":I
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "userSetupComplete":Ljava/lang/String;
    .restart local v14    # "paired":Ljava/lang/String;
    .restart local v15    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    :cond_ab
    :goto_ab
    :try_start_ab
    const-string/jumbo v3, "new-user-disclaimer"

    invoke-interface {v8, v12, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 459
    const-string v3, "factory-reset-flags"
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_ab .. :try_end_b6} :catch_3a7
    .catch Ljava/lang/NullPointerException; {:try_start_ab .. :try_end_b6} :catch_3a0
    .catch Ljava/lang/NumberFormatException; {:try_start_ab .. :try_end_b6} :catch_3a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ab .. :try_end_b6} :catch_3a0
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b6} :catch_3a0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ab .. :try_end_b6} :catch_3a0

    move/from16 v16, v5

    const/4 v5, 0x0

    .end local v5    # "needsRewrite":Z
    .local v16, "needsRewrite":Z
    :try_start_b9
    invoke-interface {v8, v12, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 464
    const-string v3, "factory-reset-reason"

    invoke-interface {v8, v12, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 466
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 467
    .local v3, "outerDepth":I
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 468
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 469
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 470
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 471
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 472
    iput-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 473
    :goto_e6
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v10, v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_397

    const/4 v5, 0x3

    if-ne v10, v5, :cond_f7

    .line 474
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v3, :cond_39d

    .line 475
    :cond_f7
    if-eq v10, v5, :cond_387

    const/4 v5, 0x4

    if-ne v10, v5, :cond_105

    .line 476
    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 478
    :cond_105
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .line 479
    const-string v5, "admin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_110
    .catch Ljava/io/FileNotFoundException; {:try_start_b9 .. :try_end_110} :catch_3cf
    .catch Ljava/lang/NullPointerException; {:try_start_b9 .. :try_end_110} :catch_3ca
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_110} :catch_3ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b9 .. :try_end_110} :catch_3ca
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_110} :catch_3ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b9 .. :try_end_110} :catch_3ca

    const-string/jumbo v12, "name"

    if-eqz v5, :cond_180

    .line 480
    const/4 v5, 0x0

    :try_start_116
    invoke-interface {v8, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_11a
    .catch Ljava/io/FileNotFoundException; {:try_start_116 .. :try_end_11a} :catch_3cf
    .catch Ljava/lang/NullPointerException; {:try_start_116 .. :try_end_11a} :catch_3ca
    .catch Ljava/lang/NumberFormatException; {:try_start_116 .. :try_end_11a} :catch_3ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_116 .. :try_end_11a} :catch_3ca
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_11a} :catch_3ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_116 .. :try_end_11a} :catch_3ca

    move-object v5, v12

    .line 482
    .local v5, "name":Ljava/lang/String;
    nop

    .line 483
    :try_start_11c
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12
    :try_end_120
    .catch Ljava/lang/RuntimeException; {:try_start_11c .. :try_end_120} :catch_16a
    .catch Ljava/io/FileNotFoundException; {:try_start_11c .. :try_end_120} :catch_3cf
    .catch Ljava/lang/NullPointerException; {:try_start_11c .. :try_end_120} :catch_3ca
    .catch Ljava/lang/NumberFormatException; {:try_start_11c .. :try_end_120} :catch_3ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11c .. :try_end_120} :catch_3ca
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_120} :catch_3ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11c .. :try_end_120} :catch_3ca

    .line 482
    move/from16 v18, v3

    move-object/from16 v3, p3

    .end local v3    # "outerDepth":I
    .local v18, "outerDepth":I
    :try_start_124
    invoke-interface {v3, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DeviceAdminInfo;

    .line 485
    .local v12, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v12, :cond_15e

    .line 489
    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_130
    .catch Ljava/lang/RuntimeException; {:try_start_124 .. :try_end_130} :catch_163
    .catch Ljava/io/FileNotFoundException; {:try_start_124 .. :try_end_130} :catch_3cf
    .catch Ljava/lang/NullPointerException; {:try_start_124 .. :try_end_130} :catch_3ca
    .catch Ljava/lang/NumberFormatException; {:try_start_124 .. :try_end_130} :catch_3ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_124 .. :try_end_130} :catch_3ca
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_130} :catch_3ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_124 .. :try_end_130} :catch_3ca

    move/from16 v19, v6

    move-object/from16 v6, p4

    .end local v6    # "provisioningState":I
    .local v19, "provisioningState":I
    :try_start_134
    invoke-virtual {v3, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13c

    const/4 v3, 0x1

    goto :goto_13d

    :cond_13c
    const/4 v3, 0x0

    .line 490
    .local v3, "overwritePolicies":Z
    :goto_13d
    new-instance v6, Lcom/android/server/devicepolicy/ActiveAdmin;
    :try_end_13f
    .catch Ljava/lang/RuntimeException; {:try_start_134 .. :try_end_13f} :catch_159
    .catch Ljava/io/FileNotFoundException; {:try_start_134 .. :try_end_13f} :catch_3cf
    .catch Ljava/lang/NullPointerException; {:try_start_134 .. :try_end_13f} :catch_3ca
    .catch Ljava/lang/NumberFormatException; {:try_start_134 .. :try_end_13f} :catch_3ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_134 .. :try_end_13f} :catch_3ca
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_13f} :catch_3ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_134 .. :try_end_13f} :catch_3ca

    move/from16 v20, v7

    const/4 v7, 0x0

    .end local v7    # "permissionPolicy":I
    .local v20, "permissionPolicy":I
    :try_start_142
    invoke-direct {v6, v12, v7}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    .line 491
    .local v6, "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    invoke-virtual {v6, v8, v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Landroid/util/TypedXmlPullParser;Z)V

    .line 492
    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    move/from16 v21, v3

    .end local v3    # "overwritePolicies":Z
    .local v21, "overwritePolicies":Z
    iget-object v3, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v7, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_155
    .catch Ljava/lang/RuntimeException; {:try_start_142 .. :try_end_155} :catch_156
    .catch Ljava/io/FileNotFoundException; {:try_start_142 .. :try_end_155} :catch_3cf
    .catch Ljava/lang/NullPointerException; {:try_start_142 .. :try_end_155} :catch_3ca
    .catch Ljava/lang/NumberFormatException; {:try_start_142 .. :try_end_155} :catch_3ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_142 .. :try_end_155} :catch_3ca
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_155} :catch_3ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_142 .. :try_end_155} :catch_3ca

    goto :goto_162

    .line 494
    .end local v6    # "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    .end local v12    # "dai":Landroid/app/admin/DeviceAdminInfo;
    .end local v21    # "overwritePolicies":Z
    :catch_156
    move-exception v0

    move-object v3, v0

    goto :goto_172

    .end local v20    # "permissionPolicy":I
    .restart local v7    # "permissionPolicy":I
    :catch_159
    move-exception v0

    move/from16 v20, v7

    move-object v3, v0

    .end local v7    # "permissionPolicy":I
    .restart local v20    # "permissionPolicy":I
    goto :goto_172

    .line 485
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .local v6, "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    .restart local v12    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :cond_15e
    move/from16 v19, v6

    move/from16 v20, v7

    .line 496
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .end local v12    # "dai":Landroid/app/admin/DeviceAdminInfo;
    .restart local v19    # "provisioningState":I
    .restart local v20    # "permissionPolicy":I
    :goto_162
    goto :goto_17d

    .line 494
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .restart local v6    # "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    :catch_163
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v7

    move-object v3, v0

    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .restart local v19    # "provisioningState":I
    .restart local v20    # "permissionPolicy":I
    goto :goto_172

    .end local v18    # "outerDepth":I
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .local v3, "outerDepth":I
    .restart local v6    # "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    :catch_16a
    move-exception v0

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    move-object v3, v0

    .line 495
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .local v3, "e":Ljava/lang/RuntimeException;
    .restart local v18    # "outerDepth":I
    .restart local v19    # "provisioningState":I
    .restart local v20    # "permissionPolicy":I
    :goto_172
    :try_start_172
    const-string v6, "Failed loading admin %s"

    const/4 v7, 0x1

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v12, v7

    invoke-static {v2, v3, v6, v12}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "name":Ljava/lang/String;
    :goto_17d
    const/4 v5, 0x0

    goto/16 :goto_38e

    .end local v18    # "outerDepth":I
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .local v3, "outerDepth":I
    .restart local v6    # "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    :cond_180
    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    .end local v3    # "outerDepth":I
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "provisioningState":I
    .restart local v20    # "permissionPolicy":I
    const-string v3, "delegation"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 499
    const-string v3, "delegatePackage"

    const/4 v5, 0x0

    invoke-interface {v8, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "delegatePackage":Ljava/lang/String;
    const-string/jumbo v6, "scope"

    invoke-interface {v8, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 504
    .local v5, "scope":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 506
    .local v6, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_1b2

    .line 507
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 508
    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_1b2
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1bb

    .line 512
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    .end local v3    # "delegatePackage":Ljava/lang/String;
    .end local v5    # "scope":Ljava/lang/String;
    .end local v6    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1bb
    const/4 v5, 0x0

    goto/16 :goto_38e

    :cond_1be
    const-string v3, "failed-password-attempts"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1c4
    .catch Ljava/io/FileNotFoundException; {:try_start_172 .. :try_end_1c4} :catch_3cf
    .catch Ljava/lang/NullPointerException; {:try_start_172 .. :try_end_1c4} :catch_3ca
    .catch Ljava/lang/NumberFormatException; {:try_start_172 .. :try_end_1c4} :catch_3ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_172 .. :try_end_1c4} :catch_3ca
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_1c4} :catch_3ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_172 .. :try_end_1c4} :catch_3ca

    const-string/jumbo v5, "value"

    if-eqz v3, :cond_1d3

    .line 515
    const/4 v3, 0x0

    :try_start_1ca
    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 516
    :cond_1d3
    const-string/jumbo v3, "password-owner"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e6

    .line 517
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 518
    :cond_1e6
    const-string v3, "accepted-ca-certificate"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fb

    .line 519
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-interface {v8, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 520
    :cond_1fb
    const-string/jumbo v3, "lock-task-component"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_211

    .line 521
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v8, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 522
    :cond_211
    const-string/jumbo v3, "lock-task-features"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_224

    .line 523
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 524
    :cond_224
    const-string/jumbo v3, "secondary-lock-screen"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_239

    .line 525
    nop

    .line 526
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface {v8, v6, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 527
    :cond_239
    const-string/jumbo v3, "statusbar"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24f

    .line 528
    const-string v3, "disabled"

    .line 529
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v8, v6, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 530
    :cond_24f
    const-string v3, "do-not-ask-credentials-on-boot"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25d

    .line 531
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 532
    :cond_25d
    const-string v3, "affiliation-id"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_275

    .line 533
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    const-string/jumbo v5, "id"

    const/4 v6, 0x0

    invoke-interface {v8, v6, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 534
    :cond_275
    const-string/jumbo v3, "last-security-log-retrieval"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_289

    .line 535
    nop

    .line 536
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 537
    :cond_289
    const-string/jumbo v3, "last-bug-report-request"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29d

    .line 538
    nop

    .line 539
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 540
    :cond_29d
    const-string/jumbo v3, "last-network-log-retrieval"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b1

    .line 541
    nop

    .line 542
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 543
    :cond_2b1
    const-string v3, "admin-broadcast-pending"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cd

    .line 544
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 545
    .local v3, "pending":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 546
    .end local v3    # "pending":Ljava/lang/String;
    const/4 v5, 0x0

    goto/16 :goto_38e

    :cond_2cd
    const-string/jumbo v3, "initialization-bundle"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2df

    .line 547
    invoke-static {v8}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 548
    :cond_2df
    const-string/jumbo v3, "password-validity"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f9

    .line 549
    if-eqz p1, :cond_2f6

    .line 551
    nop

    .line 552
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface {v8, v6, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 549
    :cond_2f6
    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 554
    :cond_2f9
    const-string/jumbo v3, "password-token"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30c

    .line 555
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 556
    :cond_30c
    const-string v3, "current-ime-set"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31a

    .line 557
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    const/4 v5, 0x0

    goto/16 :goto_38e

    .line 558
    :cond_31a
    const-string/jumbo v3, "owner-installed-ca-cert"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_331

    .line 559
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    const-string v5, "alias"

    const/4 v6, 0x0

    invoke-interface {v8, v6, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_38e

    .line 560
    :cond_331
    const-string v3, "apps-suspended"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_344

    .line 561
    nop

    .line 562
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface {v8, v6, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    const/4 v5, 0x0

    goto :goto_38e

    .line 563
    :cond_344
    const-string v3, "bypass-role-qualifications"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_358

    .line 564
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 565
    const/4 v3, 0x0

    invoke-interface {v8, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    const/4 v5, 0x0

    goto :goto_38e

    .line 567
    :cond_358
    const-string/jumbo v3, "protected-packages"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_377

    .line 568
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    if-nez v3, :cond_36c

    .line 569
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 571
    :cond_36c
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 572
    const/4 v5, 0x0

    invoke-interface {v8, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 571
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38e

    .line 574
    :cond_377
    const/4 v5, 0x0

    const-string v3, "Unknown tag: %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v7, v6

    invoke-static {v2, v3, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_38e

    .line 475
    .end local v18    # "outerDepth":I
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .local v3, "outerDepth":I
    .local v6, "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    :cond_387
    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    const/4 v5, 0x0

    .line 473
    .end local v3    # "outerDepth":I
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "provisioningState":I
    .restart local v20    # "permissionPolicy":I
    :goto_38e
    move-object v12, v5

    move/from16 v3, v18

    move/from16 v6, v19

    move/from16 v7, v20

    goto/16 :goto_e6

    .end local v18    # "outerDepth":I
    .end local v19    # "provisioningState":I
    .end local v20    # "permissionPolicy":I
    .restart local v3    # "outerDepth":I
    .restart local v6    # "provisioningState":I
    .restart local v7    # "permissionPolicy":I
    :cond_397
    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    .line 583
    .end local v3    # "outerDepth":I
    .end local v6    # "provisioningState":I
    .end local v7    # "permissionPolicy":I
    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v13    # "userSetupComplete":Ljava/lang/String;
    .end local v14    # "paired":Ljava/lang/String;
    .end local v15    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    :cond_39d
    move-object/from16 v3, v17

    goto :goto_3f4

    .line 580
    .end local v16    # "needsRewrite":Z
    .local v5, "needsRewrite":Z
    :catch_3a0
    move-exception v0

    move/from16 v16, v5

    move-object v5, v0

    move-object/from16 v3, v17

    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    goto :goto_3e4

    .line 578
    .end local v16    # "needsRewrite":Z
    .restart local v5    # "needsRewrite":Z
    :catch_3a7
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v3, v17

    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    goto :goto_3f3

    .line 425
    .end local v16    # "needsRewrite":Z
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    .restart local v5    # "needsRewrite":Z
    .restart local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_3ad
    move-object/from16 v17, v3

    move/from16 v16, v5

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings do not start with policies tag: found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "file":Ljava/io/File;
    .end local v16    # "needsRewrite":Z
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    .end local p1    # "isFdeDevice":Z
    .end local p2    # "journaledFile":Lcom/android/internal/util/JournaledFile;
    .end local p3    # "adminInfoSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/ComponentName;Landroid/app/admin/DeviceAdminInfo;>;"
    .end local p4    # "ownerComponent":Landroid/content/ComponentName;
    throw v3
    :try_end_3ca
    .catch Ljava/io/FileNotFoundException; {:try_start_1ca .. :try_end_3ca} :catch_3cf
    .catch Ljava/lang/NullPointerException; {:try_start_1ca .. :try_end_3ca} :catch_3ca
    .catch Ljava/lang/NumberFormatException; {:try_start_1ca .. :try_end_3ca} :catch_3ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ca .. :try_end_3ca} :catch_3ca
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_3ca} :catch_3ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1ca .. :try_end_3ca} :catch_3ca

    .line 580
    .end local v8    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v16    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    .restart local p1    # "isFdeDevice":Z
    .restart local p2    # "journaledFile":Lcom/android/internal/util/JournaledFile;
    .restart local p3    # "adminInfoSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/ComponentName;Landroid/app/admin/DeviceAdminInfo;>;"
    .restart local p4    # "ownerComponent":Landroid/content/ComponentName;
    :catch_3ca
    move-exception v0

    move-object v5, v0

    move-object/from16 v3, v17

    goto :goto_3e4

    .line 578
    :catch_3cf
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_3f3

    .line 580
    .end local v16    # "needsRewrite":Z
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "needsRewrite":Z
    :catch_3d3
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v16, v5

    move-object v5, v0

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_3e4

    .line 578
    .end local v16    # "needsRewrite":Z
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "needsRewrite":Z
    :catch_3da
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v16, v5

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_3f3

    .line 580
    .end local v16    # "needsRewrite":Z
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "needsRewrite":Z
    :catch_3e0
    move-exception v0

    move/from16 v16, v5

    move-object v5, v0

    .line 582
    .local v5, "e":Ljava/lang/Exception;
    .restart local v16    # "needsRewrite":Z
    :goto_3e4
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const-string v7, "failed parsing %s"

    invoke-static {v2, v5, v7, v6}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3f4

    .line 578
    .end local v16    # "needsRewrite":Z
    .local v5, "needsRewrite":Z
    :catch_3f0
    move-exception v0

    move/from16 v16, v5

    .line 583
    .end local v5    # "needsRewrite":Z
    .restart local v16    # "needsRewrite":Z
    :goto_3f3
    nop

    .line 585
    :goto_3f4
    if-eqz v3, :cond_3fc

    .line 586
    :try_start_3f6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3f9
    .catch Ljava/io/IOException; {:try_start_3f6 .. :try_end_3f9} :catch_3fa

    goto :goto_3fc

    .line 588
    :catch_3fa
    move-exception v0

    goto :goto_3fd

    .line 590
    :cond_3fc
    :goto_3fc
    nop

    .line 593
    :goto_3fd
    iget-object v2, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    return-void
.end method

.method static store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Z)Z
    .registers 32
    .param p0, "policyData"    # Lcom/android/server/devicepolicy/DevicePolicyData;
    .param p1, "file"    # Lcom/android/internal/util/JournaledFile;
    .param p2, "isFdeDevice"    # Z

    .line 188
    move-object/from16 v1, p0

    const-string/jumbo v0, "last-network-log-retrieval"

    const-string/jumbo v2, "last-bug-report-request"

    const-string v3, "affiliation-id"

    const-string/jumbo v4, "last-security-log-retrieval"

    const-string v5, "do-not-ask-credentials-on-boot"

    const-string/jumbo v6, "statusbar"

    const-string/jumbo v7, "secondary-lock-screen"

    const-string/jumbo v8, "lock-task-component"

    const-string/jumbo v9, "lock-task-features"

    const-string v10, "accepted-ca-certificate"

    const-string v11, "delegation"

    const-string/jumbo v12, "password-validity"

    const-string v13, "admin"

    const-string v14, "failed-password-attempts"

    const-string/jumbo v15, "password-owner"

    move-object/from16 v16, v0

    const-string/jumbo v0, "policies"

    const/16 v17, 0x0

    .line 189
    .local v17, "stream":Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 191
    .local v18, "chooseForWrite":Ljava/io/File;
    move-object/from16 v19, v2

    :try_start_34
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v20

    move-object/from16 v18, v20

    .line 195
    new-instance v2, Ljava/io/FileOutputStream;
    :try_end_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_3c} :catch_32a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3c} :catch_32a

    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move-object/from16 v4, v18

    const/4 v3, 0x0

    .end local v18    # "chooseForWrite":Ljava/io/File;
    .local v4, "chooseForWrite":Ljava/io/File;
    :try_start_43
    invoke-direct {v2, v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v17, v2

    .line 196
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2
    :try_end_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_4c} :catch_326
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4c} :catch_326

    .line 197
    .local v2, "out":Landroid/util/TypedXmlSerializer;
    move-object/from16 v18, v4

    const/4 v3, 0x1

    .end local v4    # "chooseForWrite":Ljava/io/File;
    .restart local v18    # "chooseForWrite":Ljava/io/File;
    :try_start_4f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v4, :cond_6c

    .line 201
    const-string/jumbo v3, "permission-provider"

    .line 202
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 201
    move-object/from16 v23, v0

    const/4 v0, 0x0

    invoke-interface {v2, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6e

    .line 200
    :cond_6c
    move-object/from16 v23, v0

    .line 204
    :goto_6e
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    if-eqz v0, :cond_7a

    .line 206
    const-string/jumbo v0, "setup-complete"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    :cond_7a
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    if-eqz v0, :cond_85

    .line 209
    const-string v0, "device-paired"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    :cond_85
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    if-eqz v0, :cond_90

    .line 212
    const-string v0, "device-provisioning-config-applied"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    :cond_90
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    if-eqz v0, :cond_9b

    .line 215
    const-string/jumbo v3, "provisioning-state"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    :cond_9b
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    if-eqz v0, :cond_a6

    .line 218
    const-string/jumbo v3, "permission-policy"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    :cond_a6
    const-string/jumbo v0, "needed"

    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 221
    const-string/jumbo v0, "new-user-disclaimer"

    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    :cond_ba
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v0, :cond_c4

    .line 229
    const-string v3, "factory-reset-flags"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    :cond_c4
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v0, :cond_ce

    .line 232
    const-string v3, "factory-reset-reason"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    :cond_ce
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_cf
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_124

    .line 237
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    .local v3, "delegatePackage":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 241
    .local v4, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_eb
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_11b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v26, v25

    .line 242
    .local v26, "scope":Ljava/lang/String;
    move-object/from16 v25, v4

    const/4 v4, 0x0

    .end local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v4, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const-string v4, "delegatePackage"

    move-object/from16 v27, v5

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    const-string/jumbo v4, "scope"

    move-object/from16 v28, v3

    move-object/from16 v3, v26

    .end local v26    # "scope":Ljava/lang/String;
    .local v3, "scope":Ljava/lang/String;
    .local v28, "delegatePackage":Ljava/lang/String;
    invoke-interface {v2, v5, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    invoke-interface {v2, v5, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    move-object/from16 v4, v25

    move-object/from16 v5, v27

    move-object/from16 v3, v28

    .end local v3    # "scope":Ljava/lang/String;
    goto :goto_eb

    .line 241
    .end local v25    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "delegatePackage":Ljava/lang/String;
    .local v3, "delegatePackage":Ljava/lang/String;
    .restart local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11b
    move-object/from16 v28, v3

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    .line 236
    .end local v3    # "delegatePackage":Ljava/lang/String;
    .end local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_cf

    :cond_124
    move-object/from16 v27, v5

    .line 249
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_12c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_12c} :catch_32a
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_12c} :catch_32a

    .line 250
    .local v0, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12d
    const-string/jumbo v4, "name"

    if-ge v3, v0, :cond_15e

    .line 251
    :try_start_132
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 252
    .local v5, "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    if-eqz v5, :cond_157

    .line 253
    const/4 v11, 0x0

    invoke-interface {v2, v11, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    iget-object v11, v5, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    move/from16 v24, v0

    const/4 v0, 0x0

    .end local v0    # "n":I
    .local v24, "n":I
    invoke-interface {v2, v0, v4, v11}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    invoke-virtual {v5, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 256
    invoke-interface {v2, v0, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_159

    .line 252
    .end local v24    # "n":I
    .restart local v0    # "n":I
    :cond_157
    move/from16 v24, v0

    .line 250
    .end local v0    # "n":I
    .end local v5    # "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    .restart local v24    # "n":I
    :goto_159
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v24

    goto :goto_12d

    .end local v24    # "n":I
    .restart local v0    # "n":I
    :cond_15e
    move/from16 v24, v0

    .line 260
    .end local v0    # "n":I
    .end local v3    # "i":I
    .restart local v24    # "n":I
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I
    :try_end_162
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_132 .. :try_end_162} :catch_32a
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_162} :catch_32a

    const-string/jumbo v3, "value"

    if-ltz v0, :cond_173

    .line 261
    const/4 v0, 0x0

    :try_start_168
    invoke-interface {v2, v0, v15}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    iget v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-interface {v2, v0, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    invoke-interface {v2, v0, v15}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    :cond_173
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v0, :cond_183

    .line 267
    const/4 v0, 0x0

    invoke-interface {v2, v0, v14}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    iget v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-interface {v2, v0, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    invoke-interface {v2, v0, v14}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    :cond_183
    if-eqz p2, :cond_191

    .line 276
    const/4 v0, 0x0

    invoke-interface {v2, v0, v12}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    invoke-interface {v2, v0, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    invoke-interface {v2, v0, v12}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    :cond_191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_192
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v0, v5, :cond_1b0

    .line 282
    const/4 v5, 0x0

    invoke-interface {v2, v5, v10}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v2, v11, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    invoke-interface {v2, v11, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_192

    .line 287
    .end local v0    # "i":I
    :cond_1b0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1b1
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1cf

    .line 288
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 289
    .local v5, "component":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v2, v10, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    invoke-interface {v2, v10, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    invoke-interface {v2, v10, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    nop

    .end local v5    # "component":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b1

    .line 294
    .end local v0    # "i":I
    :cond_1cf
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    if-eqz v0, :cond_1df

    .line 295
    const/4 v0, 0x0

    invoke-interface {v2, v0, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    invoke-interface {v2, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    invoke-interface {v2, v0, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    :cond_1df
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    if-eqz v0, :cond_1ee

    .line 301
    const/4 v0, 0x0

    invoke-interface {v2, v0, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    invoke-interface {v2, v0, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    :cond_1ee
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    if-eqz v0, :cond_200

    .line 307
    const/4 v0, 0x0

    invoke-interface {v2, v0, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    const-string v4, "disabled"

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    invoke-interface {v2, v0, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    invoke-interface {v2, v0, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    :cond_200
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    if-eqz v0, :cond_20d

    .line 313
    move-object/from16 v0, v27

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    :cond_20d
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_213
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_231

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 318
    .local v4, "id":Ljava/lang/String;
    move-object/from16 v5, v22

    const/4 v6, 0x0

    invoke-interface {v2, v6, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    const-string/jumbo v7, "id"

    invoke-interface {v2, v6, v7, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    invoke-interface {v2, v6, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    move-object/from16 v22, v5

    .end local v4    # "id":Ljava/lang/String;
    goto :goto_213

    .line 323
    :cond_231
    iget-wide v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_247

    .line 324
    move-object/from16 v0, v21

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    iget-wide v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    invoke-interface {v2, v4, v3, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    :cond_247
    iget-wide v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_25b

    .line 330
    move-object/from16 v0, v19

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    iget-wide v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    invoke-interface {v2, v4, v3, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    :cond_25b
    iget-wide v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_26f

    .line 336
    move-object/from16 v0, v16

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    iget-wide v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    invoke-interface {v2, v4, v3, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    :cond_26f
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    if-eqz v0, :cond_283

    .line 342
    const-string v0, "admin-broadcast-pending"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    const-string v0, "admin-broadcast-pending"

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    :cond_283
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_29a

    .line 348
    const-string/jumbo v0, "initialization-bundle"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 350
    const-string/jumbo v0, "initialization-bundle"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    :cond_29a
    iget-wide v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2b2

    .line 354
    const-string/jumbo v0, "password-token"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    iget-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    invoke-interface {v2, v4, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    const-string/jumbo v0, "password-token"

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    :cond_2b2
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    if-eqz v0, :cond_2c1

    .line 360
    const-string v0, "current-ime-set"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    const-string v0, "current-ime-set"

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    :cond_2c1
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 365
    .local v4, "cert":Ljava/lang/String;
    const-string/jumbo v5, "owner-installed-ca-cert"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    const-string v5, "alias"

    invoke-interface {v2, v6, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    const-string/jumbo v5, "owner-installed-ca-cert"

    invoke-interface {v2, v6, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    nop

    .end local v4    # "cert":Ljava/lang/String;
    goto :goto_2c7

    .line 370
    :cond_2e7
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    if-eqz v0, :cond_2fb

    .line 371
    const-string v0, "apps-suspended"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    const-string v0, "apps-suspended"

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    :cond_2fb
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    if-eqz v0, :cond_30f

    .line 377
    const-string v0, "bypass-role-qualifications"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 378
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    invoke-interface {v2, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    const-string v0, "bypass-role-qualifications"

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    :cond_30f
    move-object/from16 v0, v23

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 385
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V

    .line 386
    invoke-static/range {v17 .. v17}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 387
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_324
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_168 .. :try_end_324} :catch_32a
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_324} :catch_32a

    .line 389
    const/4 v3, 0x1

    return v3

    .line 390
    .end local v2    # "out":Landroid/util/TypedXmlSerializer;
    .end local v18    # "chooseForWrite":Ljava/io/File;
    .end local v24    # "n":I
    .local v4, "chooseForWrite":Ljava/io/File;
    :catch_326
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "chooseForWrite":Ljava/io/File;
    .restart local v18    # "chooseForWrite":Ljava/io/File;
    goto :goto_32b

    :catch_32a
    move-exception v0

    :goto_32b
    move-object v2, v0

    .line 391
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v18, v0, v3

    const-string v3, "DevicePolicyManager"

    const-string v4, "failed writing file %s"

    invoke-static {v3, v2, v4, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    if-eqz v17, :cond_341

    .line 394
    :try_start_33b
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_33e
    .catch Ljava/io/IOException; {:try_start_33b .. :try_end_33e} :catch_33f

    goto :goto_341

    .line 396
    :catch_33f
    move-exception v0

    goto :goto_342

    .line 398
    :cond_341
    :goto_341
    nop

    .line 399
    :goto_342
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 400
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 652
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled Device Admins (User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provisioningState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 656
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    if-ge v1, v0, :cond_64

    .line 657
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 658
    .local v2, "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    if-eqz v2, :cond_61

    .line 659
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 660
    iget-object v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 661
    const-string v3, ":"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 663
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 664
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 665
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 656
    .end local v2    # "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 668
    .end local v1    # "i":I
    :cond_64
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_96

    .line 669
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Device Admins (User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 673
    :cond_96
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 674
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 675
    const-string/jumbo v1, "mPasswordOwner="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 676
    const-string/jumbo v1, "mPasswordTokenHandle="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 677
    const-string/jumbo v1, "mAppsSuspended="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 678
    const-string/jumbo v1, "mUserSetupComplete="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 679
    const-string/jumbo v1, "mAffiliationIds="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 680
    const-string/jumbo v1, "mNewUserDisclaimer="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 681
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v1, :cond_104

    .line 682
    const-string/jumbo v1, "mFactoryResetFlags="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 683
    const-string v1, " ("

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 684
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyData;->factoryResetFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 685
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(C)V

    .line 687
    :cond_104
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v1, :cond_113

    .line 688
    const-string/jumbo v1, "mFactoryResetReason="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 690
    :cond_113
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 691
    return-void
.end method

.method isNewUserDisclaimerAcknowledged()Z
    .registers 8

    .line 630
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const-string v1, "DevicePolicyManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1c

    .line 631
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    if-nez v0, :cond_d

    .line 632
    return v2

    .line 634
    :cond_d
    new-array v2, v2, [Ljava/lang/Object;

    .line 635
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 634
    const-string/jumbo v0, "isNewUserDisclaimerAcknowledged(%d): mNewUserDisclaimer is null"

    invoke-static {v1, v0, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    return v3

    .line 638
    :cond_1c
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    sparse-switch v5, :sswitch_data_60

    :cond_25
    goto :goto_45

    :sswitch_26
    const-string v5, "acked"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v4, v3

    goto :goto_45

    :sswitch_30
    const-string/jumbo v5, "needed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v4, v6

    goto :goto_45

    :sswitch_3b
    const-string/jumbo v5, "not_needed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v4, v2

    :goto_45
    packed-switch v4, :pswitch_data_6e

    .line 645
    new-array v0, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    aput-object v4, v0, v2

    const-string/jumbo v2, "isNewUserDisclaimerAcknowledged(%d): invalid value %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    return v3

    .line 643
    :pswitch_5d
    return v3

    .line 641
    :pswitch_5e
    return v2

    nop

    :sswitch_data_60
    .sparse-switch
        -0x49d9295f -> :sswitch_3b
        -0x3e8c384b -> :sswitch_30
        0x58586e8 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5e
        :pswitch_5d
    .end packed-switch
.end method

.method setDelayedFactoryReset(Ljava/lang/String;ZZZ)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "wipeExtRequested"    # Z
    .param p3, "wipeEuicc"    # Z
    .param p4, "wipeResetProtectionData"    # Z

    .line 615
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 617
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 618
    if-eqz p2, :cond_b

    .line 619
    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 621
    :cond_b
    if-eqz p3, :cond_13

    .line 622
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 624
    :cond_13
    if-eqz p4, :cond_1b

    .line 625
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 627
    :cond_1b
    return-void
.end method

.method validatePasswordOwner()V
    .registers 6

    .line 597
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ltz v0, :cond_3b

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "haveOwner":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_24

    .line 600
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v3

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ne v3, v4, :cond_21

    .line 601
    const/4 v0, 0x1

    .line 602
    goto :goto_24

    .line 599
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 605
    .end local v1    # "i":I
    :cond_24
    :goto_24
    if-nez v0, :cond_3b

    .line 606
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 607
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 606
    const-string v2, "DevicePolicyManager"

    const-string v3, "Previous password owner %s no longer active; disabling"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 611
    .end local v0    # "haveOwner":Z
    :cond_3b
    return-void
.end method
