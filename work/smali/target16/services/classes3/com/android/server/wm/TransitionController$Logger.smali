.class public Lcom/android/server/wm/TransitionController$Logger;
.super Ljava/lang/Object;
.source "TransitionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mAbortTimeNs:J

.field public mCollectTimeNs:J

.field public mCreateTimeNs:J

.field public mCreateWallTimeMs:J

.field public mFinishTimeNs:J

.field public mFromPlayer:Z

.field public mInfo:Landroid/window/TransitionInfo;

.field public mReadyTimeNs:J

.field public mRequest:Landroid/window/TransitionRequestInfo;

.field public mRequestTimeNs:J

.field public mSendTimeNs:J

.field public mStartTimeNs:J

.field public mStartWCT:Landroid/window/WindowContainerTransaction;

.field public mSyncId:I

.field public mTransactionCommitTimeNs:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toMsString(J)Ljava/lang/String;
    .registers 5

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildOnFinishLog()Ljava/lang/String;
    .registers 8

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finish Transition (#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): created at "

    .line 1922
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateWallTimeMs:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    const-string v1, " collect-started="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mCollectTimeNs:J

    iget-wide v3, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mRequestTimeNs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_44

    .line 1925
    const-string v1, " request-sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mRequestTimeNs:J

    iget-wide v5, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    :cond_44
    const-string v1, " started="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mStartTimeNs:J

    iget-wide v5, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    const-string v1, " ready="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mReadyTimeNs:J

    iget-wide v5, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    const-string v1, " sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    iget-wide v5, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mTransactionCommitTimeNs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8e

    .line 1931
    const-string v1, " commit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mTransactionCommitTimeNs:J

    iget-wide v3, p0, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    :cond_8e
    const-string v1, " finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    iget-wide v3, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1934
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final buildOnSendLog()Ljava/lang/String;
    .registers 4

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sent Transition (#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") createdAt="

    .line 1887
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateWallTimeMs:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    if-eqz v1, :cond_28

    .line 1889
    const-string v1, " via request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1891
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logOnFinish()V
    .registers 5

    .line 1938
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController$Logger;->buildOnFinishLog()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x461b5375363fcb45L    # -8.15445231298494E-30

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public logOnSend()V
    .registers 6

    .line 1909
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController$Logger;->buildOnSendLog()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x461b5375363fcb45L    # -8.15445231298494E-30

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1910
    :cond_1d
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x3b6b2f93814d3a7cL    # 1.7990082804345154E-22

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1912
    :cond_37
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_57

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    const-string v0, "    "

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x475c0db7b0a235afL    # 5.826501471320959E35

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_57
    return-void
.end method

.method public logOnSendAsync(Landroid/os/Handler;)V
    .registers 2

    .line 1895
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 3

    .line 1901
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController$Logger;->logOnSend()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 1904
    const-string v0, "TransitionController"

    const-string v1, "Failed to log transition"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
