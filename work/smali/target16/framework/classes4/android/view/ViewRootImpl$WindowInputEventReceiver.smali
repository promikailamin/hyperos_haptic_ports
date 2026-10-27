.class final Landroid/view/ViewRootImpl$WindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowInputEventReceiver"
.end annotation


# instance fields
.field private final blacklist mRenderer:Landroid/graphics/HardwareRenderer;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/graphics/HardwareRenderer;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 10820
    iput-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 10821
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 10822
    iput-object p4, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->mRenderer:Landroid/graphics/HardwareRenderer;

    .line 10823
    iget-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->mRenderer:Landroid/graphics/HardwareRenderer;

    if-eqz p1, :cond_14

    .line 10824
    iget-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->getNativeFrameMetricsObserver()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/HardwareRenderer;->addObserver(J)V

    .line 10826
    :cond_14
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 4

    .line 10876
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 10877
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->mRenderer:Landroid/graphics/HardwareRenderer;

    if-eqz v0, :cond_12

    .line 10878
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->getNativeFrameMetricsObserver()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->removeObserver(J)V

    .line 10880
    :cond_12
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 10881
    return-void
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .registers 4

    .line 10835
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_e

    goto :goto_10

    :cond_e
    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p1, 0x1

    .line 10837
    :goto_11
    if-eqz p1, :cond_24

    .line 10838
    iget-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean p1, p1, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz p1, :cond_1e

    .line 10839
    iget-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 10842
    :cond_1e
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 10843
    return-void

    .line 10845
    :cond_24
    iget-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 10846
    return-void
.end method

.method public blacklist onDragEvent(ZFFI)V
    .registers 18

    .line 10867
    if-eqz p1, :cond_4

    const/4 p1, 0x6

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    :goto_5
    move v0, p1

    .line 10866
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v1, p2

    move/from16 v2, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v12}, Landroid/view/DragEvent;->obtain(IFFFFIILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p1

    .line 10871
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 10872
    return-void
.end method

.method public blacklist onFocusEvent(Z)V
    .registers 3

    .line 10850
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 10851
    return-void
.end method

.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 3

    .line 10830
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->processRawInputEvent(Landroid/view/InputEvent;)V

    .line 10831
    return-void
.end method

.method public blacklist onPointerCaptureEvent(Z)V
    .registers 3

    .line 10860
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchPointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    .line 10861
    return-void
.end method

.method public blacklist onTouchModeChanged(Z)V
    .registers 3

    .line 10855
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->touchModeChanged(Z)V

    .line 10856
    return-void
.end method
