.class public Lcom/android/internal/view/BaseIWindow;
.super Landroid/view/IWindow$Stub;
.source "BaseIWindow.java"


# instance fields
.field private greylist-max-o mSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor greylist-max-p <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 105
    return-void
.end method

.method public greylist-max-o dispatchAppVisibility(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 86
    return-void
.end method

.method public greylist-max-o dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 120
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 122
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    .line 124
    goto :goto_f

    .line 123
    :catch_e
    move-exception v0

    .line 126
    :cond_f
    :goto_f
    return-void
.end method

.method public blacklist dispatchEnterDragArea(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 182
    return-void
.end method

.method public blacklist dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .registers 3
    .param p1, "action"    # I
    .param p2, "stackInfo"    # Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 178
    return-void
.end method

.method public greylist-max-o dispatchGetNewSurface()V
    .registers 1

    .line 90
    return-void
.end method

.method public greylist-max-o dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .line 136
    if-eqz p6, :cond_e

    .line 138
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 140
    goto :goto_e

    .line 139
    :catch_d
    move-exception v0

    .line 142
    :cond_e
    :goto_e
    return-void
.end method

.method public blacklist dispatchWallpaperOffsets(FFFFFZ)V
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "zoom"    # F
    .param p6, "sync"    # Z

    .line 110
    if-eqz p6, :cond_d

    .line 112
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 114
    goto :goto_d

    .line 113
    :catch_c
    move-exception v0

    .line 116
    :cond_d
    :goto_d
    return-void
.end method

.method public greylist-max-o dispatchWindowShown()V
    .registers 1

    .line 146
    return-void
.end method

.method public greylist-max-o executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/os/ParcelFileDescriptor;

    .line 94
    if-eqz p3, :cond_1a

    .line 96
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_19

    .line 99
    goto :goto_1a

    .line 97
    :catch_19
    move-exception v0

    .line 101
    :cond_1a
    :goto_1a
    return-void
.end method

.method public blacklist hideInsets(IZ)V
    .registers 3
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 78
    return-void
.end method

.method public blacklist insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .registers 3
    .param p1, "insetsState"    # Landroid/view/InsetsState;
    .param p2, "activeControls"    # [Landroid/view/InsetsSourceControl;

    .line 70
    return-void
.end method

.method public greylist-max-o moved(II)V
    .registers 3
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .line 82
    return-void
.end method

.method public blacklist notifyCastMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 166
    return-void
.end method

.method public blacklist notifyProjectionMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 170
    return-void
.end method

.method public blacklist notifyRotationChanged(Z)V
    .registers 2
    .param p1, "changed"    # Z

    .line 174
    return-void
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 150
    return-void
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 155
    :try_start_0
    new-instance v0, Landroid/view/ScrollCaptureResponse$Builder;

    invoke-direct {v0}, Landroid/view/ScrollCaptureResponse$Builder;-><init>()V

    const-string v1, "Not Implemented"

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object v0

    .line 155
    invoke-interface {p1, v0}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 160
    goto :goto_14

    .line 158
    :catch_13
    move-exception v0

    .line 161
    :goto_14
    return-void
.end method

.method public blacklist resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    .registers 12
    .param p1, "frames"    # Landroid/window/ClientWindowFrames;
    .param p2, "reportDraw"    # Z
    .param p3, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p4, "insetsState"    # Landroid/view/InsetsState;
    .param p5, "forceLayout"    # Z
    .param p6, "alwaysConsumeSystemBars"    # Z
    .param p7, "displayId"    # I
    .param p8, "seqId"    # I
    .param p9, "resizeMode"    # I

    .line 59
    if-eqz p2, :cond_a

    .line 61
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p8}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    .line 63
    goto :goto_a

    .line 62
    :catch_9
    move-exception v0

    .line 65
    :cond_a
    :goto_a
    return-void
.end method

.method public greylist-max-o setSession(Landroid/view/IWindowSession;)V
    .registers 2
    .param p1, "session"    # Landroid/view/IWindowSession;

    .line 52
    iput-object p1, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    .line 53
    return-void
.end method

.method public blacklist showInsets(IZ)V
    .registers 3
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 74
    return-void
.end method

.method public blacklist updateClientHoverState(ZZ)V
    .registers 3
    .param p1, "hovermode"    # Z
    .param p2, "supportTouch"    # Z

    .line 186
    return-void
.end method

.method public greylist-max-o updatePointerIcon(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 130
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 131
    return-void
.end method
