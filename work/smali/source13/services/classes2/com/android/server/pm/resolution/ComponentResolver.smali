.class public Lcom/android/server/pm/resolution/ComponentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolverLocked;
.source "ComponentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;,
        Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;,
        Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;,
        Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;,
        Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;,
        Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/resolution/ComponentResolverLocked;",
        "Lcom/android/server/utils/Snappable<",
        "Lcom/android/server/pm/resolution/ComponentResolverApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_FILTERS:Z = false

.field private static final DEBUG_SHOW_INFO:Z = false

.field private static final PROTECTED_ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field mDeferProtectedFilters:Z

.field mProtectedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/resolution/ComponentResolverApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    .line 100
    const-string v1, "android.intent.action.SEND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v1, "android.intent.action.SENDTO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, "android.intent.action.VIEW"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 5
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userNeedsBadgingCache"    # Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverLocked;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 163
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 164
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-direct {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    .line 165
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 166
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-direct {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 167
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 168
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 170
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$1;

    invoke-direct {v0, p0, p0, p0, p2}, Lcom/android/server/pm/resolution/ComponentResolver$1;-><init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/utils/Watchable;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 178
    return-void
.end method

.method private addActivitiesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Z)V
    .registers 11
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "chatty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;Z)V"
        }
    .end annotation

    .line 277
    .local p3, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;>;"
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 278
    .local v0, "activitiesSize":I
    const/4 v1, 0x0

    .line 279
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_3d

    .line 280
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 281
    .local v3, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    const-string v5, "activity"

    invoke-virtual {v4, p1, v3, v5, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->addActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    .line 282
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_3a

    if-eqz p4, :cond_3a

    .line 283
    if-nez v1, :cond_2e

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_33

    .line 286
    :cond_2e
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    :goto_33
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .end local v3    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 291
    .end local v2    # "i":I
    :cond_3d
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_61

    if-eqz p4, :cond_61

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Activities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_53

    const-string v3, "<NONE>"

    goto :goto_54

    :cond_53
    move-object v3, v1

    :goto_54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_61
    return-void
.end method

.method private addProvidersLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 20
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "chatty"    # Z

    .line 298
    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 299
    .local v1, "providersSize":I
    const/4 v2, 0x0

    .line 300
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    const-string v4, "PackageManager"

    if-ge v3, v1, :cond_138

    .line 301
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 302
    .local v5, "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    iget-object v6, v0, Lcom/android/server/pm/resolution/ComponentResolver;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7, v5}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->addProvider(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedProvider;)V

    .line 303
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_117

    .line 304
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, "names":[Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/server/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    .line 308
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_36
    array-length v11, v6

    if-ge v10, v11, :cond_117

    .line 309
    const/4 v11, 0x1

    if-ne v10, v11, :cond_4c

    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 317
    new-instance v11, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v11, v5}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedProvider;)V

    move-object v5, v11

    .line 318
    const/4 v11, 0x0

    invoke-static {v5, v11}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setSyncable(Lcom/android/server/pm/pkg/component/ParsedProvider;Z)V

    .line 320
    :cond_4c
    iget-object v11, v0, Lcom/android/server/pm/resolution/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v12, v6, v10

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c2

    .line 321
    iget-object v11, v0, Lcom/android/server/pm/resolution/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v12, v6, v10

    invoke-virtual {v11, v12, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_69

    .line 323
    aget-object v11, v6, v10

    invoke-static {v5, v11}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/server/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    goto :goto_87

    .line 325
    :cond_69
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v6, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/server/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    .line 327
    :goto_87
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v11, :cond_113

    if-eqz p3, :cond_113

    .line 328
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Registered content provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v6, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", className = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 329
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isSyncable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 330
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 328
    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 333
    :cond_c2
    iget-object v11, v0, Lcom/android/server/pm/resolution/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v12, v6, v10

    .line 334
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 336
    .local v11, "other":Lcom/android/server/pm/pkg/component/ParsedProvider;
    if-eqz v11, :cond_d9

    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_d9

    .line 337
    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_da

    :cond_d9
    move-object v12, v9

    .line 339
    .local v12, "component":Landroid/content/ComponentName;
    :goto_da
    if-eqz v12, :cond_e1

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    goto :goto_e3

    :cond_e1
    const-string v13, "?"

    .line 340
    .local v13, "packageName":Ljava/lang/String;
    :goto_e3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping provider name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v6, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (in package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 341
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "): name already used by "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 340
    invoke-static {v4, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v11    # "other":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v12    # "component":Landroid/content/ComponentName;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_113
    :goto_113
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_36

    .line 346
    .end local v6    # "names":[Ljava/lang/String;
    .end local v10    # "j":I
    :cond_117
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_134

    if-eqz p3, :cond_134

    .line 347
    if-nez v2, :cond_128

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    goto :goto_12d

    .line 350
    :cond_128
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    :goto_12d
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .end local v5    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    :cond_134
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    :cond_138
    move-object/from16 v7, p1

    .line 355
    .end local v3    # "i":I
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_15c

    if-eqz p3, :cond_15c

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Providers: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_150

    const-string v5, "<NONE>"

    goto :goto_151

    :cond_150
    move-object v5, v2

    :goto_151
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_15c
    return-void
.end method

.method private addReceiversLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 11
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "chatty"    # Z

    .line 362
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 363
    .local v0, "receiversSize":I
    const/4 v1, 0x0

    .line 364
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_3f

    .line 365
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 366
    .local v3, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    const/4 v5, 0x0

    const-string/jumbo v6, "receiver"

    invoke-virtual {v4, p1, v3, v6, v5}, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;->addActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    .line 367
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_3c

    if-eqz p3, :cond_3c

    .line 368
    if-nez v1, :cond_30

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_35

    .line 371
    :cond_30
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    :goto_35
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .end local v3    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 376
    .end local v2    # "i":I
    :cond_3f
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_63

    if-eqz p3, :cond_63

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Receivers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_55

    const-string v3, "<NONE>"

    goto :goto_56

    :cond_55
    move-object v3, v1

    :goto_56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_63
    return-void
.end method

.method private addServicesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "chatty"    # Z

    .line 383
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 384
    .local v0, "servicesSize":I
    const/4 v1, 0x0

    .line 385
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_3b

    .line 386
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 387
    .local v3, "s":Lcom/android/server/pm/pkg/component/ParsedService;
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->addService(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedService;)V

    .line 388
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_38

    if-eqz p3, :cond_38

    .line 389
    if-nez v1, :cond_2c

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_31

    .line 392
    :cond_2c
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    :goto_31
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .end local v3    # "s":Lcom/android/server/pm/pkg/component/ParsedService;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 397
    .end local v2    # "i":I
    :cond_3b
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_5f

    if-eqz p3, :cond_5f

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Services: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_51

    const-string v3, "<NONE>"

    goto :goto_52

    :cond_51
    move-object v3, v1

    :goto_52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_5f
    return-void
.end method

.method private adjustPriority(Lcom/android/server/pm/Computer;Ljava/util/List;Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;Ljava/lang/String;)V
    .registers 23
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p3, "activity"    # Lcom/android/server/pm/pkg/component/ParsedActivity;
    .param p4, "intentInfo"    # Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .param p5, "setupWizardPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 495
    .local p2, "systemActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 496
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v2

    if-gtz v2, :cond_d

    .line 497
    return-void

    .line 500
    :cond_d
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "packageName":Ljava/lang/String;
    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 503
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v5

    .line 504
    .local v5, "privilegedApp":Z
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "className":Ljava/lang/String;
    const/4 v7, 0x0

    if-nez v5, :cond_26

    .line 513
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 514
    return-void

    .line 517
    :cond_26
    invoke-static {v1}, Lcom/android/server/pm/resolution/ComponentResolver;->isProtectedAction(Landroid/content/IntentFilter;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 518
    iget-boolean v8, v0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    if-eqz v8, :cond_47

    .line 526
    iget-object v7, v0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-nez v7, :cond_3b

    .line 527
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 529
    :cond_3b
    iget-object v7, v0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    invoke-static/range {p3 .. p4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p5

    goto :goto_53

    .line 541
    :cond_47
    move-object/from16 v8, p5

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 550
    return-void

    .line 558
    :cond_50
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 560
    :goto_53
    return-void

    .line 563
    :cond_54
    move-object/from16 v8, p5

    if-nez p2, :cond_59

    .line 567
    return-void

    .line 572
    :cond_59
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/resolution/ComponentResolver;->findMatchingActivity(Ljava/util/List;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v9

    .line 573
    .local v9, "foundActivity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    if-nez v9, :cond_63

    .line 581
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 582
    return-void

    .line 588
    :cond_63
    new-instance v10, Ljava/util/ArrayList;

    .line 589
    invoke-interface {v9}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 592
    .local v10, "intentListCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-virtual {v1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 593
    .local v11, "actionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v11, :cond_84

    .line 594
    new-instance v12, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v10, v12, v11}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 595
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_84

    .line 603
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 604
    return-void

    .line 609
    :cond_84
    invoke-virtual {v1}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 610
    .local v12, "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v12, :cond_9c

    .line 611
    new-instance v13, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda2;

    invoke-direct {v13}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v10, v13, v12}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 613
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_9c

    .line 621
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 622
    return-void

    .line 627
    :cond_9c
    invoke-virtual {v1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 628
    .local v13, "schemesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v13, :cond_b4

    .line 629
    new-instance v14, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda3;

    invoke-direct {v14}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v10, v14, v13}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 630
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_b4

    .line 638
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 639
    return-void

    .line 644
    :cond_b4
    nop

    .line 645
    invoke-virtual {v1}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v14

    .line 646
    .local v14, "authoritiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v14, :cond_cd

    .line 647
    new-instance v15, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda4;

    invoke-direct {v15}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v10, v15, v14}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 649
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_cd

    .line 657
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 658
    return-void

    .line 663
    :cond_cd
    const/4 v7, 0x0

    .line 664
    .local v7, "cappedPriority":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .local v15, "i":I
    :goto_d4
    if-ltz v15, :cond_ee

    .line 665
    nop

    .line 666
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    .line 665
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 664
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    goto :goto_d4

    .line 668
    .end local v15    # "i":I
    :cond_ee
    invoke-virtual {v1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    if-le v0, v7, :cond_f8

    .line 676
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 677
    return-void

    .line 680
    :cond_f8
    return-void
.end method

.method private static findMatchingActivity(Ljava/util/List;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivity;
    .registers 6
    .param p1, "activityInfo"    # Lcom/android/server/pm/pkg/component/ParsedActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ")",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;"
        }
    .end annotation

    .line 460
    .local p0, "activityList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 461
    .local v1, "sysActivity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 462
    return-object v1

    .line 464
    :cond_1f
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 465
    return-object v1

    .line 467
    :cond_2e
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 468
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 469
    return-object v1

    .line 471
    :cond_43
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 472
    return-object v1

    .line 475
    .end local v1    # "sysActivity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_52
    goto :goto_4

    .line 476
    :cond_53
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/content/IntentFilter;",
            "Ljava/util/Iterator<",
            "TT;>;>;",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 409
    .local p0, "intentList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    .local p1, "generator":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/IntentFilter;Ljava/util/Iterator<TT;>;>;"
    .local p2, "searchIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 411
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 412
    goto :goto_4b

    .line 415
    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 418
    .local v0, "searchAction":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 419
    .local v1, "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 420
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 421
    .local v2, "intentInfo":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    const/4 v3, 0x0

    .line 425
    .local v3, "selectionFound":Z
    nop

    .line 426
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Iterator;

    .line 427
    .local v4, "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_2d
    if-eqz v4, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 428
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 429
    .local v5, "intentSelection":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_43

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 430
    const/4 v3, 0x1

    .line 431
    goto :goto_44

    .line 433
    .end local v5    # "intentSelection":Ljava/lang/Object;, "TT;"
    :cond_43
    goto :goto_2d

    .line 437
    :cond_44
    :goto_44
    if-nez v3, :cond_49

    .line 438
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 440
    .end local v2    # "intentInfo":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .end local v3    # "selectionFound":Z
    .end local v4    # "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_49
    goto :goto_15

    .line 441
    .end local v0    # "searchAction":Ljava/lang/Object;, "TT;"
    .end local v1    # "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    :cond_4a
    goto :goto_0

    .line 442
    :cond_4b
    :goto_4b
    return-void
.end method

.method private static isProtectedAction(Landroid/content/IntentFilter;)Z
    .registers 4
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .line 445
    invoke-virtual {p0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 446
    .local v0, "actionsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 447
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 448
    .local v1, "filterAction":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/resolution/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 449
    const/4 v2, 0x1

    return v2

    .line 451
    .end local v1    # "filterAction":Ljava/lang/String;
    :cond_1c
    goto :goto_4

    .line 452
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 8
    .param p0, "r1"    # Landroid/content/pm/ResolveInfo;
    .param p1, "r2"    # Landroid/content/pm/ResolveInfo;

    .line 107
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 108
    .local v0, "v1":I
    iget v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 110
    .local v1, "v2":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_d

    .line 111
    if-le v0, v1, :cond_b

    goto :goto_c

    :cond_b
    move v2, v3

    :goto_c
    return v2

    .line 113
    :cond_d
    iget v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 114
    iget v1, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 115
    if-eq v0, v1, :cond_18

    .line 116
    if-le v0, v1, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    return v2

    .line 118
    :cond_18
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_25

    .line 119
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v4, :cond_23

    goto :goto_24

    :cond_23
    move v2, v3

    :goto_24
    return v2

    .line 121
    :cond_25
    iget v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 122
    iget v1, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 124
    if-eq v0, v1, :cond_30

    .line 125
    if-le v0, v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    return v2

    .line 127
    :cond_30
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_3d

    .line 128
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    return v2

    .line 130
    :cond_3d
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_4e

    .line 131
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 133
    :cond_4e
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_5f

    .line 134
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 136
    :cond_5f
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_70

    .line 137
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 139
    :cond_70
    const/4 v2, 0x0

    return v2
.end method

.method private onChanged()V
    .registers 1

    .line 91
    invoke-virtual {p0, p0}, Lcom/android/server/pm/resolution/ComponentResolver;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 92
    return-void
.end method

.method private removeAllComponentsLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 15
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 688
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 689
    .local v0, "componentSize":I
    const/4 v1, 0x0

    .line 690
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    const/16 v3, 0x100

    const/16 v4, 0x20

    if-ge v2, v0, :cond_3d

    .line 691
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 692
    .local v5, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    const-string v7, "activity"

    invoke-virtual {v6, v5, v7}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->removeActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;)V

    .line 693
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_3a

    if-eqz p2, :cond_3a

    .line 694
    if-nez v1, :cond_30

    .line 695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_33

    .line 697
    :cond_30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    :goto_33
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .end local v5    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 702
    :cond_3d
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    const-string v6, "<NONE>"

    const-string v7, "PackageManager"

    if-eqz v5, :cond_62

    if-eqz p2, :cond_62

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Activities: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_56

    move-object v8, v6

    goto :goto_57

    :cond_56
    move-object v8, v1

    :goto_57
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_62
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 707
    const/4 v1, 0x0

    .line 708
    const/4 v2, 0x0

    :goto_6c
    if-ge v2, v0, :cond_fe

    .line 709
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 710
    .local v5, "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    iget-object v8, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->removeProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)V

    .line 711
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_85

    .line 715
    goto/16 :goto_fa

    .line 717
    :cond_85
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 718
    .local v8, "names":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_90
    array-length v10, v8

    if-ge v9, v10, :cond_e1

    .line 719
    iget-object v10, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v5, :cond_de

    .line 720
    iget-object v10, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v10, :cond_de

    if-eqz p2, :cond_de

    .line 722
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unregistered content provider: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", className = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 723
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isSyncable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 724
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 722
    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_de
    add-int/lit8 v9, v9, 0x1

    goto :goto_90

    .line 728
    .end local v9    # "j":I
    :cond_e1
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v9, :cond_fa

    if-eqz p2, :cond_fa

    .line 729
    if-nez v1, :cond_f0

    .line 730
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v9

    goto :goto_f3

    .line 732
    :cond_f0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 734
    :goto_f3
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .end local v5    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v8    # "names":[Ljava/lang/String;
    :cond_fa
    :goto_fa
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6c

    .line 737
    :cond_fe
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v5, :cond_11f

    if-eqz p2, :cond_11f

    .line 738
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Providers: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_113

    move-object v8, v6

    goto :goto_114

    :cond_113
    move-object v8, v1

    :goto_114
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_11f
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 742
    const/4 v1, 0x0

    .line 743
    const/4 v2, 0x0

    :goto_129
    if-ge v2, v0, :cond_159

    .line 744
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 745
    .local v5, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    iget-object v8, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    const-string/jumbo v9, "receiver"

    invoke-virtual {v8, v5, v9}, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;->removeActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;)V

    .line 746
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v8, :cond_156

    if-eqz p2, :cond_156

    .line 747
    if-nez v1, :cond_14c

    .line 748
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    goto :goto_14f

    .line 750
    :cond_14c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    :goto_14f
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .end local v5    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_156
    add-int/lit8 v2, v2, 0x1

    goto :goto_129

    .line 755
    :cond_159
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v5, :cond_17a

    if-eqz p2, :cond_17a

    .line 756
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Receivers: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_16e

    move-object v8, v6

    goto :goto_16f

    :cond_16e
    move-object v8, v1

    :goto_16f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_17a
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 760
    const/4 v1, 0x0

    .line 761
    const/4 v2, 0x0

    :goto_184
    if-ge v2, v0, :cond_1b1

    .line 762
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 763
    .local v5, "s":Lcom/android/server/pm/pkg/component/ParsedService;
    iget-object v8, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->removeService(Lcom/android/server/pm/pkg/component/ParsedService;)V

    .line 764
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v8, :cond_1ae

    if-eqz p2, :cond_1ae

    .line 765
    if-nez v1, :cond_1a4

    .line 766
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    goto :goto_1a7

    .line 768
    :cond_1a4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 770
    :goto_1a7
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .end local v5    # "s":Lcom/android/server/pm/pkg/component/ParsedService;
    :cond_1ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_184

    .line 773
    :cond_1b1
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_1d1

    if-eqz p2, :cond_1d1

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Services: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1c5

    goto :goto_1c6

    :cond_1c5
    move-object v6, v1

    :goto_1c6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_1d1
    return-void
.end method


# virtual methods
.method public addAllComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/Computer;)V
    .registers 20
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z
    .param p3, "setupWizardPackage"    # Ljava/lang/String;
    .param p4, "computer"    # Lcom/android/server/pm/Computer;

    .line 192
    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 193
    .local v11, "newIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;>;"
    iget-object v1, v7, Lcom/android/server/pm/resolution/ComponentResolver;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 194
    :try_start_10
    invoke-direct {p0, v10, v8, v11, v9}, Lcom/android/server/pm/resolution/ComponentResolver;->addActivitiesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Z)V

    .line 195
    invoke-direct {p0, v10, v8, v9}, Lcom/android/server/pm/resolution/ComponentResolver;->addReceiversLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 196
    invoke-direct {p0, v10, v8, v9}, Lcom/android/server/pm/resolution/ComponentResolver;->addProvidersLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 197
    invoke-direct {p0, v10, v8, v9}, Lcom/android/server/pm/resolution/ComponentResolver;->addServicesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 198
    invoke-direct {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 199
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_65

    .line 201
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_26
    if-ltz v0, :cond_64

    .line 202
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/Pair;

    .line 203
    .local v12, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 204
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 206
    .local v13, "disabledPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v13, :cond_40

    move-object v2, v1

    goto :goto_44

    :cond_40
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    :goto_44
    move-object v14, v2

    .line 208
    .local v14, "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v14, :cond_4b

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    :cond_4b
    move-object v3, v1

    .line 209
    .local v3, "systemActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedActivity;

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/resolution/ComponentResolver;->adjustPriority(Lcom/android/server/pm/Computer;Ljava/util/List;Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 201
    .end local v3    # "systemActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    .end local v12    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    .end local v13    # "disabledPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v14    # "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 212
    .end local v0    # "i":I
    :cond_64
    return-void

    .line 199
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0
.end method

.method public assertProvidersNotDefined(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 14
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 782
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 784
    .local v1, "providersSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_9a

    .line 785
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 786
    .local v3, "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_96

    .line 787
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, "names":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_29
    array-length v6, v4

    if-ge v5, v6, :cond_96

    .line 789
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 790
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 792
    .local v6, "other":Lcom/android/server/pm/pkg/component/ParsedProvider;
    if-eqz v6, :cond_51

    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_51

    .line 793
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_53

    :cond_51
    const-string v7, "?"

    .line 795
    .local v7, "otherPackageName":Ljava/lang/String;
    :goto_53
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    goto :goto_93

    .line 796
    :cond_5e
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const/16 v9, -0xd

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t install because provider name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (in package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 799
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is already used by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/resolution/ComponentResolver;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    throw v8

    .line 788
    .end local v6    # "other":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v7    # "otherPackageName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/resolution/ComponentResolver;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_93
    :goto_93
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 784
    .end local v3    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v4    # "names":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 806
    .end local v1    # "providersSize":I
    .end local v2    # "i":I
    :cond_9a
    monitor-exit v0

    .line 807
    return-void

    .line 806
    :catchall_9c
    move-exception v1

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_9c

    throw v1
.end method

.method public fixProtectedFilterPriorities(Ljava/lang/String;)V
    .registers 13
    .param p1, "setupWizardPackage"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    if-nez v1, :cond_9

    .line 229
    monitor-exit v0

    return-void

    .line 231
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 233
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-eqz v2, :cond_50

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_17

    goto :goto_50

    .line 236
    :cond_17
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 238
    .local v2, "protectedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 244
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_22
    if-ltz v3, :cond_4b

    .line 245
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 246
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 247
    .local v5, "component":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 248
    .local v6, "intentInfo":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v7

    .line 249
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "packageName":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "className":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 260
    goto :goto_48

    .line 268
    :cond_45
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 244
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    .end local v5    # "component":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .end local v6    # "intentInfo":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "className":Ljava/lang/String;
    :goto_48
    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    .line 270
    .end local v3    # "i":I
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 271
    .end local v2    # "protectedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;>;"
    monitor-exit v0

    .line 272
    return-void

    .line 234
    :cond_50
    :goto_50
    monitor-exit v0

    return-void

    .line 271
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public removeAllComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 217
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->removeAllComponentsLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 218
    invoke-direct {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public snapshot()Lcom/android/server/pm/resolution/ComponentResolverApi;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/resolution/ComponentResolverApi;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->snapshot()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v0

    return-object v0
.end method

.method public updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;

    .line 1867
    const/4 v0, 0x0

    .line 1868
    .local v0, "hasChanges":Z
    iget-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 1869
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1870
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1871
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1872
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1873
    if-eqz v0, :cond_25

    .line 1874
    invoke-direct {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 1876
    :cond_25
    monitor-exit v1

    .line 1877
    return v0

    .line 1876
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v2
.end method
