.class Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .registers 3
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 5400
    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 1

    .line 5403
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .registers 1

    .line 5413
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .registers 1

    .line 5420
    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 5422
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdated()V

    .line 5423
    return-void
.end method

.method public onPermissionChanged()V
    .registers 1

    .line 5401
    return-void
.end method

.method public onPermissionGranted(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 5402
    return-void
.end method

.method public onPermissionRemoved()V
    .registers 1

    .line 5419
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 5405
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;Z)V

    .line 5406
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;Z)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "overrideKill"    # Z

    .line 5409
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V

    .line 5410
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "overrideKill"    # Z
    .param p5, "permissionName"    # Ljava/lang/String;

    .line 5412
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .registers 3
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z

    .line 5414
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .registers 4
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "uid"    # I

    .line 5417
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 5418
    return-void
.end method
