.class public abstract Lcom/android/server/permission/access/SystemState;
.super Ljava/lang/Object;
.source "AccessState.kt"

# interfaces
.implements Lcom/android/server/permission/access/WritableState;
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public writeMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;I)V
    .registers 5

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/android/server/permission/access/SystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 289
    iput-object p2, p0, Lcom/android/server/permission/access/SystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 290
    iput-object p3, p0, Lcom/android/server/permission/access/SystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 302
    iput p4, p0, Lcom/android/server/permission/access/SystemState;->writeMode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/SystemState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;I)V

    return-void
.end method


# virtual methods
.method public final getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getPermissionGroupsReference()Lcom/android/server/permission/access/immutable/MutableReference;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getPermissionTreesReference()Lcom/android/server/permission/access/immutable/MutableReference;
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public final getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getPermissionsReference()Lcom/android/server/permission/access/immutable/MutableReference;
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/android/server/permission/access/SystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    return-object p0
.end method

.method public getWriteMode()I
    .registers 1

    .line 302
    iget p0, p0, Lcom/android/server/permission/access/SystemState;->writeMode:I

    return p0
.end method

.method public setWriteMode(I)V
    .registers 2

    .line 303
    iput p1, p0, Lcom/android/server/permission/access/SystemState;->writeMode:I

    return-void
.end method

.method public toMutable()Lcom/android/server/permission/access/MutableSystemState;
    .registers 2

    .line 305
    new-instance v0, Lcom/android/server/permission/access/MutableSystemState;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/MutableSystemState;-><init>(Lcom/android/server/permission/access/SystemState;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .registers 1

    .line 287
    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->toMutable()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    return-object p0
.end method
