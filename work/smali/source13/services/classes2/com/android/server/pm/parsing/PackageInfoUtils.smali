.class public Lcom/android/server/pm/parsing/PackageInfoUtils;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 5
    .param p0, "pkgWithoutStateFlags"    # I
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 495
    move v0, p0

    .line 496
    .local v0, "flags":I
    if-eqz p1, :cond_12

    .line 497
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 499
    :cond_12
    return v0
.end method

.method public static appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 5
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 483
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v0

    .line 484
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 485
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isFactoryTest()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 487
    .local v0, "pkgWithoutStateFlags":I
    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    return v1
.end method

.method public static appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 2
    .param p0, "pkgWithoutStateFlags"    # I
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 524
    return p0
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 5
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 507
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v0

    .line 508
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v1

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 509
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 510
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOem()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 511
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 512
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 513
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOdm()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 514
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 515
    .local v0, "pkgWithoutStateFlags":I
    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    return v1
.end method

.method public static appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 2
    .param p0, "pkgWithoutStateFlags"    # I
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 542
    return p0
.end method

.method public static appInfoPrivateFlagsExt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 532
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v0

    .line 533
    .local v0, "pkgWithoutStateFlags":I
    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    return v1
.end method

.method private static assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 5
    .param p0, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p1, "mainComponent"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I

    .line 455
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 456
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 457
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 458
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 459
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 460
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    .line 461
    return-void
.end method

.method private static assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 6
    .param p0, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "component"    # Lcom/android/server/pm/pkg/component/ParsedComponent;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I

    .line 466
    nop

    .line 467
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    move-result-object v0

    .line 469
    .local v0, "labelAndIcon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 470
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 471
    return-void
.end method

