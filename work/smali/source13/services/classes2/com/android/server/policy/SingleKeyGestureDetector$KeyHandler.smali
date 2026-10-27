.class Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;
.super Landroid/os/Handler;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleKeyGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SingleKeyGestureDetector;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector;)V
    .registers 2

    .line 425
    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 426
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 427
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 431
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 432
    .local v0, "rule":Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    const-string v1, "SingleKeyGesture"

    if-nez v0, :cond_e

    .line 433
    const-string v2, "No active rule."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 437
    :cond_e
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 438
    .local v2, "keyCode":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 439
    .local v3, "pressCount":I
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_ba

    goto/16 :goto_b8

    .line 456
    :pswitch_1a
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detect press "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", count "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_44
    if-ne v3, v5, :cond_50

    .line 461
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onPress(J)V

    goto :goto_b8

    .line 463
    :cond_50
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onMultiPress(JI)V

    goto :goto_b8

    .line 448
    :pswitch_5a
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detect very long press "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 450
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_7a
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v1, v5}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fputmHandledByLongPress(Lcom/android/server/policy/SingleKeyGestureDetector;Z)V

    .line 453
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onVeryLongPress(J)V

    .line 454
    goto :goto_b8

    .line 441
    :pswitch_89
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detect long press "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_a9
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v1, v5}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fputmHandledByLongPress(Lcom/android/server/policy/SingleKeyGestureDetector;Z)V

    .line 445
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(J)V

    .line 446
    nop

    .line 467
    :goto_b8
    return-void

    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_89
        :pswitch_5a
        :pswitch_1a
    .end packed-switch
.end method
