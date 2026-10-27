.class public final Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .registers 3

    .line 7623
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7624
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 7625
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 7650
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 7651
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/server/appop/AppOpsRestrictions;->clearUserRestrictions(Ljava/lang/Object;)Z

    .line 7652
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpUserRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7653
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->destroy()V

    .line 7654
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public destroy()V
    .registers 3

    .line 7658
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public hasRestriction(ILjava/lang/String;Ljava/lang/String;IZ)Z
    .registers 14

    .line 7636
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v3, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/appop/AppOpsRestrictions;->getUserRestriction(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDefault()Z
    .registers 2

    .line 7645
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0}, Lcom/android/server/appop/AppOpsRestrictions;->hasUserRestrictions(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public removeUser(I)V
    .registers 3

    .line 7641
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/android/server/appop/AppOpsRestrictions;->clearUserRestrictions(Ljava/lang/Object;Ljava/lang/Integer;)Z

    return-void
.end method

.method public setRestriction(IZLandroid/os/PackageTagsList;I)Z
    .registers 12

    .line 7630
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v3, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/appop/AppOpsRestrictions;->setUserRestriction(Ljava/lang/Object;IIZLandroid/os/PackageTagsList;)Z

    move-result p0

    return p0
.end method
