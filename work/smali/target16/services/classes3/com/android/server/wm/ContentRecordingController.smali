.class public final Lcom/android/server/wm/ContentRecordingController;
.super Ljava/lang/Object;
.source "ContentRecordingController.java"


# instance fields
.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mSession:Landroid/view/ContentRecordingSession;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 41
    iput-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public getContentRecordingSessionLocked()Landroid/view/ContentRecordingSession;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    return-object p0
.end method

.method public setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V
    .registers 11

    if-eqz p1, :cond_a

    .line 80
    invoke-static {p1}, Landroid/view/ContentRecordingSession;->isValid(Landroid/view/ContentRecordingSession;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_d6

    .line 83
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    .line 84
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 85
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    .line 86
    :goto_21
    iget-object v3, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    invoke-static {v3, p1}, Landroid/view/ContentRecordingSession;->isProjectionOnSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z

    move-result v3

    if-eqz v3, :cond_7b

    if-eqz v0, :cond_53

    .line 89
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_7b

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v5}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x3207f3dbe3cca3eL

    invoke-static {v6, v4, v5, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_7b

    .line 95
    :cond_53
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean p2, p2, v2

    if-eqz p2, :cond_d6

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result p1

    int-to-long p1, p1

    iget-object p0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide p1, -0x5301ed13bcaec53cL    # -5.767018449237889E-92

    invoke-static {v0, p1, p2, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_7b
    :goto_7b
    const/4 v3, 0x0

    if-eqz p1, :cond_de

    .line 105
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_ad

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    if-nez v6, :cond_8f

    move-object v6, v3

    goto :goto_97

    :cond_8f
    invoke-virtual {v6}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_97
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x3aa84b38be7a3ef3L    # 3.924880660545818E-26

    invoke-static {v7, v5, v6, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 109
    :cond_ad
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 110
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v4

    .line 109
    invoke-virtual {p2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-nez p2, :cond_d7

    .line 112
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_d6

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result p0

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v2, -0x13a6217f275ccb4fL    # -8.708816849011871E213

    invoke-static {p2, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_d6
    :goto_d6
    return-void

    .line 118
    :cond_d7
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 124
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    goto :goto_df

    :cond_de
    move-object p2, v3

    .line 127
    :goto_df
    iget-object v1, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz v1, :cond_10d

    if-nez v0, :cond_10d

    .line 128
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_103

    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x4fccee3fe19cca6bL    # -1.6468601503212928E-76

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 131
    :cond_103
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->pauseRecording()V

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 135
    :cond_10d
    iput-object p2, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 136
    iput-object p1, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    return-void
.end method
