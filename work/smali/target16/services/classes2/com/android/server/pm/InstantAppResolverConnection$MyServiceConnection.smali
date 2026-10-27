.class public final Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;
.super Ljava/lang/Object;
.source "InstantAppResolverConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/InstantAppResolverConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;Lcom/android/server/pm/InstantAppResolverConnection-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 317
    invoke-static {}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$sfgetDEBUG_INSTANT()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 318
    const-string p1, "PackageManager"

    const-string v0, "Connected to instant app resolver"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_d
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fgetmLock(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 321
    :try_start_14
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p2}, Landroid/app/IInstantAppResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstantAppResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fputmRemoteInstance(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/app/IInstantAppResolver;)V

    .line 322
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fgetmBindState(Lcom/android/server/pm/InstantAppResolverConnection;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2f

    .line 323
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v0, v2}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fputmBindState(Lcom/android/server/pm/InstantAppResolverConnection;I)V
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2d

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_45

    .line 326
    :cond_2f
    :goto_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35
    .catchall {:try_start_2f .. :try_end_34} :catchall_2d

    goto :goto_3a

    .line 328
    :catch_35
    :try_start_35
    iget-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p2}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$mhandleBinderDiedLocked(Lcom/android/server/pm/InstantAppResolverConnection;)V

    .line 330
    :goto_3a
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fgetmLock(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 331
    monitor-exit p1

    return-void

    :goto_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_2d

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 336
    invoke-static {}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$sfgetDEBUG_INSTANT()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 337
    const-string p1, "PackageManager"

    const-string v0, "Disconnected from instant app resolver"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_d
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fgetmLock(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 340
    :try_start_14
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$mhandleBinderDiedLocked(Lcom/android/server/pm/InstantAppResolverConnection;)V

    .line 341
    monitor-exit p1

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p0
.end method
