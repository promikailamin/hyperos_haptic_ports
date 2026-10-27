.class public abstract Lcom/android/server/permission/access/ExternalState;
.super Ljava/lang/Object;
.source "AccessState.kt"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public agentAllowlist:Ljava/util/Set;

.field public final appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public configPermissions:Ljava/util/Map;

.field public disabledSystemPackageStates:Ljava/util/Map;

.field public implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

.field public isLeanback:Z

.field public isSystemReady:Z

.field public knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

.field public packageStates:Ljava/util/Map;

.field public permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

.field public privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

.field public final userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;ZLjava/util/Set;)V
    .registers 13

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 103
    iput-object p4, p0, Lcom/android/server/permission/access/ExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 116
    iput-object p2, p0, Lcom/android/server/permission/access/ExternalState;->packageStates:Ljava/util/Map;

    .line 119
    iput-object p3, p0, Lcom/android/server/permission/access/ExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 125
    iput-object p5, p0, Lcom/android/server/permission/access/ExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 128
    iput-boolean p6, p0, Lcom/android/server/permission/access/ExternalState;->isLeanback:Z

    .line 131
    iput-object p7, p0, Lcom/android/server/permission/access/ExternalState;->configPermissions:Ljava/util/Map;

    .line 135
    iput-object p8, p0, Lcom/android/server/permission/access/ExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 138
    iput-object p9, p0, Lcom/android/server/permission/access/ExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 142
    iput-object p10, p0, Lcom/android/server/permission/access/ExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 145
    iput-boolean p11, p0, Lcom/android/server/permission/access/ExternalState;->isSystemReady:Z

    .line 148
    iput-object p12, p0, Lcom/android/server/permission/access/ExternalState;->agentAllowlist:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;ZLjava/util/Set;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    .line 0
    invoke-direct/range {p0 .. p12}, Lcom/android/server/permission/access/ExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;ZLjava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final getAgentAllowlist()Ljava/util/Set;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->agentAllowlist:Ljava/util/Set;

    return-object p0
.end method

.method public final getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;

    return-object p0
.end method

.method public final getAppIdPackageNamesReference()Lcom/android/server/permission/access/immutable/MutableReference;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final getConfigPermissions()Ljava/util/Map;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->configPermissions:Ljava/util/Map;

    return-object p0
.end method

.method public final getDisabledSystemPackageStates()Ljava/util/Map;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    return-object p0
.end method

.method public final getImplicitToSourcePermissions()Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getKnownPackages()Lcom/android/server/permission/access/immutable/IntMap;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    return-object p0
.end method

.method public final getPackageStates()Ljava/util/Map;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->packageStates:Ljava/util/Map;

    return-object p0
.end method

.method public final getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    return-object p0
.end method

.method public final getPrivilegedPermissionAllowlistPackages()Lcom/android/server/permission/access/immutable/IndexedListSet;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    return-object p0
.end method

.method public final getUserIds()Lcom/android/server/permission/access/immutable/IntSet;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IntSet;

    return-object p0
.end method

.method public final getUserIdsReference()Lcom/android/server/permission/access/immutable/MutableReference;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/permission/access/ExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final isLeanback()Z
    .registers 1

    .line 128
    iget-boolean p0, p0, Lcom/android/server/permission/access/ExternalState;->isLeanback:Z

    return p0
.end method

.method public final isSystemReady()Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/android/server/permission/access/ExternalState;->isSystemReady:Z

    return p0
.end method

.method public final setAgentAllowlist(Ljava/util/Set;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->agentAllowlist:Ljava/util/Set;

    return-void
.end method

.method public final setConfigPermissions(Ljava/util/Map;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->configPermissions:Ljava/util/Map;

    return-void
.end method

.method public final setDisabledSystemPackageStates(Ljava/util/Map;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    return-void
.end method

.method public final setImplicitToSourcePermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    return-void
.end method

.method public final setKnownPackages(Lcom/android/server/permission/access/immutable/IntMap;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    return-void
.end method

.method public final setLeanback(Z)V
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/android/server/permission/access/ExternalState;->isLeanback:Z

    return-void
.end method

.method public final setPackageStates(Ljava/util/Map;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->packageStates:Ljava/util/Map;

    return-void
.end method

.method public final setPermissionAllowlist(Lcom/android/server/pm/permission/PermissionAllowlist;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    return-void
.end method

.method public final setPrivilegedPermissionAllowlistPackages(Lcom/android/server/permission/access/immutable/IndexedListSet;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/android/server/permission/access/ExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    return-void
.end method

.method public final setSystemReady(Z)V
    .registers 2

    .line 146
    iput-boolean p1, p0, Lcom/android/server/permission/access/ExternalState;->isSystemReady:Z

    return-void
.end method

.method public toMutable()Lcom/android/server/permission/access/MutableExternalState;
    .registers 2

    .line 151
    new-instance v0, Lcom/android/server/permission/access/MutableExternalState;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/MutableExternalState;-><init>(Lcom/android/server/permission/access/ExternalState;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->toMutable()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object p0

    return-object p0
.end method
