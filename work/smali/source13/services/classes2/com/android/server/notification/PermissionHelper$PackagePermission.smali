.class public Lcom/android/server/notification/PermissionHelper$PackagePermission;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/PermissionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackagePermission"
.end annotation


# instance fields
.field public final granted:Z

.field public final packageName:Ljava/lang/String;

.field public final userId:I

.field public final userModifiedSettings:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "granted"    # Z
    .param p4, "userSet"    # Z

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    .line 279
    iput p2, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    .line 280
    iput-boolean p3, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    .line 281
    iput-boolean p4, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    .line 282
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 286
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 287
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 288
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    .line 289
    .local v2, "that":Lcom/android/server/notification/PermissionHelper$PackagePermission;
    iget v3, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    iget v4, v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    if-ne v3, v4, :cond_32

    iget-boolean v3, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    iget-boolean v4, v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    if-ne v3, v4, :cond_32

    iget-boolean v3, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    iget-boolean v4, v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    .line 291
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    .line 289
    :goto_33
    return v0

    .line 287
    .end local v2    # "that":Lcom/android/server/notification/PermissionHelper$PackagePermission;
    :cond_34
    :goto_34
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 296
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackagePermission{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", granted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userModifiedSettings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
