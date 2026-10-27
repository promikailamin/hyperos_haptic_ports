.class Lcom/android/server/wm/Transition$ReadyTrackerOld;
.super Lcom/android/server/wm/Transition$ReadyCondition;
.source "Transition.java"


# instance fields
.field public mDeferReadyDepth:I

.field public final mReadyGroups:Landroid/util/ArrayMap;

.field public mReadyOverride:Z

.field public mUsed:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsed(Lcom/android/server/wm/Transition$ReadyTrackerOld;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 4296
    const-string v0, "Legacy"

    invoke-direct {p0, v0}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    .line 4272
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 4279
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 4285
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    .line 4293
    iput v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    return-void
.end method


# virtual methods
.method public addGroup(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 4309
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 4312
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public allReady()Z
    .registers 8

    .line 4347
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    iget v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    int-to-long v3, v3

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->groupsToString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x2d4b2a4e4122c1f1L    # -2.6525701205501237E90

    const/16 v4, 0x1f

    invoke-static {v6, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4352
    :cond_32
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    if-nez v0, :cond_37

    return v1

    .line 4354
    :cond_37
    iget v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    if-lez v0, :cond_3c

    return v1

    .line 4356
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_44
    if-ltz v0, :cond_6d

    .line 4357
    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 4358
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_6a

    .line 4359
    :cond_5b
    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6a

    return v1

    :cond_6a
    :goto_6a
    add-int/lit8 v0, v0, -0x1

    goto :goto_44

    :cond_6d
    return v2
.end method

.method public checkReady()V
    .registers 2

    .line 4365
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    if-eqz v0, :cond_e

    .line 4368
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-static {p0}, Lcom/android/server/wm/Transition$ReadyTracker;->-$$Nest$fgetmTransition(Lcom/android/server/wm/Transition$ReadyTracker;)Lcom/android/server/wm/Transition;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/Transition;->-$$Nest$mapplyReady(Lcom/android/server/wm/Transition;)V

    return-void

    .line 4371
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 4372
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    return-void
.end method

.method public getDeferReadyDepth()I
    .registers 1

    .line 4301
    iget p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    return p0
.end method

.method public final groupsToString()Ljava/lang/String;
    .registers 4

    .line 4376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 4377
    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    if-eqz v1, :cond_15

    const/16 v2, 0x2c

    .line 4378
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4379
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 4380
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4382
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAllReady()V
    .registers 6

    .line 4336
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x53cf4ee4ec6733bfL    # 5.2245209272189455E95

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_12
    const/4 v0, 0x1

    .line 4337
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 4338
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    .line 4339
    :goto_17
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 4340
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 4342
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->checkReady()V

    return-void
.end method

.method public setReadyFrom(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 7

    const/4 v0, 0x1

    .line 4320
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    move-object v0, p1

    :goto_4
    if-eqz v0, :cond_3d

    .line 4323
    invoke-static {v0}, Lcom/android/server/wm/Transition;->-$$Nest$smisReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4324
    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4325
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v2, -0x4233d85c7c10c150L    # -5.121335342942837E-11

    const/4 p2, 0x3

    invoke-static {v1, v2, v3, p2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3d

    .line 4329
    :cond_38
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_4

    .line 4331
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->checkReady()V

    return-void
.end method

.method public startTracking()V
    .registers 1

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Legacy: used="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " deferDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
