.class public final Lcom/android/server/permission/access/MutableUserState;
.super Lcom/android/server/permission/access/UserState;
.source "AccessState.kt"

# interfaces
.implements Lcom/android/server/permission/access/WritableState;


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 469
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    move-object v0, v2

    .line 470
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v4, v0, v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v4}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    move v4, v3

    .line 471
    new-instance v3, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v5, v0, v4, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v5}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    move v5, v4

    .line 472
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v6, v0, v5, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v4, v6}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    move v6, v5

    .line 473
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v7, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-direct {v7, v0, v6, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v5, v7}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    move v7, v6

    .line 474
    new-instance v6, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v8, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v8, v0, v7, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v6, v8}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 468
    invoke-direct/range {v0 .. v9}, Lcom/android/server/permission/access/MutableUserState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/UserState;)V
    .registers 13

    .line 483
    invoke-virtual {p1}, Lcom/android/server/permission/access/UserState;->getPackageVersionsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v2

    .line 484
    invoke-virtual {p1}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlagsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v3

    .line 485
    invoke-virtual {p1}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlagsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v4

    .line 486
    invoke-virtual {p1}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModesReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v5

    .line 487
    invoke-virtual {p1}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModesReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v6

    .line 488
    invoke-virtual {p1}, Lcom/android/server/permission/access/UserState;->getAppIdAppFunctionAccessFlagsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v7

    .line 489
    invoke-virtual {p1}, Lcom/android/server/permission/access/UserState;->getDefaultPermissionGrantFingerprint()Ljava/lang/String;

    move-result-object v8

    .line 490
    invoke-virtual {p1}, Lcom/android/server/permission/access/UserState;->getAppFunctionAccessPregrantFingerprint()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v1, p0

    .line 482
    invoke-direct/range {v1 .. v10}, Lcom/android/server/permission/access/MutableUserState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 21

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 455
    invoke-direct/range {v0 .. v10}, Lcom/android/server/permission/access/UserState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final mutateAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .registers 1

    .line 507
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdAppFunctionAccessFlagsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method

.method public final mutateAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .registers 1

    .line 502
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModesReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method

.method public final mutateAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .registers 1

    .line 500
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlagsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method

.method public final mutateAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .registers 1

    .line 497
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlagsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method

.method public final mutatePackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;
    .registers 1

    .line 504
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModesReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    return-object p0
.end method

.method public final mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .registers 1

    .line 494
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getPackageVersionsReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    return-object p0
.end method

.method public requestWriteMode(I)V
    .registers 3

    .line 515
    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getWriteMode()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/UserState;->setWriteMode(I)V

    return-void
.end method

.method public final setDefaultPermissionGrantFingerprintPublic(Ljava/lang/String;)V
    .registers 2

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/UserState;->setDefaultPermissionGrantFingerprint(Ljava/lang/String;)V

    return-void
.end method
