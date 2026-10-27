.class final Lcom/android/server/pm/ResolveIntentHelper;
.super Ljava/lang/Object;
.source "ResolveIntentHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field private final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field private final mResolveInfoSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;

.field private final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredActivityHelper"    # Lcom/android/server/pm/PreferredActivityHelper;
    .param p3, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;
    .param p4, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p5, "domainVerificationManager"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .param p6, "userNeedsBadgingCache"    # Lcom/android/server/pm/UserNeedsBadgingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PreferredActivityHelper;",
            "Lcom/android/server/compat/PlatformCompat;",
            "Lcom/android/server/pm/UserManagerService;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            "Lcom/android/server/pm/UserNeedsBadgingCache;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p7, "resolveInfoSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/ResolveInfo;>;"
    .local p8, "instantAppInstallerActivitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/ActivityInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 96
    iput-object p3, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 97
    iput-object p4, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 98
    iput-object p5, p0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 99
    iput-object p6, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 100
    iput-object p7, p0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    .line 101
    iput-object p8, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    .line 102
    return-void
.end method

.method private allHavePackage(Ljava/util/List;Ljava/lang/String;)Z
    .registers 9
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 265
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 266
    return v1

    .line 268
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_d
    if-ge v0, v2, :cond_2a

    .line 269
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 270
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1a

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    .line 271
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    :goto_1b
    if-eqz v4, :cond_29

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    goto :goto_29

    .line 268
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 272
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_29
    :goto_29
    return v1

    .line 275
    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2a
    const/4 v0, 0x1

    return v0
.end method

