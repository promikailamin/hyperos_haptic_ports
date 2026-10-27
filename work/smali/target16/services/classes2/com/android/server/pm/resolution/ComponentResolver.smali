.class public Lcom/android/server/pm/resolution/ComponentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolverLocked;
.source "ComponentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# static fields
.field public static final PROTECTED_ACTIONS:Ljava/util/Set;

.field public static final RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;


# instance fields
.field public mDeferProtectedFilters:Z

.field public mProtectedFilters:Ljava/util/List;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;


# direct methods
.method public static synthetic $r8$lambda$UVMyfxjaimXrgxK-y9k5NRVVfkI(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 4

    .line 108
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 109
    iget v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    if-eq v0, v1, :cond_9

    if-le v0, v1, :cond_2e

    goto :goto_2c

    .line 114
    :cond_9
    iget v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 115
    iget v1, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-eq v0, v1, :cond_12

    if-le v0, v1, :cond_2e

    goto :goto_2c

    .line 119
    :cond_12
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v1, :cond_1b

    if-eqz v0, :cond_2e

    goto :goto_2c

    .line 122
    :cond_1b
    iget v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 123
    iget v1, p1, Landroid/content/pm/ResolveInfo;->match:I

    if-eq v0, v1, :cond_24

    if-le v0, v1, :cond_2e

    goto :goto_2c

    .line 128
    :cond_24
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v1, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v0, v1, :cond_30

    if-eqz v0, :cond_2e

    :goto_2c
    const/4 p0, -0x1

    return p0

    :cond_2e
    const/4 p0, 0x1

    return p0

    .line 131
    :cond_30
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3f

    .line 132
    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 134
    :cond_3f
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_4e

    .line 135
    iget-object p0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 137
    :cond_4e
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz p0, :cond_5d

    .line 138
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5d
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    .line 101
    const-string v1, "android.intent.action.SEND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v1, "android.intent.action.SENDTO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v1, "android.intent.action.VIEW"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 5

    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverLocked;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 164
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 165
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-direct {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    .line 166
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 167
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-direct {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 168
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 169
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 171
    new-instance p1, Lcom/android/server/pm/resolution/ComponentResolver$1;

    invoke-direct {p1, p0, p0, p0, p2}, Lcom/android/server/pm/resolution/ComponentResolver$1;-><init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/utils/Watchable;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public static findMatchingActivity(Ljava/util/List;Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .registers 5

    .line 461
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 462
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_51

    .line 465
    :cond_1f
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_51

    .line 468
    :cond_2e
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 469
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_51

    .line 472
    :cond_43
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_51
    return-object v0

    :cond_52
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V
    .registers 7

    .line 410
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 412
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_44

    .line 416
    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 419
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 420
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 427
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    :cond_2b
    if-eqz v2, :cond_40

    .line 428
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 429
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 430
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_15

    .line 439
    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    :cond_44
    :goto_44
    return-void
.end method

.method public static isProtectedAction(Landroid/content/IntentFilter;)Z
    .registers 3

    .line 446
    invoke-virtual {p0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    if-eqz p0, :cond_1c

    .line 447
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 448
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    sget-object v1, Lcom/android/server/pm/resolution/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private onChanged()V
    .registers 1

    .line 92
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public final addActivitiesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Z)V
    .registers 9

    .line 278
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p4

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p4, :cond_1f

    .line 281
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 282
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    const-string v3, "activity"

    invoke-virtual {v2, p1, v1, v3, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->addActivity(Lcom/android/server/pm/Computer;Lcom/android/internal/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public addAllComponents(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/Computer;)V
    .registers 14

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 195
    :try_start_b
    invoke-virtual {p0, p4, p1, v0, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->addActivitiesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Z)V

    .line 196
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->addReceiversLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 197
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->addProvidersLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 198
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->addServicesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 199
    invoke-direct {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 200
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_5f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_24
    if-ltz p1, :cond_5e

    .line 203
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 204
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 205
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3d

    move-object v1, v2

    goto :goto_41

    .line 207
    :cond_3d
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    :goto_41
    if-eqz v1, :cond_47

    .line 209
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    :cond_47
    move-object v5, v2

    .line 210
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, p2

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    move-object v3, p0

    move-object v8, p3

    move-object v4, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/resolution/ComponentResolver;->adjustPriority(Lcom/android/server/pm/Computer;Ljava/util/List;Lcom/android/internal/pm/pkg/component/ParsedActivity;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Ljava/lang/String;)V

    .line 211
    invoke-direct {v3}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_24

    :cond_5e
    return-void

    :catchall_5f
    move-exception v0

    move-object p0, v0

    .line 200
    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final addProvidersLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;Z)V
    .registers 14

    .line 299
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p3, :cond_d3

    .line 302
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 303
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->addProvider(Lcom/android/server/pm/Computer;Lcom/android/internal/pm/pkg/component/ParsedProvider;)V

    .line 304
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_cf

    .line 305
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 308
    invoke-static {v2, v5}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/internal/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    move v6, v0

    .line 309
    :goto_30
    array-length v7, v3

    if-ge v6, v7, :cond_cf

    const/4 v7, 0x1

    if-ne v6, v7, :cond_45

    .line 310
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 318
    new-instance v7, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v7, v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;-><init>(Lcom/android/internal/pm/pkg/component/ParsedProvider;)V

    .line 319
    invoke-static {v7, v0}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setSyncable(Lcom/android/internal/pm/pkg/component/ParsedProvider;Z)V

    move-object v2, v7

    .line 321
    :cond_45
    iget-object v7, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 322
    iget-object v7, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_62

    .line 324
    aget-object v7, v3, v6

    invoke-static {v2, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/internal/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    goto :goto_cb

    .line 326
    :cond_62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/internal/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    goto :goto_cb

    .line 334
    :cond_7e
    iget-object v7, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v8, v3, v6

    .line 335
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    if-eqz v7, :cond_95

    .line 337
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_95

    .line 338
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    goto :goto_96

    :cond_95
    move-object v7, v5

    :goto_96
    if-eqz v7, :cond_9d

    .line 340
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_9f

    :cond_9d
    const-string v7, "?"

    .line 341
    :goto_9f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping provider name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (in package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): name already used by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 341
    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cb
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_30

    :cond_cf
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_d3
    return-void
.end method

.method public final addReceiversLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;Z)V
    .registers 9

    .line 363
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p3

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p3, :cond_21

    .line 366
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 367
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    const-string/jumbo v3, "receiver"

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->addActivity(Lcom/android/server/pm/Computer;Lcom/android/internal/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    return-void
.end method

.method public final addServicesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;Z)V
    .registers 7

    .line 384
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p3

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p3, :cond_1d

    .line 387
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 388
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->addService(Lcom/android/server/pm/Computer;Lcom/android/internal/pm/pkg/component/ParsedService;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public final adjustPriority(Lcom/android/server/pm/Computer;Ljava/util/List;Lcom/android/internal/pm/pkg/component/ParsedActivity;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Ljava/lang/String;)V
    .registers 9

    .line 496
    invoke-interface {p4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    if-gtz v1, :cond_c

    goto/16 :goto_ea

    .line 501
    :cond_c
    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 504
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p1

    .line 505
    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_22

    .line 514
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 518
    :cond_22
    invoke-static {v0}, Lcom/android/server/pm/resolution/ComponentResolver;->isProtectedAction(Landroid/content/IntentFilter;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 519
    iget-boolean p1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    if-eqz p1, :cond_41

    .line 527
    iget-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-nez p1, :cond_37

    .line 528
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 530
    :cond_37
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    invoke-static {p3, p4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 542
    :cond_41
    invoke-virtual {v1, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    goto/16 :goto_ea

    .line 559
    :cond_49
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    :cond_4d
    if-nez p2, :cond_51

    goto/16 :goto_ea

    .line 573
    :cond_51
    invoke-static {p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver;->findMatchingActivity(Ljava/util/List;Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    if-nez p0, :cond_5b

    .line 582
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 589
    :cond_5b
    new-instance p1, Ljava/util/ArrayList;

    .line 590
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 593
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_7c

    .line 595
    new-instance p2, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 596
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_7c

    .line 604
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 610
    :cond_7c
    invoke-virtual {v0}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_94

    .line 612
    new-instance p2, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 614
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_94

    .line 622
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 628
    :cond_94
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_ac

    .line 630
    new-instance p2, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 631
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_ac

    .line 639
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 646
    :cond_ac
    invoke-virtual {v0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_c4

    .line 648
    new-instance p2, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 650
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_c4

    .line 658
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 665
    :cond_c4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_ca
    if-ltz p0, :cond_e1

    .line 667
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result p2

    .line 666
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 p0, p0, -0x1

    goto :goto_ca

    .line 669
    :cond_e1
    invoke-virtual {v0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    if-le p0, v2, :cond_ea

    .line 677
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    :cond_ea
    :goto_ea
    return-void
.end method

.method public assertProvidersNotDefined(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 10

    .line 782
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 783
    :try_start_6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_9a

    .line 786
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 787
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_96

    .line 788
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v2

    .line 789
    :goto_2d
    array-length v6, v4

    if-ge v5, v6, :cond_96

    .line 790
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 791
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    if-eqz v6, :cond_57

    .line 793
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_57

    .line 794
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_59

    :catchall_55
    move-exception p0

    goto :goto_9f

    :cond_57
    const-string v6, "?"

    .line 796
    :goto_59
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    goto :goto_93

    .line 797
    :cond_64
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t install because provider name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v4, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is already used by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, -0xd

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_93
    :goto_93
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_96
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_10

    .line 807
    :cond_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_6 .. :try_end_9b} :catchall_55

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_9f
    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_55

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public fixProtectedFilterPriorities(Ljava/lang/String;)V
    .registers 9

    .line 228
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 229
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    if-nez v1, :cond_11

    .line 230
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_f
    move-exception p0

    goto :goto_5f

    :cond_11
    const/4 v1, 0x0

    .line 232
    :try_start_12
    iput-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 234
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-eqz v2, :cond_5a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_5a

    .line 237
    :cond_1f
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    const/4 v3, 0x0

    .line 239
    iput-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 245
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2a
    if-ltz v3, :cond_52

    .line 246
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 247
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 248
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 249
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 250
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    .line 252
    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_4f

    .line 269
    :cond_4c
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    :goto_4f
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 271
    :cond_52
    invoke-direct {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 272
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_12 .. :try_end_56} :catchall_f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 235
    :cond_5a
    :goto_5a
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 272
    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public removeAllComponents(Lcom/android/server/pm/pkg/AndroidPackage;Z)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 218
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->removeAllComponentsLocked(Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 219
    invoke-direct {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 220
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final removeAllComponentsLocked(Lcom/android/server/pm/pkg/AndroidPackage;Z)V
    .registers 10

    .line 689
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p2, :cond_20

    .line 692
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 693
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    const-string v4, "activity"

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->removeActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 707
    :cond_20
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    move v1, v0

    :goto_29
    if-ge v1, p2, :cond_66

    .line 710
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 711
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->removeProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)V

    .line 712
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_41

    goto :goto_63

    .line 718
    :cond_41
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v0

    .line 719
    :goto_4c
    array-length v5, v3

    if-ge v4, v5, :cond_63

    .line 720
    iget-object v5, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_60

    .line 721
    iget-object v5, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_63
    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 742
    :cond_66
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    move v1, v0

    :goto_6f
    if-ge v1, p2, :cond_86

    .line 745
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 746
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    const-string/jumbo v4, "receiver"

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->removeActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 760
    :cond_86
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    :goto_8e
    if-ge v0, p2, :cond_a2

    .line 763
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 764
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->removeService(Lcom/android/internal/pm/pkg/component/ParsedService;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    :cond_a2
    return-void
.end method

.method public snapshot()Lcom/android/server/pm/resolution/ComponentResolverApi;
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/resolution/ComponentResolverApi;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 83
    invoke-virtual {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->snapshot()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object p0

    return-object p0
.end method

.method public updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1874
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1875
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1876
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1877
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1878
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_29

    .line 1880
    invoke-direct {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_2e

    .line 1882
    :cond_29
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_27

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p1

    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_27

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method
