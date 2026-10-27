.class public Lcom/android/server/notification/ManagedServices$1;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mService:Landroid/os/IInterface;

.field public final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field public final synthetic val$isSystem:Z

.field public final synthetic val$servicesBindingTag:Landroid/util/Pair;

.field public final synthetic val$targetSdkVersion:I

.field public final synthetic val$uid:I

.field public final synthetic val$userid:I


# direct methods
.method public static synthetic $r8$lambda$lS7k-sW0B8zlW5v5lj842QuaWYk(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices$1;->lambda$onBindingDied$0(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ManagedServices;ILandroid/util/Pair;ZII)V
    .registers 7

    .line 1920
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iput p2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    iput-object p3, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    iput-boolean p4, p0, Lcom/android/server/notification/ManagedServices$1;->val$isSystem:Z

    iput p5, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    iput p6, p0, Lcom/android/server/notification/ManagedServices$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onBindingDied$0(Landroid/content/ComponentName;I)V
    .registers 3

    .line 1988
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->reregisterService(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 6

    .line 1977
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v2}, Lcom/android/server/notification/ManagedServices;->-$$Nest$mgetCaption(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " binding died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1982
    :try_start_30
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-static {v1, p0, p1, v2}, Lcom/android/server/notification/ManagedServices;->-$$Nest$munbindService(Lcom/android/server/notification/ManagedServices;Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 1984
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->-$$Nest$fgetmServicesRebinding(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 1985
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->-$$Nest$fgetmServicesRebinding(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1986
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->-$$Nest$fgetmRebindAsyncDelay(Lcom/android/server/notification/ManagedServices;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1987
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->-$$Nest$fgetmHandler(Lcom/android/server/notification/ManagedServices;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    new-instance v3, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;I)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v1, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a0

    :catchall_6b
    move-exception p0

    goto :goto_a2

    .line 1991
    :cond_6d
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget p0, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v1, p1, p0}, Lcom/android/server/notification/ManagedServices;->reregisterService(Landroid/content/ComponentName;I)V

    goto :goto_a0

    .line 1994
    :cond_75
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->-$$Nest$mgetCaption(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not rebinding in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " as a previous rebind attempt was made: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :goto_a0
    monitor-exit v0

    return-void

    :goto_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_30 .. :try_end_a3} :catchall_6b

    throw p0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 5

    .line 2002
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNullBinding() called with: name = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object p1, p1, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1964
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onServiceConnected(ComponentName, IBinder) called even when onServiceConnected(ComponentName, IBinder, IBinderSession) was overridden"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;)V
    .registers 18

    move-object/from16 v0, p2

    .line 1926
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->-$$Nest$mgetCaption(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v11, v1, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v11

    .line 1930
    :try_start_32
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->-$$Nest$fgetmServicesRebinding(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_68

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1932
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/ManagedServices;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->mService:Landroid/os/IInterface;

    .line 1934
    new-instance v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget v5, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    iget-boolean v6, p0, Lcom/android/server/notification/ManagedServices$1;->val$isSystem:Z

    iget v8, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    iget v9, p0, Lcom/android/server/notification/ManagedServices$1;->val$uid:I

    move-object v7, p0

    move-object v4, p1

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;IILandroid/app/IBinderSession;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_5a} :catch_6d
    .catchall {:try_start_3f .. :try_end_5a} :catchall_68

    .line 1941
    :try_start_5a
    invoke-interface {v0, v1, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1946
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-$$Nest$fgetmServices(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_67} :catch_6a
    .catchall {:try_start_5a .. :try_end_67} :catchall_68

    goto :goto_78

    :catchall_68
    move-exception v0

    goto :goto_81

    :catch_6a
    move-exception v0

    move-object v13, v1

    goto :goto_6e

    :catch_6d
    move-exception v0

    .line 1954
    :goto_6e
    :try_start_6e
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v2, "Failed to linkToDeath, already dead"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v13

    .line 1956
    :goto_78
    monitor-exit v11
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_68

    if-eqz v12, :cond_80

    .line 1958
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_80
    return-void

    .line 1956
    :goto_81
    :try_start_81
    monitor-exit v11
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_68

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1972
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {p0}, Lcom/android/server/notification/ManagedServices;->-$$Nest$mgetCaption(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " connection lost: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
