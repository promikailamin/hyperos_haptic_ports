.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 9293
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 9296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 9301
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_41

    .line 9302
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 9305
    .local v1, "dockState":I
    packed-switch v1, :pswitch_data_274

    .line 9320
    const/4 v3, 0x0

    .local v3, "config":I
    goto :goto_23

    .line 9316
    .end local v3    # "config":I
    :pswitch_19
    const/16 v3, 0x9

    .line 9317
    .restart local v3    # "config":I
    goto :goto_23

    .line 9313
    .end local v3    # "config":I
    :pswitch_1c
    const/16 v3, 0x8

    .line 9314
    .restart local v3    # "config":I
    goto :goto_23

    .line 9310
    .end local v3    # "config":I
    :pswitch_1f
    const/4 v3, 0x6

    .line 9311
    .restart local v3    # "config":I
    goto :goto_23

    .line 9307
    .end local v3    # "config":I
    :pswitch_21
    const/4 v3, 0x7

    .line 9308
    .restart local v3    # "config":I
    nop

    .line 9324
    :goto_23
    if-eq v1, v2, :cond_3a

    if-nez v1, :cond_2f

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDockState(Lcom/android/server/audio/AudioService;)I

    move-result v4

    if-eq v4, v2, :cond_3a

    .line 9327
    :cond_2f
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    const-string v5, "ACTION_DOCK_EVENT intent"

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 9330
    :cond_3a
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmDockState(Lcom/android/server/audio/AudioService;I)V

    .line 9331
    .end local v1    # "dockState":I
    .end local v3    # "config":I
    goto/16 :goto_273

    :cond_41
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26a

    .line 9332
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26a

    .line 9333
    const-string/jumbo v1, "miui.intent.action.SPATIAL_AUDIO_DEVICE_CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto/16 :goto_26a

    .line 9335
    :cond_5c
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 9336
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMonitorRotation(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 9337
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 9338
    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->enableFoldAngleHelper()V

    .line 9340
    :cond_72
    const-string/jumbo v1, "screen_state=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9342
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMonitorFold(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_273

    .line 9343
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/audio/AudioServiceStub;->foldEnable()V

    goto/16 :goto_273

    .line 9346
    :cond_89
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 9347
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMonitorRotation(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 9349
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 9350
    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->disableFlodAngleHelper()V

    .line 9352
    :cond_9f
    const-string/jumbo v1, "screen_state=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9354
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 9355
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v4

    .line 9354
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/server/audio/AudioServiceStub;->showVisualEffect(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V

    .line 9357
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMonitorFold(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_273

    .line 9358
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/audio/AudioServiceStub;->foldDisable()V

    goto/16 :goto_273

    .line 9361
    :cond_cd
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 9362
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mhandleConfigurationChanged(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_273

    .line 9363
    :cond_dc
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_146

    .line 9364
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUserSwitchedReceived(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 9367
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 9369
    :cond_f6
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmUserSwitchedReceived(Lcom/android/server/audio/AudioService;Z)V

    .line 9371
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 9373
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSupportsMicPrivacyToggle(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 9374
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSensorPrivacyManagerInternal(Lcom/android/server/audio/AudioService;)Landroid/hardware/SensorPrivacyManagerInternal;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 9375
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmMicMuteFromPrivacyToggle(Lcom/android/server/audio/AudioService;Z)V

    .line 9377
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/audio/AudioService;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$msetMicrophoneMuteNoCallerCheck(Lcom/android/server/audio/AudioService;I)V

    .line 9381
    :cond_128
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->-$$Nest$mreadAudioSettings(Lcom/android/server/audio/AudioService;Z)V

    .line 9383
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v8, v1, v2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_273

    .line 9389
    :cond_146
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "no_record_audio"

    const-string v5, "android.intent.extra.user_handle"

    const/4 v6, -0x1

    if-eqz v1, :cond_170

    .line 9391
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 9392
    .local v1, "userId":I
    if-ltz v1, :cond_167

    .line 9394
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 9395
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$mkillBackgroundUserProcessesWithRecordAudioPermission(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 9397
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_167
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 9399
    .end local v1    # "userId":I
    goto/16 :goto_273

    :cond_170
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 9401
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 9402
    .restart local v1    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 9404
    .end local v1    # "userId":I
    goto/16 :goto_273

    :cond_185
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 9405
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 9409
    .local v1, "state":I
    const-string v2, "android.xiaomi.bluetooth.BLUETOOTH_RESTRICT_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 9412
    .local v2, "restrictBroadcast":Z
    const/16 v3, 0xa

    if-ne v1, v3, :cond_1a8

    if-nez v2, :cond_1a8

    .line 9413
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->disconnectAllBluetoothProfiles()V

    .line 9415
    .end local v2    # "restrictBroadcast":Z
    :cond_1a8
    goto/16 :goto_273

    .end local v1    # "state":I
    :cond_1aa
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_264

    .line 9416
    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bc

    goto/16 :goto_264

    .line 9418
    :cond_1bc
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    .line 9419
    const-string v1, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 9420
    .local v1, "suspendedUids":[I
    nop

    .line 9421
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 9422
    .local v2, "suspendedPackages":[Ljava/lang/String;
    if-eqz v2, :cond_1f8

    if-eqz v1, :cond_1f8

    array-length v3, v2

    array-length v4, v1

    if-eq v3, v4, :cond_1da

    goto :goto_1f8

    .line 9426
    :cond_1da
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1db
    array-length v4, v1

    if-ge v3, v4, :cond_1f6

    .line 9427
    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f3

    .line 9428
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    aget-object v5, v2, v3

    aget v6, v1, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->noFocusForSuspendedApp(Ljava/lang/String;I)V

    .line 9426
    :cond_1f3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1db

    .line 9432
    .end local v1    # "suspendedUids":[I
    .end local v2    # "suspendedPackages":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1f6
    goto/16 :goto_273

    .line 9424
    .restart local v1    # "suspendedUids":[I
    .restart local v2    # "suspendedPackages":[Ljava/lang/String;
    :cond_1f8
    :goto_1f8
    return-void

    .line 9432
    .end local v1    # "suspendedUids":[I
    .end local v2    # "suspendedPackages":[Ljava/lang/String;
    :cond_1f9
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_235

    .line 9434
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 9435
    .local v1, "plugState":I
    if-ne v1, v4, :cond_234

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMode(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_234

    .line 9436
    const-string v2, "AS.AudioService"

    const-string/jumbo v4, "turn off volume boost mode when headset pluged"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9437
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMode(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-interface {v2, v4, v3, v5}, Lcom/android/server/audio/AudioServiceStub;->updateVolumeBoostState(IILandroid/content/Context;)V

    .line 9439
    .end local v1    # "plugState":I
    :cond_234
    goto :goto_273

    :cond_235
    const-string v1, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_255

    .line 9440
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 9441
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v4

    .line 9440
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/server/audio/AudioServiceStub;->showVisualEffect(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V

    goto :goto_273

    .line 9444
    :cond_255
    const-string v1, "com.miui.voicetrigger.ACTION_VOICETRIGGER_LOG_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_273

    .line 9445
    const-string/jumbo v1, "rm_st_dump=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_273

    .line 9417
    :cond_264
    :goto_264
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p1, p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mhandleAudioEffectBroadcast(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_273

    .line 9334
    :cond_26a
    :goto_26a
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->receiveBtEvent(Landroid/content/Intent;)V

    .line 9447
    :cond_273
    :goto_273
    return-void

    :pswitch_data_274
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method
