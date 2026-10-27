.class final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    }
.end annotation


# static fields
.field private static final FLAG_OVERLAY_IS_BEING_REPLACED:I = 0x2

.field private static final FLAG_TARGET_IS_BEING_REPLACED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mDefaultOverlays:[Ljava/lang/String;

.field private final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field private final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field private final mPackageManager:Lcom/android/server/om/PackageManagerHelper;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V
    .registers 6
    .param p1, "packageManager"    # Lcom/android/server/om/PackageManagerHelper;
    .param p2, "idmapManager"    # Lcom/android/server/om/IdmapManager;
    .param p3, "settings"    # Lcom/android/server/om/OverlayManagerSettings;
    .param p4, "overlayConfig"    # Lcom/android/internal/content/om/OverlayConfig;
    .param p5, "defaultOverlays"    # [Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 141
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 142
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 143
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 144
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 145
    return-void
.end method

.method private calculateNewState(Landroid/content/om/OverlayInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)I
    .registers 7
    .param p1, "info"    # Landroid/content/om/OverlayInfo;
    .param p2, "targetPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 813
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6

    .line 814
    const/4 v0, 0x4

    return v0

    .line 817
    :cond_6
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_c

    .line 818
    const/4 v0, 0x5

    return v0

    .line 821
    :cond_c
    if-nez p2, :cond_10

    .line 822
    const/4 v0, 0x0

    return v0

    .line 825
    :cond_10
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 826
    const/4 v0, 0x1

    return v0

    .line 829
    :cond_1a
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v0

    .line 830
    .local v0, "enabled":Z
    if-eqz v0, :cond_28

    const/4 v1, 0x3

    goto :goto_29

    :cond_28
    const/4 v1, 0x2

    :goto_29
    return v1
.end method

.method private cleanStaleResourceCache()V
    .registers 6

    .line 579
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    .line 580
    .local v0, "fabricatedPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v1}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FabricatedOverlayInfo;

    .line 581
    .local v2, "info":Landroid/os/FabricatedOverlayInfo;
    iget-object v3, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 582
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v4, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/om/IdmapManager;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    .line 584
    .end local v2    # "info":Landroid/os/FabricatedOverlayInfo;
    :cond_2b
    goto :goto_10

    .line 585
    :cond_2c
    return-void
.end method

.method private getFabricatedOverlayInfos()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/FabricatedOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    .line 595
    .local v0, "fabricatedPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 596
    invoke-virtual {v2}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 597
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/FabricatedOverlayInfo;>;"
    new-instance v2, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 598
    return-object v1
.end method

.method private getPackageConfiguredPriority(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I
    .registers 4
    .param p1, "overlay"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 608
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/content/om/OverlayConfig;->getPriority(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isPackageConfiguredEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4
    .param p1, "overlay"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 613
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/content/om/OverlayConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4
    .param p1, "overlay"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 603
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getFabricatedOverlayInfos$3(Ljava/util/Set;Landroid/os/FabricatedOverlayInfo;)Z
    .registers 3
    .param p0, "fabricatedPaths"    # Ljava/util/Set;
    .param p1, "info"    # Landroid/os/FabricatedOverlayInfo;

    .line 597
    iget-object v0, p1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$onPackageRemoved$1(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .registers 3
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 285
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeOverlaysForUser$2(ILjava/util/function/Predicate;Landroid/content/om/OverlayInfo;)Z
    .registers 4
    .param p0, "userId"    # I
    .param p1, "condition"    # Ljava/util/function/Predicate;
    .param p2, "io"    # Landroid/content/om/OverlayInfo;

    .line 292
    iget v0, p2, Landroid/content/om/OverlayInfo;->userId:I

    if-ne p0, v0, :cond_c

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$updateOverlaysForUser$0(Landroid/util/ArrayMap;Landroid/content/om/OverlayInfo;)Z
    .registers 3
    .param p0, "userPackages"    # Landroid/util/ArrayMap;
    .param p1, "info"    # Landroid/content/om/OverlayInfo;

    .line 164
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private mustReinitializeOverlay(Landroid/os/FabricatedOverlayInfo;Landroid/content/om/OverlayInfo;)Z
    .registers 6
    .param p1, "theTruth"    # Landroid/os/FabricatedOverlayInfo;
    .param p2, "oldSettings"    # Landroid/content/om/OverlayInfo;

    .line 123
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 124
    return v0

    .line 126
    :cond_4
    iget-object v1, p1, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 127
    return v0

    .line 129
    :cond_f
    iget-object v1, p1, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 130
    return v0

    .line 132
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private mustReinitializeOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z
    .registers 7
    .param p1, "theTruth"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldSettings"    # Landroid/content/om/OverlayInfo;

    .line 97
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 98
    return v0

    .line 100
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 101
    return v0

    .line 103
    :cond_11
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 105
    return v0

    .line 107
    :cond_1e
    iget-boolean v1, p2, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v1, :cond_23

    .line 108
    return v0

    .line 110
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    .line 111
    .local v1, "isMutable":Z
    iget-boolean v2, p2, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eq v1, v2, :cond_2c

    .line 112
    return v0

    .line 115
    :cond_2c
    if-nez v1, :cond_39

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_39

    .line 116
    return v0

    .line 118
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method private reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 379
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 380
    .local v0, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    nop

    .line 381
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    .line 380
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 385
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_1a

    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 390
    :cond_1a
    nop

    .line 391
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/Set;

    move-result-object v2

    .line 390
    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 392
    return-object v0
.end method

.method private registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;
    .registers 22
    .param p1, "info"    # Landroid/os/FabricatedOverlayInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/FabricatedOverlayInfo;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 517
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v14, p2

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    iget-object v3, v2, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v0

    .line 519
    .local v15, "overlayIdentifier":Landroid/content/om/OverlayIdentifier;
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v0

    .line 520
    .local v13, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v15, v14}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v12

    .line 521
    .local v12, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v12, :cond_51

    .line 522
    iget-boolean v0, v12, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v0, :cond_23

    goto :goto_51

    .line 523
    :cond_23
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "non-fabricated overlay with name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' already present in \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_51
    :goto_51
    :try_start_51
    invoke-direct {v1, v2, v12}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/os/FabricatedOverlayInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v0
    :try_end_55
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_51 .. :try_end_55} :catch_c4

    if-eqz v0, :cond_93

    .line 529
    if-eqz v12, :cond_68

    .line 532
    :try_start_59
    new-instance v0, Lcom/android/server/om/PackageAndUser;

    iget-object v3, v12, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v0, v3, v14}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_59 .. :try_end_63} :catch_64

    goto :goto_68

    .line 545
    :catch_64
    move-exception v0

    move-object v3, v13

    goto/16 :goto_c8

    .line 534
    :cond_68
    :goto_68
    :try_start_68
    iget-object v3, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v2, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object v8, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;
    :try_end_70
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_68 .. :try_end_70} :catch_8e

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x7fffffff

    const/4 v0, 0x0

    const/16 v16, 0x1

    move-object v4, v15

    move/from16 v5, p2

    move-object/from16 v17, v12

    .end local v12    # "oi":Landroid/content/om/OverlayInfo;
    .local v17, "oi":Landroid/content/om/OverlayInfo;
    move-object v12, v0

    move-object/from16 v18, v13

    .end local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .local v18, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    move/from16 v13, v16

    :try_start_82
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_86
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_82 .. :try_end_86} :catch_88

    move-object v12, v0

    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v12    # "oi":Landroid/content/om/OverlayInfo;
    goto :goto_a0

    .line 545
    .end local v12    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v17    # "oi":Landroid/content/om/OverlayInfo;
    :catch_88
    move-exception v0

    move-object/from16 v12, v17

    move-object/from16 v3, v18

    goto :goto_c8

    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v12    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :catch_8e
    move-exception v0

    move-object/from16 v17, v12

    move-object v3, v13

    .end local v12    # "oi":Landroid/content/om/OverlayInfo;
    .end local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    goto :goto_c8

    .line 540
    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v12    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :cond_93
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .end local v12    # "oi":Landroid/content/om/OverlayInfo;
    .end local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :try_start_97
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v15, v14, v3}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z
    :try_end_9e
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_97 .. :try_end_9e} :catch_be

    move-object/from16 v12, v17

    .line 542
    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v12    # "oi":Landroid/content/om/OverlayInfo;
    :goto_a0
    const/4 v0, 0x0

    :try_start_a1
    invoke-direct {v1, v12, v14, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 543
    new-instance v0, Lcom/android/server/om/PackageAndUser;

    iget-object v3, v12, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v0, v3, v14}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V
    :try_end_ae
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_a1 .. :try_end_ae} :catch_ba

    move-object/from16 v3, v18

    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .local v3, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :try_start_b0
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_b8

    .line 545
    :catch_b4
    move-exception v0

    goto :goto_c8

    .line 542
    .end local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :cond_b6
    move-object/from16 v3, v18

    .line 547
    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :goto_b8
    nop

    .line 549
    return-object v3

    .line 545
    .end local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :catch_ba
    move-exception v0

    move-object/from16 v3, v18

    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    goto :goto_c8

    .end local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .end local v12    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :catch_be
    move-exception v0

    move-object/from16 v3, v18

    move-object/from16 v12, v17

    .end local v18    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    goto :goto_c8

    .end local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v12    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :catch_c4
    move-exception v0

    move-object/from16 v17, v12

    move-object v3, v13

    .line 546
    .end local v13    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v3    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :goto_c8
    new-instance v4, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v5, "failed to update settings"

    invoke-direct {v4, v5, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .registers 8
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 852
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 853
    return-void

    .line 855
    :cond_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    .line 856
    .local v0, "userIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2d

    aget v3, v0, v2

    .line 858
    .local v3, "userId":I
    :try_start_15
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 859
    .local v4, "tmp":Landroid/content/om/OverlayInfo;
    if-eqz v4, :cond_28

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5
    :try_end_25
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_15 .. :try_end_25} :catch_29

    if-eqz v5, :cond_28

    .line 861
    return-void

    .line 865
    .end local v4    # "tmp":Landroid/content/om/OverlayInfo;
    :cond_28
    goto :goto_2a

    .line 863
    :catch_29
    move-exception v4

    .line 856
    .end local v3    # "userId":I
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 867
    :cond_2d
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 868
    return-void
