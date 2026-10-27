.class final Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
.super Landroid/os/Handler;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PromoteLevelManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method public constructor blacklist <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 531
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 532
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 533
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 537
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_5a

    goto :goto_59

    .line 555
    :sswitch_6
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$mprocessVideoFpsCallback(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Ljava/lang/Object;)V

    .line 556
    goto :goto_59

    .line 540
    :sswitch_e
    :try_start_e
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fgetmDisplayScrollListeners(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1a
    if-ltz v0, :cond_36

    .line 541
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fgetmDisplayScrollListeners(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/IDisplayScrollListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/whetstone/IDisplayScrollListener;->onScroll(Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_33} :catch_39
    .catchall {:try_start_e .. :try_end_33} :catchall_37

    .line 540
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .end local v0    # "i":I
    :cond_36
    goto :goto_3d

    .line 546
    :catchall_37
    move-exception v0

    goto :goto_48

    .line 543
    :catch_39
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_37

    .line 546
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3d
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fgetmDisplayScrollListeners(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 547
    nop

    .line 548
    goto :goto_59

    .line 546
    :goto_48
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fgetmDisplayScrollListeners(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 547
    throw v0

    .line 552
    :sswitch_52
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$mhandleClearDeadAppFromNative(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    .line 553
    goto :goto_59

    .line 550
    :sswitch_58
    nop

    .line 560
    :goto_59
    return-void

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_58
        0x2 -> :sswitch_52
        0x4 -> :sswitch_e
        0x8 -> :sswitch_6
    .end sparse-switch
.end method
