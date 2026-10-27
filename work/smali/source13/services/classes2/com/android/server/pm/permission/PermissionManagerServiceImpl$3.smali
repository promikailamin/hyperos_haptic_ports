.class Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;
.super Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.source "PermissionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/util/Set;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field final synthetic val$asyncUpdatedUsers:Ljava/util/Set;

.field final synthetic val$permissionRemoved:[Z

.field final synthetic val$revokedPermissions:Landroid/util/ArraySet;

.field final synthetic val$syncUpdatedUsers:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Ljava/util/Set;Ljava/util/Set;[Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 1744
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$revokedPermissions:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$syncUpdatedUsers:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$asyncUpdatedUsers:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$permissionRemoved:[Z

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback-IA;)V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .registers 4
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 1746
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onGidsChanged(II)V

    .line 1747
    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 2

    .line 1758
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionGranted()V

    .line 1759
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .registers 2

    .line 1768
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1769
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .registers 2

    .line 1792
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdated()V

    .line 1793
    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 1802
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    .line 1803
    return-void
.end method

.method public onPermissionChanged()V
    .registers 2

    .line 1750
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionChanged()V

    .line 1751
    return-void
.end method

.method public onPermissionGranted(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 1754
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionGranted(II)V

    .line 1755
    return-void
.end method

.method public onPermissionRemoved()V
    .registers 4

    .line 1788
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$permissionRemoved:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1789
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1762
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$revokedPermissions:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1764
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$syncUpdatedUsers:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1765
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .registers 8
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z

    .line 1772
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_33

    aget v2, p1, v1

    .line 1773
    .local v2, "userId":I
    if-eqz p2, :cond_1b

    .line 1774
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$syncUpdatedUsers:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1775
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$asyncUpdatedUsers:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_30

    .line 1780
    :cond_1b
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$syncUpdatedUsers:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1781
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$asyncUpdatedUsers:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1772
    .end local v2    # "userId":I
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1785
    :cond_33
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .registers 5
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "uid"    # I

    .line 1797
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->onPermissionUpdated([IZ)V

    .line 1798
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1799
    return-void
.end method
