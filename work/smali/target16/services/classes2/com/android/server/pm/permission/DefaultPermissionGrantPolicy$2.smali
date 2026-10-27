.class public Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;
.super Landroid/os/Handler;
.source "DefaultPermissionGrantPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V
    .registers 3

    .line 349
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 352
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    .line 353
    iget-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmLock(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 354
    :try_start_c
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmGrantExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_24

    .line 355
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$mreadDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fputmGrantExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_26

    .line 357
    :cond_24
    :goto_24
    monitor-exit p1

    return-void

    :goto_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_22

    throw p0

    :cond_28
    return-void
.end method
