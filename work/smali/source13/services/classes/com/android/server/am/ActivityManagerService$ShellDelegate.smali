.class Lcom/android/server/am/ActivityManagerService$ShellDelegate;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellDelegate"
.end annotation


# instance fields
.field private final mPermissions:[Ljava/lang/String;

.field private final mTargetUid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;I[Ljava/lang/String;)V
    .registers 4
    .param p2, "targetUid"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    .line 19003
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19004
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    .line 19005
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    .line 19006
    return-void
.end method

.method private isTargetOp(I)Z
    .registers 4
    .param p1, "code"    # I

    .line 19167
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 19168
    return v1

    .line 19171
    :cond_6
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 19172
    .local v0, "permission":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 19173
    return v1

    .line 19175
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isTargetPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 19180
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .registers 13
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 19032
    .local p5, "superImpl":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p3, v0, :cond_39

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 19033
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 19035
    .local v0, "shellUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 19037
    .local v1, "identity":J
    :try_start_18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "com.android.shell"

    invoke-interface {p5, v3, v4, v5, v6}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_34

    .line 19039
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19037
    return v3

    .line 19039
    :catchall_34
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19040
    throw v3

    .line 19042
    .end local v0    # "shellUid":I
    .end local v1    # "identity":J
    :cond_39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v0, v1, v2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I
    .registers 19
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "raw"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/QuintFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 19016
    .local p6, "superImpl":Lcom/android/internal/util/function/QuintFunction;, "Lcom/android/internal/util/function/QuintFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    move-object v1, p0

    iget v0, v1, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    move v2, p2

    if-ne v2, v0, :cond_3e

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 19017
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v3, 0x7d0

    invoke-static {v0, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 19019
    .local v3, "shellUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 19021
    .local v4, "identity":J
    :try_start_1a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "com.android.shell"

    const/4 v10, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v6, p6

    invoke-interface/range {v6 .. v11}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_39

    .line 19023
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19021
    return v0

    .line 19023
    :catchall_39
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19024
    throw v0

    .line 19026
    .end local v3    # "shellUid":I
    .end local v4    # "identity":J
    :cond_3e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v6, p6

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v6 .. v11}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .registers 21
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "skipProxyOperation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/AttributionSource;",
            "Z",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 19149
    .local p5, "superImpl":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Landroid/os/IBinder;Ljava/lang/Integer;Landroid/content/AttributionSource;Ljava/lang/Boolean;Ljava/lang/Void;>;"
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    iget v4, v1, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne v0, v4, :cond_51

    move/from16 v4, p2

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 19150
    nop

    .line 19151
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 19150
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v5, 0x7d0

    invoke-static {v0, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 19152
    .local v5, "shellUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 19154
    .local v12, "identity":J
    :try_start_28
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v14, Landroid/content/AttributionSource;

    const-string v8, "com.android.shell"

    .line 19155
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 19156
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    move-object v6, v14

    move v7, v5

    invoke-direct/range {v6 .. v11}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 19157
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 19154
    invoke-interface {v3, v2, v0, v14, v6}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_4c

    .line 19159
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19160
    goto :goto_53

    .line 19159
    :catchall_4c
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19160
    throw v0

    .line 19149
    .end local v5    # "shellUid":I
    .end local v12    # "identity":J
    :cond_51
    move/from16 v4, p2

    .line 19162
    :cond_53
    :goto_53
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-interface {v3, v2, v0, v6, v5}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19163
    return-void
.end method

.method getDelegateUid()I
    .registers 2

    .line 19009
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    return v0
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;
    .registers 23
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/HeptFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 19051
    .local p8, "superImpl":Lcom/android/internal/util/function/HeptFunction;, "Lcom/android/internal/util/function/HeptFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/app/SyncNotedAppOp;>;"
    move-object v1, p0

    iget v0, v1, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    move/from16 v2, p2

    if-ne v2, v0, :cond_42

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 19052
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v3, 0x7d0

    invoke-static {v0, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 19054
    .local v3, "shellUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 19056
    .local v4, "identity":J
    :try_start_1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "com.android.shell"

    .line 19057
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 19056
    move-object/from16 v6, p8

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-interface/range {v6 .. v13}, Lcom/android/internal/util/function/HeptFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_3d

    .line 19059
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19056
    return-object v0

    .line 19059
    :catchall_3d
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19060
    throw v0

    .line 19062
    .end local v3    # "shellUid":I
    .end local v4    # "identity":J
    :cond_42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 19063
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 19062
    move-object/from16 v6, p8

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-interface/range {v6 .. v13}, Lcom/android/internal/util/function/HeptFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .registers 26
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "shouldCollectAsyncNotedOp"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "shouldCollectMessage"    # Z
    .param p6, "skiProxyOperation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/AttributionSource;",
            "Z",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/internal/util/function/HexFunction<",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 19072
    .local p7, "superImpl":Lcom/android/internal/util/function/HexFunction;, "Lcom/android/internal/util/function/HexFunction<Ljava/lang/Integer;Landroid/content/AttributionSource;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/app/SyncNotedAppOp;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    move-object/from16 v1, p0

    iget v2, v1, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne v0, v2, :cond_5b

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 19073
    nop

    .line 19074
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 19073
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v2, 0x7d0

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 19075
    .local v2, "shellUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 19077
    .local v9, "identity":J
    :try_start_23
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Landroid/content/AttributionSource;

    const-string v5, "com.android.shell"

    .line 19078
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 19079
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    move-object v3, v13

    move v4, v2

    invoke-direct/range {v3 .. v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 19080
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 19081
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 19077
    move-object/from16 v11, p7

    move-object/from16 v15, p4

    invoke-interface/range {v11 .. v17}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_52
    .catchall {:try_start_23 .. :try_end_52} :catchall_56

    .line 19083
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19077
    return-object v0

    .line 19083
    :catchall_56
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19084
    throw v0

    .line 19086
    .end local v2    # "shellUid":I
    .end local v9    # "identity":J
    :cond_5b
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 19087
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 19086
    move-object/from16 v11, p7

    move-object/from16 v13, p2

    move-object/from16 v15, p4

    invoke-interface/range {v11 .. v17}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 32
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "ZII",
            "Lcom/android/internal/util/function/UndecFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 19098
    .local p12, "superImpl":Lcom/android/internal/util/function/UndecFunction;, "Lcom/android/internal/util/function/UndecFunction<Landroid/os/IBinder;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/app/SyncNotedAppOp;>;"
    move-object/from16 v1, p0

    iget v0, v1, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    move/from16 v2, p3

    if-ne v2, v0, :cond_53

    move/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 19099
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v4, 0x7d0

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 19101
    .local v4, "shellUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 19103
    .local v5, "identity":J
    :try_start_1e
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "com.android.shell"

    .line 19104
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 19105
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 19103
    move-object/from16 v7, p12

    move-object/from16 v8, p1

    move-object/from16 v12, p5

    move-object/from16 v15, p8

    invoke-interface/range {v7 .. v18}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_4a
    .catchall {:try_start_1e .. :try_end_4a} :catchall_4e

    .line 19107
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19103
    return-object v0

    .line 19107
    :catchall_4e
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19108
    throw v0

    .line 19098
    .end local v4    # "shellUid":I
    .end local v5    # "identity":J
    :cond_53
    move/from16 v3, p2

    .line 19110
    :cond_55
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 19111
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 19112
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 19110
    move-object/from16 v7, p12

    move-object/from16 v8, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v15, p8

    invoke-interface/range {v7 .. v18}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 37
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z
    .param p8, "skipProxyOperation"    # Z
    .param p9, "proxyAttributionFlags"    # I
    .param p10, "proxiedAttributionFlags"    # I
    .param p11, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/AttributionSource;",
            "ZZ",
            "Ljava/lang/String;",
            "ZZIII",
            "Lcom/android/internal/util/function/UndecFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 19124
    .local p12, "superImpl":Lcom/android/internal/util/function/UndecFunction;, "Lcom/android/internal/util/function/UndecFunction<Landroid/os/IBinder;Ljava/lang/Integer;Landroid/content/AttributionSource;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/app/SyncNotedAppOp;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    iget v2, v1, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne v0, v2, :cond_6f

    move/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 19125
    nop

    .line 19126
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 19125
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v3, 0x7d0

    invoke-static {v0, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 19127
    .local v3, "shellUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 19129
    .local v10, "identity":J
    :try_start_25
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Landroid/content/AttributionSource;

    const-string v6, "com.android.shell"

    .line 19130
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 19131
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v9

    move-object v4, v15

    move v5, v3

    invoke-direct/range {v4 .. v9}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 19132
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 19133
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 19134
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 19129
    move-object/from16 v12, p12

    move-object/from16 v13, p1

    move-object/from16 v18, p6

    invoke-interface/range {v12 .. v23}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_66
    .catchall {:try_start_25 .. :try_end_66} :catchall_6a

    .line 19136
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19129
    return-object v0

    .line 19136
    :catchall_6a
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19137
    throw v0

    .line 19124
    .end local v3    # "shellUid":I
    .end local v10    # "identity":J
    :cond_6f
    move/from16 v2, p2

    .line 19139
    :cond_71
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 19140
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 19141
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 19139
    move-object/from16 v12, p12

    move-object/from16 v13, p1

    move-object/from16 v15, p3

    move-object/from16 v18, p6

    invoke-interface/range {v12 .. v23}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method
