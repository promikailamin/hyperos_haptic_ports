.class public Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;
.super Ljava/lang/Object;
.source "KeyGestureController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$KeyGestureEventHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;)V
    .registers 2

    .line 1856
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/KeyGestureController;Lcom/android/server/input/KeyGestureController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;-><init>(Lcom/android/server/input/KeyGestureController;)V

    return-void
.end method


# virtual methods
.method public handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .registers 11

    .line 1861
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_11

    .line 1862
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result p2

    if-eqz p2, :cond_11

    move p2, v1

    goto :goto_12

    :cond_11
    move p2, v0

    .line 1863
    :goto_12
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_20

    .line 1864
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_20

    move v3, v1

    goto :goto_21

    :cond_20
    move v3, v0

    .line 1865
    :goto_21
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_28

    move v0, v1

    .line 1866
    :cond_28
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x5

    if-eq v4, v5, :cond_10c

    const/16 v5, 0xb

    if-eq v4, v5, :cond_95

    const/16 p2, 0x37

    const/4 v1, 0x4

    if-eq v4, p2, :cond_70

    const/16 p2, 0x3c

    if-eq v4, p2, :cond_5a

    .line 1918
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received a key gesture "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " that was not registered by this handler"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyGestureController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5a
    if-eqz v3, :cond_125

    .line 1877
    iget-object p1, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p1}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1868
    :cond_70
    iget-object p1, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p1}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_125

    .line 1870
    iget-object p1, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p1}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p2

    .line 1871
    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    .line 1872
    invoke-static {p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mgetAccessibilityShortcutTimeout(Lcom/android/server/input/KeyGestureController;)J

    move-result-wide v0

    .line 1870
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_95
    if-eqz p2, :cond_dc

    .line 1888
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmClickPartialScreenshot(Lcom/android/server/input/KeyGestureController;)Z

    move-result p2

    if-eqz p2, :cond_d3

    iget-object p2, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p2

    .line 1889
    invoke-virtual {p2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_d3

    .line 1890
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1891
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;

    iget-object v5, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    .line 1896
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v7

    invoke-direct {v4, v5, v1, v2, v7}, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;-><init>(Lcom/android/server/input/KeyGestureController;III)V

    .line 1892
    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1891
    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_dc

    .line 1901
    :cond_d3
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_dc
    :goto_dc
    if-eqz v0, :cond_125

    .line 1905
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1906
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;

    iget-object v3, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    .line 1911
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result p1

    invoke-direct {v2, v3, v1, v1, p1}, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;-><init>(Lcom/android/server/input/KeyGestureController;III)V

    .line 1907
    invoke-virtual {v0, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    .line 1914
    invoke-static {p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mgetScreenshotChordLongPressDelay(Lcom/android/server/input/KeyGestureController;)J

    move-result-wide v0

    .line 1906
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_10c
    if-eqz v3, :cond_125

    .line 1882
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;

    move-result-object p0

    .line 1883
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result p1

    .line 1882
    invoke-virtual {p0, v6, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_125
    return-void
.end method
