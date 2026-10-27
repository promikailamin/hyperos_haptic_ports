.class public Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
.super Landroid/os/Handler;
.source "AudioDeviceBroker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 2

    .line 1971
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 1976
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const/16 v3, 0x16

    if-eq v0, v3, :cond_532

    const/16 v4, 0x17

    if-eq v0, v4, :cond_50d

    const/16 v4, 0x2a

    const/4 v5, 0x1

    if-eq v0, v4, :cond_4be

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_49a

    const/16 v4, 0x2d

    const/4 v6, 0x2

    if-eq v0, v4, :cond_448

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_428

    const/16 v4, 0x31

    if-eq v0, v4, :cond_40a

    const/16 v4, 0x34

    if-eq v0, v4, :cond_401

    const/16 v4, 0xa

    packed-switch v0, :pswitch_data_590

    packed-switch v0, :pswitch_data_5a2

    packed-switch v0, :pswitch_data_5b8

    packed-switch v0, :pswitch_data_5c2

    .line 2276
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_556

    .line 2238
    :pswitch_4f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2239
    :try_start_56
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_61

    goto :goto_62

    :cond_61
    move v5, v1

    :goto_62
    invoke-virtual {v3, v5}, Lcom/android/server/audio/AudioService;->setCallMute(Z)V

    .line 2240
    monitor-exit v0

    goto/16 :goto_556

    :catchall_68
    move-exception p0

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_68

    throw p0

    .line 2085
    :pswitch_6b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2086
    :try_start_72
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeHearingAidDeviceUnavailableNow(Ljava/lang/String;)V

    .line 2088
    monitor-exit v0

    goto/16 :goto_556

    :catchall_82
    move-exception p0

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_72 .. :try_end_84} :catchall_82

    throw p0

    .line 2272
    :pswitch_85
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/audio/AdiDeviceState;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_94

    goto :goto_95

    :cond_94
    move v5, v1

    :goto_95
    invoke-virtual {v0, v3, v5}, Lcom/android/server/audio/AudioService;->onUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    goto/16 :goto_556

    .line 2264
    :pswitch_9a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2265
    :try_start_9f
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_b7

    .line 2266
    :try_start_a6
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->onSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V

    .line 2268
    monitor-exit v3
    :try_end_b4
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_b9

    .line 2269
    :try_start_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b7

    goto/16 :goto_556

    :catchall_b7
    move-exception p0

    goto :goto_bc

    :catchall_b9
    move-exception p0

    .line 2268
    :try_start_ba
    monitor-exit v3
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw p0

    .line 2269
    :goto_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_bb .. :try_end_bd} :catchall_b7

    throw p0

    .line 2257
    :pswitch_be
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2258
    :try_start_c3
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_ca
    .catchall {:try_start_c3 .. :try_end_ca} :catchall_d9

    .line 2259
    :try_start_ca
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->onUpdateLeAudioGroupAddresses(I)V

    .line 2260
    monitor-exit v3
    :try_end_d6
    .catchall {:try_start_ca .. :try_end_d6} :catchall_db

    .line 2261
    :try_start_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d9

    goto/16 :goto_556

    :catchall_d9
    move-exception p0

    goto :goto_de

    :catchall_db
    move-exception p0

    .line 2260
    :try_start_dc
    monitor-exit v3
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    :try_start_dd
    throw p0

    .line 2261
    :goto_de
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_dd .. :try_end_df} :catchall_d9

    throw p0

    .line 2251
    :pswitch_e0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2252
    :try_start_e7
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v5, :cond_f0

    goto :goto_f1

    :cond_f0
    move v5, v1

    :goto_f1
    invoke-virtual {v3, v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->onCheckCommunicationRouteClientState(IZ)V

    .line 2253
    monitor-exit v0

    goto/16 :goto_556

    :catchall_f7
    move-exception p0

    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_e7 .. :try_end_f9} :catchall_f7

    throw p0

    .line 2182
    :pswitch_fa
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2183
    :try_start_ff
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_106
    .catchall {:try_start_ff .. :try_end_106} :catchall_113

    .line 2184
    :try_start_106
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monReceiveBtEvent(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Intent;)V

    .line 2185
    monitor-exit v3
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_115

    .line 2186
    :try_start_110
    monitor-exit v0
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_113

    goto/16 :goto_556

    :catchall_113
    move-exception p0

    goto :goto_118

    :catchall_115
    move-exception p0

    .line 2185
    :try_start_116
    monitor-exit v3
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    :try_start_117
    throw p0

    .line 2186
    :goto_118
    monitor-exit v0
    :try_end_119
    .catchall {:try_start_117 .. :try_end_119} :catchall_113

    throw p0

    .line 2247
    :pswitch_11a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->onPersistAudioDeviceSettings()V

    goto/16 :goto_556

    .line 2233
    :pswitch_121
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2234
    :try_start_128
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$mcheckMessagesMuteMusic(Lcom/android/server/audio/AudioDeviceBroker;I)V

    .line 2235
    monitor-exit v0

    goto/16 :goto_556

    :catchall_130
    move-exception p0

    monitor-exit v0
    :try_end_132
    .catchall {:try_start_128 .. :try_end_132} :catchall_130

    throw p0

    .line 2174
    :pswitch_133
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2175
    :try_start_138
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_13f
    .catchall {:try_start_138 .. :try_end_13f} :catchall_14c

    .line 2176
    :try_start_13f
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    .line 2177
    monitor-exit v3
    :try_end_149
    .catchall {:try_start_13f .. :try_end_149} :catchall_14e

    .line 2178
    :try_start_149
    monitor-exit v0
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_14c

    goto/16 :goto_556

    :catchall_14c
    move-exception p0

    goto :goto_151

    :catchall_14e
    move-exception p0

    .line 2177
    :try_start_14f
    monitor-exit v3
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    :try_start_150
    throw p0

    .line 2178
    :goto_151
    monitor-exit v0
    :try_end_152
    .catchall {:try_start_150 .. :try_end_152} :catchall_14c

    throw p0

    .line 2130
    :pswitch_153
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2131
    :try_start_158
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_15f
    .catchall {:try_start_158 .. :try_end_15f} :catchall_194

    .line 2132
    :try_start_15f
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-static {v4, v6}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fputmAudioModeOwner(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;)V

    .line 2133
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmAudioModeOwner(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    if-eq v4, v5, :cond_181

    .line 2134
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 2135
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    const-string/jumbo v6, "setNewModeOwner"

    .line 2134
    invoke-static {v4, v5, v6}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/AttributionSource;Ljava/lang/String;)V

    goto :goto_181

    :catchall_17f
    move-exception p0

    goto :goto_196

    .line 2138
    :cond_181
    :goto_181
    monitor-exit v3
    :try_end_182
    .catchall {:try_start_15f .. :try_end_182} :catchall_17f

    .line 2139
    :try_start_182
    monitor-exit v0
    :try_end_183
    .catchall {:try_start_182 .. :try_end_183} :catchall_194

    .line 2140
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x11

    if-ne v0, v3, :cond_556

    .line 2141
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->decrementAudioModeResetCount()V

    goto/16 :goto_556

    :catchall_194
    move-exception p0

    goto :goto_198

    .line 2138
    :goto_196
    :try_start_196
    monitor-exit v3
    :try_end_197
    .catchall {:try_start_196 .. :try_end_197} :catchall_17f

    :try_start_197
    throw p0

    .line 2139
    :goto_198
    monitor-exit v0
    :try_end_199
    .catchall {:try_start_197 .. :try_end_199} :catchall_194

    throw p0

    .line 2124
    :pswitch_19a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2125
    :try_start_1a1
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    .line 2126
    monitor-exit v0

    goto/16 :goto_556

    :catchall_1af
    move-exception p0

    monitor-exit v0
    :try_end_1b1
    .catchall {:try_start_1a1 .. :try_end_1b1} :catchall_1af

    throw p0

    .line 2112
    :pswitch_1b2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2113
    :try_start_1b9
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v6}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v6

    .line 2114
    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceInventory;->isHearingAidConnected()Z

    move-result v6

    .line 2113
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/audio/BtHelper;->setHearingAidVolume(IIZ)V

    .line 2115
    monitor-exit v0

    goto/16 :goto_556

    :catchall_1d3
    move-exception p0

    monitor-exit v0
    :try_end_1d5
    .catchall {:try_start_1b9 .. :try_end_1d5} :catchall_1d3

    throw p0

    .line 2022
    :pswitch_1d6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2023
    :try_start_1dd
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceInventory;->onReportNewRoutes()V

    .line 2024
    monitor-exit v0

    goto/16 :goto_556

    :catchall_1e9
    move-exception p0

    monitor-exit v0
    :try_end_1eb
    .catchall {:try_start_1dd .. :try_end_1eb} :catchall_1e9

    throw p0

    .line 2109
    :pswitch_1ec
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;)V

    goto/16 :goto_556

    .line 2091
    :pswitch_1f3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    .line 2092
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_204

    .line 2093
    const-string v0, "AS.AudioDeviceBroker"

    const-string v3, "Malformed MSG_L_BLUETOOTH_DEVICE_CONFIG_CHANGE message"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_556

    .line 2096
    :cond_204
    invoke-static {v0, v3, v6}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v0

    .line 2099
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    iget-boolean v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    const-string v7, "MSG_L_BLUETOOTH_DEVICE_CONFIG_CHANGE"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/audio/BtHelper;->getCodecWithFallback(Landroid/bluetooth/BluetoothDevice;IZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 2102
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2103
    :try_start_221
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v5

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 2104
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2103
    invoke-virtual {v5, v0, v6, v3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;IZI)I

    move-result v0

    add-int/2addr v2, v0

    .line 2106
    monitor-exit v4

    goto/16 :goto_556

    :catchall_23f
    move-exception p0

    monitor-exit v4
    :try_end_241
    .catchall {:try_start_221 .. :try_end_241} :catchall_23f

    throw p0

    .line 2071
    :pswitch_242
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2072
    :try_start_249
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 2074
    monitor-exit v0

    goto/16 :goto_556

    :catchall_25b
    move-exception p0

    monitor-exit v0
    :try_end_25d
    .catchall {:try_start_249 .. :try_end_25d} :catchall_25b

    throw p0

    .line 2063
    :pswitch_25e
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2064
    :try_start_263
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_26a
    .catchall {:try_start_263 .. :try_end_26a} :catchall_277

    .line 2065
    :try_start_26a
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 2066
    monitor-exit v3
    :try_end_274
    .catchall {:try_start_26a .. :try_end_274} :catchall_279

    .line 2067
    :try_start_274
    monitor-exit v0
    :try_end_275
    .catchall {:try_start_274 .. :try_end_275} :catchall_277

    goto/16 :goto_556

    :catchall_277
    move-exception p0

    goto :goto_27c

    :catchall_279
    move-exception p0

    .line 2066
    :try_start_27a
    monitor-exit v3
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_279

    :try_start_27b
    throw p0

    .line 2067
    :goto_27c
    monitor-exit v0
    :try_end_27d
    .catchall {:try_start_27b .. :try_end_27d} :catchall_277

    throw p0

    .line 2027
    :pswitch_27e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 2028
    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-ne v4, v6, :cond_2b8

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v4

    iget v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 2029
    invoke-virtual {v4, v7}, Lcom/android/server/audio/BtHelper;->isProfilePoxyConnected(I)Z

    move-result v4

    if-nez v4, :cond_2b8

    .line 2030
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "msg: MSG_L_SET_BT_ACTIVE_DEVICE received with null profile proxy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceBroker"

    .line 2033
    invoke-virtual {v4, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 2030
    invoke-virtual {v3, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto/16 :goto_556

    .line 2035
    :cond_2b8
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v8, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    iget-boolean v9, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    const-string v10, "MSG_L_SET_BT_ACTIVE_DEVICE"

    .line 2036
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/android/server/audio/BtHelper;->getCodecWithFallback(Landroid/bluetooth/BluetoothDevice;IZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 2039
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v7, v7, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2040
    :try_start_2cf
    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v8}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_2d6
    .catchall {:try_start_2cf .. :try_end_2d6} :catchall_32f

    .line 2041
    :try_start_2d6
    iget-object v9, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v9}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v9

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2042
    iget v10, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    if-ne v10, v3, :cond_2f1

    iget-boolean v10, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-eqz v10, :cond_2ed

    goto :goto_2f1

    :cond_2ed
    const/4 v10, -0x1

    goto :goto_2fb

    :catchall_2ef
    move-exception p0

    goto :goto_331

    .line 2044
    :cond_2f1
    :goto_2f1
    iget-object v10, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v10}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioService;->getBluetoothContextualVolumeStream()I

    move-result v10

    .line 2041
    :goto_2fb
    invoke-virtual {v9, v0, v4, v10}, Lcom/android/server/audio/AudioDeviceInventory;->onSetBtActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;II)V

    .line 2046
    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    if-eq v4, v3, :cond_312

    const/16 v3, 0x15

    if-eq v4, v3, :cond_312

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmScoManagedByAudio(Lcom/android/server/audio/AudioDeviceBroker;)Z

    move-result v3

    if-eqz v3, :cond_32b

    iget v3, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    if-ne v3, v5, :cond_32b

    .line 2050
    :cond_312
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$mcheckCommunicationRouteClientsDevices(Lcom/android/server/audio/AudioDeviceBroker;)V

    .line 2051
    iget v3, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-eq v3, v6, :cond_31f

    iget-boolean v0, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    if-nez v0, :cond_32b

    .line 2053
    :cond_31f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 2054
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    const-string/jumbo v4, "setBluetoothActiveDevice"

    .line 2053
    invoke-static {v0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/AttributionSource;Ljava/lang/String;)V

    .line 2058
    :cond_32b
    monitor-exit v8
    :try_end_32c
    .catchall {:try_start_2d6 .. :try_end_32c} :catchall_2ef

    .line 2059
    :try_start_32c
    monitor-exit v7
    :try_end_32d
    .catchall {:try_start_32c .. :try_end_32d} :catchall_32f

    goto/16 :goto_556

    :catchall_32f
    move-exception p0

    goto :goto_333

    .line 2058
    :goto_331
    :try_start_331
    monitor-exit v8
    :try_end_332
    .catchall {:try_start_331 .. :try_end_332} :catchall_2ef

    :try_start_332
    throw p0

    .line 2059
    :goto_333
    monitor-exit v7
    :try_end_334
    .catchall {:try_start_332 .. :try_end_334} :catchall_32f

    throw p0

    .line 2190
    :pswitch_335
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2191
    :try_start_33c
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceInventory;->onToggleHdmi()V

    .line 2192
    monitor-exit v0

    goto/16 :goto_556

    :catchall_348
    move-exception p0

    monitor-exit v0
    :try_end_34a
    .catchall {:try_start_33c .. :try_end_34a} :catchall_348

    throw p0

    .line 2016
    :pswitch_34b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBluetoothA2dpEnabled(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_358

    move v4, v1

    .line 2018
    :cond_358
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v5, v4, v5, v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monSetForceUse(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V

    goto/16 :goto_556

    .line 2012
    :pswitch_363
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v3, v4, v1, v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monSetForceUse(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V

    goto/16 :goto_556

    .line 2007
    :pswitch_372
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2008
    :try_start_379
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/audio/BtHelper;->onBroadcastScoConnectionState(I)V

    .line 2009
    monitor-exit v0

    goto/16 :goto_556

    :catchall_387
    move-exception p0

    monitor-exit v0
    :try_end_389
    .catchall {:try_start_379 .. :try_end_389} :catchall_387

    throw p0

    .line 2001
    :pswitch_38a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2002
    :try_start_391
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    .line 2004
    monitor-exit v0

    goto/16 :goto_556

    :catchall_3a1
    move-exception p0

    monitor-exit v0
    :try_end_3a3
    .catchall {:try_start_391 .. :try_end_3a3} :catchall_3a1

    throw p0

    .line 1978
    :pswitch_3a4
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1979
    :try_start_3a9
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3b0
    .catchall {:try_start_3a9 .. :try_end_3b0} :catchall_3fb

    .line 1980
    :try_start_3b0
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v6}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$minitRoutingStrategyIds(Lcom/android/server/audio/AudioDeviceBroker;)V

    .line 1981
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 1982
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v6}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceInventory;->onRestoreDevices()Z

    move-result v6

    if-eqz v6, :cond_3f0

    .line 1983
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v6}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBluetoothAudioStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_3cd
    .catchall {:try_start_3b0 .. :try_end_3cd} :catchall_3eb

    .line 1984
    :try_start_3cd
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v7}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$mreapplyAudioHalBluetoothState(Lcom/android/server/audio/AudioDeviceBroker;)V

    .line 1985
    monitor-exit v6
    :try_end_3d3
    .catchall {:try_start_3cd .. :try_end_3d3} :catchall_3ed

    .line 1986
    :try_start_3d3
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker;->getBluetoothA2dpEnabled()Z

    move-result v6

    if-eqz v6, :cond_3dc

    move v4, v1

    .line 1988
    :cond_3dc
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v7, "MSG_RESTORE_DEVICES"

    invoke-virtual {v6, v5, v4, v7}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1991
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v5, "MSG_RESTORE_DEVICES"

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$mupdateCommunicationRoute(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V
    :try_end_3ea
    .catchall {:try_start_3d3 .. :try_end_3ea} :catchall_3eb

    goto :goto_3f7

    :catchall_3eb
    move-exception p0

    goto :goto_3fd

    :catchall_3ed
    move-exception p0

    .line 1985
    :try_start_3ee
    monitor-exit v6
    :try_end_3ef
    .catchall {:try_start_3ee .. :try_end_3ef} :catchall_3ed

    :try_start_3ef
    throw p0

    .line 1994
    :cond_3f0
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v6, 0x1f4

    invoke-static {v4, v5, v1, v6}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$msendMsg(Lcom/android/server/audio/AudioDeviceBroker;III)V

    .line 1997
    :goto_3f7
    monitor-exit v3
    :try_end_3f8
    .catchall {:try_start_3ef .. :try_end_3f8} :catchall_3eb

    .line 1998
    :try_start_3f8
    monitor-exit v0
    :try_end_3f9
    .catchall {:try_start_3f8 .. :try_end_3f9} :catchall_3fb

    goto/16 :goto_556

    :catchall_3fb
    move-exception p0

    goto :goto_3ff

    .line 1997
    :goto_3fd
    :try_start_3fd
    monitor-exit v3
    :try_end_3fe
    .catchall {:try_start_3fd .. :try_end_3fe} :catchall_3eb

    :try_start_3fe
    throw p0

    .line 1998
    :goto_3ff
    monitor-exit v0
    :try_end_400
    .catchall {:try_start_3fe .. :try_end_400} :catchall_3fb

    throw p0

    .line 2243
    :cond_401
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2244
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->onNotifyPreferredAudioProfileApplied(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_556

    .line 2078
    :cond_40a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2079
    :try_start_411
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeLeAudioDeviceUnavailableNow(Ljava/lang/String;II)V

    .line 2081
    monitor-exit v0

    goto/16 :goto_556

    :catchall_425
    move-exception p0

    monitor-exit v0
    :try_end_427
    .catchall {:try_start_411 .. :try_end_427} :catchall_425

    throw p0

    .line 2118
    :cond_428
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    .line 2119
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2120
    :try_start_433
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v4

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mMaxIndex:I

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/audio/BtHelper;->setLeAudioVolume(III)V

    .line 2121
    monitor-exit v3

    goto/16 :goto_556

    :catchall_445
    move-exception p0

    monitor-exit v3
    :try_end_447
    .catchall {:try_start_433 .. :try_end_447} :catchall_445

    throw p0

    .line 2210
    :cond_448
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    .line 2211
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_45d

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_45d

    .line 2212
    const-string v0, "AS.AudioDeviceBroker"

    const-string v3, "Malformed MSG_L_BT_ACTIVE_DEVICE_CHANGE_EXT message"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_556

    :cond_45d
    if-eqz v3, :cond_47a

    .line 2216
    invoke-static {v0, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v3

    .line 2218
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2219
    :try_start_46a
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v5

    const-string v7, "MSG_L_BT_ACTIVE_DEVICE_CHANGE_EXT"

    invoke-virtual {v5, v3, v7}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;Ljava/lang/String;)I

    .line 2221
    monitor-exit v4

    goto :goto_47a

    :catchall_477
    move-exception p0

    monitor-exit v4
    :try_end_479
    .catchall {:try_start_46a .. :try_end_479} :catchall_477

    throw p0

    .line 2223
    :cond_47a
    :goto_47a
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_556

    .line 2224
    invoke-static {v0, v3, v6}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v0

    .line 2226
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2227
    :try_start_489
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v4

    const-string v5, "MSG_L_BT_ACTIVE_DEVICE_CHANGE_EXT"

    invoke-virtual {v4, v0, v5}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;Ljava/lang/String;)I

    .line 2229
    monitor-exit v3

    goto/16 :goto_556

    :catchall_497
    move-exception p0

    monitor-exit v3
    :try_end_499
    .catchall {:try_start_489 .. :try_end_499} :catchall_497

    throw p0

    .line 2164
    :cond_49a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2165
    :try_start_49f
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4a6
    .catchall {:try_start_49f .. :try_end_4a6} :catchall_4b7

    .line 2166
    :try_start_4a6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;

    .line 2167
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v6, v4, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;->attributionSource:Landroid/content/AttributionSource;

    iget-object v4, v4, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;->eventSource:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/AttributionSource;Ljava/lang/String;)V

    .line 2169
    monitor-exit v3
    :try_end_4b4
    .catchall {:try_start_4a6 .. :try_end_4b4} :catchall_4b9

    .line 2170
    :try_start_4b4
    monitor-exit v0
    :try_end_4b5
    .catchall {:try_start_4b4 .. :try_end_4b5} :catchall_4b7

    goto/16 :goto_556

    :catchall_4b7
    move-exception p0

    goto :goto_4bc

    :catchall_4b9
    move-exception p0

    .line 2169
    :try_start_4ba
    monitor-exit v3
    :try_end_4bb
    .catchall {:try_start_4ba .. :try_end_4bb} :catchall_4b9

    :try_start_4bb
    throw p0

    .line 2170
    :goto_4bc
    monitor-exit v0
    :try_end_4bd
    .catchall {:try_start_4bb .. :try_end_4bd} :catchall_4b7

    throw p0

    .line 2146
    :cond_4be
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    .line 2147
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2148
    :try_start_4c7
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_4ce
    .catchall {:try_start_4c7 .. :try_end_4ce} :catchall_506

    .line 2149
    :try_start_4ce
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    .line 2150
    monitor-exit v4
    :try_end_4d4
    .catchall {:try_start_4ce .. :try_end_4d4} :catchall_508

    .line 2151
    :try_start_4d4
    monitor-exit v3
    :try_end_4d5
    .catchall {:try_start_4d4 .. :try_end_4d5} :catchall_506

    .line 2152
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmCommunicationDeviceLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2153
    :try_start_4dc
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmCommunicationDeviceUpdateCount(Lcom/android/server/audio/AudioDeviceBroker;)I

    move-result v3

    if-lez v3, :cond_4f1

    .line 2154
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmCommunicationDeviceUpdateCount(Lcom/android/server/audio/AudioDeviceBroker;)I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fputmCommunicationDeviceUpdateCount(Lcom/android/server/audio/AudioDeviceBroker;I)V

    goto :goto_4f9

    :catchall_4ef
    move-exception p0

    goto :goto_504

    .line 2156
    :cond_4f1
    const-string v3, "AS.AudioDeviceBroker"

    const-string/jumbo v4, "mCommunicationDeviceUpdateCount already 0 in MSG_L_SET_COMMUNICATION_DEVICE_FOR_CLIENT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :goto_4f9
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmCommunicationDeviceLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 2160
    monitor-exit v0

    goto :goto_556

    :goto_504
    monitor-exit v0
    :try_end_505
    .catchall {:try_start_4dc .. :try_end_505} :catchall_4ef

    throw p0

    :catchall_506
    move-exception p0

    goto :goto_50b

    :catchall_508
    move-exception p0

    .line 2150
    :try_start_509
    monitor-exit v4
    :try_end_50a
    .catchall {:try_start_509 .. :try_end_50a} :catchall_508

    :try_start_50a
    throw p0

    .line 2151
    :goto_50b
    monitor-exit v3
    :try_end_50c
    .catchall {:try_start_50a .. :try_end_50c} :catchall_506

    throw p0

    .line 2203
    :cond_50d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2204
    :try_start_512
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_519
    .catchall {:try_start_512 .. :try_end_519} :catchall_52b

    .line 2205
    :try_start_519
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/BtHelper;->onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2206
    monitor-exit v3
    :try_end_529
    .catchall {:try_start_519 .. :try_end_529} :catchall_52d

    .line 2207
    :try_start_529
    monitor-exit v0
    :try_end_52a
    .catchall {:try_start_529 .. :try_end_52a} :catchall_52b

    goto :goto_556

    :catchall_52b
    move-exception p0

    goto :goto_530

    :catchall_52d
    move-exception p0

    .line 2206
    :try_start_52e
    monitor-exit v3
    :try_end_52f
    .catchall {:try_start_52e .. :try_end_52f} :catchall_52d

    :try_start_52f
    throw p0

    .line 2207
    :goto_530
    monitor-exit v0
    :try_end_531
    .catchall {:try_start_52f .. :try_end_531} :catchall_52b

    throw p0

    .line 2195
    :cond_532
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2196
    :try_start_537
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_53e
    .catchall {:try_start_537 .. :try_end_53e} :catchall_588

    .line 2197
    :try_start_53e
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/audio/BtHelper;->onBtProfileDisconnected(I)V

    .line 2198
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->onBtProfileDisconnected(I)V

    .line 2199
    monitor-exit v3
    :try_end_555
    .catchall {:try_start_53e .. :try_end_555} :catchall_58a

    .line 2200
    :try_start_555
    monitor-exit v0
    :try_end_556
    .catchall {:try_start_555 .. :try_end_556} :catchall_588

    .line 2281
    :cond_556
    :goto_556
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$sfgetMESSAGES_MUTE_MUSIC()Ljava/util/Set;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56d

    .line 2282
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v3, 0x23

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$msendMsg(Lcom/android/server/audio/AudioDeviceBroker;III)V

    .line 2285
    :cond_56d
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$smisMessageHandledUnderWakelock(I)Z

    move-result p1

    if-eqz p1, :cond_587

    .line 2287
    :try_start_575
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBrokerEventWakeLock(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_57e
    .catch Ljava/lang/Exception; {:try_start_575 .. :try_end_57e} :catch_57f

    return-void

    :catch_57f
    move-exception p0

    .line 2289
    const-string p1, "AS.AudioDeviceBroker"

    const-string v0, "Exception releasing wakelock"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_587
    return-void

    :catchall_588
    move-exception p0

    goto :goto_58d

    :catchall_58a
    move-exception p0

    .line 2199
    :try_start_58b
    monitor-exit v3
    :try_end_58c
    .catchall {:try_start_58b .. :try_end_58c} :catchall_58a

    :try_start_58c
    throw p0

    .line 2200
    :goto_58d
    monitor-exit v0
    :try_end_58e
    .catchall {:try_start_58c .. :try_end_58e} :catchall_588

    throw p0

    nop

    :pswitch_data_590
    .packed-switch 0x1
        :pswitch_3a4
        :pswitch_38a
        :pswitch_372
        :pswitch_363
        :pswitch_34b
        :pswitch_335
        :pswitch_27e
    .end packed-switch

    :pswitch_data_5a2
    .packed-switch 0x9
        :pswitch_25e
        :pswitch_242
        :pswitch_1f3
        :pswitch_1ec
        :pswitch_1d6
        :pswitch_1b2
        :pswitch_19a
        :pswitch_153
        :pswitch_153
    .end packed-switch

    :pswitch_data_5b8
    .packed-switch 0x22
        :pswitch_133
        :pswitch_121
        :pswitch_1d6
    .end packed-switch

    :pswitch_data_5c2
    .packed-switch 0x36
        :pswitch_11a
        :pswitch_fa
        :pswitch_e0
        :pswitch_be
        :pswitch_9a
        :pswitch_85
        :pswitch_34b
        :pswitch_6b
        :pswitch_4f
    .end packed-switch
.end method
