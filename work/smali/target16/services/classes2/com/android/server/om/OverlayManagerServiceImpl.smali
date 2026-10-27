.class public final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# instance fields
.field public final mDefaultOverlays:[Ljava/lang/String;

.field public final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field public final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field public final mPackageManager:Lcom/android/server/om/PackageManagerHelper;

.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method public static synthetic $r8$lambda$4_u0zZtyj6jePmGinO-0D6huxCc(Landroid/util/ArrayMap;Landroid/content/om/OverlayInfo;)Z
    .registers 2

    .line 173
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$5x0NbsvHcQBnmJ0O8BX2HdCnICA(ZLandroid/content/pm/overlay/OverlayPaths$Builder;Landroid/content/om/OverlayInfo;)V
    .registers 4

    .line 846
    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_d

    :cond_7
    if-nez p0, :cond_e

    .line 849
    iget-boolean p0, p2, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez p0, :cond_e

    :goto_d
    return-void

    .line 852
    :cond_e
    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isFabricated()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 853
    iget-object p0, p2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    return-void

    .line 855
    :cond_1a
    iget-object p0, p2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    return-void
.end method

.method public static synthetic $r8$lambda$68WS0T3LBeUCaE7FhsFkUclY3gc(Ljava/util/Set;Landroid/os/FabricatedOverlayInfo;)Z
    .registers 2

    .line 705
    iget-object p1, p1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Tz06Z6gMGNWEvNzQgIVBx0FKDBw(ILjava/util/function/Predicate;Landroid/content/om/OverlayInfo;)Z
    .registers 4

    .line 341
    iget v0, p2, Landroid/content/om/OverlayInfo;->userId:I

    if-ne p0, v0, :cond_c

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$m7qx04ZFdlPTSNWQUmUUqYHeXjE(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .registers 2

    .line 334
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V
    .registers 6

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 150
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 151
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 152
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 153
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final calculateNewState(Landroid/content/om/OverlayInfo;Lcom/android/server/pm/pkg/AndroidPackage;III)I
    .registers 8

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x4

    if-eqz v0, :cond_6

    return v1

    :cond_6
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_c

    const/4 p0, 0x5

    return p0

    :cond_c
    and-int/2addr p4, v1

    if-eqz p4, :cond_11

    const/4 p0, 0x7

    return p0

    :cond_11
    if-nez p2, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p2, 0x1

    and-int/lit8 p4, p5, 0x1

    if-nez p4, :cond_23

    .line 1067
    iget-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {p4, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result p4

    if-nez p4, :cond_23

    return p2

    .line 1072
    :cond_23
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, 0x3

    return p0

    :cond_31
    const/4 p0, 0x2

    return p0
.end method

.method public final calculateStateDiffs(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayInfo;Lcom/android/server/pm/pkg/AndroidPackage;III)Z
    .registers 14

    .line 1020
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/om/OverlayManagerSettings;->getState(Landroid/content/om/OverlayIdentifier;I)I

    move-result v0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1021
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/om/OverlayInfo;Lcom/android/server/pm/pkg/AndroidPackage;III)I

    move-result p0

    if-eq v0, p0, :cond_19

    .line 1032
    iget-object p2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p2, p1, v4, p0}, Lcom/android/server/om/OverlayManagerSettings;->setState(Landroid/content/om/OverlayIdentifier;II)Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final cleanStaleResourceCache()V
    .registers 5

    .line 687
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v1}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FabricatedOverlayInfo;

    .line 689
    iget-object v3, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 690
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v2, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/server/om/IdmapManager;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    goto :goto_10

    :cond_2c
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 8

    .line 797
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 800
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p2}, Lcom/android/server/om/OverlayManagerSettings;->getIdentifierAndBaseCodePath(Lcom/android/server/om/DumpState;)Landroid/util/Pair;

    move-result-object v0

    .line 801
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getField()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_72

    if-eqz v0, :cond_18

    .line 803
    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    goto :goto_1e

    :cond_18
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object v1

    .line 804
    :goto_1e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDMAP OF "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/om/IdmapManager;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 808
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    .line 810
    :cond_54
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 811
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v3, v2}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 812
    const-string v2, "<missing idmap>"

    goto :goto_6e

    :cond_6c
    const-string v2, "<internal error>"

    .line 811
    :goto_6e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    :cond_72
    if-nez v0, :cond_90

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default overlays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    :cond_90
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9b

    .line 824
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->dump(Ljava/io/PrintWriter;)V

    :cond_9b
    return-void
