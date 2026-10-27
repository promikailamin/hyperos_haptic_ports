.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
.super Landroid/media/projection/IMediaProjectionManager$Stub;
.source "MediaProjectionManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/content/Context;)V
    .registers 3

    .line 791
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 792
    invoke-static {p2}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/projection/IMediaProjectionManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;
    .registers 4

    .line 948
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->addCallback_enforcePermission()V

    .line 949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 951
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 953
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    throw p0
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1112
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public createProjection(ILjava/lang/String;IZI)Landroid/media/projection/IMediaProjection;
    .registers 9

    .line 819
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3d

    if-eqz p2, :cond_34

    .line 824
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 829
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_2d

    .line 830
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "createProjection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_2d
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/media/projection/MediaProjectionManagerService;->createProjectionInternal(ILjava/lang/String;IZI)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object p0

    return-object p0

    .line 825
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "package name must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 821
    :cond_3d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires MANAGE_MEDIA_PROJECTION in order to grant projection permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1102
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "MediaProjectionManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 1103
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1105
    :try_start_13
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mdump(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 1107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1108
    throw p0
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 3

    .line 866
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 871
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 873
    :try_start_12
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 875
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 876
    throw p0

    .line 868
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires MANAGE_MEDIA_PROJECTION in order to get active projection info"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProjection(ILjava/lang/String;)Landroid/media/projection/IMediaProjection;
    .registers 5

    .line 841
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->getProjection_enforcePermission()V

    if-eqz p2, :cond_1e

    .line 842
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 849
    :try_start_f
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->getProjectionInternal(ILjava/lang/String;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 851
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 852
    throw p0

    .line 843
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "package name must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasProjectionPermission(ILjava/lang/String;)Z
    .registers 6

    .line 797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 800
    :try_start_4
    const-string v2, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-virtual {p0, p2, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object p0

    const/16 v2, 0x2e

    .line 802
    invoke-virtual {p0, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    if-nez p0, :cond_1b

    goto :goto_1f

    :cond_1b
    const/4 p0, 0x0

    goto :goto_20

    :catchall_1d
    move-exception p0

    goto :goto_24

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    .line 806
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    throw p0
.end method

.method public isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z
    .registers 2

    .line 859
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->isCurrentProjection_enforcePermission()V

    .line 860
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    .line 861
    :cond_9
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 860
    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isCurrentProjection(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public notifyActiveProjectionCapturedContentVisibilityChanged(Z)V
    .registers 6

    .line 927
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyActiveProjectionCapturedContentVisibilityChanged_enforcePermission()V

    .line 928
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 929
    :try_start_a
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 930
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    goto :goto_54

    .line 932
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_18

    .line 933
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 935
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_4f

    .line 936
    :try_start_26
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmCallbackDelegate(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 937
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmCallbackDelegate(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object p0

    invoke-virtual {v3, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchVisibilityChanged(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Z)V

    goto :goto_48

    :catchall_46
    move-exception p0

    goto :goto_4d

    .line 939
    :cond_48
    :goto_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_46

    .line 941
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 939
    :goto_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_46

    :try_start_4e
    throw p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception p0

    .line 941
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    throw p0

    .line 932
    :goto_54
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_18

    throw p0
.end method

.method public notifyAppSelectorDisplayed(I)V
    .registers 4

    .line 1077
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyAppSelectorDisplayed_enforcePermission()V

    .line 1078
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1080
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyAppSelectorDisplayed(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 1082
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1083
    throw p0
.end method

.method public notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    .registers 8

    .line 900
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyCaptureBoundsChanged_enforcePermission()V

    .line 901
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 902
    :try_start_a
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 903
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    goto :goto_61

    .line 905
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_18

    .line 906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 908
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_5c

    .line 909
    :try_start_26
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmCallbackDelegate(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 911
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V

    .line 915
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmCallbackDelegate(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object p0

    .line 916
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    .line 915
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchResize(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;II)V

    goto :goto_55

    :catchall_53
    move-exception p0

    goto :goto_5a

    .line 918
    :cond_55
    :goto_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_26 .. :try_end_56} :catchall_53

    .line 920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 918
    :goto_5a
    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_53

    :try_start_5b
    throw p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p0

    .line 920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 921
    throw p0

    .line 905
    :goto_61
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_18

    throw p0
.end method

.method public notifyPermissionRequestCancelled(I)V
    .registers 4

    .line 1065
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyPermissionRequestCancelled_enforcePermission()V

    .line 1066
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1068
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyPermissionRequestCancelled(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 1070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    throw p0
.end method

.method public notifyPermissionRequestDisplayed(I)V
    .registers 4

    .line 1053
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyPermissionRequestDisplayed_enforcePermission()V

    .line 1054
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1056
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyPermissionRequestDisplayed(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 1058
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    throw p0
.end method

.method public notifyPermissionRequestInitiated(II)V
    .registers 5

    .line 1040
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyPermissionRequestInitiated_enforcePermission()V

    .line 1041
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1043
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyPermissionRequestInitiated(II)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 1046
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1047
    throw p0
.end method

.method public notifyWindowingModeChanged(III)V
    .registers 6

    .line 1090
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyWindowingModeChanged_enforcePermission()V

    .line 1091
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1093
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->notifyWindowingModeChanged(III)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 1096
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1097
    throw p0
.end method

.method public removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 4

    .line 959
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 966
    :try_start_12
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 968
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    throw p0

    .line 961
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires MANAGE_MEDIA_PROJECTION in order to remove projection callbacks"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestConsentForInvalidProjection(Landroid/media/projection/IMediaProjection;)V
    .registers 4

    .line 995
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->requestConsentForInvalidProjection_enforcePermission()V

    .line 997
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 998
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 999
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Reusing token: Won\'t request consent again for a token that isn\'t current"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    goto :goto_49

    .line 1004
    :cond_1b
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmMediaProjectionStopController(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionStopController;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/media/projection/MediaProjectionStopController;->isStartForbidden(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1005
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Reusing token: Won\'t request consent while MediaProjection is restricted"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    monitor-exit v0

    return-void

    .line 1010
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_19

    .line 1013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1015
    :try_start_3b
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->requestConsentForInvalidProjection()V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_44

    .line 1017
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1018
    throw p0

    .line 1010
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_19

    throw p0
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)Z
    .registers 5

    .line 976
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->setContentRecordingSession_enforcePermission()V

    .line 977
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 978
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 982
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_24

    .line 983
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 985
    :try_start_15
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1f

    .line 988
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 989
    throw p0

    :catchall_24
    move-exception p0

    goto :goto_2e

    .line 979
    :cond_26
    :try_start_26
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Unable to set ContentRecordingSession on non-current MediaProjection"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 982
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_24

    throw p0
.end method

.method public setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V
    .registers 5

    .line 1025
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->setUserReviewGrantedConsentResult_enforcePermission()V

    .line 1027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1029
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 1032
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1033
    throw p0
.end method

.method public stopActiveProjection(I)V
    .registers 7

    .line 882
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->stopActiveProjection_enforcePermission()V

    .line 883
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 885
    :try_start_7
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_30

    .line 886
    :try_start_e
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 887
    const-string v3, "MediaProjectionManagerService"

    const-string v4, "Content Recording: Stopping active projection"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_2e

    .line 890
    :cond_29
    :goto_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_27

    .line 892
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 890
    :goto_2e
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_27

    :try_start_2f
    throw p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 892
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 893
    throw p0
.end method
