.class public Lcom/android/server/policy/PermissionPolicyService$1;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 7

    .line 196
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 197
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p1

    .line 198
    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_26

    aget v2, p1, v1

    .line 199
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 200
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 201
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$msynchronizeUidPermissionsAndAppOps(Lcom/android/server/policy/PermissionPolicyService;I)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_26
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I)V
    .registers 7

    .line 208
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 209
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p1

    .line 210
    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_2b

    aget v2, p1, v1

    .line 211
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 212
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 213
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$msynchronizeUidPermissionsAndAppOps(Lcom/android/server/policy/PermissionPolicyService;I)V

    .line 214
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$mresetAppOpPermissionsIfNotRequestedForUid(Lcom/android/server/policy/PermissionPolicyService;I)V

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2b
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 7

    .line 221
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 222
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p1

    .line 223
    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_26

    aget v2, p1, v1

    .line 224
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 225
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 226
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$mresetAppOpPermissionsIfNotRequestedForUid(Lcom/android/server/policy/PermissionPolicyService;I)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_26
    return-void
.end method
