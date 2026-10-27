.class Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;
.super Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.source "PermissionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionNotKill(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 1513
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback-IA;)V

    return-void
.end method


# virtual methods
.method public onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "overrideKill"    # Z
    .param p5, "permissionName"    # Ljava/lang/String;

    .line 1517
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1520
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 1521
    return-void
.end method
