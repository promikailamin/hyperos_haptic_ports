.class public Lcom/android/server/pm/UserManagerService$5;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 4140
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 4146
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_23

    .line 4155
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmRestrictionsLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    .line 4156
    :goto_10
    :try_start_10
    array-length v3, v0

    if-ge v2, v3, :cond_1f

    .line 4157
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    aget v4, v0, v2

    invoke-static {v3, v4}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mapplyUserRestrictionsLR(Lcom/android/server/pm/UserManagerService;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 4159
    :cond_1f
    monitor-exit v1

    return-void

    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_1d

    throw p0

    .line 4148
    :catch_23
    const-string p0, "UserManagerService"

    const-string v0, "Unable to access ActivityManagerService"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
