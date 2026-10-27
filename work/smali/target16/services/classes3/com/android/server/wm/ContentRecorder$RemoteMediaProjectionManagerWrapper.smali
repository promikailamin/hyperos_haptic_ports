.class public final Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;
.super Ljava/lang/Object;
.source "ContentRecorder.java"

# interfaces
.implements Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;


# instance fields
.field public final mDisplayId:I

.field public mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 749
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    .line 753
    iput p1, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public final fetchMediaProjectionManager()V
    .registers 2

    .line 825
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-eqz v0, :cond_5

    goto :goto_d

    .line 828
    :cond_5
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    .line 832
    :cond_e
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    return-void
.end method

.method public notifyActiveProjectionCapturedContentVisibilityChanged(Z)V
    .registers 5

    .line 777
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 778
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez p0, :cond_8

    goto :goto_27

    .line 782
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Landroid/media/projection/IMediaProjectionManager;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 785
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v0, 0x4

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v0, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, 0x16357972e5e23934L

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    .registers 6

    .line 811
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 812
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez p0, :cond_8

    goto :goto_27

    .line 816
    :cond_8
    :try_start_8
    invoke-interface {p0, p1, p2, p3}, Landroid/media/projection/IMediaProjectionManager;->notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 819
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 p2, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, 0x39e4ee58ac5f3856L    # 8.255839796801303E-30

    invoke-static {p1, v0, v1, p2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public notifyWindowingModeChanged(III)V
    .registers 6

    .line 795
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 796
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez p0, :cond_8

    goto :goto_27

    .line 800
    :cond_8
    :try_start_8
    invoke-interface {p0, p1, p2, p3}, Landroid/media/projection/IMediaProjectionManager;->notifyWindowingModeChanged(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 803
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 p2, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, -0x1424aecde7ddcd54L    # -3.592300748717029E211

    invoke-static {p1, v0, v1, p2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public stopActiveProjection(I)V
    .registers 9

    .line 758
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_8

    goto :goto_4d

    :cond_8
    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 763
    :try_start_a
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_28

    iget v2, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mDisplayId:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v5, 0x2c6128f062ff341dL    # 6.426974591688406E-95

    invoke-static {v4, v5, v6, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_28

    :catch_26
    move-exception p1

    goto :goto_2e

    .line 766
    :cond_28
    :goto_28
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v2, p1}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2d} :catch_26

    return-void

    .line 768
    :goto_2e
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_4d

    iget p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mDisplayId:I

    int-to-long v1, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, 0x3cf377066afc38ecL    # 4.322085285124858E-15

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4d
    :goto_4d
    return-void
.end method
