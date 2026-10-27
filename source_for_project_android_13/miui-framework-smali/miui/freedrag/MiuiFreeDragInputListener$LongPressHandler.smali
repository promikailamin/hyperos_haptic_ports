.class final Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;
.super Landroid/os/Handler;
.source "MiuiFreeDragInputListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/freedrag/MiuiFreeDragInputListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LongPressHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/freedrag/MiuiFreeDragInputListener;


# direct methods
.method public constructor blacklist <init>(Lmiui/freedrag/MiuiFreeDragInputListener;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;->this$0:Lmiui/freedrag/MiuiFreeDragInputListener;

    .line 98
    invoke-static {}, Lmiui/freedrag/MiuiFreeDragThread;->getInstance()Lmiui/freedrag/MiuiFreeDragThread;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/freedrag/MiuiFreeDragThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_2b

    .line 109
    :pswitch_6
    :try_start_6
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;->this$0:Lmiui/freedrag/MiuiFreeDragInputListener;

    invoke-static {v0}, Lmiui/freedrag/MiuiFreeDragInputListener;->-$$Nest$fgetmDecorViewForLongClick(Lmiui/freedrag/MiuiFreeDragInputListener;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 111
    .local v0, "point":Landroid/graphics/PointF;
    iget-object v1, p0, Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;->this$0:Lmiui/freedrag/MiuiFreeDragInputListener;

    invoke-static {v1}, Lmiui/freedrag/MiuiFreeDragInputListener;->-$$Nest$fgetmDragModeCallback(Lmiui/freedrag/MiuiFreeDragInputListener;)Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;

    move-result-object v1

    iget-object v2, p0, Lmiui/freedrag/MiuiFreeDragInputListener$LongPressHandler;->this$0:Lmiui/freedrag/MiuiFreeDragInputListener;

    invoke-static {v2}, Lmiui/freedrag/MiuiFreeDragInputListener;->-$$Nest$fgetmDecorViewForLongClick(Lmiui/freedrag/MiuiFreeDragInputListener;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lmiui/freedrag/MiuiFreeDragInputListener$DragModeCallback;->onDragLongPress(Landroid/graphics/PointF;Landroid/view/View;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_21} :catch_22

    .line 115
    .end local v0    # "point":Landroid/graphics/PointF;
    :cond_21
    goto :goto_2b

    .line 113
    :catch_22
    move-exception v0

    .line 114
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "MiuiFreeDragInputListener"

    const-string v2, "MSG_DRAG_LONG_PRESS-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "exception":Ljava/lang/Exception;
    nop

    .line 120
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