.method public static checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z
    .registers 13
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p3, "flags"    # J

    .line 437
    const-wide/32 v0, 0x20000000

    and-long v2, p3, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_1f

    .line 438
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1f

    if-eqz p1, :cond_1f

    .line 440
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 441
    return v3

    .line 446
    :cond_1f
    invoke-static {p2, p3, p4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v2

    if-nez v2, :cond_38

    .line 447
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_39

    const-wide/32 v6, 0x402000

    and-long/2addr v6, p3

    cmp-long v2, v6, v4

    if-nez v2, :cond_38

    and-long/2addr v0, p3

    cmp-long v0, v0, v4

    if-eqz v0, :cond_39

    :cond_38
    const/4 v3, 0x1

    .line 446
    :cond_39
    return v3
.end method

.method private static flag(ZI)I
    .registers 3
    .param p0, "hasFlag"    # Z
    .param p1, "flag"    # I

    .line 475
    if-eqz p0, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/apex/ApexInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .registers 18
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p2, "flags"    # I
    .param p3, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 100
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    move/from16 v13, p2

    int-to-long v2, v13

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 101
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 100
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v11, p1

    move-object/from16 v12, p3

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILandroid/apex/ApexInfo;Lcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .registers 25
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "gids"    # [I
    .param p2, "flags"    # J
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p9, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p10, "userId"    # I
    .param p11, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            "I",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 90
    .local p8, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v12, p11

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILandroid/apex/ApexInfo;Lcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .registers 15
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "a"    # Lcom/android/server/pm/pkg/component/ParsedActivity;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "userId"    # I
    .param p6, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 269
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method private static generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .registers 15
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "a"    # Lcom/android/server/pm/pkg/component/ParsedActivity;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "userId"    # I
    .param p7, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 280
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 281
    :cond_4
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    .line 282
    return-object v0

    .line 284
    :cond_b
    if-nez p5, :cond_16

    .line 285
    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    .line 288
    :cond_16
    if-nez p5, :cond_19

    .line 289
    return-object v0

    .line 292
    :cond_19
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateActivityInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 294
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    invoke-static {v0, p1, p7, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 295
    return-object v0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;
    .registers 14
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "flags"    # J
    .param p3, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p4, "userId"    # I
    .param p5, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 222
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 223
    return-object v0

    .line 226
    :cond_4
    invoke-static {p0, p5, p3, p1, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 227
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_8e

    .line 231
    :cond_12
    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfoUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 234
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v1, p0, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 236
    if-eqz p5, :cond_5a

    .line 238
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    .line 239
    .local v2, "pkgState":Lcom/android/server/pm/pkg/PackageStateUnserialized;
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 240
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v3

    .line 241
    .local v3, "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v4

    .line 242
    .local v4, "usesLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 243
    move-object v5, v0

    goto :goto_43

    :cond_3a
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    :goto_43
    iput-object v5, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 244
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_4d

    :cond_4c
    move-object v0, v4

    :goto_4d
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 245
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_5a

    .line 246
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getCategoryOverride()I

    move-result v0

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 250
    .end local v2    # "pkgState":Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .end local v3    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "usesLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_5a
    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 251
    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 252
    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 254
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v2, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    or-int/2addr v0, v2

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 255
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-static {v2, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    or-int/2addr v0, v2

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 256
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-static {v2, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    or-int/2addr v0, v2

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 258
    return-object v1

    .line 228
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_8e
    :goto_8e
    return-object v0
.end method

.method public static generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;JILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;
    .registers 13
    .param p0, "i"    # Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 367
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 369
    :cond_4
    const/4 v6, 0x0

    .line 370
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JIZ)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    .line 373
    .local v1, "info":Landroid/content/pm/InstrumentationInfo;
    invoke-static {v1, p1, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 375
    if-nez v1, :cond_13

    .line 376
    return-object v0

    .line 379
    :cond_13
    invoke-static {p1, p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 380
    invoke-static {p1, p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 381
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 382
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 384
    invoke-static {v1, p0, p5, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 386
    return-object v1
.end method

.method public static generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .param p0, "pg"    # Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    .param p1, "flags"    # J

    .line 404
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 407
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .registers 4
    .param p0, "p"    # Lcom/android/server/pm/pkg/component/ParsedPermission;
    .param p1, "flags"    # J

    .line 395
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 398
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;
    .registers 16
    .param p1, "flags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;J)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 413
    .local p0, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedProcess;>;"
    if-nez p0, :cond_4

    .line 414
    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 418
    .local v0, "numProcs":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 419
    .local v1, "retProcs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ProcessInfo;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 420
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 421
    .local v4, "proc":Lcom/android/server/pm/pkg/component/ParsedProcess;
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v12, Landroid/content/pm/ProcessInfo;

    .line 422
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/ArraySet;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 423
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    move-result v9

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    move-result v10

    .line 424
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Landroid/content/pm/ProcessInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;III)V

    .line 421
    invoke-virtual {v1, v5, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "proc":Lcom/android/server/pm/pkg/component/ParsedProcess;
    goto :goto_15

    .line 426
    :cond_4e
    return-object v1
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;
    .registers 15
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "p"    # Lcom/android/server/pm/pkg/component/ParsedProvider;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "userId"    # I
    .param p7, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 341
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 342
    :cond_4
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    .line 343
    return-object v0

    .line 345
    :cond_b
    if-eqz p5, :cond_19

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 346
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfo\'s package name is different. Expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    if-nez p5, :cond_37

    const-string v2, "(null AppInfo)"

    goto :goto_39

    .line 348
    :cond_37
    iget-object v2, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    const-string v2, "PackageParsing"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    .line 351
    :cond_4f
    if-nez p5, :cond_52

    .line 352
    return-object v0

    .line 354
    :cond_52
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateProviderInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 356
    .local v0, "info":Landroid/content/pm/ProviderInfo;
    invoke-static {v0, p1, p7, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 357
    return-object v0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .registers 15
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "s"    # Lcom/android/server/pm/pkg/component/ParsedService;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "userId"    # I
    .param p6, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 305
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .registers 15
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "s"    # Lcom/android/server/pm/pkg/component/ParsedService;
    .param p2, "flags"    # J
    .param p4, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "userId"    # I
    .param p7, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 316
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 317
    :cond_4
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    .line 318
    return-object v0

    .line 320
    :cond_b
    if-nez p5, :cond_16

    .line 321
    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    .line 323
    :cond_16
    if-nez p5, :cond_19

    .line 324
    return-object v0

    .line 327
    :cond_19
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateServiceInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 329
    .local v0, "info":Landroid/content/pm/ServiceInfo;
    invoke-static {v0, p1, p7, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 330
    return-object v0
.end method

.method private static generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILandroid/apex/ApexInfo;Lcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .registers 31
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "gids"    # [I
    .param p2, "flags"    # J
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p9, "state"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .param p10, "userId"    # I
    .param p11, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p12, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            "I",
            "Landroid/apex/ApexInfo;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 112
    .local p8, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p9

    move/from16 v4, p10

    move-object/from16 v5, p12

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 114
    .local v13, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v14, 0x0

    if-nez v13, :cond_12

    .line 115
    return-object v14

    .line 118
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object v12, v13

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateWithoutComponentsUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 122
    .local v8, "info":Landroid/content/pm/PackageInfo;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStub()Z

    move-result v0

    iput-boolean v0, v8, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 123
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v0

    iput-boolean v0, v8, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 125
    if-eqz p12, :cond_42

    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v0

    if-nez v0, :cond_42

    .line 127
    iput-object v14, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput v0, v8, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 131
    :cond_42
    const-wide/16 v0, 0x1

    and-long v0, p2, v0

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_ad

    .line 132
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 133
    .local v11, "N":I
    if-lez v11, :cond_ad

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "num":I
    new-array v12, v11, [Landroid/content/pm/ActivityInfo;

    .line 136
    .local v12, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    move v14, v0

    move v15, v1

    .end local v0    # "num":I
    .local v14, "num":I
    .local v15, "i":I
    :goto_5c
    if-ge v15, v11, :cond_a5

    .line 137
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 138
    .local v16, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object/from16 v3, v16

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 140
    sget-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 141
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 142
    goto :goto_a2

    .line 144
    :cond_8b
    add-int/lit8 v17, v14, 0x1

    .end local v14    # "num":I
    .local v17, "num":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object v5, v13

    move/from16 v6, p10

    move-object/from16 v7, p12

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v12, v14

    move/from16 v14, v17

    .line 136
    .end local v16    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v17    # "num":I
    .restart local v14    # "num":I
    :cond_a2
    :goto_a2
    add-int/lit8 v15, v15, 0x1

    goto :goto_5c

    .line 148
    .end local v15    # "i":I
    :cond_a5
    invoke-static {v12, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 151
    .end local v11    # "N":I
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v14    # "num":I
    :cond_ad
    const-wide/16 v0, 0x2

    and-long v0, p2, v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_109

    .line 152
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 153
    .local v11, "size":I
    if-lez v11, :cond_109

    .line 154
    const/4 v0, 0x0

    .line 155
    .restart local v0    # "num":I
    new-array v12, v11, [Landroid/content/pm/ActivityInfo;

    .line 156
    .restart local v12    # "res":[Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    move v14, v0

    move v15, v1

    .end local v0    # "num":I
    .restart local v14    # "num":I
    .restart local v15    # "i":I
    :goto_c5
    if-ge v15, v11, :cond_101

    .line 157
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 158
    .restart local v16    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object/from16 v3, v16

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 160
    add-int/lit8 v17, v14, 0x1

    .end local v14    # "num":I
    .restart local v17    # "num":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object v5, v13

    move/from16 v6, p10

    move-object/from16 v7, p12

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v12, v14

    move/from16 v14, v17

    .line 156
    .end local v16    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v17    # "num":I
    .restart local v14    # "num":I
    :cond_fe
    add-int/lit8 v15, v15, 0x1

    goto :goto_c5

    .line 164
    .end local v15    # "i":I
    :cond_101
    invoke-static {v12, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 167
    .end local v11    # "size":I
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v14    # "num":I
    :cond_109
    const-wide/16 v0, 0x4

    and-long v0, p2, v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_165

    .line 168
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 169
    .restart local v11    # "size":I
    if-lez v11, :cond_165

    .line 170
    const/4 v0, 0x0

    .line 171
    .restart local v0    # "num":I
    new-array v12, v11, [Landroid/content/pm/ServiceInfo;

    .line 172
    .local v12, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    move v14, v0

    move v15, v1

    .end local v0    # "num":I
    .restart local v14    # "num":I
    .restart local v15    # "i":I
    :goto_121
    if-ge v15, v11, :cond_15d

    .line 173
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 174
    .local v16, "s":Lcom/android/server/pm/pkg/component/ParsedService;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object/from16 v3, v16

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 176
    add-int/lit8 v17, v14, 0x1

    .end local v14    # "num":I
    .restart local v17    # "num":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object v5, v13

    move/from16 v6, p10

    move-object/from16 v7, p12

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    aput-object v0, v12, v14

    move/from16 v14, v17

    .line 172
    .end local v16    # "s":Lcom/android/server/pm/pkg/component/ParsedService;
    .end local v17    # "num":I
    .restart local v14    # "num":I
    :cond_15a
    add-int/lit8 v15, v15, 0x1

    goto :goto_121

    .line 180
    .end local v15    # "i":I
    :cond_15d
    invoke-static {v12, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ServiceInfo;

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 183
    .end local v11    # "size":I
    .end local v12    # "res":[Landroid/content/pm/ServiceInfo;
    .end local v14    # "num":I
    :cond_165
    const-wide/16 v0, 0x8

    and-long v0, p2, v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_1c1

    .line 184
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 185
    .restart local v11    # "size":I
    if-lez v11, :cond_1c1

    .line 186
    const/4 v0, 0x0

    .line 187
    .restart local v0    # "num":I
    new-array v12, v11, [Landroid/content/pm/ProviderInfo;

    .line 188
    .local v12, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v1, 0x0

    move v14, v0

    move v15, v1

    .end local v0    # "num":I
    .restart local v14    # "num":I
    .restart local v15    # "i":I
    :goto_17d
    if-ge v15, v11, :cond_1b9

    .line 189
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 191
    .local v16, "pr":Lcom/android/server/pm/pkg/component/ParsedProvider;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object/from16 v3, v16

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 193
    add-int/lit8 v17, v14, 0x1

    .end local v14    # "num":I
    .restart local v17    # "num":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object v5, v13

    move/from16 v6, p10

    move-object/from16 v7, p12

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    aput-object v0, v12, v14

    move/from16 v14, v17

    .line 188
    .end local v16    # "pr":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v17    # "num":I
    .restart local v14    # "num":I
    :cond_1b6
    add-int/lit8 v15, v15, 0x1

    goto :goto_17d

    .line 197
    .end local v15    # "i":I
    :cond_1b9
    invoke-static {v12, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 200
    .end local v11    # "size":I
    .end local v12    # "res":[Landroid/content/pm/ProviderInfo;
    .end local v14    # "num":I
    :cond_1c1
    const-wide/16 v0, 0x10

    and-long v0, p2, v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_1f8

    .line 201
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 202
    .local v6, "N":I
    if-lez v6, :cond_1f8

    .line 203
    new-array v0, v6, [Landroid/content/pm/InstrumentationInfo;

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 204
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_1d9
    if-ge v7, v6, :cond_1f8

    .line 205
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 206
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 205
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v4, p10

    move-object/from16 v5, p12

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;JILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    aput-object v0, v9, v7

    .line 204
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d9

    .line 211
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_1f8
    return-object v8
.end method

.method private static initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 11
    .param p0, "output"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "input"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 548
    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 549
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/PackageImpl;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 552
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 553
    sget-object v2, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 554
    return-void

    .line 558
    :cond_22
    if-nez p2, :cond_53

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_9d

    .line 565
    :cond_53
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "userIdString":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 567
    .local v3, "credentialLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v3, -0x1

    .line 569
    invoke-virtual {v4, v5, v6, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 570
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 571
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 572
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 573
    .local v4, "deviceLength":I
    new-instance v5, Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v4, -0x2

    add-int/lit8 v7, v4, -0x1

    .line 575
    invoke-virtual {v5, v6, v7, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 576
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 577
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 580
    .end local v2    # "userIdString":Ljava/lang/String;
    .end local v3    # "credentialLength":I
    .end local v4    # "deviceLength":I
    :goto_9d
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 582
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_ac

    .line 584
    :cond_a8
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 586
    :goto_ac
    return-void
.end method

.method private static initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 11
    .param p0, "output"    # Landroid/content/pm/InstrumentationInfo;
    .param p1, "input"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 592
    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 593
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/PackageImpl;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 595
    sget-object v2, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 596
    return-void

    .line 600
    :cond_14
    if-nez p2, :cond_45

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_8f

    .line 607
    :cond_45
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "userIdString":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 609
    .local v3, "credentialLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v3, -0x1

    .line 611
    invoke-virtual {v4, v5, v6, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 612
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 613
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 614
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 615
    .local v4, "deviceLength":I
    new-instance v5, Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v4, -0x2

    add-int/lit8 v7, v4, -0x1

    .line 617
    invoke-virtual {v5, v6, v7, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 618
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 619
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 622
    .end local v2    # "userIdString":Ljava/lang/String;
    .end local v3    # "credentialLength":I
    .end local v4    # "deviceLength":I
    :goto_8f
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 624
    iget-object v2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto :goto_9e

    .line 626
    :cond_9a
    iget-object v2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 628
    :goto_9e
    return-void
.end method
