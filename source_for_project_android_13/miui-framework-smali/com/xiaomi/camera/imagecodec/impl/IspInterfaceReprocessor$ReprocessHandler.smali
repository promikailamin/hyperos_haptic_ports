.class Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;
.super Landroid/os/Handler;
.source "IspInterfaceReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReprocessHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 914
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    .line 915
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 916
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 920
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_5c

    .line 943
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_5a

    .line 939
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/camera/isp/ISPResult;

    .line 940
    .local v0, "result":Lcom/xiaomi/camera/isp/ISPResult;
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->onEarlyMetadataCallback(Lcom/xiaomi/camera/isp/ISPResult;)V

    .line 941
    goto :goto_5a

    .line 936
    .end local v0    # "result":Lcom/xiaomi/camera/isp/ISPResult;
    :sswitch_13
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$mprocessNativeMessage(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;I)V

    .line 937
    goto :goto_5a

    .line 928
    :sswitch_1b
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recv MSG_DESTROY_ENCODER"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCodecLock(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 930
    :try_start_2d
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$mclearIspInterfaceList(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    .line 931
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fputmActiveIspInterface(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/isp/IspInterface;)V

    .line 932
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_3f

    .line 933
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$mreleaseWakeLock(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    .line 934
    goto :goto_5a

    .line 932
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1

    .line 922
    :sswitch_42
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recv MSG_REPROCESS_IMAGE"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$mcheckConditionIsReady(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 924
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$mreprocessImage(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    .line 945
    :cond_5a
    :goto_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_42
        0x2 -> :sswitch_1b
        0x65 -> :sswitch_13
        0x66 -> :sswitch_9
    .end sparse-switch
.end method
