.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;
.super Ljava/lang/Object;
.source "TvInteractiveAppManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .registers 4

    .line 3655
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3656
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 3657
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .line 3665
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3666
    :try_start_7
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 3669
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3670
    monitor-exit p1

    return-void

    :catchall_1c
    move-exception p0

    goto/16 :goto_f1

    .line 3672
    :cond_1f
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    .line 3673
    invoke-static {p2}, Landroid/media/tv/ad/ITvAdService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fputmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Landroid/media/tv/ad/ITvAdService;)V

    .line 3676
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    move-result-object p2

    if-nez p2, :cond_5a

    .line 3677
    new-instance p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-direct {p2, v1, v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    invoke-static {v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fputmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;)V
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_1c

    .line 3679
    :try_start_46
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Landroid/media/tv/ad/ITvAdService;

    move-result-object p2

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    move-result-object v1

    invoke-interface {p2, v1}, Landroid/media/tv/ad/ITvAdService;->registerCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_51} :catch_52
    .catchall {:try_start_46 .. :try_end_51} :catchall_1c

    goto :goto_5a

    :catch_52
    move-exception p2

    .line 3681
    :try_start_53
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in registerCallback"

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3685
    :cond_5a
    :goto_5a
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_ad

    .line 3686
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3687
    :goto_6c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 3688
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 3689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_7c
    .catchall {:try_start_53 .. :try_end_7c} :catchall_1c

    .line 3691
    :try_start_7c
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Landroid/media/tv/ad/ITvAdService;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/tv/ad/ITvAdService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    .line 3692
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_86} :catch_89
    .catchall {:try_start_7c .. :try_end_86} :catchall_87

    goto :goto_a5

    :catchall_87
    move-exception p0

    goto :goto_a9

    :catch_89
    move-exception v4

    .line 3694
    :try_start_8a
    const-string v5, "TvInteractiveAppManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error in sendAppLinkCommand("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") when onServiceConnected"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catchall {:try_start_8a .. :try_end_a5} :catchall_87

    .line 3697
    :goto_a5
    :try_start_a5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6c

    :goto_a9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3698
    throw p0

    .line 3702
    :cond_ad
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3705
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ba
    :goto_ba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 3706
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Landroid/media/tv/ad/ITvAdService;

    move-result-object v4

    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateAdSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdService;Landroid/os/IBinder;I)Z

    move-result v3

    if-nez v3, :cond_ba

    .line 3708
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    .line 3712
    :cond_d8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_dd
    if-ge v1, v0, :cond_ef

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/os/IBinder;

    .line 3713
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-static {v3, v2, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    goto :goto_dd

    .line 3715
    :cond_ef
    monitor-exit p1

    return-void

    :goto_f1
    monitor-exit p1
    :try_end_f2
    .catchall {:try_start_a5 .. :try_end_f2} :catchall_1c

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 3723
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3727
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3728
    :try_start_f
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-static {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p1

    .line 3729
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    if-eqz p1, :cond_3e

    const/4 v1, 0x1

    .line 3731
    invoke-static {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fputmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Z)V

    const/4 v1, 0x0

    .line 3732
    invoke-static {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fputmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Z)V

    const/4 v1, 0x0

    .line 3733
    invoke-static {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fputmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Landroid/media/tv/ad/ITvAdService;)V

    .line 3734
    invoke-static {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fputmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;)V

    .line 3736
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-static {v2, p1, v1, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mabortPendingCreateAdSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Ljava/lang/String;I)V

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_40

    .line 3738
    :cond_3e
    :goto_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_3c

    throw p0

    .line 3724
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched ComponentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (expected), "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (actual)."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
