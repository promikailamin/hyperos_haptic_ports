.class final Lcom/android/server/wm/ContentRecordingController;
.super Ljava/lang/Object;
.source "ContentRecordingController.java"


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mSession:Landroid/view/ContentRecordingSession;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 41
    iput-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method getContentRecordingSessionLocked()Landroid/view/ContentRecordingSession;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    return-object v0
.end method

.method setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V
    .registers 14
    .param p1, "incomingSession"    # Landroid/view/ContentRecordingSession;
    .param p2, "wmService"    # Lcom/android/server/wm/WindowManagerService;

    .line 66
    if-eqz p1, :cond_11

    invoke-static {p1}, Landroid/view/ContentRecordingSession;->isValid(Landroid/view/ContentRecordingSession;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 67
    invoke-static {v0, p1}, Landroid/view/ContentRecordingSession;->isSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    :cond_10
    return-void

    .line 71
    :cond_11
    const/4 v0, 0x0

    .line 72
    .local v0, "incomingDisplayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_54

    .line 74
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v4, :cond_47

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v4

    int-to-long v4, v4

    .local v4, "protoLogParam0":J
    iget-object v6, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    if-nez v6, :cond_26

    move-object v6, v1

    goto :goto_2e

    :cond_26
    invoke-virtual {v6}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_2e
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x5385f1a9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v3

    aput-object v6, v9, v2

    const-string v10, "Handle incoming session on display %d, with a pre-existing session %s"

    invoke-static {v7, v8, v2, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .end local v4    # "protoLogParam0":J
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_47
    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 79
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v5

    .line 78
    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 82
    :cond_54
    iget-object v4, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz v4, :cond_7e

    .line 84
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v4, :cond_74

    iget-object v4, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0xe2a7822

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    const-string v7, "Pause the recording session on display %s"

    invoke-static {v5, v6, v3, v7, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_74
    iget-object v2, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->pauseRecording()V

    .line 88
    iget-object v2, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 91
    :cond_7e
    iput-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 93
    return-void
.end method