.end method

.method private removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;
    .registers 10
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/content/om/OverlayInfo;",
            ">;I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 291
    .local p1, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/om/OverlayInfo;>;"
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(ILjava/util/function/Predicate;)V

    invoke-virtual {v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 293
    .local v0, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 294
    .local v1, "targets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_14
    if-ge v2, v3, :cond_2d

    .line 295
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 296
    .local v4, "info":Landroid/content/om/OverlayInfo;
    new-instance v5, Lcom/android/server/om/PackageAndUser;

    iget-object v6, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v5, v6, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v5}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 300
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 294
    .end local v4    # "info":Landroid/content/om/OverlayInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 302
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2d
    return-object v1
.end method

.method private unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;
    .registers 6
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 565
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v0, :cond_1f

    .line 566
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 567
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 570
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 573
    :cond_1f
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private updateOverlaysForTarget(Ljava/lang/String;II)Ljava/util/Set;
    .registers 12
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 310
    .local v1, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_c
    if-ge v2, v3, :cond_30

    .line 311
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 313
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    :try_start_14
    invoke-direct {p0, v4, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v5
    :try_end_18
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_14 .. :try_end_18} :catch_1a

    or-int/2addr v0, v5

    .line 317
    goto :goto_2d

    .line 314
    :catch_1a
    move-exception v5

    .line 315
    .local v5, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v6, "OverlayManager"

    const-string v7, "failed to update settings"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v6

    or-int/2addr v0, v6

    .line 310
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    .end local v5    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 319
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_30
    if-nez v0, :cond_37

    .line 320
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 322
    :cond_37
    new-instance v2, Lcom/android/server/om/PackageAndUser;

    invoke-direct {v2, p1, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/Set;
    .registers 22
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "II)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 328
    move-object/from16 v1, p0

    move/from16 v13, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 330
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 333
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 334
    .local v2, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 335
    .local v14, "overlay":Landroid/content/om/OverlayIdentifier;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I

    move-result v15

    .line 337
    .local v15, "priority":I
    :try_start_21
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v14, v13}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 338
    .local v0, "currentInfo":Landroid/content/om/OverlayInfo;
    move-object/from16 v12, p1

    invoke-direct {v1, v12, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 339
    if-eqz v0, :cond_40

    .line 342
    new-instance v3, Lcom/android/server/om/PackageAndUser;

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, v13}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3
    :try_end_3c
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_21 .. :try_end_3c} :catch_a2

    move-object v2, v3

    move-object/from16 v16, v2

    goto :goto_42

    .line 339
    :cond_40
    move-object/from16 v16, v2

    .line 346
    .end local v2    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .local v16, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :goto_42
    :try_start_42
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v5

    .line 347
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v7

    .line 348
    invoke-direct/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    .line 349
    invoke-direct/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9

    .line 350
    invoke-direct/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I

    move-result v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x0

    .line 346
    move-object v3, v14

    move/from16 v4, p2

    move/from16 v12, v17

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;

    move-result-object v2
    :try_end_6b
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_42 .. :try_end_6b} :catch_6f

    move-object v0, v2

    move-object/from16 v2, v16

    goto :goto_8a

    .line 365
    .end local v0    # "currentInfo":Landroid/content/om/OverlayInfo;
    :catch_6f
    move-exception v0

    move/from16 v3, p3

    move-object/from16 v2, v16

    goto :goto_a5

    .line 352
    .end local v16    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v0    # "currentInfo":Landroid/content/om/OverlayInfo;
    .restart local v2    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :cond_75
    :try_start_75
    iget v3, v0, Landroid/content/om/OverlayInfo;->priority:I

    if-eq v15, v3, :cond_8a

    .line 355
    iget-object v3, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v14, v13, v15}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;II)V

    .line 356
    new-instance v3, Lcom/android/server/om/PackageAndUser;

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, v13}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3
    :try_end_89
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_75 .. :try_end_89} :catch_a2

    move-object v2, v3

    .line 361
    :cond_8a
    :goto_8a
    move/from16 v3, p3

    :try_start_8c
    invoke-direct {v1, v0, v13, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 362
    new-instance v4, Lcom/android/server/om/PackageAndUser;

    iget-object v5, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v4, v5, v13}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v4}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4
    :try_end_9d
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_8c .. :try_end_9d} :catch_a0

    move-object v2, v4

    .line 367
    .end local v0    # "currentInfo":Landroid/content/om/OverlayInfo;
    :cond_9e
    nop

    .line 368
    return-object v2

    .line 365
    :catch_a0
    move-exception v0

    goto :goto_a5

    :catch_a2
    move-exception v0

    move/from16 v3, p3

    .line 366
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_a5
    new-instance v4, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v5, "failed to update settings"

    invoke-direct {v4, v5, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private updateState(Landroid/content/om/CriticalOverlayInfo;II)Z
    .registers 15
    .param p1, "info"    # Landroid/content/om/CriticalOverlayInfo;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 768
    invoke-interface {p1}, Landroid/content/om/CriticalOverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    .line 769
    .local v0, "overlay":Landroid/content/om/OverlayIdentifier;
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 770
    invoke-interface {p1}, Landroid/content/om/CriticalOverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-interface {v1, v2, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 771
    .local v1, "targetPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 772
    invoke-interface {p1}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 771
    invoke-interface {v2, v3, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 774
    .local v2, "overlayPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v3, 0x0

    .line 775
    .local v3, "modified":Z
    if-nez v2, :cond_2b

    .line 776
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 777
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v4

    return v4

    .line 780
    :cond_2b
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, p2, v5}, Lcom/android/server/om/OverlayManagerSettings;->setCategory(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 781
    invoke-interface {p1}, Landroid/content/om/CriticalOverlayInfo;->isFabricated()Z

    move-result v4

    if-nez v4, :cond_49

    .line 782
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, p2, v5}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    move v9, v3

    goto :goto_4a

    .line 781
    :cond_49
    move v9, v3

    .line 787
    .end local v3    # "modified":Z
    .local v9, "modified":Z
    :goto_4a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v10

    .line 788
    .local v10, "updatedOverlayInfo":Landroid/content/om/OverlayInfo;
    if-eqz v1, :cond_74

    invoke-interface {p1}, Landroid/content/om/CriticalOverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 789
    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 790
    :cond_64
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v6, v10, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 791
    invoke-virtual {v0}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v7

    .line 790
    move-object v4, v1

    move-object v5, v2

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/om/IdmapManager;->createIdmap(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v9, v3

    .line 794
    :cond_74
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/om/OverlayManagerSettings;->getState(Landroid/content/om/OverlayIdentifier;I)I

    move-result v3

    .line 795
    .local v3, "currentState":I
    invoke-direct {p0, v10, v1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/om/OverlayInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)I

    move-result v4

    .line 797
    .local v4, "newState":I
    if-eq v3, v4, :cond_87

    .line 804
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, v0, p2, v4}, Lcom/android/server/om/OverlayManagerSettings;->setState(Landroid/content/om/OverlayIdentifier;II)Z

    move-result v5

    or-int/2addr v9, v5

    .line 807
    :cond_87
    return v9
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/om/DumpState;

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "overlayIdmap":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/om/OverlayIdentifier;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 690
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 691
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getOverlayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .local v1, "id":Landroid/content/om/OverlayIdentifier;
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v3

    .line 693
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v3, :cond_25

    .line 694
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    .line 699
    .end local v1    # "id":Landroid/content/om/OverlayIdentifier;
    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    :cond_25
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 702
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getField()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_92

    .line 703
    if-eqz v0, :cond_37

    .line 704
    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    goto :goto_3d

    :cond_37
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object v1

    .line 705
    .local v1, "allIdmaps":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Landroid/content/om/OverlayIdentifier;Ljava/lang/String;>;>;"
    :goto_3d
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 706
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/om/OverlayIdentifier;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IDMAP OF "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/om/IdmapManager;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 708
    .local v5, "dump":Ljava/lang/String;
    if-eqz v5, :cond_75

    .line 709
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_91

    .line 711
    :cond_75
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 712
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v6, :cond_8c

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v7, v6}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v7

    if-nez v7, :cond_8c

    .line 713
    const-string v7, "<missing idmap>"

    goto :goto_8e

    :cond_8c
    const-string v7, "<internal error>"

    .line 712
    :goto_8e
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/om/OverlayIdentifier;Ljava/lang/String;>;"
    .end local v5    # "dump":Ljava/lang/String;
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    :goto_91
    goto :goto_41

    .line 719
    .end local v1    # "allIdmaps":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Landroid/content/om/OverlayIdentifier;Ljava/lang/String;>;>;"
    :cond_92
    if-nez v0, :cond_b2

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default overlays: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    const-string v3, ";"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    :cond_b2
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_bd

    .line 725
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {v1, p1}, Lcom/android/internal/content/om/OverlayConfig;->dump(Ljava/io/PrintWriter;)V

    .line 727
    :cond_bd
    return-void
.end method

.method getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 2

    .line 730
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    return-object v0
.end method

.method getEnabledOverlayPaths(Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;
    .registers 9
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 745
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 747
    .local v0, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    new-instance v1, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 748
    .local v1, "paths":Landroid/content/pm/overlay/OverlayPaths$Builder;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 749
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_33

    .line 750
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 751
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 752
    goto :goto_30

    .line 754
    :cond_1f
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isFabricated()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 755
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_30

    .line 757
    :cond_2b
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 749
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 760
    .end local v3    # "i":I
    :cond_33
    invoke-virtual {v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v3

    return-object v3
.end method

.method getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .registers 5
    .param p1, "packageName"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 398
    :catch_7
    move-exception v0

    .line 399
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method onPackageAdded(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 250
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 252
    .local v0, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 254
    return-object v0
.end method

.method onPackageChanged(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    .line 284
    .local v0, "targets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method onPackageReplaced(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method onPackageReplacing(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method onUserRemoved(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 244
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    .line 245
    return-void
.end method

.method registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;
    .registers 9
    .param p1, "overlay"    # Landroid/os/FabricatedOverlayInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/FabricatedOverlayInternal;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 495
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    .line 501
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v0

    .line 502
    .local v0, "info":Landroid/os/FabricatedOverlayInfo;
    if-eqz v0, :cond_2d

    .line 506
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 507
    .local v2, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v3

    array-length v4, v3

    :goto_1e
    if-ge v1, v4, :cond_2c

    aget v5, v3, v1

    .line 508
    .local v5, "userId":I
    invoke-direct {p0, v0, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 507
    .end local v5    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 510
    :cond_2c
    return-object v2

    .line 503
    .end local v2    # "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :cond_2d
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to create fabricated overlay"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    .end local v0    # "info":Landroid/os/FabricatedOverlayInfo;
    :cond_35
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo v1, "overlay name can only consist of alphanumeric characters, \'_\', and \'.\'"

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    .registers 6
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 737
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_9
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_9} :catch_b

    .line 740
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    nop

    .line 741
    return-void

    .line 738
    :catch_b
    move-exception v0

    .line 739
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;
    .registers 8
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "ZI)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 422
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_29

    .line 428
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result v1

    .line 429
    .local v1, "modified":Z
    const/4 v2, 0x0

    invoke-direct {p0, v0, p3, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 431
    if-eqz v1, :cond_24

    .line 432
    new-instance v2, Lcom/android/server/om/PackageAndUser;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, p3}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 434
    :cond_24
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 424
    .end local v1    # "modified":Z
    :cond_29
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "cannot enable immutable overlay packages in runtime"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "enable":Z
    .end local p3    # "userId":I
    throw v1
    :try_end_31
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_31} :catch_31

    .line 435
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "enable":Z
    .restart local p3    # "userId":I
    :catch_31
    move-exception v0

    .line 436
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;
    .registers 13
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "withinCategory"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "ZI)",
            "Ljava/util/Optional<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 449
    .local v0, "enabledInfo":Landroid/content/om/OverlayInfo;
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_67

    .line 455
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 457
    .local v1, "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 459
    const/4 v2, 0x0

    .line 460
    .local v2, "modified":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_47

    .line 461
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 462
    .local v4, "disabledInfo":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v6

    .line 463
    .local v6, "disabledOverlay":Landroid/content/om/OverlayIdentifier;
    iget-boolean v7, v4, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez v7, :cond_2b

    .line 465
    goto :goto_44

    .line 467
    :cond_2b
    if-eqz p2, :cond_38

    iget-object v7, v4, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 470
    goto :goto_44

    .line 474
    :cond_38
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v7, v6, p3, v5}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result v7

    or-int/2addr v2, v7

    .line 475
    invoke-direct {p0, v4, p3, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v5

    or-int/2addr v2, v5

    .line 460
    .end local v4    # "disabledInfo":Landroid/content/om/OverlayInfo;
    .end local v6    # "disabledOverlay":Landroid/content/om/OverlayIdentifier;
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 479
    .end local v3    # "i":I
    :cond_47
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result v3

    or-int/2addr v2, v3

    .line 480
    invoke-direct {p0, v0, p3, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v3

    or-int/2addr v2, v3

    .line 482
    if-eqz v2, :cond_62

    .line 483
    new-instance v3, Lcom/android/server/om/PackageAndUser;

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, p3}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    return-object v3

    .line 485
    :cond_62
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    return-object v3

    .line 450
    .end local v1    # "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v2    # "modified":Z
    :cond_67
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "cannot enable immutable overlay packages in runtime"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "withinCategory":Z
    .end local p3    # "userId":I
    throw v1
    :try_end_6f
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_6f} :catch_6f

    .line 486
    .end local v0    # "enabledInfo":Landroid/content/om/OverlayInfo;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "withinCategory":Z
    .restart local p3    # "userId":I
    :catch_6f
    move-exception v0

    .line 487
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;
    .registers 6
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 649
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_23

    .line 655
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 656
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 658
    :cond_1e
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 651
    :cond_23
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "userId":I
    throw v1
    :try_end_2b
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_2b} :catch_2b

    .line 659
    .end local v0    # "overlayInfo":Landroid/content/om/OverlayInfo;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "userId":I
    :catch_2b
    move-exception v0

    .line 660
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .registers 6
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Optional<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 672
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_23

    .line 678
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 679
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 681
    :cond_1e
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 674
    :cond_23
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "userId":I
    throw v1
    :try_end_2b
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_2b} :catch_2b

    .line 682
    .end local v0    # "overlayInfo":Landroid/content/om/OverlayInfo;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "userId":I
    :catch_2b
    move-exception v0

    .line 683
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .registers 7
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "newParentOverlay"    # Landroid/content/om/OverlayIdentifier;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Optional<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 626
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_23

    .line 632
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 633
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, p3}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 635
    :cond_1e
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 628
    :cond_23
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "newParentOverlay":Landroid/content/om/OverlayIdentifier;
    .end local p3    # "userId":I
    throw v1
    :try_end_2b
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_2b} :catch_2b

    .line 636
    .end local v0    # "overlayInfo":Landroid/content/om/OverlayInfo;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerServiceImpl;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "newParentOverlay":Landroid/content/om/OverlayIdentifier;
    .restart local p3    # "userId":I
    :catch_2b
    move-exception v0

    .line 637
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;
    .registers 8
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 554
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 555
    .local v0, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1b

    aget v4, v1, v3

    .line 556
    .local v4, "userId":I
    invoke-direct {p0, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 555
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 558
    :cond_1b
    return-object v0
.end method

.method updateOverlaysForUser(I)Landroid/util/ArraySet;
    .registers 20
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 160
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v0

    .line 161
    .local v3, "updatedTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/om/PackageAndUser;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v2}, Lcom/android/server/om/PackageManagerHelper;->initializeForUser(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 163
    .local v4, "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Landroid/util/ArrayMap;)V

    invoke-direct {v1, v0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v0

    .end local v0    # "i":I
    .local v5, "n":I
    .local v6, "i":I
    :goto_22
    const-string v7, ""

    const-string v8, "\' for user "

    const-string v9, "OverlayManager"

    const/4 v10, 0x0

    if-ge v6, v5, :cond_71

    .line 169
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 171
    .local v11, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 172
    :try_start_33
    invoke-direct {v1, v11, v2, v10}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/Set;

    move-result-object v0

    .line 171
    invoke-static {v3, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 176
    new-instance v0, Lcom/android/server/om/PackageAndUser;

    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10, v2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_33 .. :try_end_46} :catch_47

    .line 180
    goto :goto_6e

    .line 177
    :catch_47
    move-exception v0

    .line 178
    .local v0, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to initialize overlays of \'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    .end local v11    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_6e
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 185
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_71
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/FabricatedOverlayInfo;

    .line 187
    .local v6, "info":Landroid/os/FabricatedOverlayInfo;
    :try_start_86
    invoke-direct {v1, v6, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;
    :try_end_8d
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_86 .. :try_end_8d} :catch_8e

    .line 192
    goto :goto_b3

    .line 189
    :catch_8e
    move-exception v0

    .line 190
    .restart local v0    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to initialize fabricated overlay of \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    .end local v6    # "info":Landroid/os/FabricatedOverlayInfo;
    :goto_b3
    goto :goto_79

    .line 196
    :cond_b4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v5, v0

    .line 197
    .local v5, "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 198
    invoke-virtual {v0, v2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 199
    .local v6, "userOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 200
    .local v7, "userOverlayTargetCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c5
    if-ge v0, v7, :cond_ef

    .line 201
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 202
    .local v11, "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    if-eqz v11, :cond_d4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_d5

    :cond_d4
    move v12, v10

    .line 203
    .local v12, "overlayCount":I
    :goto_d5
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_d6
    if-ge v13, v12, :cond_ec

    .line 204
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/om/OverlayInfo;

    .line 205
    .local v14, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v14}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_e9

    .line 206
    iget-object v15, v14, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v5, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v14    # "oi":Landroid/content/om/OverlayInfo;
    :cond_e9
    add-int/lit8 v13, v13, 0x1

    goto :goto_d6

    .line 200
    .end local v11    # "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v12    # "overlayCount":I
    .end local v13    # "j":I
    :cond_ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    .line 212
    .end local v0    # "i":I
    :cond_ef
    iget-object v11, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v12, v11

    move v13, v10

    :goto_f3
    if-ge v13, v12, :cond_190

    aget-object v14, v11, v13

    .line 217
    .local v14, "defaultOverlay":Ljava/lang/String;
    :try_start_f7
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, v14}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "overlay":Landroid/content/om/OverlayIdentifier;
    iget-object v15, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v15, v0, v2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v15

    .line 220
    .local v15, "oi":Landroid/content/om/OverlayInfo;
    iget-object v10, v15, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_163

    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10f
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_f7 .. :try_end_10f} :catch_168

    move-object/from16 v16, v4

    .end local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v16, "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :try_start_111
    const-string v4, "Enabling default overlay \'"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "\' for target \'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v15, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "\' in category \'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v15, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v10, 0x1

    invoke-virtual {v4, v0, v2, v10}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    .line 225
    const/4 v4, 0x0

    invoke-direct {v1, v15, v2, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v10

    if-eqz v10, :cond_15e

    .line 226
    new-instance v10, Lcom/android/server/om/PackageAndUser;

    iget-object v4, v15, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .local v17, "overlay":Landroid/content/om/OverlayIdentifier;
    iget v0, v15, Landroid/content/om/OverlayInfo;->userId:I

    invoke-direct {v10, v4, v0}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v3, v10}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    :try_end_15d
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_111 .. :try_end_15d} :catch_161

    goto :goto_167

    .line 225
    .end local v17    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    :cond_15e
    move-object/from16 v17, v0

    .end local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v17    # "overlay":Landroid/content/om/OverlayIdentifier;
    goto :goto_167

    .line 230
    .end local v15    # "oi":Landroid/content/om/OverlayInfo;
    .end local v17    # "overlay":Landroid/content/om/OverlayIdentifier;
    :catch_161
    move-exception v0

    goto :goto_16b

    .line 220
    .end local v16    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v15    # "oi":Landroid/content/om/OverlayInfo;
    :cond_163
    move-object/from16 v17, v0

    move-object/from16 v16, v4

    .line 233
    .end local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v15    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v16    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_167
    goto :goto_189

    .line 230
    .end local v16    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catch_168
    move-exception v0

    move-object/from16 v16, v4

    .line 231
    .end local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v16    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_16b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set default overlay \'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .end local v14    # "defaultOverlay":Ljava/lang/String;
    :goto_189
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v16

    const/4 v10, 0x0

    goto/16 :goto_f3

    .line 236
    .end local v16    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v4    # "userPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_190
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->cleanStaleResourceCache()V

    .line 237
    return-object v3
.end method
