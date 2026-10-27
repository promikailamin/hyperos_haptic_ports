.class final Landroid/view/Choreographer$FrameHandler;
.super Landroid/os/Handler;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor blacklist <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1369
    iput-object p1, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    .line 1370
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1371
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1375
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_4a

    goto :goto_48

    .line 1391
    :sswitch_7
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    new-instance v4, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v4}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/Choreographer;->doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    goto :goto_48

    .line 1387
    :sswitch_16
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/Choreographer;->-$$Nest$fputmFrameScheduled(Landroid/view/Choreographer;Z)V

    .line 1388
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    new-instance v4, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v4}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/Choreographer;->doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 1389
    goto :goto_48

    .line 1383
    :sswitch_2b
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->doScheduleCallback(I)V

    .line 1384
    goto :goto_48

    .line 1380
    :sswitch_33
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->doScheduleVsync()V

    .line 1381
    goto :goto_48

    .line 1377
    :sswitch_39
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    new-instance v4, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v4}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/Choreographer;->doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 1378
    nop

    .line 1395
    :goto_48
    return-void

    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_39
        0x1 -> :sswitch_33
        0x2 -> :sswitch_2b
        0x64 -> :sswitch_16
        0x65 -> :sswitch_7
    .end sparse-switch
.end method
