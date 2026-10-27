.class public final Lcom/android/server/permission/access/MutableExternalState;
.super Lcom/android/server/permission/access/ExternalState;
.source "AccessState.kt"


# direct methods
.method public constructor <init>()V
    .registers 14

    .line 185
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v2}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    move-object v0, v2

    .line 186
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move v4, v3

    .line 187
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    move v5, v4

    .line 188
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v6, v0, v5, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v4, v6}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    move v6, v5

    .line 189
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-direct {v5, v0, v6, v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 191
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 192
    new-instance v8, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v8, v0, v6, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 193
    new-instance v9, Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-direct {v9}, Lcom/android/server/pm/permission/PermissionAllowlist;-><init>()V

    .line 194
    new-instance v10, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v10, v0, v6, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 184
    invoke-direct/range {v0 .. v12}, Lcom/android/server/permission/access/MutableExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;ZLjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/ExternalState;)V
    .registers 16

    .line 202
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getUserIdsReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v2

    .line 203
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    .line 204
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v4

    .line 205
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNamesReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v5

    .line 206
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getKnownPackages()Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v6

    .line 207
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->isLeanback()Z

    move-result v7

    .line 208
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getConfigPermissions()Ljava/util/Map;

    move-result-object v8

    .line 209
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getPrivilegedPermissionAllowlistPackages()Lcom/android/server/permission/access/immutable/IndexedListSet;

    move-result-object v9

    .line 210
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object v10

    .line 211
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getImplicitToSourcePermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v11

    .line 212
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->isSystemReady()Z

    move-result v12

    .line 213
    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getAgentAllowlist()Ljava/util/Set;

    move-result-object v13

    move-object v1, p0

    .line 201
    invoke-direct/range {v1 .. v13}, Lcom/android/server/permission/access/MutableExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;ZLjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;ZLjava/util/Set;)V
    .registers 27

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    .line 169
    invoke-direct/range {v0 .. v13}, Lcom/android/server/permission/access/ExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;ZLjava/util/Set;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final mutateAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .registers 1

    .line 228
    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNamesReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method

.method public final mutateUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;
    .registers 1

    .line 216
    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getUserIdsReference()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    return-object p0
.end method

.method public final setAgentAllowlistPublic(Ljava/util/Set;)V
    .registers 2

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setAgentAllowlist(Ljava/util/Set;)V

    return-void
.end method

.method public final setConfigPermissionsPublic(Ljava/util/Map;)V
    .registers 2

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setConfigPermissions(Ljava/util/Map;)V

    return-void
.end method

.method public final setDisabledSystemPackageStatesPublic(Ljava/util/Map;)V
    .registers 2

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setDisabledSystemPackageStates(Ljava/util/Map;)V

    return-void
.end method

.method public final setImplicitToSourcePermissionsPublic(Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .registers 2

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setImplicitToSourcePermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)V

    return-void
.end method

.method public final setKnownPackagesPublic(Lcom/android/server/permission/access/immutable/IntMap;)V
    .registers 2

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setKnownPackages(Lcom/android/server/permission/access/immutable/IntMap;)V

    return-void
.end method

.method public final setLeanbackPublic(Z)V
    .registers 2

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setLeanback(Z)V

    return-void
.end method

.method public final setPackageStatesPublic(Ljava/util/Map;)V
    .registers 2

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setPackageStates(Ljava/util/Map;)V

    return-void
.end method

.method public final setPermissionAllowlistPublic(Lcom/android/server/pm/permission/PermissionAllowlist;)V
    .registers 2

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setPermissionAllowlist(Lcom/android/server/pm/permission/PermissionAllowlist;)V

    return-void
.end method

.method public final setPrivilegedPermissionAllowlistPackagesPublic(Lcom/android/server/permission/access/immutable/IndexedListSet;)V
    .registers 2

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setPrivilegedPermissionAllowlistPackages(Lcom/android/server/permission/access/immutable/IndexedListSet;)V

    return-void
.end method

.method public final setSystemReadyPublic(Z)V
    .registers 2

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/ExternalState;->setSystemReady(Z)V

    return-void
.end method
