.class public Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;
.super Landroid/os/Handler;
.source "AmbientLuxObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/AmbientLuxObserver;Landroid/os/Looper;)V
    .registers 3

    .line 83
    iput-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 92
    iget-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    monitor-enter v0

    .line 93
    :try_start_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    if-eq v1, v2, :cond_c

    goto/16 :goto_d5

    :cond_c
    const/4 p1, 0x0

    goto :goto_1f

    .line 95
    :cond_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 96
    iget-object v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {v1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmRingBuffer(Lcom/android/server/lineage/display/AmbientLuxObserver;)Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->add(F)V

    .line 101
    :goto_1f
    iget-object v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {v1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmRingBuffer(Lcom/android/server/lineage/display/AmbientLuxObserver;)Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->getAverage()F

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fputmAmbientLux(Lcom/android/server/lineage/display/AmbientLuxObserver;F)V

    .line 103
    invoke-static {}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 104
    const-string v1, "AmbientLuxObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lux= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mState="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/AmbientLuxObserver;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mAmbientLux="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/lineage/display/AmbientLuxObserver;)F

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :catchall_65
    move-exception p0

    goto :goto_d7

    .line 108
    :cond_67
    :goto_67
    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/AmbientLuxObserver;)I

    move-result p1

    if-ne p1, v2, :cond_7d

    .line 109
    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmThresholdLux(Lcom/android/server/lineage/display/AmbientLuxObserver;)F

    move-result p1

    iget-object v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {v1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmHysteresisLux(Lcom/android/server/lineage/display/AmbientLuxObserver;)F

    move-result v1

    sub-float/2addr p1, v1

    goto :goto_83

    :cond_7d
    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmThresholdLux(Lcom/android/server/lineage/display/AmbientLuxObserver;)F

    move-result p1

    .line 110
    :goto_83
    iget-object v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {v1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/lineage/display/AmbientLuxObserver;)F

    move-result v1

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_8f

    move p1, v2

    goto :goto_90

    :cond_8f
    const/4 p1, 0x0

    .line 111
    :goto_90
    iget-object v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {v1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/AmbientLuxObserver;)I

    move-result v1

    if-eq v1, p1, :cond_ba

    .line 112
    iget-object v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {v1, p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fputmState(Lcom/android/server/lineage/display/AmbientLuxObserver;I)V

    .line 113
    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmCallback(Lcom/android/server/lineage/display/AmbientLuxObserver;)Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 114
    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmCallback(Lcom/android/server/lineage/display/AmbientLuxObserver;)Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {v1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/AmbientLuxObserver;)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {v3}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/lineage/display/AmbientLuxObserver;)F

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;->onTransition(IF)V

    .line 120
    :cond_ba
    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmRingBuffer(Lcom/android/server/lineage/display/AmbientLuxObserver;)Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->size()I

    move-result p1

    if-le p1, v2, :cond_d5

    .line 121
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmThresholdDuration(Lcom/android/server/lineage/display/AmbientLuxObserver;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long v3, p1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    :cond_d5
    :goto_d5
    monitor-exit v0

    return-void

    :goto_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_3 .. :try_end_d8} :catchall_65

    throw p0
.end method