.method private applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .registers 23
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p3, "instantAppPkgName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 540
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_c
    if-ltz v3, :cond_d2

    .line 541
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 543
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_2d

    .line 544
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 546
    .local v5, "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface {v0, v5, v7, v6}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v8

    if-nez v8, :cond_31

    .line 547
    move-object/from16 v8, p0

    goto/16 :goto_cc

    .line 543
    .end local v5    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_2d
    move/from16 v6, p4

    move/from16 v7, p5

    .line 551
    :cond_31
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v5

    .line 553
    .local v5, "isEphemeralApp":Z
    if-eqz v5, :cond_bb

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 554
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v8, :cond_b8

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 555
    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b5

    .line 557
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "PackageManager"

    if-nez v9, :cond_74

    .line 558
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v9, :cond_70

    .line 559
    const-string v9, "No installer - not adding it to the ResolveInfo list"

    invoke-static {v10, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_70
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 562
    goto :goto_cc

    .line 566
    :cond_74
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v9, :cond_7d

    .line 567
    const-string v9, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v10, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_7d
    new-instance v9, Landroid/content/pm/ResolveInfo;

    .line 570
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 571
    .local v9, "installerInfo":Landroid/content/pm/ResolveInfo;
    new-instance v15, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v11, 0x0

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v12, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v13, v10, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    move-object/from16 v16, v10

    move-object v10, v15

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, v9, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 577
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 579
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v0, v9, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 580
    invoke-interface {v1, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 581
    .end local v9    # "installerInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_cc

    .line 555
    :cond_b5
    move-object/from16 v8, p0

    goto :goto_cc

    .line 554
    :cond_b8
    move-object/from16 v8, p0

    goto :goto_cc

    .line 553
    :cond_bb
    move-object/from16 v8, p0

    .line 585
    if-nez v5, :cond_c9

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget v0, v0, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v9, 0x100000

    and-int/2addr v0, v9

    if-eqz v0, :cond_c9

    .line 587
    goto :goto_cc

    .line 589
    :cond_c9
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 540
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "isEphemeralApp":Z
    :goto_cc
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    goto/16 :goto_c

    :cond_d2
    move-object/from16 v8, p0

    move/from16 v6, p4

    move/from16 v7, p5

    .line 591
    .end local v3    # "i":I
    return-object v1
.end method

.method private chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;
    .registers 31
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "privateResolveFlags"    # J
    .param p9, "userId"    # I
    .param p10, "queryMayBeFiltered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 151
    .local p8, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v13, p8

    move/from16 v14, p9

    if-eqz v13, :cond_203

    .line 152
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v12

    .line 153
    .local v12, "n":I
    const/4 v11, 0x0

    const/4 v10, 0x1

    if-ne v12, v10, :cond_17

    .line 154
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    return-object v1

    .line 155
    :cond_17
    if-le v12, v10, :cond_1ff

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_23

    move v1, v10

    goto :goto_24

    :cond_23
    move v1, v11

    :goto_24
    move/from16 v16, v1

    .line 159
    .local v16, "debug":Z
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 160
    .local v9, "r0":Landroid/content/pm/ResolveInfo;
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 161
    .local v8, "r1":Landroid/content/pm/ResolveInfo;
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-nez v1, :cond_3a

    if-eqz v16, :cond_74

    .line 162
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v9, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_74
    iget v1, v9, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v8, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v2, :cond_1f0

    iget v1, v9, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v2, v8, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v1, v2, :cond_1f0

    iget-boolean v1, v9, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v8, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_90

    move-object/from16 v19, v8

    move-object/from16 v17, v9

    move v3, v11

    move v15, v12

    move-object/from16 v11, p1

    goto/16 :goto_1f8

    .line 174
    :cond_90
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v1

    move-object/from16 v7, p2

    invoke-virtual {v1, v13, v7}, Lcom/android/server/pm/PackageManagerServiceStub;->clearNoHistoryFlagIfNeed(Ljava/util/List;Landroid/content/Intent;)V

    .line 179
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p8

    move-object/from16 v19, v8

    .end local v8    # "r1":Landroid/content/pm/ResolveInfo;
    .local v19, "r1":Landroid/content/pm/ResolveInfo;
    move/from16 v8, v17

    move-object/from16 v17, v9

    .end local v9    # "r0":Landroid/content/pm/ResolveInfo;
    .local v17, "r0":Landroid/content/pm/ResolveInfo;
    move/from16 v9, v18

    move/from16 v10, v16

    move/from16 v11, p9

    move v15, v12

    .end local v12    # "n":I
    .local v15, "n":I
    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 182
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_bf

    .line 183
    return-object v1

    .line 185
    :cond_bf
    const/4 v2, 0x0

    .line 186
    .local v2, "browserCount":I
    const/4 v3, 0x0

    move-object v9, v1

    move v10, v2

    move v7, v3

    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2    # "browserCount":I
    .local v7, "i":I
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    .local v10, "browserCount":I
    :goto_c4
    if-ge v7, v15, :cond_ff

    .line 187
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 188
    iget-boolean v1, v9, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v1, :cond_d3

    .line 189
    add-int/lit8 v10, v10, 0x1

    .line 192
    :cond_d3
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 193
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 194
    .local v8, "packageName":Ljava/lang/String;
    nop

    .line 195
    move-object/from16 v11, p1

    invoke-interface {v11, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 196
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v12, :cond_fc

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v2, v12

    move-object/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 198
    return-object v9

    .line 192
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_fa
    move-object/from16 v11, p1

    .line 186
    :cond_fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_c4

    :cond_ff
    move-object/from16 v11, p1

    .line 202
    .end local v7    # "i":I
    const-wide/16 v1, 0x2

    and-long v1, p6, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_10d

    .line 204
    const/4 v1, 0x0

    return-object v1

    .line 207
    :cond_10d
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    .line 208
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 207
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/PackageManagerServiceStub;->hookChooseBestActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 209
    .end local v9    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_131

    .line 210
    return-object v1

    .line 213
    :cond_131
    new-instance v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    move-object v1, v2

    .line 215
    invoke-static {}, Lcom/android/internal/app/ResolverActivityStub;->getInstance()Lcom/android/internal/app/ResolverActivityStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityStub;->useAospShareSheet()Z

    move-result v2

    if-nez v2, :cond_156

    .line 216
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Lcom/android/internal/app/ResolverActivityStub;->getInstance()Lcom/android/internal/app/ResolverActivityStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivityStub;->getResolverClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_160

    .line 218
    :cond_156
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 223
    :goto_160
    if-ne v10, v15, :cond_164

    const/4 v2, 0x1

    goto :goto_165

    :cond_164
    const/4 v2, 0x0

    :goto_165
    iput-boolean v2, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 224
    new-instance v2, Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 225
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->getLabelRes(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "intentPackage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b3

    invoke-direct {v0, v13, v2}, Lcom/android/server/pm/ResolveIntentHelper;->allHavePackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 235
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 236
    .local v3, "appi":Landroid/content/pm/ApplicationInfo;
    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 237
    iget-object v4, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 238
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_1aa

    .line 240
    :cond_1a5
    const/4 v4, 0x1

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v5, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 242
    :goto_1aa
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v5, v1, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 243
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v5, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    goto :goto_1b4

    .line 234
    .end local v3    # "appi":Landroid/content/pm/ApplicationInfo;
    :cond_1b3
    const/4 v4, 0x1

    .line 245
    :goto_1b4
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 247
    if-eqz v14, :cond_1d7

    .line 248
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 249
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 248
    invoke-static {v14, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 252
    :cond_1d7
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1e6

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 253
    :cond_1e6
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.dock_home"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    return-object v1

    .line 167
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intentPackage":Ljava/lang/String;
    .end local v10    # "browserCount":I
    .end local v15    # "n":I
    .end local v17    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v19    # "r1":Landroid/content/pm/ResolveInfo;
    .local v8, "r1":Landroid/content/pm/ResolveInfo;
    .local v9, "r0":Landroid/content/pm/ResolveInfo;
    .local v12, "n":I
    :cond_1f0
    move-object/from16 v19, v8

    move-object/from16 v17, v9

    move v3, v11

    move v15, v12

    move-object/from16 v11, p1

    .line 170
    .end local v8    # "r1":Landroid/content/pm/ResolveInfo;
    .end local v9    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v12    # "n":I
    .restart local v15    # "n":I
    .restart local v17    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "r1":Landroid/content/pm/ResolveInfo;
    :goto_1f8
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    return-object v1

    .line 155
    .end local v15    # "n":I
    .end local v16    # "debug":Z
    .end local v17    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v19    # "r1":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "n":I
    :cond_1ff
    move-object/from16 v11, p1

    move v15, v12

    .end local v12    # "n":I
    .restart local v15    # "n":I
    goto :goto_205

    .line 151
    .end local v15    # "n":I
    :cond_203
    move-object/from16 v11, p1

    .line 257
    :goto_205
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getLaunchIntentSenderForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .registers 30
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    move-object/from16 v0, p2

    move-object/from16 v13, p3

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 283
    .local v14, "callingUid":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get launch intent sender for package"

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 285
    const-wide/16 v1, 0x0

    move-object/from16 v15, p1

    move/from16 v12, p5

    invoke-interface {v15, v13, v1, v2, v12}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v11

    .line 286
    .local v11, "packageUid":I
    invoke-static {v14, v11}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 293
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    .line 294
    .local v10, "intentToResolve":Landroid/content/Intent;
    const-string v9, "android.intent.category.INFO"

    invoke-virtual {v10, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    move-object/from16 v8, p0

    iget-object v1, v8, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 297
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v10, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v16

    .line 298
    .local v16, "resolvedType":Ljava/lang/String;
    const-wide/16 v4, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, v16

    move-object/from16 v21, v6

    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .local v21, "contentResolver":Landroid/content/ContentResolver;
    move-wide/from16 v6, v17

    move v8, v14

    move-object/from16 v22, v9

    move/from16 v9, p5

    move-object/from16 v23, v10

    .end local v10    # "intentToResolve":Landroid/content/Intent;
    .local v23, "intentToResolve":Landroid/content/Intent;
    move/from16 v10, v19

    move/from16 v17, v11

    .end local v11    # "packageUid":I
    .local v17, "packageUid":I
    move/from16 v11, v20

    invoke-interface/range {v1 .. v11}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v18

    .line 301
    .local v18, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v18, :cond_73

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_6e

    goto :goto_73

    :cond_6e
    move-object/from16 v11, v18

    move-object/from16 v0, v23

    goto :goto_a3

    .line 302
    :cond_73
    :goto_73
    move-object/from16 v1, v22

    move-object/from16 v11, v23

    .end local v23    # "intentToResolve":Landroid/content/Intent;
    .local v11, "intentToResolve":Landroid/content/Intent;
    invoke-virtual {v11, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 303
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    move-object/from16 v10, v21

    .end local v21    # "contentResolver":Landroid/content/ContentResolver;
    .local v10, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v11, v10}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v16

    .line 306
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v3, v16

    move v8, v14

    move/from16 v9, p5

    .end local v10    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v21    # "contentResolver":Landroid/content/ContentResolver;
    move/from16 v10, v19

    move-object v0, v11

    .end local v11    # "intentToResolve":Landroid/content/Intent;
    .local v0, "intentToResolve":Landroid/content/Intent;
    move/from16 v11, v20

    invoke-interface/range {v1 .. v11}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v18

    move-object/from16 v11, v18

    .line 311
    .end local v18    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v11, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_a3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v10, v1

    .line 312
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    const/4 v1, 0x0

    if-eqz v11, :cond_ce

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ce

    .line 317
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 318
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 317
    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    :cond_ce
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x1

    new-array v8, v4, [Landroid/content/Intent;

    aput-object v10, v8, v1

    .line 324
    if-eqz v16, :cond_e3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v16, v4, v1

    move-object v9, v4

    goto :goto_e5

    :cond_e3
    const/4 v1, 0x0

    move-object v9, v1

    :goto_e5
    const/high16 v18, 0x4000000

    const/16 v19, 0x0

    .line 320
    move-object v1, v2

    move v2, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v20, v10

    .end local v10    # "intent":Landroid/content/Intent;
    .local v20, "intent":Landroid/content/Intent;
    move/from16 v10, v18

    move-object/from16 v18, v11

    .end local v11    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v11, v19

    move/from16 v12, p5

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v1

    .line 326
    .local v1, "target":Landroid/content/IIntentSender;
    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v2

    .line 287
    .end local v0    # "intentToResolve":Landroid/content/Intent;
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v16    # "resolvedType":Ljava/lang/String;
    .end local v17    # "packageUid":I
    .end local v18    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v21    # "contentResolver":Landroid/content/ContentResolver;
    .local v11, "packageUid":I
    :cond_103
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLaunchIntentSenderForPackage() from calling uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not own package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryIntentActivityOptionsInternal(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 46
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "caller"    # Landroid/content/ComponentName;
    .param p3, "specifics"    # [Landroid/content/Intent;
    .param p4, "specificTypes"    # [Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "flags"    # J
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 597
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v13, p9

    iget-object v0, v11, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 598
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 599
    .local v14, "callingUid":I
    const/4 v6, 0x0

    .line 601
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p9

    move-object/from16 v3, p6

    move-wide/from16 v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v7

    .line 599
    move-wide/from16 v1, p7

    move/from16 v3, p9

    move v4, v14

    move v5, v6

    move v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v9

    .line 603
    .end local p7    # "flags":J
    .local v9, "flags":J
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent activity options"

    move v1, v14

    move/from16 v2, p9

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 605
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 607
    .local v15, "resultsAction":Ljava/lang/String;
    const-wide/16 v16, 0x40

    or-long v3, v9, v16

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v5, p9

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v8

    .line 610
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    const-string v6, ": "

    const-string v7, "PackageManager"

    if-eqz v0, :cond_77

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v4, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 610
    :cond_77
    move-object/from16 v4, p5

    .line 614
    :goto_79
    const/4 v0, 0x0

    .line 625
    .local v0, "specificsPos":I
    const-string v5, "Removing duplicate item from "

    if-eqz v12, :cond_250

    .line 626
    const/4 v1, 0x0

    move v2, v0

    .end local v0    # "specificsPos":I
    .local v1, "i":I
    .local v2, "specificsPos":I
    :goto_80
    array-length v0, v12

    if-ge v1, v0, :cond_243

    .line 627
    aget-object v0, v12, v1

    .line 628
    .local v0, "sintent":Landroid/content/Intent;
    if-nez v0, :cond_99

    .line 629
    move/from16 v26, v1

    move/from16 v27, v2

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 p7, v8

    move-wide v2, v9

    move/from16 v20, v14

    move-object/from16 v1, p1

    move-object v14, v5

    goto/16 :goto_152

    .line 632
    :cond_99
    sget-boolean v18, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    const-string v12, "Specific #"

    if-eqz v18, :cond_bb

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_bb
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "action":Ljava/lang/String;
    if-eqz v15, :cond_c8

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c8

    .line 640
    const/4 v3, 0x0

    .line 643
    :cond_c8
    const/16 v18, 0x0

    .line 644
    .local v18, "ri":Landroid/content/pm/ResolveInfo;
    const/16 v19, 0x0

    .line 646
    .local v19, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 p8, v6

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 647
    .local v6, "comp":Landroid/content/ComponentName;
    if-nez v6, :cond_130

    .line 648
    nop

    .line 649
    if-eqz p4, :cond_da

    aget-object v20, p4, v1

    goto :goto_dc

    :cond_da
    const/16 v20, 0x0

    :goto_dc
    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    .line 650
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    .line 648
    move-object/from16 v25, v0

    .end local v0    # "sintent":Landroid/content/Intent;
    .local v25, "sintent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move/from16 v26, v1

    .end local v1    # "i":I
    .local v26, "i":I
    move-object/from16 v1, p1

    move/from16 v27, v2

    .end local v2    # "specificsPos":I
    .local v27, "specificsPos":I
    move-object/from16 v2, v25

    move-object/from16 v28, v3

    .end local v3    # "action":Ljava/lang/String;
    .local v28, "action":Ljava/lang/String;
    move-object/from16 v3, v20

    move/from16 v20, v14

    move-object v14, v5

    .end local v14    # "callingUid":I
    .local v20, "callingUid":I
    move-wide v4, v9

    move-object/from16 v30, p8

    move-object/from16 v29, v6

    move-object/from16 v31, v7

    .end local v6    # "comp":Landroid/content/ComponentName;
    .local v29, "comp":Landroid/content/ComponentName;
    move-wide/from16 v6, v21

    move-object/from16 p7, v8

    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move/from16 v8, p9

    move-wide/from16 v32, v9

    .end local v9    # "flags":J
    .local v32, "flags":J
    move/from16 v9, v23

    move/from16 v10, v24

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 651
    .end local v18    # "ri":Landroid/content/pm/ResolveInfo;
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_115

    .line 652
    move-object/from16 v1, p1

    move-wide/from16 v2, v32

    goto :goto_152

    .line 654
    :cond_115
    iget-object v1, v11, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 657
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 658
    .end local v19    # "ai":Landroid/content/pm/ActivityInfo;
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    move-object/from16 v18, v0

    move-object v4, v1

    move-wide/from16 v2, v32

    move-object/from16 v1, p1

    .end local v29    # "comp":Landroid/content/ComponentName;
    .restart local v6    # "comp":Landroid/content/ComponentName;
    goto :goto_15d

    .line 661
    .end local v20    # "callingUid":I
    .end local v25    # "sintent":Landroid/content/Intent;
    .end local v26    # "i":I
    .end local v27    # "specificsPos":I
    .end local v28    # "action":Ljava/lang/String;
    .end local v32    # "flags":J
    .end local p7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "sintent":Landroid/content/Intent;
    .local v1, "i":I
    .restart local v2    # "specificsPos":I
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "flags":J
    .restart local v14    # "callingUid":I
    .restart local v18    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_130
    move-object/from16 v30, p8

    move-object/from16 v25, v0

    move/from16 v26, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v6

    move-object/from16 v31, v7

    move-object/from16 p7, v8

    move-wide/from16 v32, v9

    move/from16 v20, v14

    move-object v14, v5

    .end local v0    # "sintent":Landroid/content/Intent;
    .end local v1    # "i":I
    .end local v2    # "specificsPos":I
    .end local v3    # "action":Ljava/lang/String;
    .end local v6    # "comp":Landroid/content/ComponentName;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "flags":J
    .end local v14    # "callingUid":I
    .restart local v20    # "callingUid":I
    .restart local v25    # "sintent":Landroid/content/Intent;
    .restart local v26    # "i":I
    .restart local v27    # "specificsPos":I
    .restart local v28    # "action":Ljava/lang/String;
    .restart local v29    # "comp":Landroid/content/ComponentName;
    .restart local v32    # "flags":J
    .restart local p7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v1, p1

    move-object/from16 v0, v29

    move-wide/from16 v2, v32

    .end local v29    # "comp":Landroid/content/ComponentName;
    .end local v32    # "flags":J
    .local v0, "comp":Landroid/content/ComponentName;
    .local v2, "flags":J
    invoke-interface {v1, v0, v2, v3, v13}, Lcom/android/server/pm/Computer;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 662
    .end local v19    # "ai":Landroid/content/pm/ActivityInfo;
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_15c

    .line 663
    nop

    .line 626
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v18    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v20    # "callingUid":I
    .end local v25    # "sintent":Landroid/content/Intent;
    .end local v26    # "i":I
    .end local v27    # "specificsPos":I
    .end local v28    # "action":Ljava/lang/String;
    .end local p7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "i":I
    .local v2, "specificsPos":I
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "flags":J
    .restart local v14    # "callingUid":I
    :goto_152
    move-object/from16 v10, p7

    move/from16 v5, v26

    move/from16 v7, v27

    move-object/from16 v8, v31

    .end local v1    # "i":I
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "flags":J
    .end local v14    # "callingUid":I
    .local v2, "flags":J
    .restart local v20    # "callingUid":I
    .restart local v26    # "i":I
    .restart local v27    # "specificsPos":I
    .restart local p7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_22f

    .line 662
    .restart local v0    # "comp":Landroid/content/ComponentName;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v18    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v25    # "sintent":Landroid/content/Intent;
    .restart local v28    # "action":Ljava/lang/String;
    :cond_15c
    move-object v6, v0

    .line 669
    .end local v0    # "comp":Landroid/content/ComponentName;
    .restart local v6    # "comp":Landroid/content/ComponentName;
    :goto_15d
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-eqz v0, :cond_184

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v5, v26

    .end local v26    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v7, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v31

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18a

    .end local v5    # "i":I
    .restart local v26    # "i":I
    :cond_184
    move/from16 v5, v26

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    .line 670
    .end local v26    # "i":I
    .restart local v5    # "i":I
    :goto_18a
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    .line 672
    .local v0, "N":I
    move/from16 v9, v27

    .local v9, "j":I
    :goto_190
    if-ge v9, v0, :cond_216

    .line 673
    move-object/from16 v10, p7

    .end local p7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 674
    .local v12, "sri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v7

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1be

    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 676
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 675
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bb

    goto :goto_1be

    :cond_1bb
    move-object/from16 v1, v28

    goto :goto_1ca

    :cond_1be
    :goto_1be
    move-object/from16 v1, v28

    .end local v28    # "action":Ljava/lang/String;
    .local v1, "action":Ljava/lang/String;
    if-eqz v1, :cond_206

    iget-object v7, v12, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 677
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_201

    .line 678
    :goto_1ca
    invoke-interface {v10, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 679
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-eqz v7, :cond_1f4

    .line 680
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v28, v1

    .end local v1    # "action":Ljava/lang/String;
    .restart local v28    # "action":Ljava/lang/String;
    const-string v1, " due to specific "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v7, v27

    .end local v27    # "specificsPos":I
    .local v7, "specificsPos":I
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f8

    .line 679
    .end local v7    # "specificsPos":I
    .end local v28    # "action":Ljava/lang/String;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v27    # "specificsPos":I
    :cond_1f4
    move-object/from16 v28, v1

    move/from16 v7, v27

    .line 684
    .end local v1    # "action":Ljava/lang/String;
    .end local v27    # "specificsPos":I
    .restart local v7    # "specificsPos":I
    .restart local v28    # "action":Ljava/lang/String;
    :goto_1f8
    if-nez v18, :cond_1fc

    .line 685
    move-object/from16 v18, v12

    .line 687
    :cond_1fc
    add-int/lit8 v9, v9, -0x1

    .line 688
    add-int/lit8 v0, v0, -0x1

    goto :goto_20a

    .line 677
    .end local v7    # "specificsPos":I
    .end local v28    # "action":Ljava/lang/String;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v27    # "specificsPos":I
    :cond_201
    move-object/from16 v28, v1

    move/from16 v7, v27

    .end local v1    # "action":Ljava/lang/String;
    .end local v27    # "specificsPos":I
    .restart local v7    # "specificsPos":I
    .restart local v28    # "action":Ljava/lang/String;
    goto :goto_20a

    .line 675
    .end local v7    # "specificsPos":I
    .end local v28    # "action":Ljava/lang/String;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v27    # "specificsPos":I
    :cond_206
    move-object/from16 v28, v1

    move/from16 v7, v27

    .line 672
    .end local v1    # "action":Ljava/lang/String;
    .end local v12    # "sri":Landroid/content/pm/ResolveInfo;
    .end local v27    # "specificsPos":I
    .restart local v7    # "specificsPos":I
    .restart local v28    # "action":Ljava/lang/String;
    :goto_20a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move/from16 v27, v7

    move-object/from16 p7, v10

    move-object/from16 v7, v30

    goto/16 :goto_190

    .line 693
    .end local v7    # "specificsPos":I
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v27    # "specificsPos":I
    .restart local p7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_216
    move-object/from16 v10, p7

    move-object/from16 v30, v7

    move/from16 v7, v27

    .end local v27    # "specificsPos":I
    .end local p7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "specificsPos":I
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v18, :cond_226

    .line 694
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 695
    .end local v18    # "ri":Landroid/content/pm/ResolveInfo;
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_228

    .line 693
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_226
    move-object/from16 v1, v18

    .line 697
    .end local v18    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_228
    invoke-interface {v10, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 698
    iput v5, v1, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 699
    add-int/lit8 v7, v7, 0x1

    .line 626
    .end local v0    # "N":I
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "comp":Landroid/content/ComponentName;
    .end local v9    # "j":I
    .end local v25    # "sintent":Landroid/content/Intent;
    .end local v28    # "action":Ljava/lang/String;
    :goto_22f
    add-int/lit8 v1, v5, 0x1

    move-object/from16 v12, p3

    move-object/from16 v4, p5

    move-object v5, v14

    move/from16 v14, v20

    move-object/from16 v6, v30

    move-wide/from16 v34, v2

    move v2, v7

    move-object v7, v8

    move-object v8, v10

    move-wide/from16 v9, v34

    .end local v5    # "i":I
    .local v1, "i":I
    goto/16 :goto_80

    .end local v7    # "specificsPos":I
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "callingUid":I
    .local v2, "specificsPos":I
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v9, "flags":J
    .restart local v14    # "callingUid":I
    :cond_243
    move/from16 v20, v14

    move-object v14, v5

    move v5, v1

    move-object/from16 v34, v7

    move v7, v2

    move-wide v2, v9

    move-object v10, v8

    move-object/from16 v8, v34

    .end local v1    # "i":I
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "flags":J
    .end local v14    # "callingUid":I
    .local v2, "flags":J
    .restart local v5    # "i":I
    .restart local v7    # "specificsPos":I
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v20    # "callingUid":I
    move v0, v7

    goto :goto_256

    .line 625
    .end local v2    # "flags":J
    .end local v5    # "i":I
    .end local v7    # "specificsPos":I
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "callingUid":I
    .local v0, "specificsPos":I
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "flags":J
    .restart local v14    # "callingUid":I
    :cond_250
    move-wide v2, v9

    move/from16 v20, v14

    move-object v14, v5

    move-object v10, v8

    move-object v8, v7

    .line 705
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "flags":J
    .end local v14    # "callingUid":I
    .restart local v2    # "flags":J
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v20    # "callingUid":I
    :goto_256
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    .line 706
    .local v1, "N":I
    move v4, v0

    .local v4, "i":I
    :goto_25b
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_2ff

    .line 707
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 708
    .local v5, "rii":Landroid/content/pm/ResolveInfo;
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v9, :cond_26a

    .line 709
    goto :goto_273

    .line 714
    :cond_26a
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v9}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v9

    .line 715
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v9, :cond_278

    .line 716
    nop

    .line 706
    .end local v5    # "rii":Landroid/content/pm/ResolveInfo;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_273
    move/from16 v18, v0

    const/4 v0, 0x0

    goto/16 :goto_2f9

    .line 718
    .restart local v5    # "rii":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_278
    :goto_278
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2ea

    .line 719
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 720
    .local v12, "action":Ljava/lang/String;
    if-eqz v15, :cond_28d

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28d

    .line 723
    goto :goto_278

    .line 725
    :cond_28d
    add-int/lit8 v18, v4, 0x1

    move/from16 v6, v18

    .local v6, "j":I
    :goto_291
    if-ge v6, v1, :cond_2e7

    .line 726
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 727
    .local v7, "rij":Landroid/content/pm/ResolveInfo;
    move/from16 v18, v0

    .end local v0    # "specificsPos":I
    .local v18, "specificsPos":I
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2e0

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e0

    .line 728
    invoke-interface {v10, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 729
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-eqz v0, :cond_2d9

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v19, v7

    .end local v7    # "rij":Landroid/content/pm/ResolveInfo;
    .local v19, "rij":Landroid/content/pm/ResolveInfo;
    const-string v7, " due to action "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " at "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2db

    .line 729
    .end local v19    # "rij":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "rij":Landroid/content/pm/ResolveInfo;
    :cond_2d9
    move-object/from16 v19, v7

    .line 734
    .end local v7    # "rij":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "rij":Landroid/content/pm/ResolveInfo;
    :goto_2db
    add-int/lit8 v6, v6, -0x1

    .line 735
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e2

    .line 727
    .end local v19    # "rij":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "rij":Landroid/content/pm/ResolveInfo;
    :cond_2e0
    move-object/from16 v19, v7

    .line 725
    .end local v7    # "rij":Landroid/content/pm/ResolveInfo;
    :goto_2e2
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v18

    goto :goto_291

    .end local v18    # "specificsPos":I
    .restart local v0    # "specificsPos":I
    :cond_2e7
    move/from16 v18, v0

    .line 738
    .end local v0    # "specificsPos":I
    .end local v6    # "j":I
    .end local v12    # "action":Ljava/lang/String;
    .restart local v18    # "specificsPos":I
    goto :goto_278

    .line 742
    .end local v18    # "specificsPos":I
    .restart local v0    # "specificsPos":I
    :cond_2ea
    move/from16 v18, v0

    .end local v0    # "specificsPos":I
    .restart local v18    # "specificsPos":I
    and-long v6, v2, v16

    const-wide/16 v21, 0x0

    cmp-long v0, v6, v21

    if-nez v0, :cond_2f8

    .line 743
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    goto :goto_2f9

    .line 742
    :cond_2f8
    const/4 v0, 0x0

    .line 706
    .end local v5    # "rii":Landroid/content/pm/ResolveInfo;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2f9
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v18

    goto/16 :goto_25b

    .end local v18    # "specificsPos":I
    .restart local v0    # "specificsPos":I
    :cond_2ff
    move/from16 v18, v0

    const/4 v0, 0x0

    .line 748
    .end local v0    # "specificsPos":I
    .end local v4    # "i":I
    .restart local v18    # "specificsPos":I
    if-eqz p2, :cond_334

    .line 749
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    .line 750
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_309
    if-ge v4, v1, :cond_334

    .line 751
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 752
    .local v5, "ainfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_331

    .line 753
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_331

    .line 754
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 755
    goto :goto_334

    .line 750
    .end local v5    # "ainfo":Landroid/content/pm/ActivityInfo;
    :cond_331
    add-int/lit8 v4, v4, 0x1

    goto :goto_309

    .line 763
    .end local v4    # "i":I
    :cond_334
    :goto_334
    and-long v4, v2, v16

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_34e

    .line 764
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    .line 765
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_341
    if-ge v4, v1, :cond_34e

    .line 766
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 765
    add-int/lit8 v4, v4, 0x1

    goto :goto_341

    .line 770
    .end local v4    # "i":I
    :cond_34e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-eqz v0, :cond_368

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_368
    return-object v10
.end method

.method public queryIntentContentProvidersInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 27
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 462
    move-object/from16 v8, p1

    move/from16 v9, p6

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 463
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 464
    .local v11, "callingUid":I
    invoke-interface {v8, v11}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v12

    .line 465
    .local v12, "instantAppPkgName":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    move/from16 v3, p6

    move v4, v11

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v13

    .line 467
    .end local p4    # "flags":J
    .local v13, "flags":J
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 468
    .local v0, "comp":Landroid/content/ComponentName;
    if-nez v0, :cond_3f

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    .line 471
    .end local p2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v7, v0

    move-object v15, v1

    goto :goto_42

    .line 474
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_3f
    move-object/from16 v15, p2

    move-object v7, v0

    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local p2    # "intent":Landroid/content/Intent;
    .local v7, "comp":Landroid/content/ComponentName;
    .local v15, "intent":Landroid/content/Intent;
    :goto_42
    if-eqz v7, :cond_d3

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8, v7, v13, v14, v9}, Lcom/android/server/pm/Computer;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 477
    .local v2, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_d0

    .line 482
    const-wide/32 v3, 0x800000

    and-long/2addr v3, v13

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5c

    move v3, v1

    goto :goto_5d

    :cond_5c
    const/4 v3, 0x0

    .line 484
    .local v3, "matchInstantApp":Z
    :goto_5d
    const-wide/32 v16, 0x1000000

    and-long v16, v13, v16

    cmp-long v5, v16, v5

    if-eqz v5, :cond_68

    move v5, v1

    goto :goto_69

    :cond_68
    const/4 v5, 0x0

    .line 486
    .local v5, "matchVisibleToInstantAppOnly":Z
    :goto_69
    if-eqz v12, :cond_6d

    move v6, v1

    goto :goto_6e

    :cond_6d
    const/4 v6, 0x0

    .line 488
    .local v6, "isCallerInstantApp":Z
    :goto_6e
    nop

    .line 489
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 490
    .local v1, "isTargetSameInstantApp":Z
    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_81

    const/4 v4, 0x1

    goto :goto_82

    :cond_81
    const/4 v4, 0x0

    .line 493
    .local v4, "isTargetInstantApp":Z
    :goto_82
    move-object/from16 p5, v7

    .end local v7    # "comp":Landroid/content/ComponentName;
    .local p5, "comp":Landroid/content/ComponentName;
    iget v7, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v7, v7, v16

    if-nez v7, :cond_8e

    const/4 v7, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v7, 0x0

    .line 495
    .local v7, "isTargetHiddenFromInstantApp":Z
    :goto_8f
    if-nez v1, :cond_a0

    if-nez v3, :cond_97

    if-nez v6, :cond_97

    if-nez v4, :cond_9d

    :cond_97
    if-eqz v5, :cond_a0

    if-eqz v6, :cond_a0

    if-eqz v7, :cond_a0

    :cond_9d
    const/16 v16, 0x1

    goto :goto_a2

    :cond_a0
    const/16 v16, 0x0

    .line 500
    .local v16, "blockResolution":Z
    :goto_a2
    if-nez v4, :cond_bc

    if-nez v6, :cond_bc

    move/from16 v17, v1

    .end local v1    # "isTargetSameInstantApp":Z
    .local v17, "isTargetSameInstantApp":Z
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v18, v3

    .end local v3    # "matchInstantApp":Z
    .local v18, "matchInstantApp":Z
    const/16 v3, 0x3e8

    .line 502
    invoke-interface {v8, v1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 501
    invoke-interface {v8, v1, v11, v9}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_c0

    const/4 v1, 0x1

    goto :goto_c1

    .line 500
    .end local v17    # "isTargetSameInstantApp":Z
    .end local v18    # "matchInstantApp":Z
    .restart local v1    # "isTargetSameInstantApp":Z
    .restart local v3    # "matchInstantApp":Z
    :cond_bc
    move/from16 v17, v1

    move/from16 v18, v3

    .line 501
    .end local v1    # "isTargetSameInstantApp":Z
    .end local v3    # "matchInstantApp":Z
    .restart local v17    # "isTargetSameInstantApp":Z
    .restart local v18    # "matchInstantApp":Z
    :cond_c0
    const/4 v1, 0x0

    .line 504
    .local v1, "blockNormalResolution":Z
    :goto_c1
    if-nez v16, :cond_d2

    if-nez v1, :cond_d2

    .line 505
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 506
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 507
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 477
    .end local v1    # "blockNormalResolution":Z
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "isTargetInstantApp":Z
    .end local v5    # "matchVisibleToInstantAppOnly":Z
    .end local v6    # "isCallerInstantApp":Z
    .end local v16    # "blockResolution":Z
    .end local v17    # "isTargetSameInstantApp":Z
    .end local v18    # "matchInstantApp":Z
    .end local p5    # "comp":Landroid/content/ComponentName;
    .local v7, "comp":Landroid/content/ComponentName;
    :cond_d0
    move-object/from16 p5, v7

    .line 510
    .end local v7    # "comp":Landroid/content/ComponentName;
    .restart local p5    # "comp":Landroid/content/ComponentName;
    :cond_d2
    :goto_d2
    return-object v0

    .line 513
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pi":Landroid/content/pm/ProviderInfo;
    .end local p5    # "comp":Landroid/content/ComponentName;
    .restart local v7    # "comp":Landroid/content/ComponentName;
    :cond_d3
    move-object/from16 p5, v7

    .end local v7    # "comp":Landroid/content/ComponentName;
    .restart local p5    # "comp":Landroid/content/ComponentName;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v16

    .line 514
    .local v16, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    invoke-virtual {v15}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    .line 515
    .local v7, "pkgName":Ljava/lang/String;
    if-nez v7, :cond_102

    .line 516
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, p3

    move-wide v4, v13

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v6

    .line 518
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_f4

    .line 519
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 521
    :cond_f4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v12

    move/from16 v4, p6

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 524
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_102
    invoke-interface {v8, v7}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v17

    .line 525
    .local v17, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v17, :cond_134

    .line 526
    nop

    .line 527
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v6

    .line 526
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, p3

    move-wide v4, v13

    move-object/from16 v18, p5

    move-object/from16 v19, v7

    .end local v7    # "pkgName":Ljava/lang/String;
    .end local p5    # "comp":Landroid/content/ComponentName;
    .local v18, "comp":Landroid/content/ComponentName;
    .local v19, "pkgName":Ljava/lang/String;
    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v6

    .line 528
    .restart local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_126

    .line 529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 531
    :cond_126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v12

    move/from16 v4, p6

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 534
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "comp":Landroid/content/ComponentName;
    .end local v19    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local p5    # "comp":Landroid/content/ComponentName;
    :cond_134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .registers 17
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .param p7, "queryingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 337
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;
    .registers 38
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .param p7, "filterCallingUid"    # I
    .param p8, "forSend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p6

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 350
    :cond_13
    if-eqz p8, :cond_18

    const/16 v1, 0x3e8

    goto :goto_1a

    :cond_18
    move/from16 v1, p7

    :goto_1a
    move v11, v1

    .line 351
    .local v11, "queryingUid":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "query intent receivers"

    move-object/from16 v1, p1

    move v2, v11

    move/from16 v3, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 353
    invoke-interface {v9, v11}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v12

    .line 354
    .local v12, "instantAppPkgName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 356
    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v8

    .line 354
    move-wide/from16 v2, p4

    move/from16 v4, p6

    move v5, v11

    move v6, v7

    move v7, v8

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v13

    .line 358
    .end local p4    # "flags":J
    .local v13, "flags":J
    const/4 v1, 0x0

    .line 359
    .local v1, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 360
    .local v2, "comp":Landroid/content/ComponentName;
    if-nez v2, :cond_5f

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 362
    move-object/from16 v1, p2

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    .line 364
    .end local p2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v23, v1

    move-object v8, v2

    move-object/from16 v22, v3

    goto :goto_64

    .line 367
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_5f
    move-object/from16 v22, p2

    move-object/from16 v23, v1

    move-object v8, v2

    .end local v1    # "originalIntent":Landroid/content/Intent;
    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local p2    # "intent":Landroid/content/Intent;
    .local v8, "comp":Landroid/content/ComponentName;
    .local v22, "intent":Landroid/content/Intent;
    .local v23, "originalIntent":Landroid/content/Intent;
    :goto_64
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v24

    .line 368
    .local v24, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 369
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_12c

    .line 370
    invoke-interface {v9, v8, v13, v14, v10}, Lcom/android/server/pm/Computer;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 371
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_125

    .line 376
    const-wide/32 v2, 0x800000

    and-long/2addr v2, v13

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_80

    const/4 v2, 0x1

    goto :goto_81

    :cond_80
    const/4 v2, 0x0

    .line 378
    .local v2, "matchInstantApp":Z
    :goto_81
    const-wide/32 v16, 0x1000000

    and-long v16, v13, v16

    cmp-long v7, v16, v4

    if-eqz v7, :cond_8c

    const/4 v7, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v7, 0x0

    .line 380
    .local v7, "matchVisibleToInstantAppOnly":Z
    :goto_8d
    const-wide/32 v16, 0x2000000

    and-long v16, v13, v16

    cmp-long v4, v16, v4

    if-eqz v4, :cond_98

    const/4 v4, 0x1

    goto :goto_99

    :cond_98
    const/4 v4, 0x0

    .line 382
    .local v4, "matchExplicitlyVisibleOnly":Z
    :goto_99
    if-eqz v12, :cond_9d

    const/4 v5, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v5, 0x0

    .line 384
    .local v5, "isCallerInstantApp":Z
    :goto_9e
    nop

    .line 385
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 386
    .local v3, "isTargetSameInstantApp":Z
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_b1

    const/4 v6, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v6, 0x0

    .line 389
    .local v6, "isTargetInstantApp":Z
    :goto_b2
    move-object/from16 p5, v8

    .end local v8    # "comp":Landroid/content/ComponentName;
    .local p5, "comp":Landroid/content/ComponentName;
    iget v8, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v8, v8, v16

    if-eqz v8, :cond_be

    const/4 v8, 0x1

    goto :goto_bf

    :cond_be
    const/4 v8, 0x0

    .line 391
    .local v8, "isTargetVisibleToInstantApp":Z
    :goto_bf
    if-eqz v8, :cond_cb

    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v16, 0x200000

    and-int v10, v10, v16

    if-nez v10, :cond_cb

    const/4 v10, 0x1

    goto :goto_cc

    :cond_cb
    const/4 v10, 0x0

    .line 393
    .local v10, "isTargetExplicitlyVisibleToInstantApp":Z
    :goto_cc
    if-eqz v8, :cond_d6

    if-eqz v4, :cond_d3

    if-nez v10, :cond_d3

    goto :goto_d6

    :cond_d3
    const/16 v16, 0x0

    goto :goto_d8

    :cond_d6
    :goto_d6
    const/16 v16, 0x1

    :goto_d8
    move/from16 v25, v16

    .line 395
    .local v25, "isTargetHiddenFromInstantApp":Z
    if-nez v3, :cond_eb

    if-nez v2, :cond_e2

    if-nez v5, :cond_e2

    if-nez v6, :cond_e8

    :cond_e2
    if-eqz v7, :cond_eb

    if-eqz v5, :cond_eb

    if-eqz v25, :cond_eb

    :cond_e8
    const/16 v16, 0x1

    goto :goto_ed

    :cond_eb
    const/16 v16, 0x0

    :goto_ed
    move/from16 v26, v16

    .line 400
    .local v26, "blockResolution":Z
    if-nez v26, :cond_11e

    .line 401
    new-instance v16, Landroid/content/pm/ResolveInfo;

    invoke-direct/range {v16 .. v16}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object/from16 p2, v16

    .line 402
    .local p2, "ri":Landroid/content/pm/ResolveInfo;
    move/from16 v27, v2

    move-object/from16 v2, p2

    .end local p2    # "ri":Landroid/content/pm/ResolveInfo;
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    .local v27, "matchInstantApp":Z
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 403
    move-object/from16 p2, v1

    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .local p2, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v28, v3

    const/4 v3, 0x1

    .end local v3    # "isTargetSameInstantApp":Z
    .local v28, "isTargetSameInstantApp":Z
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v15, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v18, 0x1

    move-object/from16 v16, v24

    move-object/from16 v17, v1

    move-object/from16 v19, v22

    move-object/from16 v20, p3

    move/from16 v21, p7

    invoke-static/range {v15 .. v21}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    move-object v15, v1

    goto :goto_129

    .line 400
    .end local v27    # "matchInstantApp":Z
    .end local v28    # "isTargetSameInstantApp":Z
    .end local p2    # "ai":Landroid/content/pm/ActivityInfo;
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    .local v2, "matchInstantApp":Z
    .restart local v3    # "isTargetSameInstantApp":Z
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_11e
    move-object/from16 p2, v1

    move/from16 v27, v2

    move/from16 v28, v3

    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "matchInstantApp":Z
    .end local v3    # "isTargetSameInstantApp":Z
    .restart local v27    # "matchInstantApp":Z
    .restart local v28    # "isTargetSameInstantApp":Z
    .restart local p2    # "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_129

    .line 371
    .end local v4    # "matchExplicitlyVisibleOnly":Z
    .end local v5    # "isCallerInstantApp":Z
    .end local v6    # "isTargetInstantApp":Z
    .end local v7    # "matchVisibleToInstantAppOnly":Z
    .end local v10    # "isTargetExplicitlyVisibleToInstantApp":Z
    .end local v25    # "isTargetHiddenFromInstantApp":Z
    .end local v26    # "blockResolution":Z
    .end local v27    # "matchInstantApp":Z
    .end local v28    # "isTargetSameInstantApp":Z
    .end local p2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local p5    # "comp":Landroid/content/ComponentName;
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .local v8, "comp":Landroid/content/ComponentName;
    :cond_125
    move-object/from16 p2, v1

    move-object/from16 p5, v8

    .line 410
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "comp":Landroid/content/ComponentName;
    .restart local p5    # "comp":Landroid/content/ComponentName;
    :goto_129
    move-object/from16 v17, p5

    goto :goto_169

    .line 411
    .end local p5    # "comp":Landroid/content/ComponentName;
    .restart local v8    # "comp":Landroid/content/ComponentName;
    :cond_12c
    move-object/from16 p5, v8

    .end local v8    # "comp":Landroid/content/ComponentName;
    .restart local p5    # "comp":Landroid/content/ComponentName;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    .line 412
    .local v10, "pkgName":Ljava/lang/String;
    if-nez v10, :cond_147

    .line 413
    nop

    .line 414
    move-object/from16 v1, v24

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    move-wide v5, v13

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v1

    .line 415
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_147

    .line 416
    move-object v15, v1

    .line 419
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_147
    invoke-interface {v9, v10}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v16

    .line 420
    .local v16, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v16, :cond_167

    .line 421
    nop

    .line 422
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v7

    .line 421
    move-object/from16 v1, v24

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    move-wide v5, v13

    move-object/from16 v17, p5

    .end local p5    # "comp":Landroid/content/ComponentName;
    .local v17, "comp":Landroid/content/ComponentName;
    move/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 423
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_169

    .line 424
    move-object v15, v1

    goto :goto_169

    .line 420
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17    # "comp":Landroid/content/ComponentName;
    .restart local p5    # "comp":Landroid/content/ComponentName;
    :cond_167
    move-object/from16 v17, p5

    .line 429
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p5    # "comp":Landroid/content/ComponentName;
    .restart local v17    # "comp":Landroid/content/ComponentName;
    :cond_169
    :goto_169
    if-eqz v23, :cond_17a

    .line 431
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/4 v4, 0x1

    move-object/from16 v2, v24

    move-object v3, v15

    move-object/from16 v5, v23

    move-object/from16 v6, p3

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    .line 436
    :cond_17a
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v12

    move v5, v11

    move/from16 v7, p6

    move-object/from16 v8, v22

    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;
    .registers 44
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "privateResolveFlags"    # J
    .param p8, "userId"    # I
    .param p9, "resolveForStart"    # Z
    .param p10, "filterCallingUid"    # I

    .line 114
    const-wide/32 v1, 0x40000

    :try_start_3
    const-string/jumbo v0, "resolveIntent"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_af

    .line 116
    move-object/from16 v14, p0

    :try_start_b
    iget-object v0, v14, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v12, p8

    invoke-virtual {v0, v12}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_ad

    const/16 v32, 0x0

    if-nez v0, :cond_1b

    .line 143
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 116
    return-object v32

    .line 117
    :cond_1b
    :try_start_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 118
    .local v16, "callingUid":I
    nop

    .line 119
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p8

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v9

    .line 118
    move-object/from16 v3, p1

    move-wide/from16 v4, p4

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p9

    invoke-interface/range {v3 .. v9}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v24
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_ad

    .line 121
    .end local p4    # "flags":J
    .local v24, "flags":J
    const/16 v18, 0x0

    const/16 v19, 0x0

    :try_start_40
    const-string/jumbo v20, "resolve intent"

    move-object/from16 v15, p1

    move/from16 v17, p8

    invoke-interface/range {v15 .. v20}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 124
    const-string/jumbo v0, "queryIntentActivities"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 125
    const/16 v31, 0x1

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-wide/from16 v26, p6

    move/from16 v28, p10

    move/from16 v29, p8

    move/from16 v30, p9

    invoke-interface/range {v21 .. v31}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v11

    .line 128
    .local v11, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 130
    nop

    .line 131
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x2710

    const/4 v15, 0x1

    const/16 v17, 0x0

    if-lt v0, v3, :cond_77

    if-nez p9, :cond_77

    move v13, v15

    goto :goto_79

    :cond_77
    move/from16 v13, v17

    .line 134
    .local v13, "queryMayBeFiltered":Z
    :goto_79
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, v24

    move-wide/from16 v9, p6

    move/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/pm/ResolveIntentHelper;->chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 136
    .local v0, "bestChoice":Landroid/content/pm/ResolveInfo;
    const-wide/16 v3, 0x1

    and-long v3, p6, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_96

    goto :goto_98

    :cond_96
    move/from16 v15, v17

    :goto_98
    move v3, v15

    .line 138
    .local v3, "nonBrowserOnly":Z
    if-eqz v3, :cond_a6

    if-eqz v0, :cond_a6

    iget-boolean v4, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z
    :try_end_9f
    .catchall {:try_start_40 .. :try_end_9f} :catchall_ab

    if-eqz v4, :cond_a6

    .line 139
    nop

    .line 143
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 139
    return-object v32

    .line 141
    :cond_a6
    nop

    .line 143
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 141
    return-object v0

    .line 143
    .end local v0    # "bestChoice":Landroid/content/pm/ResolveInfo;
    .end local v3    # "nonBrowserOnly":Z
    .end local v11    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "queryMayBeFiltered":Z
    .end local v16    # "callingUid":I
    :catchall_ab
    move-exception v0

    goto :goto_b4

    .end local v24    # "flags":J
    .restart local p4    # "flags":J
    :catchall_ad
    move-exception v0

    goto :goto_b2

    :catchall_af
    move-exception v0

    move-object/from16 v14, p0

    :goto_b2
    move-wide/from16 v24, p4

    .end local p4    # "flags":J
    .restart local v24    # "flags":J
    :goto_b4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 144
    throw v0
.end method

.method public resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;
    .registers 22
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .param p7, "callingUid"    # I

    .line 444
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v10, p6

    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_d

    return-object v11

    .line 445
    :cond_d
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v2 .. v8}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v12

    .line 447
    .end local p4    # "flags":J
    .local v12, "flags":J
    const/4 v9, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide v5, v12

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v2 .. v9}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v1

    .line 449
    .local v1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_39

    .line 450
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_39

    .line 453
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    return-object v2

    .line 456
    :cond_39
    return-object v11
.end method
