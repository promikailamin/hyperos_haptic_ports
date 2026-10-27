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
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 9818
    iput-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 9819
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 9820
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 2

    .line 9922
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 9923
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 9924
    return-void
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .registers 5
    .param p1, "source"    # I

    .line 9876
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 9878
    .local v0, "unbuffered":Z
    :goto_11
    if-eqz v0, :cond_24

    .line 9879
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, v1, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v1, :cond_1e

    .line 9880
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 9883
    :cond_1e
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 9884
    return-void

    .line 9886
    :cond_24
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 9887
    return-void
.end method

.method public blacklist onDragEvent(ZFF)V
    .registers 16
    .param p1, "isExiting"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 9908
    if-eqz p1, :cond_4

    const/4 v0, 0x6

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    move v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 9907
    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v11}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    .line 9912
    .local v0, "event":Landroid/view/DragEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 9914
    sget-object v1, Landroid/view/ViewRootImpl;->mMiuiFreeDragEventConsumer:Ljava/util/function/Consumer;

    if-eqz v1, :cond_22

    .line 9915
    sget-object v1, Landroid/view/ViewRootImpl;->mMiuiFreeDragEventConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9918
    :cond_22
    return-void
.end method

.method public blacklist onFocusEvent(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .line 9891
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 9892
    return-void
.end method

.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 9825
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmHandWritingStub(Landroid/view/ViewRootImpl;)Landroid/view/HandWritingStub;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/HandWritingStub;->recordCustomToolType(Landroid/view/InputEvent;)V

    .line 9826
    invoke-static {}, Landroid/view/InputEventInterceptStub;->getInstance()Landroid/view/InputEventInterceptStub;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/InputEventInterceptStub;->shouldIntercept(Landroid/view/InputEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 9827
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 9828
    return-void

    .line 9830
    :cond_18
    invoke-static {}, Landroid/view/InputEventLogStub;->getInstance()Landroid/view/InputEventLogStub;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/view/InputEventLogStub;->logOnInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V

    .line 9831
    invoke-static {}, Landroid/view/InputEventLogStub;->getInstance()Landroid/view/InputEventLogStub;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/view/InputEventLogStub;->checkScoutStateOnInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V

    .line 9834
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_6b

    .line 9835
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 9836
    .local v0, "me":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEmbeddingScaleParameter()Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->reset()V

    .line 9838
    iget-object v2, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_57

    iget-object v2, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v2

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    .line 9839
    .local v2, "activity":Landroid/app/Activity;
    :goto_58
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_6b

    if-eqz v2, :cond_6b

    .line 9840
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEmbeddingScaleParameter()Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/Activity;->getEmbeddingScaleParameter()Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->set(Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;)V

    .line 9844
    .end local v0    # "me":Landroid/view/MotionEvent;
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_6b
    const-wide/16 v2, 0x8

    const-string/jumbo v0, "processInputEventForCompatibility"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9847
    :try_start_73
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInputCompatProcessor(Landroid/view/ViewRootImpl;)Landroid/view/InputEventCompatProcessor;

    move-result-object v0

    .line 9848
    invoke-virtual {v0, p1}, Landroid/view/InputEventCompatProcessor;->processInputEventForCompatibility(Landroid/view/InputEvent;)Ljava/util/List;

    move-result-object v0

    .line 9851
    .local v0, "processedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputEvent;>;"
    invoke-static {}, Landroid/hovermode/MiuiHoverModeStub;->get()Landroid/hovermode/MiuiHoverModeStub;

    move-result-object v4

    invoke-interface {v4}, Landroid/hovermode/MiuiHoverModeStub;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 9852
    invoke-static {}, Landroid/view/ViewRootImplStub;->getInstance()Landroid/view/ViewRootImplStub;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewRootImplStub;->processEventForHoverModeIfNeeded(Landroid/view/InputEvent;)V
    :try_end_8e
    .catchall {:try_start_73 .. :try_end_8e} :catchall_bd

    .line 9856
    :cond_8e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 9857
    nop

    .line 9858
    const/4 v2, 0x1

    if-eqz v0, :cond_b7

    .line 9859
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 9861
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_bc

    .line 9863
    :cond_9f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_b6

    .line 9864
    iget-object v3, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 9865
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputEvent;

    const/16 v5, 0x40

    .line 9864
    invoke-virtual {v3, v4, p0, v5, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 9863
    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    .end local v1    # "i":I
    :cond_b6
    goto :goto_bc

    .line 9870
    :cond_b7
    iget-object v3, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, p1, p0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 9872
    :goto_bc
    return-void

    .line 9856
    .end local v0    # "processedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputEvent;>;"
    :catchall_bd
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 9857
    throw v0
.end method

.method public blacklist onPointerCaptureEvent(Z)V
    .registers 3
    .param p1, "pointerCaptureEnabled"    # Z

    .line 9901
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchPointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    .line 9902
    return-void
.end method

.method public blacklist onTouchModeChanged(Z)V
    .registers 3
    .param p1, "inTouchMode"    # Z

    .line 9896
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->touchModeChanged(Z)V

    .line 9897
    return-void
.end method
