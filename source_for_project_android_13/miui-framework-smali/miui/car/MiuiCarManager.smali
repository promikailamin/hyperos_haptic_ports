.class public Lmiui/car/MiuiCarManager;
.super Ljava/lang/Object;
.source "MiuiCarManager.java"


# static fields
.field public static final blacklist ACTION_MI_CARLINK_ROTATION_CHANGED:Ljava/lang/String; = "miui.car.MiuiCarManager.MI_CARLINK_ROTATION_CHANGED"

.field public static final blacklist ACTION_MI_CARLINK_STATUS_CHANGED:Ljava/lang/String; = "miui.car.MiuiCarManager.MI_CARLINK_STATUS_CHANGED"

.field public static final blacklist ACTION_MI_CARLINK_THIRD_APP_PROCESS_DIED:Ljava/lang/String; = "miui.car.MiuiCarManager.MI_CARLINK_THIRD_APP_PROCESS_DIED"

.field public static final blacklist CASTING_STATE_CONNECTED:I = 0x2

.field public static final blacklist CASTING_STATE_DISABLED:I = 0x5

.field public static final blacklist CASTING_STATE_ENABLED:I = 0x1

.field public static final blacklist CASTING_STATE_STARTED:I = 0x3

.field public static final blacklist CASTING_STATE_STOPED:I = 0x4

.field public static final blacklist NCM_NETWORK_CONNECTED:I = 0x1

.field public static final blacklist NCM_NETWORK_DISCONNECTED:I = 0x0

.field public static final blacklist NCM_NETWORK_STATUS:Ljava/lang/String; = "NCM_NETWORK_STATUS"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "MiuiCarService"

.field public static final blacklist THIRD_APP_PACKAGE_NAME:Ljava/lang/String; = "THIRD_APP_PACKAGE_NAME"

.field public static final blacklist VIRTUAL_DISPLAY_ROTATION:Ljava/lang/String; = "VIRTUAL_DISPLAY_ROTATION"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lmiui/car/IMiuiCarManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lmiui/car/IMiuiCarManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lmiui/car/IMiuiCarManager;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lmiui/car/MiuiCarManager;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist addThirdCastAppSet(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "allAppPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0, p1}, Lmiui/car/IMiuiCarManager;->addThirdCastAppSet(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 64
    nop

    .line 65
    return-void

    .line 62
    :catch_7
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist cleanThirdCastAppSet()V
    .registers 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0}, Lmiui/car/IMiuiCarManager;->cleanThirdCastAppSet()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 72
    nop

    .line 73
    return-void

    .line 70
    :catch_7
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist connectVirtualCamera()Z
    .registers 3

    .line 165
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0}, Lmiui/car/IMiuiCarManager;->connectVirtualCamera()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 166
    :catch_7
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist disconnectVirtualCamera()Z
    .registers 3

    .line 173
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0}, Lmiui/car/IMiuiCarManager;->disconnectVirtualCamera()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 174
    :catch_7
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist doBooleanCommand(II)Z
    .registers 5
    .param p1, "command"    # I
    .param p2, "param"    # I

    .line 125
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0, p1, p2}, Lmiui/car/IMiuiCarManager;->doBooleanCommand(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 126
    :catch_7
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist doIntCommand(II)I
    .registers 5
    .param p1, "command"    # I
    .param p2, "param"    # I

    .line 117
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0, p1, p2}, Lmiui/car/IMiuiCarManager;->doIntCommand(II)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 118
    :catch_7
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist enableImsForDisplayId(IZ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .line 77
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0, p1, p2}, Lmiui/car/IMiuiCarManager;->enableImsForDisplayId(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 80
    nop

    .line 81
    return-void

    .line 78
    :catch_7
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCastingState()I
    .registers 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0}, Lmiui/car/IMiuiCarManager;->getCastingState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 110
    :catch_7
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;II)Z
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "displayId"    # I

    .line 43
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-virtual {p1}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lmiui/car/IMiuiCarManager;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_10
    .catchall {:try_start_0 .. :try_end_a} :catchall_e

    .line 47
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 43
    return v0

    .line 47
    :catchall_e
    move-exception v0

    goto :goto_16

    .line 44
    :catch_10
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_11
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Lmiui/car/MiuiCarManager;
    .end local p1    # "event":Landroid/view/InputEvent;
    .end local p2    # "mode":I
    .end local p3    # "displayId":I
    throw v1
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 47
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lmiui/car/MiuiCarManager;
    .restart local p1    # "event":Landroid/view/InputEvent;
    .restart local p2    # "mode":I
    .restart local p3    # "displayId":I
    :goto_16
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 48
    throw v0
.end method

.method public blacklist isVirtualCameraServiceReady()Z
    .registers 3

    .line 149
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0}, Lmiui/car/IMiuiCarManager;->isVirtualCameraServiceReady()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 150
    :catch_7
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiApEnabled()Z
    .registers 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0}, Lmiui/car/IMiuiCarManager;->isWifiApEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onFrameData([BI)Z
    .registers 5
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .line 181
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0, p1, p2}, Lmiui/car/IMiuiCarManager;->onFrameData([BI)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 182
    :catch_7
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCastingState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 93
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0, p1}, Lmiui/car/IMiuiCarManager;->setCastingState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 96
    nop

    .line 97
    return-void

    .line 94
    :catch_7
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRotationMonitorEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 85
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0, p1}, Lmiui/car/IMiuiCarManager;->setRotationMonitorEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 88
    nop

    .line 89
    return-void

    .line 86
    :catch_7
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setVirtualCameraConfig(IID)Z
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .line 157
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lmiui/car/IMiuiCarManager;->setVirtualCameraConfig(IID)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 158
    :catch_7
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setVirtualDisplayId(I)V
    .registers 4
    .param p1, "id"    # I

    .line 53
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0, p1}, Lmiui/car/IMiuiCarManager;->setVirtualDisplayId(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 56
    nop

    .line 57
    return-void

    .line 54
    :catch_7
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startVirtualCameraService()V
    .registers 3

    .line 133
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0}, Lmiui/car/IMiuiCarManager;->startVirtualCameraService()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 136
    nop

    .line 137
    return-void

    .line 134
    :catch_7
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist stopVirtualCameraService()V
    .registers 3

    .line 141
    :try_start_0
    iget-object v0, p0, Lmiui/car/MiuiCarManager;->mService:Lmiui/car/IMiuiCarManager;

    invoke-interface {v0}, Lmiui/car/IMiuiCarManager;->stopVirtualCameraService()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 144
    nop

    .line 145
    return-void

    .line 142
    :catch_7
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
