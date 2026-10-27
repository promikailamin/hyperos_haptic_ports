.class public Lcom/android/server/pm/verify/domain/DomainVerificationService;
.super Lcom/android/server/SystemService;
.source "DomainVerificationService.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
.implements Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;,
        Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    }
.end annotation


# static fields
.field public static final DEBUG_APPROVAL:Z = false

.field private static final SETTINGS_API_V2:J = 0xa9dc3bdL

.field private static final TAG:Ljava/lang/String; = "DomainVerificationService"


# instance fields
.field private final mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSendBroadcasts:Z

.field private final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

.field private mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

.field private mContext:Landroid/content/Context;

.field private final mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

.field private final mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

.field private final mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

.field private final mLock:Ljava/lang/Object;

.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field private mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

.field private final mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

.field private mSettingsObserver:Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;

.field private final mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

.field private final mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

.field private final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemConfig"    # Lcom/android/server/SystemConfig;
    .param p3, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;

    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;

    invoke-direct {v0, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

    .line 161
    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettingsObserver:Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;

    .line 175
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 176
    iput-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 177
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;-><init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 178
    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-direct {v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V

    iput-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 179
    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    invoke-direct {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 180
    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    invoke-direct {v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V

    iput-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    .line 181
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    invoke-direct {v0, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 182
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 185
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mContext:Landroid/content/Context;

    .line 187
    return-void
.end method

.method private addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V
    .registers 5
    .param p2, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .param p3, "reVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "Z)V"
        }
    .end annotation

    .line 1438
    .local p1, "packageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p3, :cond_8

    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->shouldReBroadcastPackage(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1439
    :cond_e
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1441
    :cond_15
    return-void
.end method

.method private applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z
    .registers 9
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1069
    .local p2, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p3, "autoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 1070
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1071
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1072
    .local v0, "domainsSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1c
    if-ge v2, v0, :cond_2e

    .line 1073
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1074
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1073
    invoke-virtual {p2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1076
    .end local v2    # "index":I
    :cond_2e
    const/4 v1, 0x0

    return v1

    .line 1078
    .end local v0    # "domainsSize":I
    :cond_30
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1079
    .local v0, "size":I
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "index":I
    :goto_36
    if-ltz v2, :cond_4a

    .line 1080
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1082
    .local v3, "state":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_47

    .line 1083
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1079
    .end local v3    # "state":Ljava/lang/Integer;
    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 1087
    .end local v2    # "index":I
    :cond_4a
    const/4 v1, 0x1

    return v1
.end method

.method private approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I
    .registers 11
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "includeNegative"    # Z
    .param p4, "userId"    # I
    .param p5, "debugObject"    # Ljava/lang/Object;

    .line 1781
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomainInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v0

    .line 1783
    .local v0, "approvalLevel":I
    if-eqz p3, :cond_30

    if-nez v0, :cond_30

    .line 1784
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    .line 1785
    .local v1, "pkgUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1786
    const/4 v2, -0x4

    return v2

    .line 1789
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 1790
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v2, :cond_30

    .line 1791
    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isPackageEnabled(Lcom/android/server/pm/pkg/PackageUserState;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1792
    const/4 v3, -0x3

    return v3

    .line 1793
    :cond_22
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->containsAutoVerifyDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1794
    const/4 v3, -0x1

    return v3

    .line 1799
    .end local v1    # "pkgUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_30
    return v0
.end method

.method private approvalLevelForDomainInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I
    .registers 25
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "includeNegative"    # Z
    .param p4, "userId"    # I
    .param p5, "debugObject"    # Ljava/lang/Object;

    .line 1805
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1806
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 1808
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v5, :cond_1c

    if-eqz p3, :cond_1c

    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v0, v5, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->containsWebDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1813
    const/4 v0, -0x2

    return v0

    .line 1816
    :cond_1c
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1817
    .local v6, "pkgUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    const/4 v0, 0x0

    if-nez v6, :cond_2b

    .line 1822
    return v0

    .line 1825
    :cond_2b
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v7

    if-nez v7, :cond_32

    .line 1830
    return v0

    .line 1833
    :cond_32
    invoke-static {v6, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isPackageEnabled(Lcom/android/server/pm/pkg/PackageUserState;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 1838
    return v0

    .line 1841
    :cond_39
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1846
    return v0

    .line 1850
    :cond_40
    const/4 v7, 0x2

    if-eqz v5, :cond_5c

    iget-object v8, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v9, 0xa9dc3bd

    invoke-static {v8, v5, v9, v10}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v8

    if-nez v8, :cond_5c

    .line 1852
    iget-object v8, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v8, v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserState(Ljava/lang/String;I)I

    move-result v8

    packed-switch v8, :pswitch_data_14e

    goto :goto_5c

    .line 1857
    :pswitch_58
    return v0

    .line 1862
    :pswitch_59
    return v7

    .line 1860
    :pswitch_5a
    const/4 v0, 0x1

    return v0

    .line 1866
    :cond_5c
    :goto_5c
    :pswitch_5c
    iget-object v8, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1867
    :try_start_5f
    iget-object v9, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1868
    .local v9, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-nez v9, :cond_6b

    .line 1872
    monitor-exit v8

    return v0

    .line 1875
    :cond_6b
    invoke-virtual {v9, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v10

    .line 1877
    .local v10, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-eqz v10, :cond_79

    invoke-virtual {v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v11

    if-nez v11, :cond_79

    .line 1882
    monitor-exit v8
    :try_end_78
    .catchall {:try_start_5f .. :try_end_78} :catchall_147

    return v0

    .line 1887
    :cond_79
    if-eqz v5, :cond_96

    .line 1890
    move-object/from16 v11, p1

    :try_start_7d
    invoke-interface {v11, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v12

    if-eqz v12, :cond_98

    iget-object v12, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 1891
    invoke-virtual {v12, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_98

    .line 1892
    const/4 v0, 0x5

    monitor-exit v8

    return v0

    .line 1887
    :cond_96
    move-object/from16 v11, p1

    .line 1896
    :cond_98
    invoke-virtual {v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v12

    .line 1898
    .local v12, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 1899
    .local v13, "state":Ljava/lang/Integer;
    const/4 v14, 0x4

    if-eqz v13, :cond_b1

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v15

    if-eqz v15, :cond_b1

    .line 1904
    monitor-exit v8

    return v14

    .line 1908
    :cond_b1
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 1909
    .local v15, "stateMapSize":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "index":I
    :goto_b9
    if-ge v0, v15, :cond_f5

    .line 1910
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v16

    if-nez v16, :cond_cd

    .line 1911
    move v1, v14

    goto :goto_ee

    .line 1914
    :cond_cd
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 1915
    .local v17, "domain":Ljava/lang/String;
    const-string v14, "*."

    move-object/from16 v7, v17

    .end local v17    # "domain":Ljava/lang/String;
    .local v7, "domain":Ljava/lang/String;
    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ed

    const/4 v14, 0x2

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 1920
    monitor-exit v8

    const/4 v1, 0x4

    return v1

    .line 1915
    :cond_ed
    const/4 v1, 0x4

    .line 1909
    .end local v7    # "domain":Ljava/lang/String;
    :goto_ee
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x2

    move v14, v1

    move-object/from16 v1, p0

    goto :goto_b9

    .line 1925
    .end local v0    # "index":I
    :cond_f5
    if-nez v10, :cond_fa

    .line 1929
    monitor-exit v8

    const/4 v0, 0x0

    return v0

    .line 1933
    :cond_fa
    invoke-virtual {v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v0

    .line 1934
    .local v0, "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x3

    if-eqz v1, :cond_107

    .line 1939
    monitor-exit v8

    return v7

    .line 1943
    :cond_107
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1944
    .local v1, "enabledHostsSize":I
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_10c
    if-ge v14, v1, :cond_140

    .line 1945
    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 1946
    .restart local v17    # "domain":Ljava/lang/String;
    const-string v7, "*."

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    .end local v17    # "domain":Ljava/lang/String;
    .local v0, "domain":Ljava/lang/String;
    .local v18, "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_134

    move/from16 v17, v1

    const/4 v7, 0x2

    .end local v1    # "enabledHostsSize":I
    .local v17, "enabledHostsSize":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 1951
    monitor-exit v8

    const/4 v1, 0x3

    return v1

    .line 1946
    :cond_132
    const/4 v1, 0x3

    goto :goto_138

    .end local v17    # "enabledHostsSize":I
    .restart local v1    # "enabledHostsSize":I
    :cond_134
    move/from16 v17, v1

    const/4 v1, 0x3

    const/4 v7, 0x2

    .line 1944
    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "enabledHostsSize":I
    .restart local v17    # "enabledHostsSize":I
    :goto_138
    add-int/lit8 v14, v14, 0x1

    move v7, v1

    move/from16 v1, v17

    move-object/from16 v0, v18

    goto :goto_10c

    .end local v17    # "enabledHostsSize":I
    .end local v18    # "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v0, "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "enabledHostsSize":I
    :cond_140
    move-object/from16 v18, v0

    move/from16 v17, v1

    .line 1958
    .end local v0    # "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "enabledHostsSize":I
    .end local v14    # "index":I
    .restart local v17    # "enabledHostsSize":I
    .restart local v18    # "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v8

    const/4 v0, 0x0

    return v0

    .line 1959
    .end local v9    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v10    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .end local v12    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v13    # "state":Ljava/lang/Integer;
    .end local v15    # "stateMapSize":I
    .end local v17    # "enabledHostsSize":I
    .end local v18    # "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_147
    move-exception v0

    move-object/from16 v11, p1

    :goto_14a
    monitor-exit v8
    :try_end_14b
    .catchall {:try_start_7d .. :try_end_14b} :catchall_14c

    throw v0

    :catchall_14c
    move-exception v0

    goto :goto_14a

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_5a
    .end packed-switch
.end method

.method private debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "debugObject"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .param p4, "approved"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 2025
    if-eqz p4, :cond_5

    const-string v0, "approved"

    goto :goto_7

    :cond_5
    const-string v0, "denied"

    .line 2026
    .local v0, "approvalString":Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DomainVerificationServiceApproval"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    return-void
.end method

.method private fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V
    .registers 8
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1661
    .local p1, "inputMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1662
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    if-ge v1, v0, :cond_23

    .line 1663
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1664
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1665
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1662
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1668
    .end local v1    # "index":I
    :cond_23
    return-void
.end method

.method private fillMapWithApprovalLevels(Landroid/util/ArrayMap;Ljava/lang/String;ILjava/util/function/Function;)I
    .registers 20
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)I"
        }
    .end annotation

    .line 1636
    .local p1, "inputMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    .local p4, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x0

    .line 1637
    .local v0, "highestApproval":I
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1638
    .local v8, "size":I
    const/4 v1, 0x0

    move v9, v0

    move v10, v1

    .end local v0    # "highestApproval":I
    .local v9, "highestApproval":I
    .local v10, "index":I
    :goto_b
    if-ge v10, v8, :cond_4b

    .line 1639
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1641
    move-object/from16 v13, p4

    goto :goto_48

    .line 1644
    :cond_16
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1645
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v12, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1646
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v13, p4

    invoke-interface {v13, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1647
    .local v14, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v14, :cond_33

    .line 1648
    const/4 v0, 0x0

    invoke-direct {p0, v7, v12, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V

    .line 1649
    goto :goto_48

    .line 1651
    :cond_33
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v0

    .line 1652
    .local v0, "approval":I
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1653
    .end local v9    # "highestApproval":I
    .local v1, "highestApproval":I
    invoke-direct {p0, v7, v12, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V

    move v9, v1

    .line 1638
    .end local v0    # "approval":I
    .end local v1    # "highestApproval":I
    .end local v11    # "info":Landroid/content/pm/ResolveInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v9    # "highestApproval":I
    :goto_48
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_4b
    move-object/from16 v13, p4

    .line 1656
    .end local v10    # "index":I
    return v9
.end method

.method private filterToLastDeclared(Ljava/util/List;Ljava/util/function/Function;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 1706
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p2, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 1707
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1708
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1709
    .local v2, "targetPackageName":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1710
    .local v3, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v3, :cond_1d

    const/4 v4, 0x0

    goto :goto_21

    :cond_1d
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 1711
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_21
    if-nez v4, :cond_24

    .line 1712
    goto :goto_57

    .line 1715
    :cond_24
    move-object v5, v1

    .line 1716
    .local v5, "result":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->indexOfIntentFilterEntry(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I

    move-result v6

    .line 1719
    .local v6, "highestIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "searchIndex":I
    :goto_2f
    add-int/lit8 v8, v0, 0x1

    if-lt v7, v8, :cond_54

    .line 1720
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1721
    .local v8, "searchInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_46

    .line 1722
    goto :goto_51

    .line 1725
    :cond_46
    invoke-direct {p0, v4, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->indexOfIntentFilterEntry(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I

    move-result v9

    .line 1726
    .local v9, "entryIndex":I
    if-le v9, v6, :cond_4e

    .line 1727
    move v6, v9

    .line 1728
    move-object v5, v8

    .line 1733
    :cond_4e
    invoke-interface {p1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1719
    .end local v8    # "searchInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "entryIndex":I
    :goto_51
    add-int/lit8 v7, v7, -0x1

    goto :goto_2f

    .line 1738
    .end local v7    # "searchIndex":I
    :cond_54
    invoke-interface {p1, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1706
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "targetPackageName":Ljava/lang/String;
    .end local v3    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "result":Landroid/content/pm/ResolveInfo;
    .end local v6    # "highestIndex":I
    :goto_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1740
    .end local v0    # "index":I
    :cond_5a
    return-void
.end method

.method private filterToLastFirstInstalled(Landroid/util/ArrayMap;Ljava/util/function/Function;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 1674
    .local p1, "inputMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    .local p2, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v0, 0x0

    .line 1675
    .local v0, "targetPackageName":Ljava/lang/String;
    const-wide/high16 v1, -0x8000000000000000L

    .line 1676
    .local v1, "latestInstall":J
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1677
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_8
    if-ge v4, v3, :cond_31

    .line 1678
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1679
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1680
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {p2, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1681
    .local v7, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v7, :cond_1f

    .line 1682
    goto :goto_2e

    .line 1685
    :cond_1f
    nop

    .line 1686
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v8

    .line 1685
    invoke-static {v8}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v8

    .line 1687
    .local v8, "installTime":J
    cmp-long v10, v8, v1

    if-lez v10, :cond_2e

    .line 1688
    move-wide v1, v8

    .line 1689
    move-object v0, v6

    .line 1677
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "installTime":J
    :cond_2e
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1694
    .end local v4    # "index":I
    :cond_31
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "index":I
    :goto_37
    if-ltz v4, :cond_51

    .line 1695
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1696
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 1697
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1694
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4e
    add-int/lit8 v4, v4, -0x1

    goto :goto_37

    .line 1700
    .end local v4    # "index":I
    :cond_51
    return-void
.end method

.method private getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .registers 13
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p3, "forAutoVerify"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userIdForFilter"    # Ljava/lang/Integer;
    .param p6, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/Computer;",
            ")",
            "Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1350
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_6d

    .line 1354
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1355
    .local v0, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 1356
    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v1

    return-object v1

    .line 1359
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1361
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz p5, :cond_29

    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1362
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v2, p4, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1363
    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v1

    return-object v1

    .line 1366
    :cond_29
    invoke-interface {p6, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1367
    .local v1, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_68

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_68

    .line 1371
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 1375
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 1376
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz p3, :cond_48

    .line 1377
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v4

    goto :goto_4e

    .line 1378
    :cond_48
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v4

    :goto_4e
    nop

    .line 1380
    .local v4, "declaredDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p2, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1381
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v5

    return-object v5

    .line 1384
    :cond_5b
    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->success(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v5

    return-object v5

    .line 1372
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "declaredDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_60
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Provided domain set cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1368
    :cond_68
    invoke-static {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v3

    throw v3

    .line 1351
    .end local v0    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v1    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domainSetId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApprovedPackagesLocked(Ljava/lang/String;IILcom/android/server/pm/Computer;)Landroid/util/Pair;
    .registers 23
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "minimumApproval"    # I
    .param p4, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/pm/Computer;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1969
    move-object/from16 v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v9, 0x0

    if-gez v7, :cond_c

    const/4 v0, 0x1

    move v3, v0

    goto :goto_d

    :cond_c
    move v3, v9

    .line 1970
    .local v3, "includeNegative":Z
    :goto_d
    move/from16 v0, p3

    .line 1971
    .local v0, "highestApproval":I
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1973
    .local v1, "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, v6, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v10

    .line 1974
    .local v10, "size":I
    const/4 v2, 0x0

    move v11, v0

    move-object v12, v1

    move v13, v2

    .end local v0    # "highestApproval":I
    .end local v1    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "highestApproval":I
    .local v12, "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "index":I
    :goto_1d
    if-ge v13, v10, :cond_5b

    .line 1975
    iget-object v0, v6, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1976
    .local v14, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v14}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 1977
    .local v15, "packageName":Ljava/lang/String;
    invoke-interface {v8, v15}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 1978
    .local v16, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v16, :cond_33

    .line 1979
    goto :goto_58

    .line 1982
    :cond_33
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v0

    .line 1984
    .local v0, "level":I
    if-ge v0, v7, :cond_44

    .line 1985
    goto :goto_58

    .line 1988
    :cond_44
    if-le v0, v11, :cond_51

    .line 1989
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1990
    invoke-static {v12, v15}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1991
    .end local v12    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v2, v0

    move-object v12, v1

    move v11, v2

    .end local v11    # "highestApproval":I
    .local v2, "highestApproval":I
    goto :goto_58

    .line 1992
    .end local v1    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "highestApproval":I
    .restart local v11    # "highestApproval":I
    .restart local v12    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_51
    if-ne v0, v11, :cond_58

    .line 1993
    invoke-static {v12, v15}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v12, v1

    .line 1974
    .end local v0    # "level":I
    .end local v14    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_58
    :goto_58
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    .line 1997
    .end local v13    # "index":I
    :cond_5b
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1998
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 2001
    :cond_6a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2002
    .local v0, "filteredPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/high16 v1, -0x8000000000000000L

    .line 2003
    .local v1, "latestInstall":J
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2004
    .local v4, "approvedSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_76
    if-ge v5, v4, :cond_a7

    .line 2005
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2006
    .local v9, "packageName":Ljava/lang/String;
    invoke-interface {v8, v9}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 2007
    .local v13, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v13, :cond_87

    .line 2008
    move/from16 v14, p2

    goto :goto_a4

    .line 2010
    :cond_87
    move/from16 v14, p2

    invoke-interface {v13, v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTime()J

    move-result-wide v15

    .line 2011
    .local v15, "installTime":J
    cmp-long v17, v15, v1

    if-lez v17, :cond_9d

    .line 2012
    move-wide v1, v15

    .line 2013
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2014
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 2015
    :cond_9d
    cmp-long v17, v15, v1

    if-nez v17, :cond_a4

    .line 2016
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2004
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v13    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v15    # "installTime":J
    :cond_a4
    :goto_a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    :cond_a7
    move/from16 v14, p2

    .line 2020
    .end local v5    # "index":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;
    .registers 20
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "includeNegative"    # Z
    .param p3, "userId"    # I
    .param p4, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/android/server/pm/Computer;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 816
    move-object v7, p0

    move-object/from16 v8, p4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v9, v0

    .line 818
    .local v9, "levelToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v10, v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 819
    :try_start_c
    iget-object v0, v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v0

    .line 820
    .local v0, "size":I
    const/4 v1, 0x0

    move v11, v1

    .local v11, "index":I
    :goto_14
    if-ge v11, v0, :cond_56

    .line 821
    iget-object v1, v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, v11}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object v12, v1

    .line 822
    .local v12, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 823
    .local v13, "packageName":Ljava/lang/String;
    invoke-interface {v8, v13}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    move-object v14, v1

    .line 824
    .local v14, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v14, :cond_2c

    .line 825
    goto :goto_53

    .line 828
    :cond_2c
    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v1

    .line 830
    .local v1, "level":I
    if-nez p2, :cond_3f

    if-gtz v1, :cond_3f

    .line 831
    goto :goto_53

    .line 833
    :cond_3f
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 834
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_50

    .line 835
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 836
    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 838
    :cond_50
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    .end local v1    # "level":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_53
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 840
    .end local v0    # "size":I
    .end local v11    # "index":I
    :cond_56
    monitor-exit v10
    :try_end_57
    .catchall {:try_start_c .. :try_end_57} :catchall_77

    .line 842
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 843
    .restart local v0    # "size":I
    if-nez v0, :cond_5e

    .line 844
    return-object v9

    .line 848
    :cond_5e
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5f
    if-ge v1, v0, :cond_74

    .line 849
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;

    move/from16 v4, p3

    invoke-direct {v3, v8, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Computer;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_74
    move/from16 v4, p3

    .line 867
    .end local v1    # "index":I
    return-object v9

    .line 840
    .end local v0    # "size":I
    :catchall_77
    move-exception v0

    move/from16 v4, p3

    :goto_7a
    :try_start_7a
    monitor-exit v10
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7c

    throw v0

    :catchall_7c
    move-exception v0

    goto :goto_7a
.end method

.method private hasRealVerifier()Z
    .registers 2

    .line 1333
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    instance-of v0, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private indexOfIntentFilterEntry(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I
    .registers 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "target"    # Landroid/content/pm/ResolveInfo;

    .line 1744
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 1745
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1746
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "activityIndex":I
    :goto_9
    if-ge v2, v1, :cond_27

    .line 1747
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1748
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 1747
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1749
    return v2

    .line 1746
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1753
    .end local v2    # "activityIndex":I
    :cond_27
    const/4 v2, -0x1

    return v2
.end method

.method static synthetic lambda$getOwnersForDomainInternal$0(Lcom/android/server/pm/Computer;ILjava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p0, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p1, "userId"    # I
    .param p2, "first"    # Ljava/lang/String;
    .param p3, "second"    # Ljava/lang/String;

    .line 850
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 851
    .local v0, "firstPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p0, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 853
    .local v1, "secondPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-wide/16 v2, -0x1

    if-nez v0, :cond_e

    .line 854
    move-wide v4, v2

    goto :goto_16

    :cond_e
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTime()J

    move-result-wide v4

    .line 855
    .local v4, "firstInstallTime":J
    :goto_16
    if-nez v1, :cond_19

    .line 856
    goto :goto_21

    .line 857
    :cond_19
    invoke-interface {v1, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTime()J

    move-result-wide v2

    :goto_21
    nop

    .line 859
    .local v2, "secondInstallTime":J
    cmp-long v6, v4, v2

    if-eqz v6, :cond_2a

    .line 860
    sub-long v6, v4, v2

    long-to-int v6, v6

    return v6

    .line 863
    :cond_2a
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    return v6
.end method

.method static synthetic lambda$writeSettings$1(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1098
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 1099
    .local v0, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_8

    .line 1104
    const/4 v1, 0x0

    return-object v1

    .line 1107
    :cond_8
    nop

    .line 1108
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 1107
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V
    .registers 12
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .param p4, "snapshot"    # Lcom/android/server/pm/Computer;

    .line 1289
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1292
    .local v0, "userIdToApprovalLevelToOwners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;>;"
    const/4 v1, 0x1

    if-eqz p3, :cond_20

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    goto :goto_20

    .line 1298
    :cond_10
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1299
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p2, v1, v3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;

    move-result-object v1

    .line 1298
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_37

    .line 1293
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v3, :cond_37

    aget v5, v2, v4

    .line 1294
    .local v5, "aUserId":I
    nop

    .line 1295
    invoke-direct {p0, p2, v1, v5, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;

    move-result-object v6

    .line 1294
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1293
    .end local v5    # "aUserId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1302
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printOwners(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1303
    return-void
.end method

.method private printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V
    .registers 11
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .param p4, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1253
    invoke-interface {p4, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 1254
    .local v0, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1255
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_c
    if-eqz v1, :cond_47

    .line 1259
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v2

    .line 1260
    .local v2, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 1261
    .local v3, "size":I
    if-nez v3, :cond_1b

    .line 1262
    return-void

    .line 1265
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1268
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_35
    if-ge v4, v3, :cond_43

    .line 1269
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p1, v5, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V

    .line 1268
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 1272
    .end local v4    # "index":I
    :cond_43
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1273
    return-void

    .line 1256
    .end local v2    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "size":I
    :cond_47
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v2

    throw v2
.end method

.method private removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V
    .registers 14
    .param p1, "owningPkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .param p2, "domain"    # Ljava/lang/String;

    .line 491
    nop

    .line 492
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    .line 493
    .local v0, "owningUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    .line 495
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_f
    if-ge v3, v2, :cond_47

    .line 496
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 497
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v5

    .line 498
    .local v5, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 499
    .local v6, "arraySize":I
    const/4 v7, 0x0

    .local v7, "arrayIndex":I
    :goto_22
    if-ge v7, v6, :cond_44

    .line 500
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 501
    .local v8, "userId":I
    nop

    .line 502
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 503
    .local v9, "owningUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-eqz v9, :cond_38

    invoke-virtual {v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v10

    if-nez v10, :cond_38

    .line 507
    goto :goto_41

    .line 509
    :cond_38
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-virtual {v10, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHost(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 499
    .end local v8    # "userId":I
    .end local v9    # "owningUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :goto_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 495
    .end local v4    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v5    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v6    # "arraySize":I
    .end local v7    # "arrayIndex":I
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 512
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_47
    monitor-exit v1

    .line 513
    return-void

    .line 512
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_49

    throw v2
.end method

.method private resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 8
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")V"
        }
    .end annotation

    .line 1506
    .local p1, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1507
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "index":I
    :goto_6
    if-ltz v1, :cond_2a

    .line 1508
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1510
    .local v2, "state":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_38

    .line 1516
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x400

    if-lt v3, v4, :cond_21

    const/4 v3, 0x1

    goto :goto_22

    .line 1513
    :sswitch_1f
    const/4 v3, 0x1

    .line 1514
    .local v3, "reset":Z
    goto :goto_22

    .line 1516
    .end local v3    # "reset":Z
    :cond_21
    const/4 v3, 0x0

    .line 1520
    .restart local v3    # "reset":Z
    :goto_22
    if-eqz v3, :cond_27

    .line 1521
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1507
    .end local v2    # "state":Ljava/lang/Integer;
    .end local v3    # "reset":Z
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1525
    .end local v1    # "index":I
    :cond_2a
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 1526
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v1

    .line 1525
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    .line 1527
    return-void

    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_1f
        0x5 -> :sswitch_1f
    .end sparse-switch
.end method

.method private revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I
    .registers 15
    .param p1, "userState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .param p2, "userId"    # I
    .param p4, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/Computer;",
            ")I"
        }
    .end annotation

    .line 679
    .local p3, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 681
    .local v0, "domainToApprovedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 682
    .local v2, "domain":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 683
    goto :goto_9

    .line 686
    :cond_20
    const/4 v3, 0x1

    invoke-direct {p0, v2, p2, v3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getApprovedPackagesLocked(Ljava/lang/String;IILcom/android/server/pm/Computer;)Landroid/util/Pair;

    move-result-object v3

    .line 688
    .local v3, "packagesToLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 689
    .local v4, "highestApproval":I
    const/4 v5, 0x3

    if-le v4, v5, :cond_31

    .line 690
    return v5

    .line 693
    :cond_31
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .end local v2    # "domain":Ljava/lang/String;
    .end local v3    # "packagesToLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v4    # "highestApproval":I
    goto :goto_9

    .line 698
    :cond_39
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 699
    .local v1, "mapSize":I
    const/4 v2, 0x0

    .local v2, "mapIndex":I
    :goto_3e
    if-ge v2, v1, :cond_75

    .line 700
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 701
    .local v3, "domain":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 702
    .local v4, "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 703
    .local v5, "approvedSize":I
    const/4 v6, 0x0

    .local v6, "approvedIndex":I
    :goto_51
    if-ge v6, v5, :cond_72

    .line 704
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 705
    .local v7, "approvedPackage":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 706
    invoke-virtual {v8, v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 707
    .local v8, "approvedPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-nez v8, :cond_64

    .line 708
    goto :goto_6f

    .line 711
    :cond_64
    nop

    .line 712
    invoke-virtual {v8, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v9

    .line 713
    .local v9, "approvedUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-nez v9, :cond_6c

    .line 714
    goto :goto_6f

    .line 717
    :cond_6c
    invoke-virtual {v9, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHost(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 703
    .end local v7    # "approvedPackage":Ljava/lang/String;
    .end local v8    # "approvedPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v9    # "approvedUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :goto_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 699
    .end local v3    # "domain":Ljava/lang/String;
    .end local v4    # "approvedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "approvedSize":I
    .end local v6    # "approvedIndex":I
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 721
    .end local v2    # "mapIndex":I
    :cond_75
    const/4 v2, 0x0

    return v2
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1318
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/util/Set;)V

    .line 1319
    return-void
.end method

.method private sendBroadcast(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1322
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    if-nez v0, :cond_5

    .line 1326
    return-void

    .line 1329
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->sendBroadcastForPackages(Ljava/util/Set;)V

    .line 1330
    return-void
.end method

.method private setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V
    .registers 9
    .param p1, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 482
    .local p3, "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 483
    .local v0, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 484
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_9
    if-ge v2, v1, :cond_1b

    .line 485
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 487
    .end local v2    # "index":I
    :cond_1b
    return-void
.end method

.method private shouldReBroadcastPackage(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Z
    .registers 8
    .param p1, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1452
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1453
    return v1

    .line 1456
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1457
    .local v0, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1458
    .local v2, "statesSize":I
    const/4 v3, 0x0

    .local v3, "stateIndex":I
    :goto_11
    if-ge v3, v2, :cond_27

    .line 1459
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1460
    .local v4, "state":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/content/pm/verify/domain/DomainVerificationState;->isDefault(I)Z

    move-result v5

    if-nez v5, :cond_24

    .line 1461
    return v1

    .line 1458
    .end local v4    # "state":Ljava/lang/Integer;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1465
    .end local v3    # "stateIndex":I
    :cond_27
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public addLegacySetting(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/IntentFilterVerificationInfo;

    .line 1143
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->add(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1144
    return-void
.end method

.method public addPackage(Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 24
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 972
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    move-result-object v2

    .line 973
    .local v2, "domainSetId":Ljava/util/UUID;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 975
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v0, 0x1

    .line 978
    .local v0, "sendBroadcast":Z
    iget-object v4, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePendingState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v4

    .line 979
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v4, :cond_1a

    .line 982
    const/4 v0, 0x0

    move-object/from16 v21, v4

    move v4, v0

    move-object/from16 v0, v21

    goto :goto_44

    .line 984
    :cond_1a
    iget-object v5, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removeRestoredState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v4

    .line 985
    if-eqz v4, :cond_3f

    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getBackupSignatureHash()Ljava/lang/String;

    move-result-object v5

    .line 987
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    .line 986
    invoke-static {v6}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v6

    .line 985
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 989
    const/4 v4, 0x0

    move-object/from16 v21, v4

    move v4, v0

    move-object/from16 v0, v21

    goto :goto_44

    .line 993
    :cond_3f
    move-object/from16 v21, v4

    move v4, v0

    move-object/from16 v0, v21

    .local v0, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .local v4, "sendBroadcast":Z
    :goto_44
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 994
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v6, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v6

    .line 995
    .local v6, "autoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    .line 996
    .local v7, "hasAutoVerifyDomains":Z
    const/4 v9, 0x0

    if-eqz v0, :cond_58

    goto :goto_59

    :cond_58
    move v8, v9

    .line 997
    .local v8, "isPendingOrRestored":Z
    :goto_59
    if-eqz v8, :cond_87

    .line 998
    new-instance v10, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-direct {v10, v0, v2, v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/util/UUID;Z)V

    move-object v0, v10

    .line 999
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 1001
    iget-object v10, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v10, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v10

    .line 1002
    .local v10, "webDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v11

    .line 1003
    .local v11, "userStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1004
    .local v12, "size":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_77
    if-ge v13, v12, :cond_85

    .line 1005
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-virtual {v14, v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->retainHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 1004
    add-int/lit8 v13, v13, 0x1

    goto :goto_77

    .line 1007
    .end local v10    # "webDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "userStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v12    # "size":I
    .end local v13    # "index":I
    :cond_85
    move-object v10, v0

    goto :goto_8d

    .line 1008
    :cond_87
    new-instance v10, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-direct {v10, v3, v2, v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    move-object v0, v10

    .line 1011
    .end local v0    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .local v10, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :goto_8d
    invoke-virtual {v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    move-object/from16 v11, p1

    invoke-direct {v1, v11, v0, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    move-result v12

    .line 1013
    .local v12, "needsBroadcast":Z
    if-eqz v12, :cond_11a

    if-nez v8, :cond_11a

    .line 1021
    const/4 v0, 0x0

    .line 1023
    .local v0, "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v13, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v13, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserStates(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v13

    .line 1024
    .local v13, "legacyUserStates":Landroid/util/SparseIntArray;
    if-nez v13, :cond_a5

    goto :goto_a9

    :cond_a5
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 1025
    .local v9, "userStateSize":I
    :goto_a9
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_aa
    if-ge v14, v9, :cond_d1

    .line 1026
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 1027
    .local v15, "userId":I
    move/from16 v17, v8

    .end local v8    # "isPendingOrRestored":Z
    .local v17, "isPendingOrRestored":Z
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 1028
    .local v8, "legacyStatus":I
    move/from16 v18, v9

    const/4 v9, 0x2

    .end local v9    # "userStateSize":I
    .local v18, "userStateSize":I
    if-ne v8, v9, :cond_ca

    .line 1030
    if-nez v0, :cond_c3

    .line 1031
    iget-object v9, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v9, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1034
    :cond_c3
    invoke-virtual {v10, v15}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Landroid/util/ArraySet;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 1025
    .end local v8    # "legacyStatus":I
    .end local v15    # "userId":I
    :cond_ca
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v17

    move/from16 v9, v18

    goto :goto_aa

    .end local v17    # "isPendingOrRestored":Z
    .end local v18    # "userStateSize":I
    .local v8, "isPendingOrRestored":Z
    .restart local v9    # "userStateSize":I
    :cond_d1
    move/from16 v17, v8

    move/from16 v18, v9

    .line 1038
    .end local v8    # "isPendingOrRestored":Z
    .end local v9    # "userStateSize":I
    .end local v14    # "index":I
    .restart local v17    # "isPendingOrRestored":Z
    .restart local v18    # "userStateSize":I
    iget-object v8, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v8, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->remove(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v8

    .line 1039
    .local v8, "legacyInfo":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v8, :cond_115

    .line 1040
    invoke-virtual {v8}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatus()I

    move-result v9

    const/4 v14, 0x2

    if-ne v9, v14, :cond_110

    .line 1042
    invoke-virtual {v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 1043
    .local v9, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 1044
    .local v14, "domainsSize":I
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_ed
    if-ge v15, v14, :cond_10b

    .line 1045
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v0

    .end local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v19, "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    const/16 v16, 0x4

    .line 1046
    move-object/from16 v20, v5

    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v20, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1045
    invoke-virtual {v9, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v19

    move-object/from16 v5, v20

    goto :goto_ed

    .end local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_10b
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    .end local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_11e

    .line 1040
    .end local v9    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "domainsSize":I
    .end local v15    # "index":I
    .end local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_110
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    .end local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_11e

    .line 1039
    .end local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_115
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    .end local v0    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_11e

    .line 1013
    .end local v13    # "legacyUserStates":Landroid/util/SparseIntArray;
    .end local v17    # "isPendingOrRestored":Z
    .end local v18    # "userStateSize":I
    .end local v19    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v8, "isPendingOrRestored":Z
    :cond_11a
    move-object/from16 v20, v5

    move/from16 v17, v8

    .line 1051
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "isPendingOrRestored":Z
    .restart local v17    # "isPendingOrRestored":Z
    .restart local v20    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_11e
    iget-object v5, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1052
    :try_start_121
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, v3, v2, v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1053
    monitor-exit v5
    :try_end_127
    .catchall {:try_start_121 .. :try_end_127} :catchall_12f

    .line 1055
    if-eqz v4, :cond_12e

    if-eqz v7, :cond_12e

    .line 1056
    invoke-direct {v1, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/lang/String;)V

    .line 1058
    :cond_12e
    return-void

    .line 1053
    :catchall_12f
    move-exception v0

    :try_start_130
    monitor-exit v5
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw v0
.end method

.method public approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I
    .registers 14
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolveInfoFlags"    # J
    .param p5, "userId"    # I

    .line 1760
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1761
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isDomainVerificationIntent(Landroid/content/Intent;J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1765
    const/4 v1, 0x0

    return v1

    .line 1768
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p5

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public clearDomainVerificationState(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1470
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1471
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1472
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1473
    if-nez p1, :cond_43

    .line 1474
    :try_start_16
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    .line 1475
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1d
    if-ge v3, v2, :cond_42

    .line 1476
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1477
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1478
    .local v5, "pkgName":Ljava/lang/String;
    invoke-interface {v0, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 1479
    .local v6, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_3f

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    if-nez v7, :cond_38

    .line 1480
    goto :goto_3f

    .line 1482
    :cond_38
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 1475
    .end local v4    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1484
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_42
    goto :goto_6f

    .line 1485
    :cond_43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1486
    .restart local v2    # "size":I
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_48
    if-ge v3, v2, :cond_6f

    .line 1487
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1488
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1489
    .local v5, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-interface {v0, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 1490
    .restart local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_6c

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    if-nez v7, :cond_65

    .line 1491
    goto :goto_6c

    .line 1493
    :cond_65
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 1486
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_6c
    :goto_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 1496
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_6f
    :goto_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_16 .. :try_end_70} :catchall_76

    .line 1498
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1499
    return-void

    .line 1496
    :catchall_76
    move-exception v2

    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v2
.end method

.method public clearPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1170
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1171
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePackage(Ljava/lang/String;)V

    .line 1172
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    .line 1174
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1175
    return-void

    .line 1172
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public clearPackageForUser(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1179
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1180
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1181
    .local v1, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v1, :cond_10

    .line 1182
    invoke-virtual {v1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 1185
    :cond_10
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removePackageForUser(Ljava/lang/String;I)V

    .line 1186
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1c

    .line 1188
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1189
    return-void

    .line 1186
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public clearUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1193
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v1

    .line 1195
    .local v1, "attachedSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 1196
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 1195
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1199
    .end local v2    # "index":I
    :cond_1a
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removeUser(I)V

    .line 1200
    .end local v1    # "attachedSize":I
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_26

    .line 1202
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1203
    return-void

    .line 1200
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public clearUserStates(Ljava/util/List;I)V
    .registers 9
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1531
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1532
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1533
    const/4 v1, -0x1

    if-nez p1, :cond_2f

    .line 1534
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    .line 1535
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_18
    if-ge v3, v2, :cond_2e

    .line 1536
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1537
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-ne p2, v1, :cond_28

    .line 1538
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeAllUsers()V

    goto :goto_2b

    .line 1540
    :cond_28
    invoke-virtual {v4, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 1535
    .end local v4    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1543
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_2e
    goto :goto_50

    .line 1544
    :cond_2f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1545
    .restart local v2    # "size":I
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_34
    if-ge v3, v2, :cond_50

    .line 1546
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1547
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1548
    .local v5, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-ne p2, v1, :cond_4a

    .line 1549
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeAllUsers()V

    goto :goto_4d

    .line 1551
    :cond_4a
    invoke-virtual {v5, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 1545
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1555
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_50
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_11 .. :try_end_51} :catchall_57

    .line 1557
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1558
    return-void

    .line 1555
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1578
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p4, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1581
    .local v0, "domain":Ljava/lang/String;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1582
    .local v1, "infoApprovals":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 1583
    .local v2, "infosSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_12
    if-ge v3, v2, :cond_27

    .line 1584
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1586
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->isAutoResolutionAllowed()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1587
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1592
    .end local v3    # "index":I
    :cond_27
    invoke-direct {p0, v1, v0, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->fillMapWithApprovalLevels(Landroid/util/ArrayMap;Ljava/lang/String;ILjava/util/function/Function;)I

    move-result v3

    .line 1594
    .local v3, "highestApproval":I
    if-gtz v3, :cond_3a

    .line 1595
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 1599
    :cond_3a
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "index":I
    :goto_40
    if-ltz v4, :cond_54

    .line 1600
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v3, :cond_51

    .line 1601
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1599
    :cond_51
    add-int/lit8 v4, v4, -0x1

    goto :goto_40

    .line 1605
    .end local v4    # "index":I
    :cond_54
    if-eq v3, v5, :cond_59

    .line 1609
    invoke-direct {p0, v1, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->filterToLastFirstInstalled(Landroid/util/ArrayMap;Ljava/util/function/Function;)V

    .line 1614
    :cond_59
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1615
    .local v4, "size":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1616
    .local v6, "finalList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_63
    if-ge v7, v4, :cond_71

    .line 1617
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    .line 1621
    .end local v7    # "index":I
    :cond_71
    if-eq v3, v5, :cond_76

    .line 1623
    invoke-direct {p0, v6, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->filterToLastDeclared(Ljava/util/List;Ljava/util/function/Function;)V

    .line 1626
    :cond_76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method public generateNewId()Ljava/util/UUID;
    .registers 2

    .line 874
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
    .registers 2

    .line 1314
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    return-object v0
.end method

.method public getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 278
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_16
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 280
    .local v2, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v3, 0x0

    if-nez v2, :cond_1f

    move-object v4, v3

    goto :goto_23

    :cond_1f
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 281
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_23
    if-eqz v4, :cond_8b

    .line 285
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 286
    .local v5, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-nez v5, :cond_31

    .line 287
    monitor-exit v1

    return-object v3

    .line 290
    :cond_31
    new-instance v6, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 293
    .local v6, "hostToStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v7, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v7

    .line 294
    .local v7, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_48

    .line 295
    monitor-exit v1

    return-object v3

    .line 298
    :cond_48
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 299
    .local v3, "size":I
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_4d
    if-ge v8, v3, :cond_60

    .line 300
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    .line 301
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 300
    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    .line 304
    .end local v8    # "index":I
    :cond_60
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 305
    .local v8, "mapSize":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_65
    if-ge v9, v8, :cond_80

    .line 306
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 307
    .local v10, "internalValue":I
    invoke-static {v10}, Landroid/content/pm/verify/domain/DomainVerificationState;->convertToInfoState(I)I

    move-result v11

    .line 308
    .local v11, "publicValue":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v9, v12}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 305
    nop

    .end local v10    # "internalValue":I
    .end local v11    # "publicValue":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_65

    .line 312
    .end local v9    # "index":I
    :cond_80
    new-instance v9, Landroid/content/pm/verify/domain/DomainVerificationInfo;

    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v10

    invoke-direct {v9, v10, p1, v6}, Landroid/content/pm/verify/domain/DomainVerificationInfo;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;)V

    monitor-exit v1

    return-object v9

    .line 282
    .end local v3    # "size":I
    .end local v5    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v6    # "hostToStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "mapSize":I
    :cond_8b
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v3

    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v3

    .line 313
    .end local v2    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_90
    move-exception v2

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_16 .. :try_end_92} :catchall_90

    throw v2
.end method

.method public getDomainVerificationInfoId(Ljava/lang/String;)Ljava/util/UUID;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 264
    .local v1, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v1, :cond_13

    .line 265
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 267
    :cond_13
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 269
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 728
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v2, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v2

    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 729
    invoke-interface {v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v3

    .line 728
    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserStateQuerent(IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 733
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v10

    .line 734
    .local v10, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v11, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 735
    :try_start_23
    invoke-interface {v10, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 736
    .local v0, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v2, 0x0

    if-nez v0, :cond_2c

    move-object v3, v2

    goto :goto_30

    :cond_2c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    :goto_30
    move-object v12, v3

    .line 737
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v12, :cond_ca

    .line 741
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object v13, v3

    .line 742
    .local v13, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-nez v13, :cond_40

    .line 743
    monitor-exit v11

    return-object v2

    .line 746
    :cond_40
    iget-object v2, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v2, v12}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v2

    move-object v14, v2

    .line 747
    .local v14, "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v2

    move v15, v2

    .line 749
    .local v15, "webDomainsSize":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v15}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v7, v2

    .line 750
    .local v7, "domains":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v13}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v2

    move-object v5, v2

    .line 751
    .local v5, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v13, v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v2

    move-object/from16 v16, v2

    .line 753
    .local v16, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-nez v16, :cond_64

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_68

    :cond_64
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v2

    :goto_68
    move-object v4, v2

    .line 755
    .local v4, "enabledHosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_6a
    if-ge v2, v15, :cond_a1

    .line 756
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 757
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 760
    .local v6, "state":Ljava/lang/Integer;
    if-eqz v6, :cond_87

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v17

    if-eqz v17, :cond_87

    .line 761
    const/16 v17, 0x2

    .local v17, "domainState":I
    goto :goto_92

    .line 762
    .end local v17    # "domainState":I
    :cond_87
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_90

    .line 763
    const/16 v17, 0x1

    .restart local v17    # "domainState":I
    goto :goto_92

    .line 765
    .end local v17    # "domainState":I
    :cond_90
    const/16 v17, 0x0

    .line 768
    .restart local v17    # "domainState":I
    :goto_92
    move-object/from16 v18, v0

    .end local v0    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v18, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    nop

    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "state":Ljava/lang/Integer;
    .end local v17    # "domainState":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v18

    goto :goto_6a

    .end local v18    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_a1
    move-object/from16 v18, v0

    .line 771
    .end local v0    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "index":I
    .restart local v18    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v16, :cond_ae

    .line 772
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v0

    if-eqz v0, :cond_ac

    goto :goto_ae

    :cond_ac
    const/4 v0, 0x0

    goto :goto_af

    :cond_ae
    :goto_ae
    const/4 v0, 0x1

    :goto_af
    move v6, v0

    .line 774
    .local v6, "linkHandlingAllowed":Z
    new-instance v0, Landroid/content/pm/verify/domain/DomainVerificationUserState;

    invoke-virtual {v13}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v3

    .line 775
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v17

    move-object v2, v0

    move-object/from16 v19, v4

    .end local v4    # "enabledHosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "enabledHosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v4, p1

    move-object/from16 v20, v5

    .end local v5    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v20, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v5, v17

    move-object/from16 v17, v7

    .end local v7    # "domains":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v17, "domains":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/verify/domain/DomainVerificationUserState;-><init>(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/Map;)V

    monitor-exit v11

    .line 774
    return-object v0

    .line 738
    .end local v6    # "linkHandlingAllowed":Z
    .end local v13    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v14    # "webDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "webDomainsSize":I
    .end local v16    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .end local v17    # "domains":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v19    # "enabledHosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_ca
    move-object/from16 v18, v0

    .end local v0    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v18    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v0

    .end local v10    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v0

    .line 776
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v18    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_d1
    move-exception v0

    monitor-exit v11
    :try_end_d3
    .catchall {:try_start_23 .. :try_end_d3} :catchall_d1

    throw v0

    .line 730
    .end local v10    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_d4
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v0

    throw v0
.end method

.method public getLegacyState(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1160
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1161
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 1160
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->callerIsLegacyUserQuerent(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1162
    const/4 v0, 0x0

    return v0

    .line 1164
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserState(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;
    .registers 16
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/verify/domain/DomainOwner;",
            ">;"
        }
    .end annotation

    .line 781
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertOwnerQuerent(III)V

    .line 785
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 786
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(Ljava/lang/String;ZILcom/android/server/pm/Computer;)Landroid/util/SparseArray;

    move-result-object v2

    .line 788
    .local v2, "levelToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_2a

    .line 789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 792
    :cond_2a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v3, "owners":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/verify/domain/DomainOwner;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 794
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_34
    if-ge v5, v4, :cond_61

    .line 795
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 796
    .local v6, "level":I
    const/4 v7, 0x3

    if-gt v6, v7, :cond_3f

    const/4 v7, 0x1

    goto :goto_40

    :cond_3f
    move v7, v1

    .line 797
    .local v7, "overrideable":Z
    :goto_40
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 798
    .local v8, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 799
    .local v9, "packagesSize":I
    const/4 v10, 0x0

    .local v10, "packageIndex":I
    :goto_4b
    if-ge v10, v9, :cond_5e

    .line 800
    new-instance v11, Landroid/content/pm/verify/domain/DomainOwner;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v12, v7}, Landroid/content/pm/verify/domain/DomainOwner;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    add-int/lit8 v10, v10, 0x1

    goto :goto_4b

    .line 794
    .end local v6    # "level":I
    .end local v7    # "overrideable":Z
    .end local v8    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "packagesSize":I
    .end local v10    # "packageIndex":I
    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 804
    .end local v5    # "index":I
    :cond_61
    return-object v3
.end method

.method public getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    return-object v0
.end method

.method public getShell()Lcom/android/server/pm/verify/domain/DomainVerificationShell;
    .registers 2

    .line 1308
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    return-object v0
.end method

.method public migrateState(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 32
    .param p1, "oldPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "newPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 880
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 883
    .local v10, "pkgName":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 884
    :try_start_b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    move-result-object v0

    .line 885
    .local v0, "oldDomainSetId":Ljava/util/UUID;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    move-result-object v3

    move-object v12, v3

    .line 886
    .local v12, "newDomainSetId":Ljava/util/UUID;
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->remove(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object v13, v3

    .line 888
    .local v13, "oldPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    move-object v14, v3

    .line 889
    .local v14, "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    move-object v15, v3

    .line 891
    .local v15, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v3

    .line 892
    .local v9, "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v8, v3

    .line 894
    .local v8, "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    if-eqz v13, :cond_12f

    if-eqz v14, :cond_12f

    if-nez v15, :cond_45

    move-object/from16 v18, v0

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v22, v14

    move-object/from16 v24, v15

    goto/16 :goto_139

    .line 909
    :cond_45
    invoke-virtual {v13}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    move-object v7, v3

    .line 910
    .local v7, "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 911
    invoke-virtual {v3, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v3

    move-object v6, v3

    .line 912
    .local v6, "newAutoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v3

    move v5, v3

    .line 914
    .local v5, "newDomainsSize":I
    const/4 v3, 0x0

    .local v3, "newDomainsIndex":I
    :goto_57
    if-ge v3, v5, :cond_85

    .line 915
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 916
    .local v4, "domain":Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 917
    .local v16, "oldStateInteger":Ljava/lang/Integer;
    if-eqz v16, :cond_7e

    .line 918
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 923
    .local v17, "oldState":I
    invoke-static/range {v17 .. v17}, Landroid/content/pm/verify/domain/DomainVerificationState;->shouldMigrate(I)Z

    move-result v18

    if-eqz v18, :cond_7b

    .line 924
    move-object/from16 v18, v0

    .end local v0    # "oldDomainSetId":Ljava/util/UUID;
    .local v18, "oldDomainSetId":Ljava/util/UUID;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    .line 923
    .end local v18    # "oldDomainSetId":Ljava/util/UUID;
    .restart local v0    # "oldDomainSetId":Ljava/util/UUID;
    :cond_7b
    move-object/from16 v18, v0

    .end local v0    # "oldDomainSetId":Ljava/util/UUID;
    .restart local v18    # "oldDomainSetId":Ljava/util/UUID;
    goto :goto_80

    .line 917
    .end local v17    # "oldState":I
    .end local v18    # "oldDomainSetId":Ljava/util/UUID;
    .restart local v0    # "oldDomainSetId":Ljava/util/UUID;
    :cond_7e
    move-object/from16 v18, v0

    .line 914
    .end local v0    # "oldDomainSetId":Ljava/util/UUID;
    .end local v4    # "domain":Ljava/lang/String;
    .end local v16    # "oldStateInteger":Ljava/lang/Integer;
    .restart local v18    # "oldDomainSetId":Ljava/util/UUID;
    :goto_80
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v18

    goto :goto_57

    .end local v18    # "oldDomainSetId":Ljava/util/UUID;
    .restart local v0    # "oldDomainSetId":Ljava/util/UUID;
    :cond_85
    move-object/from16 v18, v0

    .line 929
    .end local v0    # "oldDomainSetId":Ljava/util/UUID;
    .end local v3    # "newDomainsIndex":I
    .restart local v18    # "oldDomainSetId":Ljava/util/UUID;
    nop

    .line 930
    invoke-virtual {v13}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    .line 931
    .local v0, "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v3

    .line 932
    .local v4, "oldUserStatesSize":I
    if-lez v4, :cond_e9

    .line 933
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v3, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v3

    .line 934
    .local v3, "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v16, 0x0

    move-object/from16 v17, v7

    move/from16 v7, v16

    .local v7, "oldUserStatesIndex":I
    .local v17, "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_9f
    if-ge v7, v4, :cond_e0

    .line 936
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    move/from16 v19, v16

    .line 937
    .local v19, "userId":I
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 939
    .local v16, "oldUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v20

    move-object/from16 v21, v20

    .line 940
    .local v21, "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v20, v0

    .end local v0    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .local v20, "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    new-instance v0, Landroid/util/ArraySet;

    move/from16 v22, v4

    move-object/from16 v4, v21

    .end local v21    # "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "oldUserStatesSize":I
    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 941
    .local v0, "newEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 942
    move-object/from16 v21, v3

    .end local v3    # "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v21, "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 944
    move-object/from16 v23, v4

    .end local v4    # "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v4

    move-object/from16 v24, v15

    move/from16 v15, v19

    .end local v19    # "userId":I
    .local v15, "userId":I
    .local v24, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-direct {v3, v15, v0, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    .line 945
    .local v3, "newUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    invoke-virtual {v8, v15, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 935
    .end local v0    # "newEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "newUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .end local v15    # "userId":I
    .end local v16    # "oldUserState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .end local v23    # "oldEnabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    move-object/from16 v15, v24

    goto :goto_9f

    .line 934
    .end local v20    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v21    # "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "oldUserStatesSize":I
    .end local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v0, "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .local v3, "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "oldUserStatesSize":I
    .local v15, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_e0
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v24, v15

    .end local v0    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v3    # "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "oldUserStatesSize":I
    .end local v15    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v20    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .restart local v21    # "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "oldUserStatesSize":I
    .restart local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_f1

    .line 932
    .end local v17    # "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v20    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v21    # "newWebDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "oldUserStatesSize":I
    .end local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .restart local v4    # "oldUserStatesSize":I
    .local v7, "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v15    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_e9
    move-object/from16 v20, v0

    move/from16 v22, v4

    move-object/from16 v17, v7

    move-object/from16 v24, v15

    .line 949
    .end local v0    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v4    # "oldUserStatesSize":I
    .end local v7    # "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v20    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .restart local v22    # "oldUserStatesSize":I
    .restart local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_f1
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-lez v5, :cond_f7

    move v4, v3

    goto :goto_f8

    :cond_f7
    move v4, v0

    :goto_f8
    move v15, v4

    .line 950
    .local v15, "hasAutoVerifyDomains":Z
    nop

    .line 951
    invoke-direct {v1, v2, v9, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    move-result v4

    move/from16 v16, v4

    .line 953
    .local v16, "needsBroadcast":Z
    if-eqz v15, :cond_105

    if-eqz v16, :cond_105

    move v0, v3

    .line 955
    .local v0, "sendBroadcast":Z
    :cond_105
    iget-object v7, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    new-instance v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/16 v19, 0x0

    move-object v3, v4

    move/from16 v21, v22

    move-object/from16 v22, v14

    move-object v14, v4

    .end local v14    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v21, "oldUserStatesSize":I
    .local v22, "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move-object v4, v10

    move/from16 v23, v5

    .end local v5    # "newDomainsSize":I
    .local v23, "newDomainsSize":I
    move-object v5, v12

    move-object/from16 v25, v6

    .end local v6    # "newAutoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v25, "newAutoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v6, v15

    move/from16 v26, v15

    move-object v15, v7

    .end local v15    # "hasAutoVerifyDomains":Z
    .local v26, "hasAutoVerifyDomains":Z
    move-object v7, v9

    move-object/from16 v27, v8

    .end local v8    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .local v27, "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    move-object/from16 v28, v9

    .end local v9    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v28, "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v9, v19

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    invoke-virtual {v15, v10, v12, v14}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 958
    .end local v12    # "newDomainSetId":Ljava/util/UUID;
    .end local v13    # "oldPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v16    # "needsBroadcast":Z
    .end local v17    # "oldStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "oldDomainSetId":Ljava/util/UUID;
    .end local v20    # "oldUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v21    # "oldUserStatesSize":I
    .end local v22    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v23    # "newDomainsSize":I
    .end local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v25    # "newAutoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v26    # "hasAutoVerifyDomains":Z
    .end local v27    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v28    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v11
    :try_end_129
    .catchall {:try_start_b .. :try_end_129} :catchall_19e

    .line 960
    if-eqz v0, :cond_12e

    .line 961
    invoke-direct {v1, v10}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/lang/String;)V

    .line 963
    :cond_12e
    return-void

    .line 894
    .local v0, "oldDomainSetId":Ljava/util/UUID;
    .restart local v8    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .restart local v9    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "newDomainSetId":Ljava/util/UUID;
    .restart local v13    # "oldPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local v14    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v15, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_12f
    move-object/from16 v18, v0

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v22, v14

    move-object/from16 v24, v15

    .line 896
    .end local v0    # "oldDomainSetId":Ljava/util/UUID;
    .end local v8    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v9    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v15    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v18    # "oldDomainSetId":Ljava/util/UUID;
    .restart local v22    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v27    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .restart local v28    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_139
    :try_start_139
    const-string v0, "DomainVerificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state nullability old state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old pkgSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_150
    .catchall {:try_start_139 .. :try_end_150} :catchall_19e

    move-object/from16 v14, p1

    :try_start_152
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new pkgSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v15, v22

    .end local v22    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v15, "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v9, v24

    .end local v24    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v9, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    new-instance v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/4 v6, 0x1

    const/16 v16, 0x0

    move-object v3, v0

    move-object v4, v10

    move-object v5, v12

    move-object/from16 v7, v28

    move-object/from16 v8, v27

    move-object/from16 v17, v9

    .end local v9    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v17, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 905
    .local v0, "newPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, v10, v12, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 906
    monitor-exit v11

    return-void

    .line 958
    .end local v0    # "newPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v12    # "newDomainSetId":Ljava/util/UUID;
    .end local v13    # "oldPkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v15    # "oldPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v18    # "oldDomainSetId":Ljava/util/UUID;
    .end local v27    # "newUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v28    # "newStateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_19e
    move-exception v0

    move-object/from16 v14, p1

    :goto_1a1
    monitor-exit v11
    :try_end_1a2
    .catchall {:try_start_152 .. :try_end_1a2} :catchall_1a3

    throw v0

    :catchall_1a3
    move-exception v0

    goto :goto_1a1
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 208
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 209
    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->hasRealVerifier()Z

    move-result v0

    if-nez v0, :cond_a

    .line 210
    return-void

    .line 213
    :cond_a
    sparse-switch p1, :sswitch_data_1a

    goto :goto_18

    .line 218
    :sswitch_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    goto :goto_18

    .line 215
    :sswitch_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    .line 216
    nop

    .line 221
    :goto_18
    return-void

    nop

    :sswitch_data_1a
    .sparse-switch
        0x226 -> :sswitch_14
        0x3e8 -> :sswitch_e
    .end sparse-switch
.end method

.method public onStart()V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mStub:Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;

    const-string v1, "domain_verification"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 192
    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 225
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    .line 236
    return-void
.end method

.method public printOwnersForDomains(Landroid/util/IndentingPrintWriter;Ljava/util/List;Ljava/lang/Integer;)V
    .registers 9
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1278
    .local p2, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1279
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1280
    :try_start_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 1281
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_e
    if-ge v3, v2, :cond_1c

    .line 1282
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v4, p3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomain(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V

    .line 1281
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1284
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_1c
    monitor-exit v1

    .line 1285
    return-void

    .line 1284
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 9
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1231
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1232
    if-nez p2, :cond_29

    .line 1233
    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_2e

    .line 1234
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_12
    if-ge v3, v2, :cond_28

    .line 1236
    :try_start_14
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 1237
    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1236
    invoke-direct {p0, p1, v4, p3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_23} :catch_24
    .catchall {:try_start_14 .. :try_end_23} :catchall_2e

    .line 1241
    goto :goto_25

    .line 1239
    :catch_24
    move-exception v4

    .line 1234
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1243
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_28
    goto :goto_2c

    .line 1244
    :cond_29
    :try_start_29
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;)V

    .line 1246
    :goto_2c
    monitor-exit v1

    .line 1247
    return-void

    .line 1246
    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1213
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1214
    return-void
.end method

.method public printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 12
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1220
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 1221
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1222
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;)V

    .line 1223
    monitor-exit v0

    .line 1224
    return-void

    .line 1223
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public queryValidVerificationPackageNames()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_15
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    .line 249
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1c
    if-ge v3, v2, :cond_36

    .line 250
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 251
    .local v4, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 252
    invoke-virtual {v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v4    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 255
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_36
    monitor-exit v1

    .line 256
    return-object v0

    .line 255
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public readLegacySettings(Landroid/util/TypedXmlPullParser;)V
    .registers 3
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1129
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->readSettings(Landroid/util/TypedXmlPullParser;)V

    .line 1130
    return-void
.end method

.method public readSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p2, v2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->readSettings(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V

    .line 1123
    monitor-exit v0

    .line 1124
    return-void

    .line 1123
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public restoreSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1136
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p2, v2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->restoreSettings(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V

    .line 1137
    monitor-exit v0

    .line 1138
    return-void

    .line 1137
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public runMessage(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "messageCode"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 1207
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->runMessage(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setConnection(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V
    .registers 3
    .param p1, "connection"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 196
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->setCallback(Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;)V

    .line 198
    return-void
.end method

.method public setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 518
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 517
    invoke-virtual {v0, v1, v2, p1, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserSelector(IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 521
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 523
    .local v1, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v1, :cond_30

    .line 527
    invoke-virtual {v1, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v2

    .line 528
    invoke-virtual {v2, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 529
    nop

    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_35

    .line 531
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 532
    return-void

    .line 524
    .restart local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_30
    :try_start_30
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "allowed":Z
    .end local p3    # "userId":I
    throw v2

    .line 529
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "allowed":Z
    .restart local p3    # "userId":I
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_35

    throw v1

    .line 519
    :cond_38
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v0

    throw v0
.end method

.method public setDomainVerificationLinkHandlingAllowedInternal(Ljava/lang/String;ZI)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 538
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_4b

    .line 539
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 540
    :try_start_12
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v3

    .line 541
    .local v3, "pkgStateSize":I
    const/4 v4, 0x0

    .local v4, "pkgStateIndex":I
    :goto_19
    if-ge v4, v3, :cond_46

    .line 542
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 543
    .local v5, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-ne p3, v1, :cond_3c

    .line 544
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v6

    array-length v7, v6

    move v8, v0

    :goto_2d
    if-ge v8, v7, :cond_43

    aget v9, v6, v8

    .line 545
    .local v9, "aUserId":I
    invoke-virtual {v5, v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v10

    .line 546
    invoke-virtual {v10, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 544
    nop

    .end local v9    # "aUserId":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 549
    :cond_3c
    invoke-virtual {v5, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v6

    .line 550
    invoke-virtual {v6, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 541
    .end local v5    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 553
    .end local v3    # "pkgStateSize":I
    .end local v4    # "pkgStateIndex":I
    :cond_46
    monitor-exit v2

    goto :goto_78

    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_12 .. :try_end_4a} :catchall_48

    throw v0

    .line 555
    :cond_4b
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 556
    :try_start_4e
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 557
    .local v3, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v3, :cond_7e

    .line 561
    if-ne p3, v1, :cond_70

    .line 562
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v1

    array-length v4, v1

    :goto_61
    if-ge v0, v4, :cond_77

    aget v5, v1, v0

    .line 563
    .local v5, "aUserId":I
    invoke-virtual {v3, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v6

    .line 564
    invoke-virtual {v6, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 562
    nop

    .end local v5    # "aUserId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 567
    :cond_70
    invoke-virtual {v3, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v0

    .line 568
    invoke-virtual {v0, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 570
    .end local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_4e .. :try_end_78} :catchall_83

    .line 573
    :goto_78
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 574
    return-void

    .line 558
    .restart local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_7e
    :try_start_7e
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v0

    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "allowed":Z
    .end local p3    # "userId":I
    throw v0

    .line 570
    .end local v3    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "allowed":Z
    .restart local p3    # "userId":I
    :catchall_83
    move-exception v0

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_83

    throw v0
.end method

.method public setDomainVerificationStatus(Ljava/util/UUID;Ljava/util/Set;I)I
    .registers 7
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 319
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v0, 0x400

    if-ge p3, v0, :cond_21

    .line 320
    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    goto :goto_21

    .line 321
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller is not allowed to set state code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I

    move-result v0

    return v0
.end method

.method public setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "domainSetId"    # Ljava/util/UUID;
    .param p4, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 335
    .local p3, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 336
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 337
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 338
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 340
    .local v9, "newlyVerifiedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v1

    .line 342
    .local v1, "result":Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 343
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getErrorCode()I

    move-result v2

    monitor-exit v8

    return v2

    .line 346
    :cond_2d
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v2

    .line 347
    .local v2, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 348
    .local v3, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 349
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 351
    .local v6, "previousState":Ljava/lang/Integer;
    if-eqz v6, :cond_5e

    .line 352
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, p4, :cond_39

    .line 353
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/content/pm/verify/domain/DomainVerificationState;->isModifiable(I)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 354
    goto :goto_39

    .line 358
    :cond_5e
    invoke-static {p4}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 359
    if-eqz v6, :cond_70

    .line 360
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v7

    if-nez v7, :cond_73

    .line 361
    :cond_70
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_73
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    nop

    .end local v5    # "domain":Ljava/lang/String;
    .end local v6    # "previousState":Ljava/lang/Integer;
    goto :goto_39

    .line 369
    :cond_7c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 370
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_81
    if-ge v5, v4, :cond_8f

    .line 371
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V

    .line 370
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 373
    .end local v1    # "result":Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .end local v2    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v3    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "size":I
    .end local v5    # "index":I
    .end local v9    # "newlyVerifiedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8f
    monitor-exit v8
    :try_end_90
    .catchall {:try_start_10 .. :try_end_90} :catchall_97

    .line 375
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 376
    const/4 v1, 0x0

    return v1

    .line 373
    :catchall_97
    move-exception v1

    :try_start_98
    monitor-exit v8
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v1
.end method

.method public setDomainVerificationStatusInternal(Ljava/lang/String;ILandroid/util/ArraySet;)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 382
    .local p3, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v5, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 384
    packed-switch v3, :pswitch_data_110

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "State must be one of NO_RESPONSE, SUCCESS, APPROVED, or DENIED"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :pswitch_1e
    nop

    .line 395
    if-nez v2, :cond_76

    .line 396
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 397
    .local v5, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v6, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 398
    :try_start_2a
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 400
    .local v0, "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v7

    .line 401
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_36
    if-ge v8, v7, :cond_70

    .line 402
    iget-object v9, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 403
    .local v9, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 404
    .local v10, "pkgName":Ljava/lang/String;
    invoke-interface {v5, v10}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 405
    .local v11, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_6d

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v12

    if-nez v12, :cond_51

    .line 406
    goto :goto_6d

    .line 409
    :cond_51
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v12

    .line 411
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 413
    iget-object v13, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 414
    invoke-virtual {v13, v12}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v13

    .line 415
    .local v13, "autoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v4, :cond_64

    .line 416
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_6a

    .line 418
    :cond_64
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 419
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 422
    :goto_6a
    invoke-direct {v1, v9, v3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V

    .line 401
    .end local v9    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "autoVerifyDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_6d
    :goto_6d
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 424
    .end local v0    # "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "size":I
    .end local v8    # "index":I
    :cond_70
    monitor-exit v6

    .line 425
    .end local v5    # "snapshot":Lcom/android/server/pm/Computer;
    goto/16 :goto_fc

    .line 424
    .restart local v5    # "snapshot":Lcom/android/server/pm/Computer;
    :catchall_73
    move-exception v0

    monitor-exit v6
    :try_end_75
    .catchall {:try_start_2a .. :try_end_75} :catchall_73

    throw v0

    .line 426
    .end local v5    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_76
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 427
    .restart local v5    # "snapshot":Lcom/android/server/pm/Computer;
    iget-object v6, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 428
    :try_start_7f
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 429
    .local v0, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v0, :cond_107

    .line 433
    invoke-interface {v5, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 434
    .local v7, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v7, :cond_102

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    if-eqz v8, :cond_102

    .line 438
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    .line 440
    .local v8, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v4, :cond_a2

    .line 441
    iget-object v9, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v9

    .local v9, "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_ad

    .line 443
    .end local v9    # "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_a2
    move-object/from16 v9, p3

    .line 444
    .restart local v9    # "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v10, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v10, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 447
    :goto_ad
    const/4 v10, 0x0

    .line 448
    .local v10, "newlyVerifiedDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v11

    if-eqz v11, :cond_e3

    .line 449
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    move-object v10, v11

    .line 450
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v11

    .line 451
    .local v11, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 452
    .local v12, "domainsSize":I
    const/4 v13, 0x0

    .local v13, "domainIndex":I
    :goto_c3
    if-ge v13, v12, :cond_e3

    .line 453
    invoke-virtual {v9, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 454
    .local v14, "domain":Ljava/lang/String;
    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 456
    .local v15, "oldState":Ljava/lang/Integer;
    if-eqz v15, :cond_dd

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v16

    if-nez v16, :cond_e0

    .line 457
    :cond_dd
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v14    # "domain":Ljava/lang/String;
    .end local v15    # "oldState":Ljava/lang/Integer;
    :cond_e0
    add-int/lit8 v13, v13, 0x1

    goto :goto_c3

    .line 462
    .end local v11    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "domainsSize":I
    .end local v13    # "domainIndex":I
    :cond_e3
    invoke-direct {v1, v0, v3, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILandroid/util/ArraySet;)V

    .line 467
    if-eqz v10, :cond_fb

    .line 468
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 469
    .local v11, "domainsSize":I
    const/4 v12, 0x0

    .local v12, "domainIndex":I
    :goto_ed
    if-ge v12, v11, :cond_fb

    .line 470
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 471
    .local v13, "domain":Ljava/lang/String;
    invoke-direct {v1, v0, v13}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V

    .line 469
    .end local v13    # "domain":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_ed

    .line 474
    .end local v0    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v9    # "validDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "newlyVerifiedDomains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "domainsSize":I
    .end local v12    # "domainIndex":I
    :cond_fb
    monitor-exit v6
    :try_end_fc
    .catchall {:try_start_7f .. :try_end_fc} :catchall_10c

    .line 477
    .end local v5    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_fc
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 478
    return-void

    .line 435
    .restart local v0    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local v5    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_102
    :try_start_102
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v8

    .end local v5    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "state":I
    .end local p3    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    throw v8

    .line 430
    .end local v7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v5    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "state":I
    .restart local p3    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_107
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v7

    .end local v5    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "state":I
    .end local p3    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    throw v7

    .line 474
    .end local v0    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local v5    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "state":I
    .restart local p3    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_10c
    move-exception v0

    monitor-exit v6
    :try_end_10e
    .catchall {:try_start_102 .. :try_end_10e} :catchall_10c

    throw v0

    nop

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;ZI)I
    .registers 15
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p3, "enabled"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 581
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v0

    .line 585
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserSelector(IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 587
    const/4 v1, 0x1

    return v1

    .line 590
    :cond_17
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v8

    .line 591
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v9, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 592
    const/4 v4, 0x0

    .line 593
    :try_start_21
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 592
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object v1

    .line 594
    .local v1, "result":Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 595
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getErrorCode()I

    move-result v2

    monitor-exit v9

    return v2

    .line 598
    :cond_3a
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v2

    .line 599
    .local v2, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-virtual {v2, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v3

    .line 605
    .local v3, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-eqz p3, :cond_4c

    .line 606
    invoke-direct {p0, v3, p4, p2, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    move-result v4

    .line 608
    .local v4, "statusCode":I
    if-eqz v4, :cond_4c

    .line 609
    monitor-exit v9

    return v4

    .line 613
    .end local v4    # "statusCode":I
    :cond_4c
    if-eqz p3, :cond_52

    .line 614
    invoke-virtual {v3, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_55

    .line 616
    :cond_52
    invoke-virtual {v3, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 618
    .end local v1    # "result":Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .end local v2    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v3    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :goto_55
    monitor-exit v9
    :try_end_56
    .catchall {:try_start_21 .. :try_end_56} :catchall_5d

    .line 620
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 621
    const/4 v1, 0x0

    return v1

    .line 618
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v9
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public setDomainVerificationUserSelectionInternal(ILjava/lang/String;ZLandroid/util/ArraySet;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 628
    .local p4, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 629
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 630
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 632
    .local v2, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v2, :cond_7f

    .line 636
    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 637
    .local v3, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v3, :cond_26

    const/4 v4, 0x0

    goto :goto_2a

    :cond_26
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 638
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_2a
    if-eqz v4, :cond_7a

    .line 643
    if-nez p4, :cond_35

    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v5

    goto :goto_36

    :cond_35
    move-object v5, p4

    .line 645
    .local v5, "validDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_36
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 647
    const/4 v6, -0x1

    if-ne p1, v6, :cond_62

    .line 648
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_4a
    if-ge v8, v7, :cond_73

    aget v9, v6, v8

    .line 649
    .local v9, "aUserId":I
    nop

    .line 650
    invoke-virtual {v2, v9}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v10

    .line 651
    .local v10, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    invoke-direct {p0, v10, v9, v5, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    .line 653
    if-eqz p3, :cond_5c

    .line 654
    invoke-virtual {v10, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_5f

    .line 656
    :cond_5c
    invoke-virtual {v10, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 648
    .end local v9    # "aUserId":I
    .end local v10    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :goto_5f
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 660
    :cond_62
    nop

    .line 661
    invoke-virtual {v2, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v6

    .line 662
    .local v6, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    invoke-direct {p0, v6, p1, v5, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    .line 663
    if-eqz p3, :cond_70

    .line 664
    invoke-virtual {v6, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    goto :goto_73

    .line 666
    :cond_70
    invoke-virtual {v6, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->removeHosts(Ljava/util/Set;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 669
    .end local v2    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .end local v3    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "validDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :cond_73
    :goto_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_14 .. :try_end_74} :catchall_84

    .line 671
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 672
    return-void

    .line 639
    .restart local v2    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local v3    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_7a
    :try_start_7a
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v5

    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "enabled":Z
    .end local p4    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    throw v5

    .line 633
    .end local v3    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "userId":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "enabled":Z
    .restart local p4    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_7f
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;

    move-result-object v3

    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "enabled":Z
    .end local p4    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    throw v3

    .line 669
    .end local v2    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .restart local p1    # "userId":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "enabled":Z
    .restart local p4    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_84
    move-exception v2

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_84

    throw v2
.end method

.method public setLegacyUserState(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "state"    # I

    .line 1149
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    .line 1150
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v2

    .line 1149
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->callerIsLegacyUserSelector(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1151
    const/4 v0, 0x0

    return v0

    .line 1153
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->add(Ljava/lang/String;II)V

    .line 1154
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    .line 1155
    const/4 v0, 0x1

    return v0
.end method

.method public setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .registers 2
    .param p1, "proxy"    # Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 240
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 241
    return-void
.end method

.method public verifyPackages(Ljava/util/List;Z)V
    .registers 10
    .param p2, "reVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1391
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    move v0, v1

    .line 1393
    .local v0, "isDeviceProvisioned":Z
    if-nez v0, :cond_37

    .line 1394
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettingsObserver:Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;

    if-nez v1, :cond_36

    .line 1395
    new-instance v1, Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettingsObserver:Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;

    .line 1396
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "device_provisioned"

    .line 1397
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettingsObserver:Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1400
    :cond_36
    return-void

    .line 1401
    :cond_37
    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettingsObserver:Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;

    if-eqz v1, :cond_4b

    .line 1402
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettingsObserver:Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1403
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettingsObserver:Lcom/android/server/pm/verify/domain/DomainVerificationService$SettingsObserver;

    .line 1406
    :cond_4b
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 1407
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1409
    .local v1, "packagesToBroadcast":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_7c

    .line 1410
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1411
    :try_start_60
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v3

    .line 1412
    .local v3, "pkgStatesSize":I
    const/4 v4, 0x0

    .local v4, "pkgStateIndex":I
    :goto_67
    if-ge v4, v3, :cond_77

    .line 1413
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1414
    .local v5, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V

    .line 1412
    .end local v5    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 1416
    .end local v3    # "pkgStatesSize":I
    .end local v4    # "pkgStateIndex":I
    :cond_77
    monitor-exit v2

    goto :goto_9d

    :catchall_79
    move-exception v3

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_79

    throw v3

    .line 1418
    :cond_7c
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1419
    :try_start_7f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1420
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_84
    if-ge v4, v3, :cond_9c

    .line 1421
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1422
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 1423
    .local v6, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v6, :cond_99

    .line 1424
    invoke-direct {p0, v1, v6, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V

    .line 1420
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    .line 1427
    .end local v3    # "size":I
    .end local v4    # "index":I
    :cond_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_7f .. :try_end_9d} :catchall_a7

    .line 1430
    :goto_9d
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a6

    .line 1431
    invoke-direct {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->sendBroadcast(Ljava/util/Set;)V

    .line 1433
    :cond_a6
    return-void

    .line 1427
    :catchall_a7
    move-exception v3

    :try_start_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v3
.end method

.method public writeSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlSerializer;ZI)V
    .registers 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p3, "includeSignatures"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    const/4 v1, 0x0

    .line 1096
    .local v1, "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_c

    .line 1097
    :try_start_6
    new-instance v2, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Computer;)V

    move-object v1, v2

    .line 1112
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    invoke-virtual {v2, p2, v3, p4, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->writeSettings(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;ILjava/util/function/Function;)V

    .line 1113
    .end local v1    # "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1a

    .line 1115
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->writeSettings(Landroid/util/TypedXmlSerializer;)V

    .line 1116
    return-void

    .line 1113
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method
