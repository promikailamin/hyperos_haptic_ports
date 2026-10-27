.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundTriggerSession"
.end annotation


# instance fields
.field final mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

.field private mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field private mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field final synthetic this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method static bridge synthetic -$$Nest$munloadKeyphraseModel(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->unloadKeyphraseModel(I)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;)V
    .registers 3
    .param p2, "session"    # Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    .line 1532
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1533
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    .line 1534
    return-void
.end method

.method private unloadKeyphraseModel(I)I
    .registers 5
    .param p1, "keyphraseId"    # I

    .line 1680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1682
    .local v0, "caller":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {v2, p1}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->unloadKeyphraseModel(I)I

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1682
    return v2

    .line 1684
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1685
    throw v2
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 3

    .line 1675
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This object isn\'t intended to be used as a Binder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 5

    .line 1539
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1540
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    .line 1544
    .local v1, "caller":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {v3}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_17

    .line 1546
    :try_start_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1544
    return-object v3

    .line 1546
    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1547
    nop

    .end local p0    # "this":Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
    throw v3

    .line 1548
    .end local v1    # "caller":J
    .restart local p0    # "this":Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getParameter(II)I
    .registers 6
    .param p1, "keyphraseId"    # I
    .param p2, "modelParam"    # I

    .line 1645
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1646
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1647
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 1649
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1651
    .local v0, "caller":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {v2, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->getParameter(II)I

    move-result v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 1653
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1651
    return v2

    .line 1653
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1654
    throw v2

    .line 1647
    .end local v0    # "caller":J
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 6
    .param p1, "keyphraseId"    # I
    .param p2, "modelParam"    # I

    .line 1661
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1662
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1663
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 1665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1667
    .local v0, "caller":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {v2, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 1669
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1667
    return-object v2

    .line 1669
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1670
    throw v2

    .line 1663
    .end local v0    # "caller":J
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setParameter(III)I
    .registers 7
    .param p1, "keyphraseId"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I

    .line 1630
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1631
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1632
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 1634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1636
    .local v0, "caller":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->setParameter(III)I

    move-result v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 1638
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1636
    return v2

    .line 1638
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1639
    throw v2

    .line 1632
    .end local v0    # "caller":J
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .registers 16
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .param p5, "runInBatterySaverMode"    # Z

    .line 1556
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1557
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1559
    if-eqz p3, :cond_8d

    if-eqz p4, :cond_8d

    if-eqz p2, :cond_8d

    .line 1562
    if-eqz p5, :cond_17

    .line 1563
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const-string v2, "android.permission.SOUND_TRIGGER_RUN_IN_BATTERY_SAVER"

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceCallingPermission(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Ljava/lang/String;)V

    .line 1566
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_95

    .line 1568
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1569
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1571
    .local v1, "caller":J
    :try_start_20
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 1572
    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v3

    .line 1573
    .local v3, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_7b

    .line 1574
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    if-eqz v4, :cond_7b

    .line 1575
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    if-nez v4, :cond_39

    goto :goto_7b

    .line 1581
    :cond_39
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v4
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_88

    .line 1582
    :try_start_3c
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    if-eqz v5, :cond_5d

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v5, :cond_5d

    .line 1585
    invoke-interface {p3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v6}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_67

    .line 1586
    :cond_5d
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v5, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$mcreateSoundTriggerCallbackLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 1588
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 1590
    :cond_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_3c .. :try_end_68} :catchall_78

    .line 1591
    :try_start_68
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    iget-object v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move v5, p1

    move-object v6, v3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v4
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_88

    .line 1595
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1591
    return v4

    .line 1590
    :catchall_78
    move-exception v5

    :try_start_79
    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    .end local v0    # "callingUserId":I
    .end local v1    # "caller":J
    .end local p0    # "this":Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
    .end local p1    # "keyphraseId":I
    .end local p2    # "bcp47Locale":Ljava/lang/String;
    .end local p3    # "callback":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local p4    # "recognitionConfig":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .end local p5    # "runInBatterySaverMode":Z
    :try_start_7a
    throw v5

    .line 1576
    .restart local v0    # "callingUserId":I
    .restart local v1    # "caller":J
    .restart local p0    # "this":Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
    .restart local p1    # "keyphraseId":I
    .restart local p2    # "bcp47Locale":Ljava/lang/String;
    .restart local p3    # "callback":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .restart local p4    # "recognitionConfig":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .restart local p5    # "runInBatterySaverMode":Z
    :cond_7b
    :goto_7b
    const-string v4, "VoiceInteractionManager"

    const-string v5, "No matching sound model found in startRecognition"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_88

    .line 1577
    const/high16 v4, -0x80000000

    .line 1595
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1577
    return v4

    .line 1595
    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_88
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    throw v3

    .line 1560
    .end local v0    # "callingUserId":I
    .end local v1    # "caller":J
    :cond_8d
    :try_start_8d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal argument(s) in startRecognition"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
    .end local p1    # "keyphraseId":I
    .end local p2    # "bcp47Locale":Ljava/lang/String;
    .end local p3    # "callback":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local p4    # "recognitionConfig":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .end local p5    # "runInBatterySaverMode":Z
    throw v1

    .line 1566
    .restart local p0    # "this":Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;
    .restart local p1    # "keyphraseId":I
    .restart local p2    # "bcp47Locale":Ljava/lang/String;
    .restart local p3    # "callback":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .restart local p4    # "recognitionConfig":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .restart local p5    # "runInBatterySaverMode":Z
    :catchall_95
    move-exception v1

    monitor-exit v0
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_95

    throw v1
.end method

.method public stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I
    .registers 7
    .param p1, "keyphraseId"    # I
    .param p2, "callback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 1604
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 1605
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$menforceIsCurrentVoiceInteractionService(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1606
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_20

    .line 1608
    invoke-interface {p2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_1d

    goto :goto_20

    .line 1613
    :cond_1d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .local v1, "soundTriggerCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    goto :goto_2e

    .line 1609
    .end local v1    # "soundTriggerCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->-$$Nest$mcreateSoundTriggerCallbackLocked(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    .line 1610
    .restart local v1    # "soundTriggerCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    const-string v2, "VoiceInteractionManager"

    const-string/jumbo v3, "stopRecognition() called with a different callback thanstartRecognition()"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :goto_2e
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 1616
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSessionInternalCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 1617
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_47

    .line 1619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1621
    .local v2, "caller":J
    :try_start_38
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SoundTriggerSession;->mSession:Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;

    invoke-interface {v0, p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerInternal$Session;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v0
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_42

    .line 1623
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1621
    return v0

    .line 1623
    :catchall_42
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1624
    throw v0

    .line 1617
    .end local v1    # "soundTriggerCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v2    # "caller":J
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method
