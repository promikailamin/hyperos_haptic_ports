.class Lcom/android/server/input/GestureMonitorSpyWindow;
.super Ljava/lang/Object;
.source "GestureMonitorSpyWindow.java"


# instance fields
.field final mApplicationHandle:Landroid/view/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mInputSurface:Landroid/view/SurfaceControl;

.field final mMonitorToken:Landroid/os/IBinder;

.field final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method constructor <init>(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "sc"    # Landroid/view/SurfaceControl;
    .param p7, "inputChannel"    # Landroid/view/InputChannel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mMonitorToken:Landroid/os/IBinder;

    .line 52
    iput-object p7, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mClientChannel:Landroid/view/InputChannel;

    .line 53
    iput-object p6, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    .line 55
    new-instance v0, Landroid/view/InputApplicationHandle;

    sget v1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, p2, v1, v2}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 57
    new-instance v1, Landroid/view/InputWindowHandle;

    invoke-direct {v1, v0, p3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 59
    iput-object p2, v1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 60
    invoke-virtual {p7}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 61
    const/16 v0, 0x7df

    iput v0, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 62
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v4, v0

    iput-wide v4, v1, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 63
    iput p4, v1, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 64
    iput p5, v1, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 66
    invoke-virtual {v1, v3}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 67
    const/16 v0, 0x4104

    iput v0, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 70
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 71
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v0, p6, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 74
    const v1, 0x7f000001

    invoke-virtual {v0, p6, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 76
    invoke-virtual {v0, p6, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 77
    invoke-virtual {v0, p6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 79
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 80
    return-void
.end method


# virtual methods
.method dump()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', inputChannelToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mClientChannel:Landroid/view/InputChannel;

    .line 93
    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v1, v1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method remove()V
    .registers 3

    .line 83
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 84
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 85
    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 86
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 88
    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 89
    return-void
.end method
