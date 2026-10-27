.class final Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;
.super Ljava/lang/Object;
.source "HandwritingEventReceiverSurface.java"


# static fields
.field static final DEBUG:Z = true

.field private static final HANDWRITING_SURFACE_LAYER:I = 0x7f000000

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mClientChannel:Landroid/view/InputChannel;

.field private final mInputSurface:Landroid/view/SurfaceControl;

.field private mIsIntercepting:Z

.field private final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "sc"    # Landroid/view/SurfaceControl;
    .param p4, "inputChannel"    # Landroid/view/InputChannel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p4, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    .line 52
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    .line 54
    new-instance v0, Landroid/view/InputWindowHandle;

    new-instance v1, Landroid/view/InputApplicationHandle;

    sget v2, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, p1, v2, v3}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    invoke-direct {v0, v1, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 56
    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 57
    invoke-virtual {p4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 58
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 59
    sget v1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 60
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 61
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 62
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 63
    const v1, 0xc10c

    iput v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 71
    invoke-virtual {v0, v4}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 73
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 74
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 75
    const/high16 v0, 0x7f000000

    invoke-virtual {v1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {v1, p3, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 77
    invoke-virtual {v1, p3, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 78
    invoke-virtual {v1, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 79
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    .line 82
    return-void
.end method


# virtual methods
.method getInputChannel()Landroid/view/InputChannel;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    return-object v0
.end method

.method getInputWindowHandle()Landroid/view/InputWindowHandle;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    return-object v0
.end method

.method getSurface()Landroid/view/SurfaceControl;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method isIntercepting()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    return v0
.end method

.method remove()V
    .registers 3

    .line 100
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 101
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 102
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 103
    return-void
.end method

.method startIntercepting(II)V
    .registers 6
    .param p1, "imePid"    # I
    .param p2, "imeUid"    # I

    .line 85
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 86
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p2, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 87
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 89
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    .line 93
    return-void
.end method