.end method

.method public getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 1

    .line 829
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    return-object p0
.end method

.method public getEnabledOverlayPaths(Ljava/lang/String;IZ)Landroid/content/pm/overlay/OverlayPaths;
    .registers 6

    .line 844
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 845
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(ZLandroid/content/pm/overlay/OverlayPaths$Builder;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/android/server/om/OverlayManagerSettings;->forEachMatching(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 858
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public final getFabricatedOverlayInfos()Ljava/util/List;
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    .line 703
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 704
    invoke-virtual {p0}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 705
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v1
.end method

.method public getOverlayConfig()Lcom/android/internal/content/om/OverlayConfig;
    .registers 1

    .line 1124
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    return-object p0
.end method

.method public getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .registers 3

    .line 478
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p0
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    .line 486
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOverlaysForUser(I)Ljava/util/Map;
    .registers 2

    .line 490
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageConfiguredPriority(Lcom/android/server/pm/pkg/AndroidPackage;)I
    .registers 2

    .line 716
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->getPriority(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final initOverlayForPackage(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/Set;)Landroid/content/om/OverlayInfo;
    .registers 15

    .line 377
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    .line 379
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 380
    invoke-virtual {p0, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z

    move-result v3

    if-eqz v3, :cond_54

    if-eqz v2, :cond_24

    .line 384
    iget-object v0, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_24
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object p3

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v7

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v8

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move v2, p2

    .line 386
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;

    move-result-object p0

    return-object p0

    :cond_54
    move p1, p2

    .line 390
    iget p2, v2, Landroid/content/om/OverlayInfo;->priority:I

    if-eq v0, p2, :cond_67

    .line 393
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;II)V

    .line 394
    iget-object p0, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_67
    return-object v2
.end method

.method public final isPackageConfiguredEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 2

    .line 721
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageConfiguredMutable(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 2

    .line 711
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final mustReinitializeOverlay(Landroid/os/FabricatedOverlayInfo;Landroid/content/om/OverlayInfo;)Z
    .registers 5

    const/4 p0, 0x1

    if-nez p2, :cond_4

    return p0

    .line 135
    :cond_4
    iget-object v0, p1, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return p0

    .line 138
    :cond_f
    iget-object p1, p1, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final mustReinitializeOverlay(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    .line 109
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 112
    :cond_11
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v0

    .line 116
    :cond_1e
    iget-boolean v1, p2, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v1, :cond_23

    return v0

    .line 119
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    .line 120
    iget-boolean v2, p2, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eq v1, v2, :cond_2c

    return v0

    :cond_2c
    if-nez v1, :cond_39

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p1

    if-eq p0, p1, :cond_39

    return v0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public onPackageAdded(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5

    .line 293
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 295
    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public onPackageChanged(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5

    .line 328
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    .line 329
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 333
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;

    move-result-object p0

    .line 333
    invoke-static {v0, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public onPackageReplaced(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public onPackageReplacing(Ljava/lang/String;ZI)Ljava/util/Set;
    .registers 4

    if-eqz p2, :cond_4

    const/4 p2, 0x6

    goto :goto_5

    :cond_4
    const/4 p2, 0x2

    .line 313
    :goto_5
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public onUserRemoved(I)V
    .registers 2

    .line 287
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    return-void
.end method

.method public final reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;
    .registers 6

    .line 459
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 461
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    .line 460
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageStateForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    .line 465
    :cond_14
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    :goto_18
    if-nez v1, :cond_1f

    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 472
    :cond_1f
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/Set;

    move-result-object p0

    .line 471
    invoke-static {v0, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;
    .registers 16

    .line 614
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    iget-object v0, p1, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 618
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 620
    iget-boolean v2, v0, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v2, :cond_1b

    goto :goto_44

    .line 621
    :cond_1b
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "non-fabricated overlay with name \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' already present in \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 626
    :cond_44
    :goto_44
    :try_start_44
    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/os/FabricatedOverlayInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_6c

    if-eqz v0, :cond_56

    .line 632
    iget-object v0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_56
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, p1, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object v5, p1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;

    move-result-object v0

    move p1, v12

    goto :goto_75

    :cond_6c
    move v2, p2

    .line 640
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object p1, p1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z

    move-result p1

    .line 644
    :goto_75
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 643
    invoke-virtual {p0, v0, v2, v12, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/OverlayInfo;IILjava/util/List;)Z

    move-result p0

    or-int/2addr p0, p1

    if-eqz p0, :cond_87

    .line 651
    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-interface {v11, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_44 .. :try_end_87} :catch_88

    :cond_87
    return-object v11

    :catch_88
    move-exception v0

    move-object p0, v0

    .line 654
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;
    .registers 7

    .line 592
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    .line 598
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 603
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 604
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v1

    array-length v3, v1

    :goto_1e
    if-ge v2, v3, :cond_2c

    aget v4, v1, v2

    .line 605
    invoke-virtual {p0, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2c
    return-object v0

    .line 600
    :cond_2d
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "failed to create fabricated overlay"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 594
    :cond_35
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "overlay name can only consist of alphanumeric characters, \'_\', and \'.\'"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    .registers 4

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p1

    .line 836
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_9
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 838
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .registers 8

    .line 1095
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_27

    .line 1098
    :cond_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    .line 1099
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2b

    aget v3, v0, v2

    .line 1101
    :try_start_15
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 1102
    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v3
    :try_end_25
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_15 .. :try_end_25} :catch_28

    if-eqz v3, :cond_28

    :goto_27
    return-void

    :catch_28
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1110
    :cond_2b
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v0, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    return-void
.end method

.method public final removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;
    .registers 8

    .line 340
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(ILjava/util/function/Predicate;)V

    invoke-virtual {v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    .line 342
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 343
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2a

    .line 344
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 345
    iget-object v4, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 346
    invoke-static {p2, v4}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    .line 345
    invoke-static {v0, v4}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 349
    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2a
    return-object v0
.end method

.method public setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Ljava/util/Set;
    .registers 8

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    .line 504
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    move v1, v0

    :goto_c
    if-nez p2, :cond_19

    if-nez v1, :cond_11

    goto :goto_19

    .line 509
    :cond_11
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "Constraints can only be set when enabling an overlay"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 514
    :cond_19
    :goto_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 515
    iget-boolean v2, v1, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v2, :cond_3e

    .line 521
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result p1

    .line 522
    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/OverlayInfo;IILjava/util/List;)Z

    move-result p0

    or-int/2addr p0, p1

    if-eqz p0, :cond_3b

    .line 525
    iget-object p0, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p3, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 527
    :cond_3b
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 517
    :cond_3e
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "cannot enable immutable overlay packages in runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_46
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_19 .. :try_end_46} :catch_46

    :catch_46
    move-exception p0

    .line 529
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;
    .registers 13

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 542
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_6a

    .line 548
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 550
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 553
    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_49

    .line 554
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 555
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v6

    .line 556
    iget-boolean v7, v5, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez v7, :cond_2b

    goto :goto_46

    :cond_2b
    if-eqz p2, :cond_38

    .line 560
    iget-object v7, v5, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    goto :goto_46

    .line 567
    :cond_38
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v7, v6, p3, v2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result v6

    or-int/2addr v4, v6

    .line 569
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 568
    invoke-virtual {p0, v5, p3, v2, v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/OverlayInfo;IILjava/util/List;)Z

    move-result v5

    or-int/2addr v4, v5

    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 573
    :cond_49
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, p3, v1}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result p1

    or-int/2addr p1, v4

    .line 577
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 576
    invoke-virtual {p0, v0, p3, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/OverlayInfo;IILjava/util/List;)Z

    move-result p0

    or-int/2addr p0, p1

    if-eqz p0, :cond_65

    .line 580
    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p3, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 582
    :cond_65
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 543
    :cond_6a
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "cannot enable immutable overlay packages in runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_72
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_72} :catch_72

    :catch_72
    move-exception p0

    .line 584
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;
    .registers 5

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 757
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_20

    .line 763
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 764
    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 766
    :cond_1d
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 759
    :cond_20
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_28
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_28} :catch_28

    :catch_28
    move-exception p0

    .line 768
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .registers 5

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 780
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_22

    .line 786
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 787
    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 789
    :cond_1d
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 782
    :cond_22
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p0

    .line 791
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .registers 6

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 734
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_22

    .line 740
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 741
    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p3, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 743
    :cond_1d
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 736
    :cond_22
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p0

    .line 745
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final shouldCreateIdmap(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z
    .registers 4

    if-eqz p1, :cond_16

    .line 1042
    const-string p1, "android"

    invoke-virtual {p3}, Landroid/content/om/OverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1043
    invoke-virtual {p0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;
    .registers 7

    .line 662
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 663
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1b

    aget v4, v1, v3

    .line 664
    invoke-virtual {p0, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1b
    return-object v0
.end method

.method public final unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;
    .registers 4

    .line 672
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 674
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 675
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 678
    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 681
    :cond_1e
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public final updateOverlaySettings(Landroid/content/om/OverlayIdentifier;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;Ljava/util/List;I)Z
    .registers 8

    .line 1008
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p5, v1}, Lcom/android/server/om/OverlayManagerSettings;->setCategory(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z

    move-result v0

    .line 1009
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p5, p4}, Lcom/android/server/om/OverlayManagerSettings;->setConstraints(Landroid/content/om/OverlayIdentifier;ILjava/util/List;)Z

    move-result p4

    or-int/2addr p4, v0

    .line 1010
    invoke-virtual {p3}, Landroid/content/om/OverlayInfo;->isFabricated()Z

    move-result p3

    if-nez p3, :cond_2e

    .line 1011
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 1012
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 1011
    invoke-virtual {p0, p1, p5, p2}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z

    move-result p0

    or-int/2addr p0, p4

    return p0

    :cond_2e
    return p4
.end method

.method public final updateOverlaysForTarget(Ljava/lang/String;II)Ljava/util/Set;
    .registers 12

    .line 358
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v2, v1, :cond_32

    .line 360
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 362
    :try_start_14
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->constraints:Ljava/util/List;

    invoke-virtual {p0, v4, p2, p3, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/OverlayInfo;IILjava/util/List;)Z

    move-result v4
    :try_end_1a
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_14 .. :try_end_1a} :catch_1c

    :goto_1a
    or-int/2addr v3, v4

    goto :goto_2f

    :catch_1c
    move-exception v5

    .line 364
    const-string v6, "OverlayManager"

    const-string v7, "failed to update settings"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v4

    invoke-virtual {v5, v4, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v4

    goto :goto_1a

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_32
    if-nez v3, :cond_37

    .line 369
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 371
    :cond_37
    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public updateOverlaysForUser(I)Landroid/util/ArraySet;
    .registers 15

    .line 169
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, p1}, Lcom/android/server/om/PackageManagerHelper;->initializeForUser(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 172
    new-instance v2, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 175
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 176
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 177
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_38

    const/4 v4, 0x0

    goto :goto_3c

    .line 178
    :cond_38
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    .line 179
    :goto_3c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 180
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 184
    :cond_46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_51
    const-string v6, ""

    const-string v7, "\' for user "

    const-string v8, "OverlayManager"

    if-ge v5, v3, :cond_a0

    .line 189
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 190
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-nez v10, :cond_66

    goto :goto_9d

    .line 197
    :cond_66
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 198
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_77

    .line 199
    invoke-static {p1, v9}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_77
    :try_start_77
    invoke-virtual {p0, v10, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/Set;

    move-result-object v10

    .line 208
    invoke-static {v0, v10}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;
    :try_end_7e
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_77 .. :try_end_7e} :catch_7f

    goto :goto_9d

    :catch_7f
    move-exception v10

    .line 211
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to initialize overlays of \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9d
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 228
    :cond_a0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FabricatedOverlayInfo;

    .line 230
    :try_start_b4
    invoke-virtual {p0, v2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;
    :try_end_bb
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_b4 .. :try_end_bb} :catch_bc

    goto :goto_a8

    :catch_bc
    move-exception v3

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to initialize fabricated overlay of \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a8

    .line 239
    :cond_dd
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 240
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 241
    invoke-virtual {v2, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v5, v4

    :goto_ed
    if-ge v5, v3, :cond_117

    .line 244
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_fc

    .line 245
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_fd

    :cond_fc
    move v9, v4

    :goto_fd
    move v10, v4

    :goto_fe
    if-ge v10, v9, :cond_114

    .line 247
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/om/OverlayInfo;

    .line 248
    invoke-virtual {v11}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_111

    .line 249
    iget-object v11, v11, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_111
    add-int/lit8 v10, v10, 0x1

    goto :goto_fe

    :cond_114
    add-int/lit8 v5, v5, 0x1

    goto :goto_ed

    .line 255
    :cond_117
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v3, v2

    move v5, v4

    :goto_11b
    if-ge v5, v3, :cond_198

    aget-object v6, v2, v5

    .line 260
    :try_start_11f
    new-instance v9, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v9, v6}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 262
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v9, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v10

    .line 263
    iget-object v11, v10, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_195

    .line 264
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enabling default overlay \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' for target \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' in category \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v11, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v12, 0x1

    invoke-virtual {v11, v9, p1, v12}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    .line 268
    iget-object v9, v10, Landroid/content/om/OverlayInfo;->constraints:Ljava/util/List;

    invoke-virtual {p0, v10, p1, v4, v9}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/OverlayInfo;IILjava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_195

    .line 269
    iget v9, v10, Landroid/content/om/OverlayInfo;->userId:I

    iget-object v10, v10, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 270
    invoke-static {v9, v10}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v9

    .line 269
    invoke-static {v0, v9}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    :try_end_179
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_11f .. :try_end_179} :catch_17a

    goto :goto_195

    :catch_17a
    move-exception v9

    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set default overlay \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_195
    :goto_195
    add-int/lit8 v5, v5, 0x1

    goto :goto_11b

    .line 279
    :cond_198
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->cleanStaleResourceCache()V

    return-object v0
.end method

.method public final updatePackageOverlays(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/Set;
    .registers 6

    .line 402
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 404
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 410
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 412
    :try_start_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->initOverlayForPackage(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/Set;)Landroid/content/om/OverlayInfo;

    move-result-object p1

    .line 415
    iget-object v1, p1, Landroid/content/om/OverlayInfo;->constraints:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/OverlayInfo;IILjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 416
    iget-object p0, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 417
    invoke-static {p2, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    .line 416
    invoke-static {v0, p0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0
    :try_end_24
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_e .. :try_end_24} :catch_26

    return-object p0

    :cond_25
    return-object v0

    :catch_26
    move-exception p0

    .line 420
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final updateState(Landroid/content/om/OverlayInfo;IILjava/util/List;)Z
    .registers 16

    .line 867
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v1

    .line 868
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 869
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageStateForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_13

    move-object v6, v2

    goto :goto_18

    .line 871
    :cond_13
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    move-object v6, v0

    .line 873
    :goto_18
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 874
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageStateForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v7

    if-nez v7, :cond_25

    goto :goto_29

    .line 876
    :cond_25
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    :goto_29
    if-nez v2, :cond_3b

    .line 879
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 880
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    return p0

    :cond_3b
    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move-object v4, p4

    .line 883
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaySettings(Landroid/content/om/OverlayIdentifier;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;Ljava/util/List;I)Z

    move-result p0

    move v4, v5

    .line 886
    iget-object p1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1, v1, v4}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p1

    .line 889
    invoke-virtual {v0, v6, v2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->shouldCreateIdmap(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_6f

    .line 890
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    move-object v5, v7

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 891
    invoke-virtual {v1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p1, Landroid/content/om/OverlayInfo;->constraints:Ljava/util/List;

    move v9, v4

    move-object v4, v6

    move-object v6, v2

    .line 890
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/om/IdmapManager;->createIdmap(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)I

    move-result p2

    move-object v3, v4

    move v4, v9

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_6a

    const/4 p4, 0x1

    :cond_6a
    or-int/2addr p0, p4

    move v6, p2

    :goto_6c
    move-object v2, p1

    move v5, p3

    goto :goto_72

    :cond_6f
    move-object v3, v6

    move v6, p4

    goto :goto_6c

    .line 896
    :goto_72
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateStateDiffs(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayInfo;Lcom/android/server/pm/pkg/AndroidPackage;III)Z

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method
