.class final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
.super Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .registers 2

    .line 642
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    return-void
.end method


# virtual methods
.method public createBiInteractiveApp(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 14
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "biIAppUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1131
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createBiInteractiveApp"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1133
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1134
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1136
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3f

    .line 1138
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1140
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2c} :catch_2f
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2c} :catch_2f
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2d

    .line 1144
    goto :goto_37

    .line 1145
    :catchall_2d
    move-exception v6

    goto :goto_3d

    .line 1142
    :catch_2f
    move-exception v6

    .line 1143
    .local v6, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in createBiInteractiveApp"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1145
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_2d

    .line 1147
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1148
    nop

    .line 1149
    return-void

    .line 1145
    :goto_3d
    :try_start_3d
    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_2d

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "biIAppUri":Landroid/net/Uri;
    .end local p3    # "params":Landroid/os/Bundle;
    .end local p4    # "userId":I
    :try_start_3e
    throw v6
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    .line 1147
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "biIAppUri":Landroid/net/Uri;
    .restart local p3    # "params":Landroid/os/Bundle;
    .restart local p4    # "userId":I
    :catchall_3f
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1148
    throw v5
.end method

.method public createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "userId"    # I

    .line 1508
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1509
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createMediaView"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1511
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1513
    .local v2, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_37

    .line 1515
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v5

    .line 1516
    invoke-interface {v5, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_27
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    .line 1519
    goto :goto_2f

    .line 1520
    :catchall_25
    move-exception v5

    goto :goto_35

    .line 1517
    :catch_27
    move-exception v5

    .line 1518
    .local v5, "e":Ljava/lang/Exception;
    :try_start_28
    const-string v6, "TvInteractiveAppManagerService"

    const-string v7, "error in createMediaView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1520
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_25

    .line 1522
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    nop

    .line 1524
    return-void

    .line 1520
    :goto_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_25

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "frame":Landroid/graphics/Rect;
    .end local p4    # "userId":I
    :try_start_36
    throw v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 1522
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "windowToken":Landroid/os/IBinder;
    .restart local p3    # "frame":Landroid/graphics/Rect;
    .restart local p4    # "userId":I
    :catchall_37
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    throw v4
.end method

.method public createSession(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;III)V
    .registers 32
    .param p1, "client"    # Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .param p2, "iAppServiceId"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "seq"    # I
    .param p5, "userId"    # I

    .line 779
    move-object/from16 v1, p0

    move-object/from16 v14, p2

    move/from16 v15, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 780
    .local v13, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 781
    .local v12, "callingPid":I
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string v2, "createSession"

    invoke-static {v0, v12, v13, v15, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v11

    .line 783
    .local v11, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 786
    .local v16, "identity":J
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_162

    .line 787
    :try_start_21
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)I

    move-result v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_156

    if-eq v15, v0, :cond_53

    :try_start_29
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 790
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 791
    monitor-exit v18
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_4b

    .line 837
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    return-void

    .line 835
    :catchall_4b
    move-exception v0

    move v5, v11

    move/from16 v24, v12

    move/from16 v25, v13

    goto/16 :goto_15c

    .line 793
    :cond_53
    :try_start_53
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 794
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_156

    move-object/from16 v19, v2

    .line 795
    .local v19, "iAppState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    if-nez v19, :cond_91

    .line 796
    :try_start_67
    const-string v2, "TvInteractiveAppManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find state for iAppServiceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 798
    monitor-exit v18
    :try_end_8d
    .catchall {:try_start_67 .. :try_end_8d} :catchall_4b

    .line 837
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    return-void

    .line 800
    :cond_91
    :try_start_91
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v3

    .line 801
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_156

    move-object v8, v2

    .line 802
    .local v8, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    if-nez v8, :cond_d2

    .line 803
    :try_start_a2
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v2

    .line 804
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 803
    invoke-static {v2, v3, v4, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v2

    .line 805
    .local v9, "tiasUid":I
    new-instance v10, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v7, 0x0

    move-object v2, v10

    move-object/from16 v5, p2

    move v6, v11

    invoke-direct/range {v2 .. v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState-IA;)V

    move-object v8, v10

    .line 807
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cf
    .catchall {:try_start_a2 .. :try_end_cf} :catchall_4b

    move-object/from16 v20, v8

    goto :goto_d4

    .line 802
    .end local v9    # "tiasUid":I
    :cond_d2
    move-object/from16 v20, v8

    .line 810
    .end local v8    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .local v20, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    :goto_d4
    :try_start_d4
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Z

    move-result v2
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_156

    if-eqz v2, :cond_ec

    .line 811
    :try_start_da
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 812
    monitor-exit v18
    :try_end_e8
    .catchall {:try_start_da .. :try_end_e8} :catchall_4b

    .line 837
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 812
    return-void

    .line 816
    :cond_ec
    :try_start_ec
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    move-object v10, v2

    .line 817
    .local v10, "sessionToken":Landroid/os/IBinder;
    new-instance v21, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v7
    :try_end_fa
    .catchall {:try_start_ec .. :try_end_fa} :catchall_156

    const/16 v22, 0x0

    move-object/from16 v2, v21

    move-object v4, v10

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p1

    move/from16 v9, p4

    move-object v14, v10

    .end local v10    # "sessionToken":Landroid/os/IBinder;
    .local v14, "sessionToken":Landroid/os/IBinder;
    move v10, v13

    move/from16 v23, v11

    .end local v11    # "resolvedUserId":I
    .local v23, "resolvedUserId":I
    move v11, v12

    move/from16 v24, v12

    .end local v12    # "callingPid":I
    .local v24, "callingPid":I
    move/from16 v12, v23

    move/from16 v25, v13

    .end local v13    # "callingUid":I
    .local v25, "callingUid":I
    move-object/from16 v13, v22

    :try_start_114
    invoke-direct/range {v2 .. v13}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/ComponentName;Landroid/media/tv/interactive/ITvInteractiveAppClient;IIIILcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState-IA;)V

    move-object/from16 v2, v21

    .line 822
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v3

    if-eqz v3, :cond_141

    .line 828
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v4
    :try_end_133
    .catchall {:try_start_114 .. :try_end_133} :catchall_152

    move/from16 v5, v23

    .end local v23    # "resolvedUserId":I
    .local v5, "resolvedUserId":I
    :try_start_135
    invoke-static {v3, v4, v14, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z

    move-result v3

    if-nez v3, :cond_14c

    .line 830
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3, v14, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    goto :goto_14c

    .line 833
    .end local v5    # "resolvedUserId":I
    .restart local v23    # "resolvedUserId":I
    :cond_141
    move/from16 v5, v23

    .end local v23    # "resolvedUserId":I
    .restart local v5    # "resolvedUserId":I
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 835
    .end local v0    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v14    # "sessionToken":Landroid/os/IBinder;
    .end local v19    # "iAppState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    .end local v20    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    :cond_14c
    :goto_14c
    monitor-exit v18
    :try_end_14d
    .catchall {:try_start_135 .. :try_end_14d} :catchall_160

    .line 837
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    nop

    .line 839
    return-void

    .line 835
    .end local v5    # "resolvedUserId":I
    .restart local v23    # "resolvedUserId":I
    :catchall_152
    move-exception v0

    move/from16 v5, v23

    .end local v23    # "resolvedUserId":I
    .restart local v5    # "resolvedUserId":I
    goto :goto_15c

    .end local v5    # "resolvedUserId":I
    .end local v24    # "callingPid":I
    .end local v25    # "callingUid":I
    .restart local v11    # "resolvedUserId":I
    .restart local v12    # "callingPid":I
    .restart local v13    # "callingUid":I
    :catchall_156
    move-exception v0

    move v5, v11

    move/from16 v24, v12

    move/from16 v25, v13

    .end local v11    # "resolvedUserId":I
    .end local v12    # "callingPid":I
    .end local v13    # "callingUid":I
    .restart local v5    # "resolvedUserId":I
    .restart local v24    # "callingPid":I
    .restart local v25    # "callingUid":I
    :goto_15c
    :try_start_15c
    monitor-exit v18
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_160

    .end local v5    # "resolvedUserId":I
    .end local v16    # "identity":J
    .end local v24    # "callingPid":I
    .end local v25    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "client":Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .end local p2    # "iAppServiceId":Ljava/lang/String;
    .end local p3    # "type":I
    .end local p4    # "seq":I
    .end local p5    # "userId":I
    :try_start_15d
    throw v0
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_15e

    .line 837
    .restart local v5    # "resolvedUserId":I
    .restart local v16    # "identity":J
    .restart local v24    # "callingPid":I
    .restart local v25    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "client":Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .restart local p2    # "iAppServiceId":Ljava/lang/String;
    .restart local p3    # "type":I
    .restart local p4    # "seq":I
    .restart local p5    # "userId":I
    :catchall_15e
    move-exception v0

    goto :goto_168

    .line 835
    :catchall_160
    move-exception v0

    goto :goto_15c

    .line 837
    .end local v5    # "resolvedUserId":I
    .end local v24    # "callingPid":I
    .end local v25    # "callingUid":I
    .restart local v11    # "resolvedUserId":I
    .restart local v12    # "callingPid":I
    .restart local v13    # "callingUid":I
    :catchall_162
    move-exception v0

    move v5, v11

    move/from16 v24, v12

    move/from16 v25, v13

    .end local v11    # "resolvedUserId":I
    .end local v12    # "callingPid":I
    .end local v13    # "callingUid":I
    .restart local v5    # "resolvedUserId":I
    .restart local v24    # "callingPid":I
    .restart local v25    # "callingUid":I
    :goto_168
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    throw v0
.end method

.method public destroyBiInteractiveApp(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "biIAppId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1157
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "destroyBiInteractiveApp"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1159
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1160
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1162
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3f

    .line 1164
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1166
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->destroyBiInteractiveApp(Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2c} :catch_2f
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2c} :catch_2f
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2d

    .line 1169
    goto :goto_37

    .line 1170
    :catchall_2d
    move-exception v6

    goto :goto_3d

    .line 1167
    :catch_2f
    move-exception v6

    .line 1168
    .local v6, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in destroyBiInteractiveApp"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_2d

    .line 1172
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1173
    nop

    .line 1174
    return-void

    .line 1170
    :goto_3d
    :try_start_3d
    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_2d

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "biIAppId":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_3e
    throw v6
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    .line 1172
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "biIAppId":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_3f
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1173
    throw v5
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .registers 14
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "userId"    # I

    .line 1406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1407
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "dispatchSurfaceChanged"

    invoke-static {v1, v2, v0, p5, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1409
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1411
    .local v2, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3d

    .line 1413
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v5

    .line 1415
    .local v5, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->dispatchSurfaceChanged(III)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    .line 1419
    .end local v5    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    goto :goto_35

    .line 1420
    :catchall_2b
    move-exception v5

    goto :goto_3b

    .line 1417
    :catch_2d
    move-exception v5

    .line 1418
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string v6, "TvInteractiveAppManagerService"

    const-string v7, "error in dispatchSurfaceChanged"

    invoke-static {v6, v7, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1420
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 1422
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    nop

    .line 1424
    return-void

    .line 1420
    :goto_3b
    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2b

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "format":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "userId":I
    :try_start_3c
    throw v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 1422
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "format":I
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    .restart local p5    # "userId":I
    :catchall_3d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    throw v4
.end method

.method public getTvInteractiveAppServiceList(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 647
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvInteractiveAppServiceList"

    .line 646
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 648
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 650
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_63

    .line 651
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmGetServiceListCalled(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 652
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mbuildTvInteractiveAppServiceListLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I[Ljava/lang/String;)V

    .line 653
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fputmGetServiceListCalled(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Z)V

    .line 655
    :cond_2f
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v4

    .line 656
    .local v4, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v5, "iAppList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;>;"
    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    .line 658
    .local v7, "state":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    invoke-static {v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    nop

    .end local v7    # "state":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    goto :goto_46

    .line 660
    :cond_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_1b .. :try_end_5c} :catchall_60

    .line 663
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    return-object v5

    .line 661
    .end local v4    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v5    # "iAppList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;>;"
    :catchall_60
    move-exception v4

    :try_start_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "userId":I
    :try_start_62
    throw v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    .line 663
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "userId":I
    :catchall_63
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    throw v3
.end method

.method public notifyAdResponse(Landroid/os/IBinder;Landroid/media/tv/AdResponse;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "response"    # Landroid/media/tv/AdResponse;
    .param p3, "userId"    # I

    .line 1451
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1452
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1453
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "notifyAdResponse"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1455
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1457
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3e

    .line 1459
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    .line 1461
    .local v6, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v7, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyAdResponse(Landroid/media/tv/AdResponse;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 1464
    .end local v6    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    goto :goto_36

    .line 1465
    :catchall_2c
    move-exception v6

    goto :goto_3c

    .line 1462
    :catch_2e
    move-exception v6

    .line 1463
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifyAdResponse"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1465
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1467
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1468
    nop

    .line 1469
    return-void

    .line 1465
    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2c

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "response":Landroid/media/tv/AdResponse;
    .end local p3    # "userId":I
    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 1467
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "response":Landroid/media/tv/AdResponse;
    .restart local p3    # "userId":I
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1468
    throw v5
.end method

.method public notifyBroadcastInfoResponse(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoResponse;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "response"    # Landroid/media/tv/BroadcastInfoResponse;
    .param p3, "userId"    # I

    .line 1429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1430
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1431
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "notifyBroadcastInfoResponse"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1433
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1435
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3e

    .line 1437
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    .line 1439
    .local v6, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v7, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 1442
    .end local v6    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    goto :goto_36

    .line 1443
    :catchall_2c
    move-exception v6

    goto :goto_3c

    .line 1440
    :catch_2e
    move-exception v6

    .line 1441
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifyBroadcastInfoResponse"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1443
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1445
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1446
    nop

    .line 1447
    return-void

    .line 1443
    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2c

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "response":Landroid/media/tv/BroadcastInfoResponse;
    .end local p3    # "userId":I
    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 1445
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "response":Landroid/media/tv/BroadcastInfoResponse;
    .restart local p3    # "userId":I
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1446
    throw v5
.end method

.method public notifyContentAllowed(Landroid/os/IBinder;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 986
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 987
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "notifyContentAllowed"

    invoke-static {v2, v1, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 989
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 991
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3e

    .line 993
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    .line 995
    .local v6, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v7, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyContentAllowed()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 998
    .end local v6    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    goto :goto_36

    .line 999
    :catchall_2c
    move-exception v6

    goto :goto_3c

    .line 996
    :catch_2e
    move-exception v6

    .line 997
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifyContentAllowed"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1001
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    nop

    .line 1003
    return-void

    .line 999
    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2c

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 1001
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    throw v5
.end method

.method public notifyContentBlocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "rating"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1008
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1009
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "notifyContentBlocked"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1011
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1013
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3e

    .line 1015
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    .line 1017
    .local v6, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v7, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyContentBlocked(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 1020
    .end local v6    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    goto :goto_36

    .line 1021
    :catchall_2c
    move-exception v6

    goto :goto_3c

    .line 1018
    :catch_2e
    move-exception v6

    .line 1019
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifyContentBlocked"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1023
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1024
    nop

    .line 1025
    return-void

    .line 1021
    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2c

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "rating":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 1023
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "rating":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1024
    throw v5
.end method

.method public notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 14
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "errMsg"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1358
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 1359
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "notifyError"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1360
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1361
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1363
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1365
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 1366
    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1367
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1370
    goto :goto_38

    .line 1371
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1368
    :catch_30
    move-exception v6

    .line 1369
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifyError"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1371
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1373
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1374
    nop

    .line 1375
    return-void

    .line 1371
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "errMsg":Ljava/lang/String;
    .end local p3    # "params":Landroid/os/Bundle;
    .end local p4    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1373
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "errMsg":Ljava/lang/String;
    .restart local p3    # "params":Landroid/os/Bundle;
    .restart local p4    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1374
    throw v5
.end method

.method public notifySignalStrength(Landroid/os/IBinder;II)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "strength"    # I
    .param p3, "userId"    # I

    .line 1029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1030
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1031
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "notifySignalStrength"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1033
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1035
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3e

    .line 1037
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    .line 1039
    .local v6, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v7, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifySignalStrength(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 1042
    .end local v6    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    goto :goto_36

    .line 1043
    :catchall_2c
    move-exception v6

    goto :goto_3c

    .line 1040
    :catch_2e
    move-exception v6

    .line 1041
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifySignalStrength"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1045
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    nop

    .line 1047
    return-void

    .line 1043
    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2c

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "strength":I
    .end local p3    # "userId":I
    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 1045
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "strength":I
    .restart local p3    # "userId":I
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    throw v5
.end method

.method public notifyTrackSelected(Landroid/os/IBinder;ILjava/lang/String;I)V
    .registers 14
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 892
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 893
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "notifyTrackSelected"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 895
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 896
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 898
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 900
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 902
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyTrackSelected(ILjava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 905
    goto :goto_38

    .line 906
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 903
    :catch_30
    move-exception v6

    .line 904
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifyTrackSelected"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 908
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 909
    nop

    .line 910
    return-void

    .line 906
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "type":I
    .end local p3    # "trackId":Ljava/lang/String;
    .end local p4    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 908
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "type":I
    .restart local p3    # "trackId":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 909
    throw v5
.end method

.method public notifyTracksChanged(Landroid/os/IBinder;Ljava/util/List;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation

    .line 919
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 920
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "notifyTracksChanged"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 922
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 923
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 925
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 927
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 929
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyTracksChanged(Ljava/util/List;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 932
    goto :goto_38

    .line 933
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 930
    :catch_30
    move-exception v6

    .line 931
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifyTracksChanged"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 935
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    nop

    .line 937
    return-void

    .line 933
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    .end local p3    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 935
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    .restart local p3    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    throw v5
.end method

.method public notifyTuned(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 865
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 866
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "notifyTuned"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 868
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 869
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 871
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 873
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 875
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyTuned(Landroid/net/Uri;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 878
    goto :goto_38

    .line 879
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 876
    :catch_30
    move-exception v6

    .line 877
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifyTuned"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 881
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    nop

    .line 883
    return-void

    .line 879
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "channelUri":Landroid/net/Uri;
    .end local p3    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 881
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "channelUri":Landroid/net/Uri;
    .restart local p3    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    throw v5
.end method

.method public notifyVideoAvailable(Landroid/os/IBinder;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 941
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 942
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 943
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "notifyVideoAvailable"

    invoke-static {v2, v1, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 945
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 947
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3e

    .line 949
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    .line 951
    .local v6, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v7, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyVideoAvailable()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 954
    .end local v6    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    goto :goto_36

    .line 955
    :catchall_2c
    move-exception v6

    goto :goto_3c

    .line 952
    :catch_2e
    move-exception v6

    .line 953
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifyVideoAvailable"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 957
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 958
    nop

    .line 959
    return-void

    .line 955
    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2c

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 957
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 958
    throw v5
.end method

.method public notifyVideoUnavailable(Landroid/os/IBinder;II)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "reason"    # I
    .param p3, "userId"    # I

    .line 963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 964
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 965
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "notifyVideoUnavailable"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 967
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 969
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3e

    .line 971
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    .line 973
    .local v6, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v7, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyVideoUnavailable(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 976
    .end local v6    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    goto :goto_36

    .line 977
    :catchall_2c
    move-exception v6

    goto :goto_3c

    .line 974
    :catch_2e
    move-exception v6

    .line 975
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in notifyVideoUnavailable"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 979
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    nop

    .line 981
    return-void

    .line 977
    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2c

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "reason":I
    .end local p3    # "userId":I
    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 979
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "reason":I
    .restart local p3    # "userId":I
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    throw v5
.end method

.method public registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    .registers 23
    .param p1, "tiasId"    # Ljava/lang/String;
    .param p2, "appLinkInfo"    # Landroid/media/tv/interactive/AppLinkInfo;
    .param p3, "userId"    # I

    .line 669
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 670
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerAppLinkInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 669
    move/from16 v10, p3

    invoke-static {v0, v2, v3, v10, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v11

    .line 671
    .local v11, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 673
    .local v12, "identity":J
    :try_start_2e
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_c6
    .catchall {:try_start_2e .. :try_end_35} :catchall_c4

    .line 674
    :try_start_35
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 675
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    move-object v15, v2

    .line 676
    .local v15, "iAppState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    if-nez v15, :cond_65

    .line 677
    const-string v2, "TvInteractiveAppManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to registerAppLinkInfo - unknown TIAS id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    monitor-exit v14
    :try_end_61
    .catchall {:try_start_35 .. :try_end_61} :catchall_c1

    .line 699
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 679
    return-void

    .line 681
    :cond_65
    :try_start_65
    invoke-static {v15}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v7, v2

    .line 682
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    move-object v6, v2

    .line 683
    .local v6, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    const/4 v5, 0x1

    if-nez v6, :cond_a3

    .line 684
    new-instance v16, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/16 v17, 0x0

    move-object/from16 v2, v16

    move-object v4, v7

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    .end local v6    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .local v18, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    move v6, v11

    move-object v8, v7

    .end local v7    # "componentName":Landroid/content/ComponentName;
    .local v8, "componentName":Landroid/content/ComponentName;
    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState-IA;)V

    move-object/from16 v2, v16

    .line 686
    .end local v18    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .local v2, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    const/4 v3, 0x1

    invoke-static {v2, v9, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLink(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/AppLinkInfo;Z)V

    .line 687
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3, v8, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    goto :goto_bf

    .line 689
    .end local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    :cond_a3
    move v3, v5

    move-object/from16 v18, v6

    move-object v8, v7

    .end local v6    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    if-eqz v2, :cond_b5

    .line 690
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    invoke-interface {v2, v9}, Landroid/media/tv/interactive/ITvInteractiveAppService;->registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    goto :goto_bf

    .line 692
    :cond_b5
    move-object/from16 v2, v18

    .end local v18    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .restart local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static {v2, v9, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLink(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/AppLinkInfo;Z)V

    .line 693
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3, v8, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 695
    .end local v0    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v15    # "iAppState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    :goto_bf
    monitor-exit v14

    .line 699
    goto :goto_cf

    .line 695
    :catchall_c1
    move-exception v0

    monitor-exit v14
    :try_end_c3
    .catchall {:try_start_65 .. :try_end_c3} :catchall_c1

    .end local v11    # "resolvedUserId":I
    .end local v12    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "tiasId":Ljava/lang/String;
    .end local p2    # "appLinkInfo":Landroid/media/tv/interactive/AppLinkInfo;
    .end local p3    # "userId":I
    :try_start_c3
    throw v0
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c4} :catch_c6
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c4

    .line 699
    .restart local v11    # "resolvedUserId":I
    .restart local v12    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "tiasId":Ljava/lang/String;
    .restart local p2    # "appLinkInfo":Landroid/media/tv/interactive/AppLinkInfo;
    .restart local p3    # "userId":I
    :catchall_c4
    move-exception v0

    goto :goto_d4

    .line 696
    :catch_c6
    move-exception v0

    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_c7
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in registerAppLinkInfo"

    invoke-static {v2, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_c4

    .line 699
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_cf
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    nop

    .line 701
    return-void

    .line 699
    :goto_d4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    throw v0
.end method

.method public registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V
    .registers 12
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .param p2, "userId"    # I

    .line 1473
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1474
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1475
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "registerCallback"

    invoke-static {v2, v0, v1, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1477
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1479
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3c

    .line 1480
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v6

    .line 1481
    .local v6, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 1482
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "client process has already died"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    .end local v6    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    :cond_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_39

    .line 1486
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1487
    nop

    .line 1488
    return-void

    .line 1484
    :catchall_39
    move-exception v6

    :try_start_3a
    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "callback":Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .end local p2    # "userId":I
    :try_start_3b
    throw v6
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 1486
    .restart local v0    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "callback":Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .restart local p2    # "userId":I
    :catchall_3c
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1487
    throw v5
.end method

.method public relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "userId"    # I

    .line 1528
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1529
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "relayoutMediaView"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1531
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1533
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1535
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v5

    .line 1536
    invoke-interface {v5, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->relayoutMediaView(Landroid/graphics/Rect;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1539
    goto :goto_30

    .line 1540
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1537
    :catch_28
    move-exception v5

    .line 1538
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInteractiveAppManagerService"

    const-string v7, "error in relayoutMediaView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1540
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1542
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1543
    nop

    .line 1544
    return-void

    .line 1540
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "frame":Landroid/graphics/Rect;
    .end local p3    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1542
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "frame":Landroid/graphics/Rect;
    .restart local p3    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1543
    throw v4
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 846
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 847
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "releaseSession"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 849
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 851
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2a

    .line 852
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 853
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_27

    .line 855
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 856
    nop

    .line 857
    return-void

    .line 853
    :catchall_27
    move-exception v5

    :try_start_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_29
    throw v5
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 855
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_2a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 856
    throw v4
.end method

.method public removeMediaView(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1549
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "removeMediaView"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1551
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1553
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1555
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v5

    .line 1556
    invoke-interface {v5}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->removeMediaView()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1559
    goto :goto_30

    .line 1560
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1557
    :catch_28
    move-exception v5

    .line 1558
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInteractiveAppManagerService"

    const-string v7, "error in removeMediaView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1562
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    nop

    .line 1564
    return-void

    .line 1560
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1562
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    throw v4
.end method

.method public resetInteractiveApp(Landroid/os/IBinder;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1105
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "resetInteractiveApp"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1107
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1108
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1110
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1112
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1114
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->resetInteractiveApp()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1117
    goto :goto_38

    .line 1118
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1115
    :catch_30
    move-exception v6

    .line 1116
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in reset"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1120
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1121
    nop

    .line 1122
    return-void

    .line 1118
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1120
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1121
    throw v5
.end method

.method public sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 23
    .param p1, "tiasId"    # Ljava/lang/String;
    .param p2, "command"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 741
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 742
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v4, "sendAppLinkCommand"

    .line 741
    move/from16 v10, p3

    invoke-static {v0, v2, v3, v10, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v11

    .line 743
    .local v11, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 745
    .local v12, "identity":J
    :try_start_1d
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_b2
    .catchall {:try_start_1d .. :try_end_24} :catchall_b0

    .line 746
    :try_start_24
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 747
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    move-object v15, v2

    .line 748
    .local v15, "iAppState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    if-nez v15, :cond_54

    .line 749
    const-string v2, "TvInteractiveAppManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to sendAppLinkCommand - unknown TIAS id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    monitor-exit v14
    :try_end_50
    .catchall {:try_start_24 .. :try_end_50} :catchall_ad

    .line 771
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    return-void

    .line 753
    :cond_54
    :try_start_54
    invoke-static {v15}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v7, v2

    .line 754
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    move-object v6, v2

    .line 755
    .local v6, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    if-nez v6, :cond_90

    .line 756
    new-instance v16, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/16 v17, 0x0

    move-object/from16 v2, v16

    move-object v4, v7

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    .end local v6    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .local v18, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    move v6, v11

    move-object v8, v7

    .end local v7    # "componentName":Landroid/content/ComponentName;
    .local v8, "componentName":Landroid/content/ComponentName;
    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState-IA;)V

    move-object/from16 v2, v16

    .line 758
    .end local v18    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .local v2, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static {v2, v9}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/os/Bundle;)V

    .line 759
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3, v8, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    goto :goto_ab

    .line 761
    .end local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    :cond_90
    move-object/from16 v18, v6

    move-object v8, v7

    .end local v6    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    if-eqz v2, :cond_a1

    .line 762
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    invoke-interface {v2, v9}, Landroid/media/tv/interactive/ITvInteractiveAppService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    goto :goto_ab

    .line 764
    :cond_a1
    move-object/from16 v2, v18

    .end local v18    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .restart local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static {v2, v9}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/os/Bundle;)V

    .line 765
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3, v8, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 767
    .end local v0    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v15    # "iAppState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    :goto_ab
    monitor-exit v14

    .line 771
    goto :goto_bb

    .line 767
    :catchall_ad
    move-exception v0

    monitor-exit v14
    :try_end_af
    .catchall {:try_start_54 .. :try_end_af} :catchall_ad

    .end local v11    # "resolvedUserId":I
    .end local v12    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "tiasId":Ljava/lang/String;
    .end local p2    # "command":Landroid/os/Bundle;
    .end local p3    # "userId":I
    :try_start_af
    throw v0
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b0} :catch_b2
    .catchall {:try_start_af .. :try_end_b0} :catchall_b0

    .line 771
    .restart local v11    # "resolvedUserId":I
    .restart local v12    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "tiasId":Ljava/lang/String;
    .restart local p2    # "command":Landroid/os/Bundle;
    .restart local p3    # "userId":I
    :catchall_b0
    move-exception v0

    goto :goto_c0

    .line 768
    :catch_b2
    move-exception v0

    .line 769
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_b3
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in sendAppLinkCommand"

    invoke-static {v2, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_b0

    .line 771
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_bb
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 772
    nop

    .line 773
    return-void

    .line 771
    :goto_c0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 772
    throw v0
.end method

.method public sendCurrentChannelLcn(Landroid/os/IBinder;II)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "lcn"    # I
    .param p3, "userId"    # I

    .line 1231
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1232
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendCurrentChannelLcn"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1234
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1235
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1237
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1239
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1241
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendCurrentChannelLcn(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1244
    goto :goto_38

    .line 1245
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1242
    :catch_30
    move-exception v6

    .line 1243
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in sendCurrentChannelLcn"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1245
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1247
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1248
    nop

    .line 1249
    return-void

    .line 1245
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "lcn":I
    .end local p3    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1247
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "lcn":I
    .restart local p3    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1248
    throw v5
.end method

.method public sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1207
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendCurrentChannelUri"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1209
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1210
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1212
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1214
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1216
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendCurrentChannelUri(Landroid/net/Uri;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1219
    goto :goto_38

    .line 1220
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1217
    :catch_30
    move-exception v6

    .line 1218
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in sendCurrentChannelUri"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1222
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    nop

    .line 1224
    return-void

    .line 1220
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "channelUri":Landroid/net/Uri;
    .end local p3    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1222
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "channelUri":Landroid/net/Uri;
    .restart local p3    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    throw v5
.end method

.method public sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1306
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1307
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendCurrentTvInputId"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1309
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1310
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1312
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1314
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1316
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendCurrentTvInputId(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1319
    goto :goto_38

    .line 1320
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1317
    :catch_30
    move-exception v6

    .line 1318
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in sendCurrentTvInputId"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1320
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1322
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    nop

    .line 1324
    return-void

    .line 1320
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "inputId":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1322
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "inputId":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    throw v5
.end method

.method public sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V
    .registers 14
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "signingId"    # Ljava/lang/String;
    .param p3, "result"    # [B
    .param p4, "userId"    # I

    .line 1332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1333
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendSigningResult"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1335
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1336
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1338
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1340
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1342
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendSigningResult(Ljava/lang/String;[B)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1345
    goto :goto_38

    .line 1346
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1343
    :catch_30
    move-exception v6

    .line 1344
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in sendSigningResult"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1348
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    nop

    .line 1350
    return-void

    .line 1346
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "signingId":Ljava/lang/String;
    .end local p3    # "result":[B
    .end local p4    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1348
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "signingId":Ljava/lang/String;
    .restart local p3    # "result":[B
    .restart local p4    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    throw v5
.end method

.method public sendStreamVolume(Landroid/os/IBinder;FI)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "userId"    # I

    .line 1256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1257
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendStreamVolume"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1259
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1260
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1262
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1264
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1266
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendStreamVolume(F)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1269
    goto :goto_38

    .line 1270
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1267
    :catch_30
    move-exception v6

    .line 1268
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in sendStreamVolume"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1272
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    nop

    .line 1274
    return-void

    .line 1270
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "volume":F
    .end local p3    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1272
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "volume":F
    .restart local p3    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    throw v5
.end method

.method public sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1281
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1282
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendTrackInfoList"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1284
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1285
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1287
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1289
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1291
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendTrackInfoList(Ljava/util/List;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1294
    goto :goto_38

    .line 1295
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1292
    :catch_30
    move-exception v6

    .line 1293
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in sendTrackInfoList"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1295
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1297
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    nop

    .line 1299
    return-void

    .line 1295
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    .end local p3    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1297
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    .restart local p3    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    throw v5
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "userId"    # I

    .line 1379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1380
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setSurface"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1382
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1383
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1385
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_45

    .line 1387
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1389
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->setSurface(Landroid/view/Surface;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1392
    goto :goto_38

    .line 1393
    :catchall_2e
    move-exception v6

    goto :goto_43

    .line 1390
    :catch_30
    move-exception v6

    .line 1391
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in setSurface"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1395
    if-eqz p2, :cond_3e

    .line 1397
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1399
    :cond_3e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    nop

    .line 1401
    return-void

    .line 1393
    :goto_43
    :try_start_43
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "surface":Landroid/view/Surface;
    .end local p3    # "userId":I
    :try_start_44
    throw v6
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    .line 1395
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "surface":Landroid/view/Surface;
    .restart local p3    # "userId":I
    :catchall_45
    move-exception v5

    if-eqz p2, :cond_4b

    .line 1397
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1399
    :cond_4b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    throw v5
.end method

.method public setTeletextAppEnabled(Landroid/os/IBinder;ZI)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 1181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1182
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setTeletextAppEnabled"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1184
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1185
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1187
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1189
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1191
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->setTeletextAppEnabled(Z)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1194
    goto :goto_38

    .line 1195
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1192
    :catch_30
    move-exception v6

    .line 1193
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in setTeletextAppEnabled"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1197
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1198
    nop

    .line 1199
    return-void

    .line 1195
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "enable":Z
    .end local p3    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1197
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "enable":Z
    .restart local p3    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1198
    throw v5
.end method

.method public startInteractiveApp(Landroid/os/IBinder;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1055
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "startInteractiveApp"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1057
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1058
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1060
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1062
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1064
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->startInteractiveApp()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1067
    goto :goto_38

    .line 1068
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1065
    :catch_30
    move-exception v6

    .line 1066
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in start"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1068
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1070
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    nop

    .line 1072
    return-void

    .line 1068
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1070
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    throw v5
.end method

.method public stopInteractiveApp(Landroid/os/IBinder;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1080
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "stopInteractiveApp"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1082
    .local v1, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1083
    .local v2, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1085
    .local v3, "identity":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_40

    .line 1087
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, p1, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v6

    move-object v2, v6

    .line 1089
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->stopInteractiveApp()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_30
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 1092
    goto :goto_38

    .line 1093
    :catchall_2e
    move-exception v6

    goto :goto_3e

    .line 1090
    :catch_30
    move-exception v6

    .line 1091
    .local v6, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "TvInteractiveAppManagerService"

    const-string v8, "error in stop"

    invoke-static {v7, v8, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2e

    .line 1095
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    nop

    .line 1097
    return-void

    .line 1093
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_3f
    throw v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1095
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_40
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    throw v5
.end method

.method public unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    .registers 23
    .param p1, "tiasId"    # Ljava/lang/String;
    .param p2, "appLinkInfo"    # Landroid/media/tv/interactive/AppLinkInfo;
    .param p3, "userId"    # I

    .line 705
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterAppLinkInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 705
    move/from16 v10, p3

    invoke-static {v0, v2, v3, v10, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v11

    .line 707
    .local v11, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 709
    .local v12, "identity":J
    :try_start_2e
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_c6
    .catchall {:try_start_2e .. :try_end_35} :catchall_c4

    .line 710
    :try_start_35
    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 711
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    move-object v15, v2

    .line 712
    .local v15, "iAppState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    if-nez v15, :cond_65

    .line 713
    const-string v2, "TvInteractiveAppManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unregisterAppLinkInfo - unknown TIAS id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    monitor-exit v14
    :try_end_61
    .catchall {:try_start_35 .. :try_end_61} :catchall_c1

    .line 735
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    return-void

    .line 717
    :cond_65
    :try_start_65
    invoke-static {v15}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v7, v2

    .line 718
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    move-object v6, v2

    .line 719
    .local v6, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    const/4 v5, 0x0

    if-nez v6, :cond_a3

    .line 720
    new-instance v16, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/16 v17, 0x0

    move-object/from16 v2, v16

    move-object v4, v7

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    .end local v6    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .local v18, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    move v6, v11

    move-object v8, v7

    .end local v7    # "componentName":Landroid/content/ComponentName;
    .local v8, "componentName":Landroid/content/ComponentName;
    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState-IA;)V

    move-object/from16 v2, v16

    .line 722
    .end local v18    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .local v2, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    const/4 v3, 0x0

    invoke-static {v2, v9, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLink(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/AppLinkInfo;Z)V

    .line 723
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3, v8, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    goto :goto_bf

    .line 725
    .end local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    :cond_a3
    move v3, v5

    move-object/from16 v18, v6

    move-object v8, v7

    .end local v6    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    if-eqz v2, :cond_b5

    .line 726
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    invoke-interface {v2, v9}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    goto :goto_bf

    .line 728
    :cond_b5
    move-object/from16 v2, v18

    .end local v18    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .restart local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static {v2, v9, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLink(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/AppLinkInfo;Z)V

    .line 729
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3, v8, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 731
    .end local v0    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v2    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v15    # "iAppState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    :goto_bf
    monitor-exit v14

    .line 735
    goto :goto_cf

    .line 731
    :catchall_c1
    move-exception v0

    monitor-exit v14
    :try_end_c3
    .catchall {:try_start_65 .. :try_end_c3} :catchall_c1

    .end local v11    # "resolvedUserId":I
    .end local v12    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "tiasId":Ljava/lang/String;
    .end local p2    # "appLinkInfo":Landroid/media/tv/interactive/AppLinkInfo;
    .end local p3    # "userId":I
    :try_start_c3
    throw v0
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c4} :catch_c6
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c4

    .line 735
    .restart local v11    # "resolvedUserId":I
    .restart local v12    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "tiasId":Ljava/lang/String;
    .restart local p2    # "appLinkInfo":Landroid/media/tv/interactive/AppLinkInfo;
    .restart local p3    # "userId":I
    :catchall_c4
    move-exception v0

    goto :goto_d4

    .line 732
    :catch_c6
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_c7
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in unregisterAppLinkInfo"

    invoke-static {v2, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_c4

    .line 735
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_cf
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    nop

    .line 737
    return-void

    .line 735
    :goto_d4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    throw v0
.end method

.method public unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V
    .registers 9
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .param p2, "userId"    # I

    .line 1492
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "unregisterCallback"

    .line 1492
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1494
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1496
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_33

    .line 1497
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v4

    .line 1498
    .local v4, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1499
    nop

    .end local v4    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_30

    .line 1501
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1502
    nop

    .line 1503
    return-void

    .line 1499
    :catchall_30
    move-exception v4

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .end local p1    # "callback":Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .end local p2    # "userId":I
    :try_start_32
    throw v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 1501
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    .restart local p1    # "callback":Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .restart local p2    # "userId":I
    :catchall_33
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1502
    throw v3
.end method
