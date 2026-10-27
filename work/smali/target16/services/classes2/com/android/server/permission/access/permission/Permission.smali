.class public final Lcom/android/server/permission/access/permission/Permission;
.super Ljava/lang/Object;
.source "Permission.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/Permission$Companion;


# instance fields
.field public final appId:I

.field public final areGidsPerUser:Z

.field public final gids:[I

.field public final isReconciled:Z

.field public final permissionInfo:Landroid/content/pm/PermissionInfo;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/android/server/permission/access/permission/Permission$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/Permission$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/Permission;->Companion:Lcom/android/server/permission/access/permission/Permission$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V
    .registers 7

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 27
    iput-boolean p2, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    .line 28
    iput p3, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 29
    iput p4, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 30
    iput-object p5, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 31
    iput-boolean p6, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PermissionInfo;ZII[IZILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_6

    .line 30
    sget-object p5, Llibcore/util/EmptyArray;->INT:[I

    :cond_6
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_c

    const/4 p6, 0x0

    :cond_c
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;
    .registers 9

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-boolean p2, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    iget p3, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_18

    iget p4, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    :cond_18
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1e

    iget-object p5, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    :cond_1e
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_24

    iget-boolean p6, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    :cond_24
    move-object p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/android/server/permission/access/permission/Permission;->copy(Landroid/content/pm/PermissionInfo;ZII[IZ)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Landroid/content/pm/PermissionInfo;ZII[IZ)Lcom/android/server/permission/access/permission/Permission;
    .registers 7

    .line 0
    new-instance p0, Lcom/android/server/permission/access/permission/Permission;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/server/permission/access/permission/Permission;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/server/permission/access/permission/Permission;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, p1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-static {v1, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    iget-boolean v3, p1, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    iget v3, p1, Lcom/android/server/permission/access/permission/Permission;->type:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    iget v3, p1, Lcom/android/server/permission/access/permission/Permission;->appId:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    iget-object v3, p1, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-static {v1, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    iget-boolean p1, p1, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    if-eq p0, p1, :cond_3e

    return v2

    :cond_3e
    return v0
.end method

.method public final getAppId()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    return p0
.end method

.method public final getAreGidsPerUser()Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    return p0
.end method

.method public final getGids()[I
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    return-object p0
.end method

.method public final getGidsForUser(I)[I
    .registers 6

    .line 166
    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    if-eqz v0, :cond_1a

    .line 167
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_19

    iget-object v3, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    aget v3, v3, v2

    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return-object v1

    .line 169
    :cond_1a
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const-string p1, "copyOf(...)"

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPermissionInfo()Landroid/content/pm/PermissionInfo;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    return-object p0
.end method

.method public final getType()I
    .registers 1

    .line 28
    iget p0, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isReconciled()Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-boolean v1, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    iget v2, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    iget v3, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    iget-object v4, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission(permissionInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isReconciled="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", appId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", gids="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", areGidsPerUser="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
