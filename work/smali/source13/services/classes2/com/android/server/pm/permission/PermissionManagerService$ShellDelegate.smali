.class Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellDelegate"
.end annotation


# instance fields
.field private final mDelegatedPackageName:Ljava/lang/String;

.field private final mDelegatedPermissionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegatedUid:I

.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p2, "delegatedUid"    # I
    .param p3, "delegatedPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 913
    .local p4, "delegatedPermissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedUid:I

    .line 915
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPackageName:Ljava/lang/String;

    .line 916
    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPermissionNames:Ljava/util/List;

    .line 917
    return-void
.end method

.method private isDelegatedPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 962
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPermissionNames:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 963
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 962
    :goto_e
    return v0
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/util/function/TriFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 927
    .local p4, "superImpl":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 928
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->isDelegatedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 929
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 931
    .local v0, "identity":J
    :try_start_12
    const-string v2, "com.android.shell"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v2, p2, v3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_26

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    return v2

    .line 933
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    throw v2

    .line 936
    .end local v0    # "identity":J
    :cond_2b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, p1, p2, v0}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public checkUidPermission(ILjava/lang/String;Ljava/util/function/BiFunction;)I
    .registers 7
    .param p1, "uid"    # I
    .param p2, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 942
    .local p3, "superImpl":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedUid:I

    if-ne p1, v0, :cond_27

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->isDelegatedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 943
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 945
    .local v0, "identity":J
    const/16 v2, 0x7d0

    :try_start_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 945
    return v2

    .line 947
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    throw v2

    .line 950
    .end local v0    # "identity":J
    :cond_27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDelegatedPermissionNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPermissionNames:Ljava/util/List;

    if-nez v0, :cond_6

    .line 956
    const/4 v0, 0x0

    goto :goto_d

    .line 957
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedPermissionNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 955
    :goto_d
    return-object v0
.end method

.method public getDelegatedUid()I
    .registers 2

    .line 921
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;->mDelegatedUid:I

    return v0
.end method
