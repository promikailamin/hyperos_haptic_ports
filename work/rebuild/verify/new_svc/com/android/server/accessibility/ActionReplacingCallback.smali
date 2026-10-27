.class public Lcom/android/server/accessibility/ActionReplacingCallback;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "ActionReplacingCallback.java"


# instance fields
.field public final mConnectionWithReplacementActions:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field public final mInteractionId:I

.field public final mLock:Ljava/lang/Object;

.field public mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public final mNodeWithReplacementActionsInteractionId:I

.field public mNodesFromOriginalWindow:Ljava/util/List;

.field public mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

.field public mReplacementNodeIsReadyOrFailed:Z

.field public final mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field public mSetFindNodeFromOriginalWindowCalled:Z

.field public mSetFindNodesFromOriginalWindowCalled:Z

.field public mSetPrefetchFromOriginalWindowCalled:Z


# direct methods
.method public constructor <init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V
    .registers 23

    move-object/from16 v5, p0

    move/from16 v0, p3

    .line 76
    invoke-direct {v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 46
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 57
    iput-boolean v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    .line 63
    iput-boolean v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    .line 70
    iput-boolean v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    move-object/from16 v1, p1

    .line 77
    iput-object v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-object/from16 v1, p2

    .line 78
    iput-object v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mConnectionWithReplacementActions:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 79
    iput v0, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v13, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 80
    iput v4, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    .line 83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 85
    :try_start_28
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p2

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_38} :catch_3e
    .catchall {:try_start_28 .. :try_end_38} :catchall_3c

    .line 95
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3c
    move-exception v0

    goto :goto_44

    .line 93
    :catch_3e
    :try_start_3e
    iput-boolean v13, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_3c

    .line 95
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_44
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    throw v0
.end method


# virtual methods
.method public final replaceActionsLocked(Ljava/util/List;)Ljava/util/List;
    .registers 4

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    .line 254
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 255
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    if-nez p1, :cond_19

    const/4 p0, 0x0

    return-object p0

    .line 259
    :cond_19
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    .line 264
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAllActions()V

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 266
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 272
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_7c

    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_7c

    .line 274
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 276
    :goto_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3c

    .line 277
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 280
    :cond_3c
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 281
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 283
    :cond_46
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 288
    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    :cond_7c
    return-void
.end method

.method public final replaceInfoActionsAndCallService()V
    .registers 5

    .line 186
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :catchall_e
    move-exception p0

    goto :goto_29

    :cond_10
    move v1, v2

    :goto_11
    if-eqz v1, :cond_1c

    .line 189
    iget-object v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_1c

    .line 190
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 191
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    .line 193
    :cond_1c
    iget-object v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 194
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_e

    if-eqz v1, :cond_28

    .line 197
    :try_start_21
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v2, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_28

    :catch_28
    :cond_28
    return-void

    .line 194
    :goto_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_e

    throw p0
.end method

.method public final replaceInfoActionsAndCallServiceIfReady()V
    .registers 1

    .line 154
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallService()V

    .line 155
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfosActionsAndCallService()V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replacePrefetchInfosActionsAndCallService()V

    return-void
.end method

.method public final replaceInfosActionsAndCallService()V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :catchall_e
    move-exception p0

    goto :goto_28

    :cond_10
    move v1, v2

    :goto_11
    if-eqz v1, :cond_1c

    .line 213
    iget-object v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 214
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .line 216
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_e

    if-eqz v1, :cond_27

    .line 219
    :try_start_20
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v3, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    return-void

    .line 216
    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_e

    throw p0
.end method

.method public final replacePrefetchInfosActionsAndCallService()V
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :catchall_e
    move-exception p0

    goto :goto_28

    :cond_10
    move v1, v2

    :goto_11
    if-eqz v1, :cond_1c

    .line 235
    iget-object v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 236
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .line 238
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_e

    if-eqz v1, :cond_27

    .line 241
    :try_start_20
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v3, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    return-void

    .line 238
    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_e

    throw p0
.end method

.method public sendAttachOverlayResult(II)V
    .registers 3

    .line 297
    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V

    return-void
.end method

.method public sendTakeScreenshotOfWindowError(II)V
    .registers 3

    .line 180
    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    return-void
.end method

.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 6

    .line 102
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_f

    .line 104
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 105
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    goto :goto_17

    :catchall_d
    move-exception p0

    goto :goto_25

    .line 106
    :cond_f
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    if-ne p2, v1, :cond_1c

    .line 107
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 108
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    .line 113
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_d

    .line 114
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    return-void

    .line 110
    :cond_1c
    :try_start_1c
    const-string p0, "ActionReplacingCallback"

    const-string p1, "Callback with unexpected interactionId"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    monitor-exit v0

    return-void

    .line 113
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_d

    throw p0
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_f

    .line 123
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    .line 124
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    goto :goto_18

    :catchall_d
    move-exception p0

    goto :goto_26

    .line 125
    :cond_f
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    if-ne p2, v1, :cond_1d

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ActionReplacingCallback;->setNodeWithReplacementActionsFromList(Ljava/util/List;)V

    .line 127
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    .line 132
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_d

    .line 133
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    return-void

    .line 129
    :cond_1d
    :try_start_1d
    const-string p0, "ActionReplacingCallback"

    const-string p1, "Callback with unexpected interactionId"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    monitor-exit v0

    return-void

    .line 132
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_d

    throw p0
.end method

.method public final setNodeWithReplacementActionsFromList(Ljava/util/List;)V
    .registers 8

    const/4 v0, 0x0

    .line 160
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 161
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 162
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 163
    iput-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .registers 3

    .line 173
    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V

    return-void
.end method

.method public setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    if-ne p2, v1, :cond_13

    .line 143
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    .line 149
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 150
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    return-void

    :catchall_11
    move-exception p0

    goto :goto_1c

    .line 146
    :cond_13
    :try_start_13
    const-string p0, "ActionReplacingCallback"

    const-string p1, "Callback with unexpected interactionId"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    monitor-exit v0

    return-void

    .line 149
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_11

    throw p0
.end method
