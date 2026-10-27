.class Lcom/android/server/wm/SurfaceFreezer;
.super Ljava/lang/Object;
.source "SurfaceFreezer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceFreezer$Freezable;,
        Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceFreezer"


# instance fields
.field private final mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

.field final mFreezeBounds:Landroid/graphics/Rect;

.field mLeash:Landroid/view/SurfaceControl;

.field mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimatable(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/SurfaceFreezer$Freezable;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceFreezer$Freezable;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    .line 67
    iput-object p2, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 68
    return-void
.end method

.method private static createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 5
    .param p0, "target"    # Landroid/view/SurfaceControl;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "cropBounds":Landroid/graphics/Rect;
    if-eqz p1, :cond_d

    .line 197
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 200
    :cond_d
    new-instance v1, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {v1, p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 202
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 203
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 204
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 205
    invoke-virtual {v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v1

    .line 206
    .local v1, "captureArgs":Landroid/view/SurfaceControl$LayerCaptureArgs;
    invoke-static {v1}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2

    return-object v2
.end method

.method private reset(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 168
    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->destroy(Landroid/view/SurfaceControl$Transaction;)V

    .line 169
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 171
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 173
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 175
    :cond_13
    return-void
.end method

.method private unfreezeInner(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 146
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 147
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 149
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_10

    .line 150
    return-void

    .line 152
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 153
    .local v0, "leash":Landroid/view/SurfaceControl;
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/wm/SurfaceAnimator;->removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z

    move-result v1

    .line 156
    .local v1, "scheduleAnim":Z
    if-eqz v1, :cond_22

    .line 157
    iget-object v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 159
    :cond_22
    return-void
.end method


# virtual methods
.method createFromHardwareBufferInner(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)Landroid/graphics/GraphicBuffer;
    .registers 3
    .param p1, "screenshotBuffer"    # Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    .line 218
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method createSnapshotBufferInner(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 4
    .param p1, "target"    # Landroid/view/SurfaceControl;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 212
    invoke-static {p1, p2}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;)V
    .registers 16
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "startBounds"    # Landroid/graphics/Rect;
    .param p3, "relativePosition"    # Landroid/graphics/Point;
    .param p4, "freezeTarget"    # Landroid/view/SurfaceControl;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/wm/SurfaceFreezer;->reset(Landroid/view/SurfaceControl$Transaction;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 85
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p3, Landroid/graphics/Point;->x:I

    iget v8, p3, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 84
    const/4 v4, 0x2

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 89
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v1, p1, v0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 92
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v0, v1, p2}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->skipSnapshotFreeze(Lcom/android/server/wm/SurfaceFreezer$Freezable;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 93
    return-void

    .line 97
    :cond_39
    if-eqz p4, :cond_3d

    move-object v0, p4

    goto :goto_43

    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_43
    move-object p4, v0

    .line 98
    if-eqz p4, :cond_8b

    .line 99
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBufferInner(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    .line 101
    .local v0, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v0, :cond_4e

    const/4 v1, 0x0

    goto :goto_52

    .line 102
    :cond_4e
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    :goto_52
    nop

    .line 103
    .local v1, "buffer":Landroid/hardware/HardwareBuffer;
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6d

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    if-gt v2, v3, :cond_63

    goto :goto_6d

    .line 109
    :cond_63
    new-instance v2, Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    iget-object v3, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;-><init>(Lcom/android/server/wm/SurfaceFreezer;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/view/SurfaceControl;)V

    iput-object v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    goto :goto_8b

    .line 105
    :cond_6d
    :goto_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to capture screenshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceFreezer"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 107
    return-void

    .line 111
    .end local v0    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .end local v1    # "buffer":Landroid/hardware/HardwareBuffer;
    :cond_8b
    :goto_8b
    return-void
.end method

.method hasLeash()Z
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 181
    :cond_7
    return-void
.end method

.method setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    .line 185
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 187
    :cond_7
    return-void
.end method

.method takeLeashForAnimation()Landroid/view/SurfaceControl;
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 119
    .local v0, "out":Landroid/view/SurfaceControl;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 120
    return-object v0
.end method

.method takeSnapshotForAnimation()Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 131
    .local v0, "out":Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 132
    return-object v0
.end method

.method unfreeze(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/wm/SurfaceFreezer;->unfreezeInner(Landroid/view/SurfaceControl$Transaction;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->onUnfrozen()V

    .line 142
    return-void
.end method
