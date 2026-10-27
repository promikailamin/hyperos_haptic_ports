.class public final Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;
.super Ljava/lang/Object;
.source "BluetoothProfileMonitor.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothProfileMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;)V
    .registers 2

    .line 515
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothProfileMonitor-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5

    .line 518
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    monitor-enter v0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_94

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_6f

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_4a

    packed-switch p1, :pswitch_data_a0

    goto/16 :goto_9b

    .line 544
    :pswitch_13
    :try_start_13
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmVolumeProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothVolumeControl;)V

    .line 545
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmVolumeProfile(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/bluetooth/BluetoothVolumeControl;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmHandler(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda182;

    invoke-direct {v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda182;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmVolumeCallback(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/bluetooth/BluetoothVolumeControl;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothVolumeControl$Callback;)V

    goto :goto_9b

    :catchall_38
    move-exception p0

    goto :goto_9d

    .line 527
    :pswitch_3a
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {p0, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmLeAudioProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeAudio;)V

    goto :goto_9b

    .line 524
    :pswitch_42
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {p0, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmHearingAidProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothHearingAid;)V

    goto :goto_9b

    .line 537
    :cond_4a
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmAssistantProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeBroadcastAssistant;)V

    .line 538
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmAssistantProfile(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmHandler(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/os/Handler;

    move-result-object p2

    .line 539
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda182;

    invoke-direct {v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda182;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmBroadcastAssistantCallback(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;

    move-result-object p0

    .line 538
    invoke-virtual {p1, v1, p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    goto :goto_9b

    .line 531
    :cond_6f
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmBroadcastProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeBroadcast;)V

    .line 532
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmBroadcastProfile(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/bluetooth/BluetoothLeBroadcast;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmHandler(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda182;

    invoke-direct {v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda182;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmBroadcastCallback(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/bluetooth/BluetoothLeBroadcast;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    goto :goto_9b

    .line 521
    :cond_94
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p0, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmA2dpProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothA2dp;)V

    .line 549
    :goto_9b
    monitor-exit v0

    return-void

    :goto_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_13 .. :try_end_9e} :catchall_38

    throw p0

    nop

    :pswitch_data_a0
    .packed-switch 0x15
        :pswitch_42
        :pswitch_3a
        :pswitch_13
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 5

    .line 554
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_66

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_4b

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_36

    packed-switch p1, :pswitch_data_70

    goto :goto_6b

    .line 580
    :pswitch_13
    :try_start_13
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmVolumeProfile(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/bluetooth/BluetoothVolumeControl;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {v1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmVolumeCallback(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothVolumeControl;->unregisterCallback(Landroid/bluetooth/BluetoothVolumeControl$Callback;)V

    .line 581
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0, v2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmVolumeProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothVolumeControl;)V

    goto :goto_6b

    :catchall_28
    move-exception p0

    goto :goto_6d

    .line 563
    :pswitch_2a
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0, v2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmLeAudioProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeAudio;)V

    goto :goto_6b

    .line 560
    :pswitch_30
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0, v2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmHearingAidProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothHearingAid;)V

    goto :goto_6b

    .line 574
    :cond_36
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmAssistantProfile(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {v1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmBroadcastAssistantCallback(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    .line 575
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0, v2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmAssistantProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeBroadcastAssistant;)V

    goto :goto_6b

    .line 567
    :cond_4b
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmBroadcastProfile(Lcom/android/server/media/BluetoothProfileMonitor;)Landroid/bluetooth/BluetoothLeBroadcast;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {v1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmBroadcastCallback(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothLeBroadcast;->unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    .line 568
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p1, v2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmBroadcastProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeBroadcast;)V

    .line 569
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmBroadcastId(Lcom/android/server/media/BluetoothProfileMonitor;I)V

    goto :goto_6b

    .line 557
    :cond_66
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0, v2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmA2dpProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothA2dp;)V

    .line 585
    :goto_6b
    monitor-exit v0

    return-void

    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_13 .. :try_end_6e} :catchall_28

    throw p0

    nop

    :pswitch_data_70
    .packed-switch 0x15
        :pswitch_30
        :pswitch_2a
        :pswitch_13
    .end packed-switch
.end method
