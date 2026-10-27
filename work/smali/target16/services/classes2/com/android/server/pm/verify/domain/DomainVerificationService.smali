.class public Lcom/android/server/pm/verify/domain/DomainVerificationService;
.super Lcom/android/server/SystemService;
.source "DomainVerificationService.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
.implements Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;


# instance fields
.field public final mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

.field public mCanSendBroadcasts:Z

.field public final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

.field public mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

.field public final mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

.field public final mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

.field public final mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

.field public final mLock:Ljava/lang/Object;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

.field public final mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

.field public final mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

.field public final mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

.field public final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method public static synthetic $r8$lambda$Mtb76nFNJ-m498VOcWtBBVrvhSY(Lcom/android/server/pm/Computer;ILjava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 935
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 936
    invoke-interface {p0, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_e

    move-wide v3, v1

    goto :goto_16

    .line 939
    :cond_e
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 940
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v3

    :goto_16
    if-nez p0, :cond_19

    goto :goto_21

    .line 942
    :cond_19
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 943
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v1

    :goto_21
    cmp-long p0, v3, v1

    if-eqz p0, :cond_28

    sub-long/2addr v3, v1

    long-to-int p0, v3

    return p0

    .line 949
    :cond_28
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gIxTAFuj4DHILVBtedKn8-tgd0U(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1214
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1224
    :cond_8
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 1223
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V
    .registers 5

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;

    invoke-direct {v0, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

    .line 165
    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 173
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 174
    iput-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 175
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;-><init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 176
    new-instance p2, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-direct {p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 177
    new-instance p2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    invoke-direct {p2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 178
    new-instance p1, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    invoke-direct {p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    .line 179
    new-instance p1, Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    invoke-direct {p1, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;)V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 180
    new-instance p1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-direct {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    return-void
.end method


# virtual methods
.method public final addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V
    .registers 4

    if-eqz p3, :cond_8

    .line 1539
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result p3

    if-nez p3, :cond_e

    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->shouldReBroadcastPackage(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1540
    :cond_e
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public addLegacySetting(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 3

    .line 1259
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->add(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V

    return-void
.end method

.method public addPackage(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V
    .registers 19

    move-object/from16 v0, p0

    .line 1064
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    move-result-object v1

    .line 1065
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1070
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePendingState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_17

    move v7, v5

    goto :goto_37

    .line 1076
    :cond_17
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removeRestoredState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1077
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getBackupSignatureHash()Ljava/lang/String;

    move-result-object v7

    .line 1079
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v8

    .line 1078
    invoke-static {v8}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v8

    .line 1077
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    move-object v3, v4

    :cond_36
    move v7, v6

    .line 1085
    :goto_37
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    .line 1086
    iget-object v9, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v9

    .line 1087
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v10

    xor-int/lit8 v11, v10, 0x1

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v6, v5

    :goto_4b
    if-eqz v6, :cond_76

    .line 1090
    new-instance v12, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-direct {v12, v3, v1, v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/util/UUID;Z)V

    .line 1091
    invoke-virtual {v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 1093
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v3, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v3

    .line 1094
    invoke-virtual {v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v11

    .line 1095
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    move v14, v5

    :goto_68
    if-ge v14, v13, :cond_7b

    .line 1097
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-virtual {v15, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->retainHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    add-int/lit8 v14, v14, 0x1

    goto :goto_68

    .line 1100
    :cond_76
    new-instance v12, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-direct {v12, v2, v1, v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 1103
    :cond_7b
    invoke-virtual {v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v3, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    move-result v3

    if-eqz v3, :cond_e9

    if-nez v6, :cond_e9

    .line 1115
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserStates(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v3

    if-nez v3, :cond_93

    move v6, v5

    goto :goto_97

    .line 1116
    :cond_93
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    :goto_97
    move v11, v5

    :goto_98
    const/4 v13, 0x2

    if-ge v11, v6, :cond_b7

    .line 1118
    invoke-virtual {v3, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 1119
    invoke-virtual {v3, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    if-ne v15, v13, :cond_b4

    if-nez v4, :cond_ad

    .line 1123
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v4

    .line 1126
    :cond_ad
    invoke-virtual {v12, v14}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Landroid/util/ArraySet;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :cond_b4
    add-int/lit8 v11, v11, 0x1

    goto :goto_98

    .line 1130
    :cond_b7
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->remove(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    if-eqz v3, :cond_e0

    .line 1132
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatus()I

    move-result v3

    if-ne v3, v13, :cond_e0

    .line 1134
    invoke-virtual {v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1135
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v4

    :goto_cd
    if-ge v5, v4, :cond_e0

    .line 1137
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x4

    .line 1138
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1137
    invoke-virtual {v3, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_cd

    .line 1143
    :cond_e0
    invoke-virtual {v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v0, v3, v9, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyPreVerifiedState(Landroid/util/ArrayMap;Landroid/util/ArraySet;Landroid/content/pm/verify/domain/DomainSet;)V

    .line 1146
    :cond_e9
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1147
    :try_start_ec
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v2, v1, v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1148
    monitor-exit v3
    :try_end_f2
    .catchall {:try_start_ec .. :try_end_f2} :catchall_fa

    if-eqz v7, :cond_f9

    if-nez v10, :cond_f9

    .line 1151
    invoke-virtual {v0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/lang/String;)V

    :cond_f9
    return-void

    :catchall_fa
    move-exception v0

    .line 1148
    :try_start_fb
    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v0
.end method

.method public final applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z
    .registers 8

    .line 1185
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 1187
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p0

    const/4 p1, 0x0

    move v0, p1

    :goto_1d
    if-ge v0, p0, :cond_2f

    .line 1189
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1189
    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2f
    return p1

    .line 1194
    :cond_30
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    :goto_36
    if-ltz p0, :cond_4a

    .line 1196
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 1198
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v1, :cond_47

    .line 1199
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_47
    add-int/lit8 p0, p0, -0x1

    goto :goto_36

    :cond_4a
    return p1
.end method

.method public final applyPreVerifiedState(Landroid/util/ArrayMap;Landroid/util/ArraySet;Landroid/content/pm/verify/domain/DomainSet;)V
    .registers 5

    if-eqz p3, :cond_32

    .line 1162
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_32

    .line 1163
    invoke-virtual {p3}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1164
    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1165
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x8

    .line 1167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_32
    return-void
.end method

.method public approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I
    .registers 13

    move-object v1, p1

    .line 1872
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1873
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    move v5, v0

    goto :goto_12

    :cond_11
    move v5, v2

    .line 1874
    :goto_12
    invoke-static {p2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isDomainVerificationIntent(Landroid/content/Intent;J)Z

    move-result p3

    if-nez p3, :cond_23

    if-eqz v5, :cond_22

    const/4 p4, 0x0

    move p3, p5

    .line 1876
    const-string/jumbo p5, "not valid intent"

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    :cond_22
    return v2

    :cond_23
    move p3, p5

    .line 1881
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I

    move-result p0

    if-eqz v5, :cond_68

    .line 1884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Final approval level for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for host "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1884
    const-string p2, "DomainVerificationServiceApproval"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return p0
.end method

.method public final approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I
    .registers 7

    .line 1899
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomainInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I

    move-result p5

    if-eqz p3, :cond_30

    if-nez p5, :cond_30

    .line 1902
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p3

    .line 1903
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p4

    if-nez p4, :cond_14

    const/4 p0, -0x4

    return p0

    .line 1907
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-eqz p4, :cond_30

    .line 1909
    invoke-static {p3, p4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isPackageEnabled(Lcom/android/server/pm/pkg/PackageUserState;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p3

    if-nez p3, :cond_22

    const/4 p0, -0x3

    return p0

    .line 1911
    :cond_22
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->containsAutoVerifyDomain(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, -0x1

    return p0

    :cond_30
    return p5
.end method

.method public final approvalLevelForDomainInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I
    .registers 20

    .line 1923
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1924
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_23

    if-eqz p3, :cond_23

    .line 1926
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->containsWebDomain(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    if-eqz p5, :cond_21

    const/4 v4, 0x0

    .line 1928
    const-string v5, "domain not declared"

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    :cond_21
    const/4 p0, -0x2

    return p0

    :cond_23
    move/from16 v3, p4

    .line 1934
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const/4 v6, 0x0

    if-nez v4, :cond_3e

    if-eqz p5, :cond_3d

    const/4 v4, 0x0

    .line 1937
    const-string v5, "PackageUserState unavailable"

    move-object v0, p0

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    :cond_3d
    return v6

    .line 1943
    :cond_3e
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_53

    if-eqz p5, :cond_52

    const/4 v4, 0x0

    .line 1945
    const-string/jumbo v5, "package not installed for user"

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    :cond_52
    return v6

    .line 1951
    :cond_53
    invoke-static {v4, v2}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isPackageEnabled(Lcom/android/server/pm/pkg/PackageUserState;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v3

    if-nez v3, :cond_68

    if-eqz p5, :cond_67

    const/4 v4, 0x0

    .line 1953
    const-string/jumbo v5, "package not enabled for user"

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    :cond_67
    return v6

    .line 1959
    :cond_68
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v3

    if-eqz v3, :cond_7d

    if-eqz p5, :cond_7c

    const/4 v4, 0x0

    .line 1961
    const-string/jumbo v5, "package suspended for user"

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    :cond_7c
    return v6

    :cond_7d
    move/from16 v3, p4

    move-object v4, v1

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_a3

    .line 1968
    iget-object v10, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v11, 0xa9dc3bd

    invoke-static {v10, v2, v11, v12}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/pkg/AndroidPackage;J)Z

    move-result v10

    if-nez v10, :cond_a3

    .line 1970
    iget-object v10, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v10, v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserState(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v9, :cond_a2

    if-eq v10, v5, :cond_a1

    if-eq v10, v8, :cond_a0

    if-eq v10, v7, :cond_a2

    goto :goto_a3

    :cond_a0
    return v6

    :cond_a1
    return v5

    :cond_a2
    return v9

    .line 1984
    :cond_a3
    :goto_a3
    iget-object v10, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1985
    :try_start_a6
    iget-object v11, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v11, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez v11, :cond_c4

    if-eqz p5, :cond_c2

    .line 1988
    const-string/jumbo v5, "pkgState unavailable"

    move-object v1, v4

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    goto :goto_c2

    :catchall_be
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1df

    .line 1990
    :cond_c2
    :goto_c2
    monitor-exit v10

    return v6

    .line 1993
    :cond_c4
    invoke-virtual {v11, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 1995
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v12

    if-nez v12, :cond_de

    if-eqz p5, :cond_dc

    .line 1997
    const-string v5, "link handling not allowed"

    move-object v1, v4

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 2000
    :cond_dc
    monitor-exit v10

    return v6

    :cond_de
    move-object v12, v4

    move v4, v3

    if-eqz v2, :cond_fb

    .line 2008
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p1

    if-eqz p1, :cond_fb

    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 2009
    invoke-virtual {p1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fb

    const/4 p0, 0x5

    .line 2010
    monitor-exit v10

    return p0

    .line 2014
    :cond_fb
    invoke-virtual {v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object p1

    .line 2016
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_121

    .line 2017
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v2

    if-eqz v2, :cond_121

    if-eqz p5, :cond_11f

    .line 2019
    const-string v5, "host verified exactly"

    const/4 v4, 0x1

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v2, p6

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 2022
    :cond_11f
    monitor-exit v10

    return v7

    :cond_121
    move-object v4, v12

    .line 2026
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v6

    :goto_127
    if-ge v3, v2, :cond_16f

    .line 2028
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v11

    if-nez v11, :cond_13a

    goto :goto_16c

    .line 2032
    :cond_13a
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2038
    const-string v12, "*."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16c

    .line 2039
    invoke-virtual {v11, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15c

    .line 2040
    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16c

    :cond_15c
    if-eqz p5, :cond_16a

    .line 2042
    const-string v5, "host verified by wildcard"

    move-object v1, v4

    const/4 v4, 0x1

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 2045
    :cond_16a
    monitor-exit v10

    return v7

    :cond_16c
    :goto_16c
    add-int/lit8 v3, v3, 0x1

    goto :goto_127

    :cond_16f
    if-nez v0, :cond_182

    if-eqz p5, :cond_180

    .line 2052
    const-string/jumbo v5, "userState unavailable"

    move-object v1, v4

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 2054
    :cond_180
    monitor-exit v10

    return v6

    .line 2058
    :cond_182
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object p1

    .line 2059
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    if-eqz p5, :cond_19a

    .line 2061
    const-string v5, "host enabled by user exactly"

    move-object v1, v4

    const/4 v4, 0x1

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 2064
    :cond_19a
    monitor-exit v10

    return v8

    .line 2068
    :cond_19c
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v2, v6

    :goto_1a1
    if-ge v2, v0, :cond_1ce

    .line 2070
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2071
    const-string v7, "*."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1cb

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1cb

    if-eqz p5, :cond_1c9

    .line 2073
    const-string v5, "host enabled by user through wildcard"

    move-object v1, v4

    const/4 v4, 0x1

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 2076
    :cond_1c9
    monitor-exit v10

    return v8

    :cond_1cb
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a1

    :cond_1ce
    if-eqz p5, :cond_1dd

    .line 2081
    const-string/jumbo v5, "not approved"

    move-object v1, v4

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 2083
    :cond_1dd
    monitor-exit v10

    return v6

    .line 2084
    :goto_1df
    monitor-exit v10
    :try_end_1e0
    .catchall {:try_start_a6 .. :try_end_1e0} :catchall_be

    throw p0
.end method

.method public clearDomainVerificationState(Ljava/util/List;)V
    .registers 9

    .line 1571
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1572
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1573
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    if-nez p1, :cond_45

    .line 1575
    :try_start_17
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result p1

    :goto_1d
    if-ge v2, p1, :cond_70

    .line 1577
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1578
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1579
    invoke-interface {v0, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 1580
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-nez v5, :cond_38

    goto :goto_42

    .line 1583
    :cond_38
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    goto :goto_42

    :catchall_40
    move-exception p0

    goto :goto_77

    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1586
    :cond_45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_49
    if-ge v2, v3, :cond_70

    .line 1588
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1589
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1590
    invoke-interface {v0, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_6d

    .line 1591
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-nez v6, :cond_66

    goto :goto_6d

    .line 1594
    :cond_66
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 1597
    :cond_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_17 .. :try_end_71} :catchall_40

    .line 1599
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 1597
    :goto_77
    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_40

    throw p0
.end method

.method public clearPackage(Ljava/lang/String;)V
    .registers 4

    .line 1285
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1287
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePackage(Ljava/lang/String;)V

    .line 1288
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    .line 1290
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    :catchall_14
    move-exception p0

    .line 1288
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public clearPackageForUser(Ljava/lang/String;I)V
    .registers 5

    .line 1295
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1296
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v1, :cond_13

    .line 1298
    invoke-virtual {v1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_1f

    .line 1301
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePackageForUser(Ljava/lang/String;I)V

    .line 1302
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_11

    .line 1304
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 1302
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_11

    throw p0
.end method

.method public clearUser(I)V
    .registers 6

    .line 1309
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1c

    .line 1312
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_1a
    move-exception p0

    goto :goto_28

    .line 1315
    :cond_1c
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removeUser(I)V

    .line 1316
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1a

    .line 1318
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 1316
    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_1a

    throw p0
.end method

.method public clearUserStates(Ljava/util/List;I)V
    .registers 9

    .line 1632
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1633
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_30

    .line 1635
    :try_start_12
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result p1

    :goto_18
    if-ge v2, p1, :cond_50

    .line 1637
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-ne p2, v1, :cond_2a

    .line 1639
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeAllUsers()V

    goto :goto_2d

    :catchall_28
    move-exception p0

    goto :goto_57

    .line 1641
    :cond_2a
    invoke-virtual {v3, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1645
    :cond_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_34
    if-ge v2, v3, :cond_50

    .line 1647
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1648
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-ne p2, v1, :cond_4a

    .line 1650
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeAllUsers()V

    goto :goto_4d

    .line 1652
    :cond_4a
    invoke-virtual {v4, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1656
    :cond_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_12 .. :try_end_51} :catchall_28

    .line 1658
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 1656
    :goto_57
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_28

    throw p0
.end method

.method public final debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V
    .registers 6

    if-eqz p4, :cond_5

    .line 2150
    const-string p0, "approved"

    goto :goto_7

    :cond_5
    const-string p0, "denied"

    .line 2151
    :goto_7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for user "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DomainVerificationServiceApproval"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V
    .registers 6

    .line 1773
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_23

    .line 1775
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1776
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1777
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_23
    return-void
.end method

.method public final fillMapWithApprovalLevels(Landroid/util/ArrayMap;Landroid/net/Uri;ILjava/util/function/Function;)I
    .registers 20

    move-object/from16 v0, p1

    .line 1747
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    if-ge v3, v1, :cond_55

    .line 1749
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_16

    move-object/from16 v7, p2

    move-object/from16 v6, p4

    goto :goto_52

    .line 1754
    :cond_16
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1755
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v6, p4

    .line 1756
    invoke-interface {v6, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/server/pm/pkg/PackageStateInternal;

    move-object/from16 v7, p2

    if-eqz v9, :cond_4f

    .line 1758
    invoke-virtual {p0, v7, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->matchUriRelativeFilterGroups(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_36

    goto :goto_4f

    .line 1762
    :cond_36
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    .line 1763
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x0

    move-object v8, p0

    move/from16 v12, p3

    .line 1762
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I

    move-result v9

    .line 1764
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1765
    invoke-virtual {p0, v0, v5, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V

    goto :goto_52

    .line 1759
    :cond_4f
    :goto_4f
    invoke-virtual {p0, v0, v5, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_55
    return v4
.end method

.method public filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;
    .registers 11

    .line 1680
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1681
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_20

    .line 1683
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1685
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->isAutoResolutionAllowed()Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x0

    .line 1686
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1691
    :cond_20
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillMapWithApprovalLevels(Landroid/util/ArrayMap;Landroid/net/Uri;ILjava/util/function/Function;)I

    move-result p1

    if-gtz p1, :cond_35

    .line 1694
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1698
    :cond_35
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_3b
    if-ltz p2, :cond_4f

    .line 1699
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_4c

    .line 1700
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_4c
    add-int/lit8 p2, p2, -0x1

    goto :goto_3b

    :cond_4f
    if-eq p1, p3, :cond_54

    .line 1708
    invoke-virtual {p0, v0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->filterToLastFirstInstalled(Landroid/util/ArrayMap;Ljava/util/function/Function;)V

    .line 1713
    :cond_54
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 1714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5d
    if-ge v2, p2, :cond_6b

    .line 1716
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_6b
    if-eq p1, p3, :cond_70

    .line 1722
    invoke-virtual {p0, v1, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->filterToLastDeclared(Ljava/util/List;Ljava/util/function/Function;)V

    .line 1725
    :cond_70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final filterToLastDeclared(Ljava/util/List;Ljava/util/function/Function;)V
    .registers 11

    const/4 v0, 0x0

    .line 1818
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 1819
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1820
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1821
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v3, :cond_1d

    const/4 v3, 0x0

    goto :goto_21

    .line 1822
    :cond_1d
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    :goto_21
    if-nez v3, :cond_24

    goto :goto_56

    .line 1828
    :cond_24
    invoke-virtual {p0, v3, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->indexOfIntentFilterEntry(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I

    move-result v4

    .line 1831
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_2e
    add-int/lit8 v6, v0, 0x1

    if-lt v5, v6, :cond_53

    .line 1832
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1833
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    goto :goto_50

    .line 1837
    :cond_45
    invoke-virtual {p0, v3, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->indexOfIntentFilterEntry(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I

    move-result v7

    if-le v7, v4, :cond_4d

    move-object v1, v6

    move v4, v7

    .line 1845
    :cond_4d
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_50
    add-int/lit8 v5, v5, -0x1

    goto :goto_2e

    .line 1850
    :cond_53
    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_59
    return-void
.end method

.method public final filterToLastFirstInstalled(Landroid/util/ArrayMap;Ljava/util/function/Function;)V
    .registers 11

    .line 1788
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_8
    if-ge v3, p0, :cond_30

    .line 1790
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1791
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1792
    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v5, :cond_1f

    goto :goto_2d

    .line 1798
    :cond_1f
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v5

    .line 1797
    invoke-static {v5}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-lez v7, :cond_2d

    move-object v0, v4

    move-wide v1, v5

    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1806
    :cond_30
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_36
    if-ltz p0, :cond_50

    .line 1807
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 1808
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4d

    .line 1809
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_4d
    add-int/lit8 p0, p0, -0x1

    goto :goto_36

    :cond_50
    return-void
.end method

.method public generateNewId()Ljava/util/UUID;
    .registers 1

    .line 960
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public final getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .registers 10

    if-eqz p1, :cond_6c

    .line 1472
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/4 v0, 0x1

    if-nez p1, :cond_12

    .line 1474
    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p0

    return-object p0

    .line 1477
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p5, :cond_29

    .line 1479
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1480
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-interface {v2, v1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p4

    if-eqz p4, :cond_29

    .line 1481
    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p0

    return-object p0

    .line 1484
    :cond_29
    invoke-interface {p6, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p4

    if-eqz p4, :cond_67

    .line 1485
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p5

    if-eqz p5, :cond_67

    .line 1489
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p5

    if-nez p5, :cond_5f

    .line 1493
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-eqz p3, :cond_48

    .line 1495
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    goto :goto_4e

    .line 1496
    :cond_48
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    .line 1498
    :goto_4e
    invoke-interface {p2, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_5a

    const/4 p0, 0x2

    .line 1499
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p0

    return-object p0

    .line 1502
    :cond_5a
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->success(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p0

    return-object p0

    .line 1490
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided domain set cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1486
    :cond_67
    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 1469
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "domainSetId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getApprovedPackagesLocked(Ljava/lang/String;IILcom/android/server/pm/Computer;)Landroid/util/Pair;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v9, 0x0

    if-gez v7, :cond_c

    const/4 v1, 0x1

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v9

    .line 2096
    :goto_d
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2098
    iget-object v2, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v10

    move-object v11, v1

    move v13, v7

    move v12, v9

    :goto_18
    if-ge v12, v10, :cond_53

    .line 2100
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 2101
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 2102
    invoke-interface {v8, v14}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_2d

    goto :goto_4e

    :cond_2d
    const/4 v5, 0x0

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    move/from16 v4, p2

    .line 2107
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I

    move-result v1

    if-ge v1, v7, :cond_3b

    goto :goto_4e

    :cond_3b
    if-le v1, v13, :cond_47

    .line 2114
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 2115
    invoke-static {v11, v14}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    move v13, v1

    goto :goto_4e

    :cond_47
    if-ne v1, v13, :cond_4e

    .line 2118
    invoke-static {v11, v14}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    :cond_4e
    :goto_4e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_18

    .line 2122
    :cond_53
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2123
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 2126
    :cond_62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2128
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const-wide/high16 v2, -0x8000000000000000L

    :goto_6d
    if-ge v9, v1, :cond_9c

    .line 2130
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2131
    invoke-interface {v8, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-nez v5, :cond_7e

    move/from16 v6, p2

    goto :goto_99

    :cond_7e
    move/from16 v6, p2

    .line 2135
    invoke-interface {v5, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v14

    cmp-long v5, v14, v2

    if-lez v5, :cond_94

    .line 2138
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2139
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v14

    goto :goto_99

    :cond_94
    if-nez v5, :cond_99

    .line 2141
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_99
    :goto_99
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    .line 2145
    :cond_9c
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
    .registers 1

    .line 1432
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    return-object p0
.end method

.method public getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .registers 10

    .line 361
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 362
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_16
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    move-object v0, v2

    goto :goto_23

    .line 365
    :cond_1f
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    :goto_23
    if-eqz v0, :cond_8b

    .line 370
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez v3, :cond_33

    .line 372
    monitor-exit v1

    return-object v2

    :catchall_31
    move-exception p0

    goto :goto_90

    .line 375
    :cond_33
    new-instance v4, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 378
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    .line 379
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 380
    monitor-exit v1

    return-object v2

    .line 383
    :cond_4a
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x0

    move v5, v2

    :goto_50
    if-ge v5, v0, :cond_62

    .line 385
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 385
    invoke-virtual {v4, v6, v7}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 389
    :cond_62
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result p0

    :goto_66
    if-ge v2, p0, :cond_80

    .line 391
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 392
    invoke-static {v0}, Landroid/content/pm/verify/domain/DomainVerificationState;->convertToInfoState(I)I

    move-result v0

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 397
    :cond_80
    new-instance p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0, p1, v4}, Landroid/content/pm/verify/domain/DomainVerificationInfo;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;)V

    monitor-exit v1

    return-object p0

    .line 367
    :cond_8b
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 398
    :goto_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_16 .. :try_end_91} :catchall_31

    throw p0
.end method

.method public getDomainVerificationInfoId(Ljava/lang/String;)Ljava/util/UUID;
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz p0, :cond_15

    .line 350
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    goto :goto_18

    :cond_15
    const/4 p0, 0x0

    .line 352
    monitor-exit v0

    return-object p0

    .line 354
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_13

    throw p0
.end method

.method public getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .registers 15

    .line 813
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 814
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 813
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserStateQuerent(IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 818
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 819
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 820
    :try_start_1d
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_26

    move-object v0, v2

    goto :goto_2a

    .line 821
    :cond_26
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    :goto_2a
    if-eqz v0, :cond_a7

    .line 826
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez v3, :cond_3c

    .line 828
    monitor-exit v1

    return-object v2

    :catchall_38
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ad

    .line 831
    :cond_3c
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    .line 832
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 834
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 835
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 836
    invoke-virtual {v3, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v4

    if-nez v4, :cond_58

    .line 838
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_5c

    :cond_58
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v5

    :goto_5c
    const/4 v6, 0x0

    move v7, v6

    :goto_5e
    const/4 v8, 0x1

    if-ge v7, v0, :cond_8d

    .line 841
    invoke-virtual {p0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 842
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_7b

    .line 845
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v11

    if-eqz v11, :cond_7b

    const/4 v8, 0x2

    goto :goto_83

    .line 847
    :cond_7b
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_82

    goto :goto_83

    :cond_82
    move v8, v6

    .line 853
    :goto_83
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    :cond_8d
    if-eqz v4, :cond_97

    .line 857
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result p0

    if-eqz p0, :cond_96

    goto :goto_97

    :cond_96
    move v8, v6

    .line 859
    :cond_97
    :goto_97
    new-instance v4, Landroid/content/pm/verify/domain/DomainVerificationUserState;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v5

    .line 860
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/verify/domain/DomainVerificationUserState;-><init>(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/Map;)V

    monitor-exit v1

    return-object v4

    :cond_a7
    move-object v6, p1

    .line 823
    invoke-static {v6}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 861
    :goto_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_1d .. :try_end_ae} :catchall_38

    throw p0

    :cond_af
    move-object v6, p1

    .line 815
    invoke-static {v6}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0
.end method

.method public getLegacyState(Ljava/lang/String;I)I
    .registers 6

    .line 1276
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1277
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 1276
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->callerIsLegacyUserQuerent(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 1280
    :cond_16
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserState(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;
    .registers 11

    .line 866
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertOwnerQuerent(III)V

    .line 870
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v1, 0x0

    .line 871
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;

    move-result-object p0

    .line 873
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_28

    .line 874
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 877
    :cond_28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 878
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v0, v1

    :goto_32
    if-ge v0, p2, :cond_5f

    .line 880
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_3d

    const/4 v2, 0x1

    goto :goto_3e

    :cond_3d
    move v2, v1

    .line 882
    :goto_3e
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 883
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_49
    if-ge v5, v4, :cond_5c

    .line 885
    new-instance v6, Landroid/content/pm/verify/domain/DomainOwner;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Landroid/content/pm/verify/domain/DomainOwner;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_5f
    return-object p1
.end method

.method public final getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;
    .registers 19

    move-object/from16 v0, p4

    .line 901
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 903
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 904
    :try_start_a
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_12
    if-ge v5, v3, :cond_52

    .line 906
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 907
    invoke-virtual {v6}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 908
    invoke-interface {v0, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    if-nez v8, :cond_27

    goto :goto_4f

    :cond_27
    const/4 v12, 0x0

    move-object v13, p1

    move-object v7, p0

    move-object v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 913
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I

    move-result v8

    if-nez p2, :cond_38

    if-gtz v8, :cond_38

    goto :goto_4f

    .line 918
    :cond_38
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_4c

    .line 920
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 921
    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4c

    :catchall_49
    move-exception v0

    move-object p0, v0

    goto :goto_70

    .line 923
    :cond_4c
    :goto_4c
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 925
    :cond_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_49

    .line 927
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_5a

    goto :goto_6f

    :cond_5a
    :goto_5a
    if-ge v4, p0, :cond_6f

    .line 934
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v2, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;

    move/from16 v11, p3

    invoke-direct {v2, v0, v11}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Computer;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    :cond_6f
    :goto_6f
    return-object v1

    .line 925
    :goto_70
    :try_start_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_49

    throw p0
.end method

.method public getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    return-object p0
.end method

.method public getShell()Lcom/android/server/pm/verify/domain/DomainVerificationShell;
    .registers 1

    .line 1426
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    return-object p0
.end method

.method public getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .registers 7

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz p0, :cond_44

    .line 287
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUriRelativeFilterGroupMap()Landroid/util/ArrayMap;

    move-result-object p0

    const/4 p1, 0x0

    .line 288
    :goto_17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_44

    .line 289
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 290
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 291
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 292
    invoke-static {v2}, Landroid/content/UriRelativeFilterGroup;->groupsToParcels(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 291
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_41

    :catchall_3f
    move-exception p0

    goto :goto_46

    :cond_41
    :goto_41
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    .line 296
    :cond_44
    monitor-exit v1

    return-object v0

    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_3f

    throw p0
.end method

.method public final getUriRelativeFilterGroups(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9

    .line 304
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz p0, :cond_58

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUriRelativeFilterGroupMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 309
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1d

    .line 311
    monitor-exit v0

    return-object p1

    :catchall_1b
    move-exception p0

    goto :goto_5c

    .line 313
    :cond_1d
    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x2e

    .line 314
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    :goto_2b
    if-lez p1, :cond_58

    if-lez v1, :cond_58

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4e

    .line 318
    monitor-exit v0

    return-object p1

    :cond_4e
    add-int/lit8 p1, v1, 0x1

    .line 321
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    move v5, v1

    move v1, p1

    move p1, v5

    goto :goto_2b

    .line 324
    :cond_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_1b

    .line 325
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 324
    :goto_5c
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_1b

    throw p0
.end method

.method public final hasRealVerifier()Z
    .registers 1

    .line 1451
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    instance-of p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final indexOfIntentFilterEntry(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I
    .registers 6

    .line 1856
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 1857
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_27

    .line 1859
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1860
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 1859
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    return v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public final matchUriRelativeFilterGroups(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 4

    .line 1729
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1732
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getUriRelativeFilterGroups(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1733
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_18

    const/4 p0, 0x1

    return p0

    .line 1736
    :cond_18
    invoke-static {p0, p1}, Landroid/content/UriRelativeFilterGroup;->matchGroupsToUri(Ljava/util/List;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public migrateState(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 966
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 969
    iget-object v9, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 970
    :try_start_b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    move-result-object v3

    .line 971
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    move-result-object v4

    .line 972
    iget-object v5, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->remove(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 974
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    .line 975
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    move-object v7, v5

    .line 977
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 978
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    if-eqz v3, :cond_e0

    if-eqz v7, :cond_e0

    if-nez v6, :cond_36

    goto/16 :goto_e0

    .line 995
    :cond_36
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 997
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUriRelativeFilterGroupMap()Landroid/util/ArrayMap;

    move-result-object v10

    .line 998
    iget-object v11, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 999
    invoke-virtual {v11, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v11

    .line 1000
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_49
    if-ge v14, v12, :cond_6f

    .line 1003
    invoke-virtual {v11, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1004
    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_6c

    .line 1006
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1011
    invoke-static/range {v16 .. v16}, Landroid/content/pm/verify/domain/DomainVerificationState;->shouldMigrate(I)Z

    move-result v16

    if-eqz v16, :cond_6c

    .line 1012
    invoke-virtual {v5, v15, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    :catchall_69
    move-exception v0

    goto/16 :goto_12d

    :cond_6c
    :goto_6c
    add-int/lit8 v14, v14, 0x1

    goto :goto_49

    .line 1018
    :cond_6f
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v3

    .line 1019
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_af

    .line 1021
    iget-object v13, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v13, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v6

    const/4 v13, 0x0

    :goto_80
    if-ge v13, v7, :cond_af

    .line 1024
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 1025
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-object/from16 v16, v2

    .line 1027
    invoke-virtual {v15}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v2

    move-object/from16 v17, v3

    .line 1028
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1029
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 1030
    new-instance v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 1032
    invoke-virtual {v15}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v15

    invoke-direct {v2, v14, v3, v15}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    .line 1033
    invoke-virtual {v8, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_80

    :cond_af
    move-object/from16 v16, v2

    const/4 v2, 0x1

    move-object v3, v4

    if-lez v12, :cond_b7

    move v4, v2

    goto :goto_b8

    :cond_b7
    const/4 v4, 0x0

    .line 1039
    :goto_b8
    invoke-virtual {v0, v1, v5, v11}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v4, :cond_c4

    if-eqz v1, :cond_c4

    move v13, v2

    :goto_c1
    move-object/from16 v1, p3

    goto :goto_c6

    :cond_c4
    const/4 v13, 0x0

    goto :goto_c1

    .line 1044
    :goto_c6
    invoke-virtual {v0, v5, v11, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyPreVerifiedState(Landroid/util/ArrayMap;Landroid/util/ArraySet;Landroid/content/pm/verify/domain/DomainSet;)V

    .line 1046
    iget-object v11, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    new-instance v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/4 v7, 0x0

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v2, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;Landroid/util/ArrayMap;)V

    move-object v4, v3

    invoke-virtual {v11, v2, v4, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1049
    monitor-exit v9
    :try_end_da
    .catchall {:try_start_b .. :try_end_da} :catchall_69

    if-eqz v13, :cond_df

    .line 1052
    invoke-virtual {v0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/lang/String;)V

    :cond_df
    return-void

    .line 982
    :cond_e0
    :goto_e0
    :try_start_e0
    const-string v10, "DomainVerificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid state nullability old state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", old pkgSetting = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", new pkgSetting = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", old pkg = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new pkg = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v10, v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 988
    new-instance v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object v3, v4

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 991
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 992
    monitor-exit v9

    return-void

    .line 1049
    :goto_12d
    monitor-exit v9
    :try_end_12e
    .catchall {:try_start_e0 .. :try_end_12e} :catchall_69

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 202
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->hasRealVerifier()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_12

    :cond_a
    const/16 v0, 0x226

    if-eq p1, v0, :cond_19

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_13

    :goto_12
    return-void

    :cond_13
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    return-void

    :cond_19
    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 185
    const-string v0, "domain_verification"

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 219
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    return-void
.end method

.method public final printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V
    .registers 11

    .line 1407
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    if-eqz p3, :cond_20

    .line 1410
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    goto :goto_20

    .line 1416
    :cond_10
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1417
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p2, v1, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;

    move-result-object p3

    .line 1416
    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_36

    .line 1411
    :cond_20
    :goto_20
    iget-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object p3

    array-length v2, p3

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_36

    aget v4, p3, v3

    .line 1413
    invoke-virtual {p0, p2, v1, v4, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;

    move-result-object v5

    .line 1412
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1420
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printOwners(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public printOwnersForDomains(Landroid/util/IndentingPrintWriter;Ljava/util/List;Ljava/lang/Integer;)V
    .registers 9

    .line 1395
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 1396
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1397
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1398
    :try_start_16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2b

    .line 1400
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, v4, p3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :catchall_29
    move-exception p0

    goto :goto_2d

    .line 1402
    :cond_2b
    monitor-exit v1

    return-void

    :goto_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 8

    .line 1346
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 1347
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1348
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p2, :cond_36

    .line 1350
    :try_start_18
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result p2
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_31

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, p2, :cond_39

    .line 1353
    :try_start_21
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 1354
    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1353
    invoke-virtual {p0, p1, v3, p3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_30} :catch_33
    .catchall {:try_start_21 .. :try_end_30} :catchall_31

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_3b

    :catch_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1361
    :cond_36
    :try_start_36
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V

    .line 1363
    :cond_39
    monitor-exit v1

    return-void

    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_31

    throw p0
.end method

.method public final printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V
    .registers 8

    .line 1370
    invoke-interface {p4, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 1371
    :cond_8
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_45

    .line 1376
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1377
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1b

    return-void

    .line 1382
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p2, 0x0

    :goto_33
    if-ge p2, v1, :cond_41

    .line 1386
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_33

    .line 1389
    :cond_41
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1373
    :cond_45
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0
.end method

.method public printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    .line 1329
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 13

    .line 1336
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 1337
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1338
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    iget-object v7, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    move-object v6, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;)V

    .line 1339
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1d

    throw p0
.end method

.method public queryValidVerificationPackageNames()Ljava/util/List;
    .registers 7

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_15
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_39

    .line 335
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 336
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 337
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_3b

    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 340
    :cond_39
    monitor-exit v1

    return-object v0

    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_34

    throw p0
.end method

.method public readLegacySettings(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 2

    .line 1245
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->readSettings(Lcom/android/modules/utils/TypedXmlPullParser;)V

    return-void
.end method

.method public readSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 5

    .line 1237
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1238
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->readSettings(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V

    .line 1239
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V
    .registers 11

    .line 577
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p1

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_48

    .line 581
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 582
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v4

    .line 583
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_22
    if-ge v6, v5, :cond_45

    .line 585
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 587
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz v7, :cond_39

    .line 588
    invoke-virtual {v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v7

    if-nez v7, :cond_39

    goto :goto_42

    :catchall_37
    move-exception p0

    goto :goto_4a

    .line 594
    :cond_39
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-virtual {v7, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHost(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :goto_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 597
    :cond_48
    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_37

    throw p0
.end method

.method public final resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 8

    .line 1607
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_25

    .line 1609
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1611
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_1f

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1f

    .line 1617
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x400

    if-lt v2, v3, :cond_22

    .line 1622
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1626
    :cond_25
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 1627
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1626
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    return-void
.end method

.method public restoreSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 5

    .line 1251
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1252
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->restoreSettings(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V

    .line 1253
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I
    .registers 12

    .line 764
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 766
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 767
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_9

    :cond_20
    const/4 v2, 0x1

    .line 771
    invoke-virtual {p0, v1, p2, v2, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getApprovedPackagesLocked(Ljava/lang/String;IILcom/android/server/pm/Computer;)Landroid/util/Pair;

    move-result-object v2

    .line 773
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_31

    return v4

    .line 778
    :cond_31
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 783
    :cond_39
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p3, 0x0

    move p4, p3

    :goto_3f
    if-ge p4, p1, :cond_75

    .line 785
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 786
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 787
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v4, p3

    :goto_52
    if-ge v4, v3, :cond_72

    .line 789
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 790
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 791
    invoke-virtual {v6, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez v5, :cond_65

    goto :goto_6f

    .line 797
    :cond_65
    invoke-virtual {v5, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v5

    if-nez v5, :cond_6c

    goto :goto_6f

    .line 802
    :cond_6c
    invoke-virtual {v5, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHost(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_72
    add-int/lit8 p4, p4, 0x1

    goto :goto_3f

    :cond_75
    return p3
.end method

.method public runMessage(ILjava/lang/Object;)Z
    .registers 3

    .line 1323
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->runMessage(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final sendBroadcast(Ljava/lang/String;)V
    .registers 2

    .line 1436
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/util/Set;)V

    return-void
.end method

.method public final sendBroadcast(Ljava/util/Set;)V
    .registers 3

    .line 1440
    iget-boolean v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    if-nez v0, :cond_5

    return-void

    .line 1447
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {p0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->sendBroadcastForPackages(Ljava/util/Set;)V

    return-void
.end method

.method public setConnection(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 191
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->setCallback(Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;)V

    return-void
.end method

.method public setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    .registers 7

    .line 602
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 603
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 602
    invoke-virtual {v0, v1, v2, p1, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserSelector(IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 606
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v1, :cond_31

    .line 612
    invoke-virtual {v1, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object p1

    .line 613
    invoke-virtual {p1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 614
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_2f

    .line 616
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    :catchall_2f
    move-exception p0

    goto :goto_36

    .line 609
    :cond_31
    :try_start_31
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 614
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_2f

    throw p0

    .line 604
    :cond_38
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0
.end method

.method public setDomainVerificationLinkHandlingAllowedInternal(Ljava/lang/String;ZI)V
    .registers 13

    .line 622
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4b

    .line 624
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 625
    :try_start_12
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result p1

    move v3, v1

    :goto_19
    if-ge v3, p1, :cond_47

    .line 627
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-ne p3, v0, :cond_3d

    .line 629
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_2d
    if-ge v7, v6, :cond_44

    aget v8, v5, v7

    .line 630
    invoke-virtual {v4, v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v8

    .line 631
    invoke-virtual {v8, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :catchall_3b
    move-exception p0

    goto :goto_49

    .line 634
    :cond_3d
    invoke-virtual {v4, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v4

    .line 635
    invoke-virtual {v4, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 638
    :cond_47
    monitor-exit v2

    goto :goto_79

    :goto_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_12 .. :try_end_4a} :catchall_3b

    throw p0

    .line 640
    :cond_4b
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 641
    :try_start_4e
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v3, :cond_7f

    if-ne p3, v0, :cond_71

    .line 647
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object p1

    array-length p3, p1

    :goto_61
    if-ge v1, p3, :cond_78

    aget v0, p1, v1

    .line 648
    invoke-virtual {v3, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v0

    .line 649
    invoke-virtual {v0, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :catchall_6f
    move-exception p0

    goto :goto_84

    .line 652
    :cond_71
    invoke-virtual {v3, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object p1

    .line 653
    invoke-virtual {p1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 655
    :cond_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_4e .. :try_end_79} :catchall_6f

    .line 658
    :goto_79
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 643
    :cond_7f
    :try_start_7f
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 655
    :goto_84
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_6f

    throw p0
.end method

.method public setDomainVerificationStatus(Ljava/util/UUID;Ljava/util/Set;I)I
    .registers 5

    const/16 v0, 0x400

    if-ge p3, v0, :cond_1f

    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    goto :goto_1f

    .line 406
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller is not allowed to set state code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 411
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I

    move-result p0

    return p0
.end method

.method public setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I
    .registers 14

    .line 420
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 421
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 422
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 423
    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p1

    move-object v2, p2

    move-object v3, p3

    .line 425
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p0

    .line 427
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 428
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getErrorCode()I

    move-result p0

    monitor-exit v8

    return p0

    :catchall_2b
    move-exception v0

    move-object p0, v0

    goto :goto_97

    .line 431
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object p0

    .line 432
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object p1

    .line 433
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3a
    :goto_3a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 434
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5f

    .line 437
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p4, :cond_3a

    .line 438
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/verify/domain/DomainVerificationState;->isModifiable(I)Z

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_3a

    .line 443
    :cond_5f
    invoke-static {p4}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v3

    if-eqz v3, :cond_74

    if-eqz v2, :cond_71

    .line 445
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v2

    if-nez v2, :cond_74

    .line 446
    :cond_71
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_74
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 454
    :cond_7c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_82
    if-ge p3, p1, :cond_90

    .line 456
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v1, p0, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_82

    .line 458
    :cond_90
    monitor-exit v8
    :try_end_91
    .catchall {:try_start_10 .. :try_end_91} :catchall_2b

    .line 460
    iget-object p0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return p2

    .line 458
    :goto_97
    :try_start_97
    monitor-exit v8
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_2b

    throw p0
.end method

.method public final setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V
    .registers 7

    .line 567
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 568
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 570
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setDomainVerificationStatusInternal(Ljava/lang/String;ILandroid/util/ArraySet;)V
    .registers 12

    .line 467
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    if-eqz p2, :cond_1f

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1f

    const/4 v0, 0x3

    if-ne p2, v0, :cond_17

    goto :goto_1f

    .line 476
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "State must be one of NO_RESPONSE, SUCCESS, APPROVED, or DENIED"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    if-nez p1, :cond_77

    .line 481
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p1

    .line 482
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_2b
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 485
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v3

    :goto_36
    if-ge v0, v3, :cond_72

    .line 487
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 488
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-interface {p1, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_6f

    .line 490
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-nez v6, :cond_51

    goto :goto_6f

    .line 494
    :cond_51
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    .line 496
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 498
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 499
    invoke-virtual {v6, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v5

    if-nez p3, :cond_66

    .line 501
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_6c

    :catchall_64
    move-exception p0

    goto :goto_75

    .line 503
    :cond_66
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 504
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 507
    :goto_6c
    invoke-virtual {p0, v4, p2, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V

    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 509
    :cond_72
    monitor-exit v1

    goto/16 :goto_fb

    :goto_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_2b .. :try_end_76} :catchall_64

    throw p0

    .line 511
    :cond_77
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 512
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 513
    :try_start_80
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v3, :cond_106

    .line 518
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_101

    .line 519
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_101

    .line 523
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-nez p3, :cond_a5

    .line 526
    iget-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p3

    goto :goto_ae

    :catchall_a3
    move-exception p0

    goto :goto_10b

    .line 529
    :cond_a5
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 533
    :goto_ae
    invoke-static {p2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 534
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 535
    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 536
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v4

    move v5, v0

    :goto_c2
    if-ge v5, v4, :cond_e3

    .line 538
    invoke-virtual {p3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 539
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_dc

    .line 541
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v7

    if-nez v7, :cond_df

    .line 542
    :cond_dc
    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_df
    add-int/lit8 v5, v5, 0x1

    goto :goto_c2

    :cond_e2
    const/4 p1, 0x0

    .line 547
    :cond_e3
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V

    if-eqz p1, :cond_fa

    .line 553
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    :goto_ec
    if-ge v0, p2, :cond_fa

    .line 555
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 556
    invoke-virtual {p0, v3, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ec

    .line 559
    :cond_fa
    monitor-exit v2
    :try_end_fb
    .catchall {:try_start_80 .. :try_end_fb} :catchall_a3

    .line 562
    :goto_fb
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 520
    :cond_101
    :try_start_101
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 515
    :cond_106
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 559
    :goto_10b
    monitor-exit v2
    :try_end_10c
    .catchall {:try_start_101 .. :try_end_10c} :catchall_a3

    throw p0
.end method

.method public setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;ZI)I
    .registers 14

    .line 666
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v5

    .line 670
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v1, v2, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserSelector(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 p0, 0x1

    return p0

    .line 675
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 676
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 678
    :try_start_20
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 677
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p0

    .line 679
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 680
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getErrorCode()I

    move-result p0

    monitor-exit v8

    return p0

    :catchall_38
    move-exception v0

    move-object p0, v0

    goto :goto_5e

    .line 683
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object p0

    .line 684
    invoke-virtual {p0, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object p0

    if-eqz p3, :cond_4d

    .line 691
    invoke-virtual {v1, p0, p4, v3, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    move-result p1

    if-eqz p1, :cond_4d

    .line 694
    monitor-exit v8

    return p1

    :cond_4d
    if-eqz p3, :cond_53

    .line 699
    invoke-virtual {p0, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_56

    .line 701
    :cond_53
    invoke-virtual {p0, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 703
    :goto_56
    monitor-exit v8
    :try_end_57
    .catchall {:try_start_20 .. :try_end_57} :catchall_38

    .line 705
    iget-object p0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    const/4 p0, 0x0

    return p0

    .line 703
    :goto_5e
    :try_start_5e
    monitor-exit v8
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_38

    throw p0
.end method

.method public setDomainVerificationUserSelectionInternal(ILjava/lang/String;ZLandroid/util/ArraySet;)V
    .registers 11

    .line 713
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 714
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 715
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v2, :cond_7e

    .line 721
    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_26

    const/4 v3, 0x0

    goto :goto_2a

    .line 722
    :cond_26
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    :goto_2a
    if-eqz v3, :cond_79

    if-nez p4, :cond_37

    .line 728
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p2, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p4

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_83

    .line 730
    :cond_37
    :goto_37
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p2, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const/4 p2, -0x1

    if-ne p1, p2, :cond_62

    .line 733
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object p1

    array-length p2, p1

    const/4 v3, 0x0

    :goto_4b
    if-ge v3, p2, :cond_72

    aget v4, p1, v3

    .line 735
    invoke-virtual {v2, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v5

    .line 736
    invoke-virtual {p0, v5, v4, p4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    if-eqz p3, :cond_5c

    .line 739
    invoke-virtual {v5, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_5f

    .line 741
    :cond_5c
    invoke-virtual {v5, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 746
    :cond_62
    invoke-virtual {v2, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object p2

    .line 747
    invoke-virtual {p0, p2, p1, p4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    if-eqz p3, :cond_6f

    .line 749
    invoke-virtual {p2, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_72

    .line 751
    :cond_6f
    invoke-virtual {p2, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 754
    :cond_72
    :goto_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_14 .. :try_end_73} :catchall_35

    .line 756
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void

    .line 724
    :cond_79
    :try_start_79
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 718
    :cond_7e
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 754
    :goto_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_35

    throw p0
.end method

.method public setLegacyUserState(Ljava/lang/String;II)Z
    .registers 7

    .line 1265
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1266
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 1265
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->callerIsLegacyUserSelector(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 1269
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->add(Ljava/lang/String;II)V

    .line 1270
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    const/4 p0, 0x1

    return p0
.end method

.method public setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    return-void
.end method

.method public setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 245
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DOMAIN_VERIFICATION_AGENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 247
    invoke-interface {v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not hold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.DOMAIN_VERIFICATION_AGENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    return-void

    .line 252
    :cond_31
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_34
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz p0, :cond_7c

    .line 258
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUriRelativeFilterGroupMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 259
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isValidDomain(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_4a

    .line 263
    :cond_5d
    const-class v2, Landroid/content/UriRelativeFilterGroupParcel;

    .line 264
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 266
    invoke-static {v2}, Landroid/content/UriRelativeFilterGroup;->parcelsToGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 267
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_70

    goto :goto_76

    .line 270
    :cond_70
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :catchall_74
    move-exception p0

    goto :goto_81

    .line 268
    :cond_76
    :goto_76
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 273
    :cond_7a
    monitor-exit v0

    return-void

    .line 255
    :cond_7c
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object p0

    throw p0

    .line 273
    :goto_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_34 .. :try_end_82} :catchall_74

    throw p0
.end method

.method public final shouldReBroadcastPackage(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Z
    .registers 5

    .line 1553
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 1557
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 1558
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_27

    .line 1560
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1561
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isDefault(I)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public verifyPackages(Ljava/util/List;Z)V
    .registers 9

    .line 1507
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1508
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_32

    .line 1511
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1512
    :try_start_16
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result p1

    :goto_1c
    if-ge v1, p1, :cond_2e

    .line 1514
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1515
    invoke-virtual {p0, v0, v3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :catchall_2c
    move-exception p0

    goto :goto_30

    .line 1517
    :cond_2e
    monitor-exit v2

    goto :goto_55

    :goto_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_2c

    throw p0

    .line 1519
    :cond_32
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1520
    :try_start_35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_39
    if-ge v1, v3, :cond_54

    .line 1522
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1523
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v4, :cond_51

    .line 1525
    invoke-virtual {p0, v0, v4, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V

    goto :goto_51

    :catchall_4f
    move-exception p0

    goto :goto_5f

    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1528
    :cond_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_35 .. :try_end_55} :catchall_4f

    .line 1531
    :goto_55
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5e

    .line 1532
    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/util/Set;)V

    :cond_5e
    return-void

    .line 1528
    :goto_5f
    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_4f

    throw p0
.end method

.method public writeSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlSerializer;ZI)V
    .registers 7

    .line 1210
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_d

    .line 1213
    :try_start_5
    new-instance p3, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Computer;)V

    goto :goto_e

    :catchall_b
    move-exception p0

    goto :goto_1c

    :cond_d
    const/4 p3, 0x0

    .line 1228
    :goto_e
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {p1, p2, v1, p4, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->writeSettings(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;ILjava/util/function/Function;)V

    .line 1229
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_b

    .line 1231
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->writeSettings(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 1229
    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_b

    throw p0
.end method
