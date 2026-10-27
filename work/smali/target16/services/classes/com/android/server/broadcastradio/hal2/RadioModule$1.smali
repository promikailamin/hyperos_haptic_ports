.class public Lcom/android/server/broadcastradio/hal2/RadioModule$1;
.super Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;
.source "RadioModule.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;


# direct methods
.method public static synthetic $r8$lambda$Ar22CUefBKX8cdyFGpLCevq3mro(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onAntennaStateChange$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ESrJ-DyD8sPMs92DWc5nIkPC2jQ(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onProgramListUpdated$4(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K_B6OFgK6R3ZquDWE4PFp0RpZyo(ZLandroid/hardware/radio/ITunerCallback;)V
    .registers 2

    .line 131
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PNAnE43Xjd7YJS7OA-c3ZB9F3Ak(Ljava/util/Map;Landroid/hardware/radio/ITunerCallback;)V
    .registers 2

    .line 141
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kIxo-_RiJLS8Af8BEcAnydNQE5A(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onParametersUpdated$8(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ljE7mxVvLlXwrX7mGfYnQQgQ4EE(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onTuneFailed$1(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mFxwqZpg8naHgZukbZ5Hk8AZR2A(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onCurrentProgramInfoChanged$3(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q-y-OGxzGFtDxxn-5X1LNRosygE(Landroid/hardware/radio/RadioManager$ProgramInfo;Landroid/hardware/radio/ITunerCallback;)V
    .registers 2

    .line 107
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sph2oMRTsNabax6Crq3Q6IAEUdk(ILandroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ITunerCallback;)V
    .registers 3

    .line 96
    invoke-interface {p2, p0, p1}, Landroid/hardware/radio/ITunerCallback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onAntennaStateChange$6(Z)V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 130
    :try_start_7
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$fputmAntennaConnected(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Boolean;)V

    .line 131
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-static {p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 132
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final synthetic lambda$onCurrentProgramInfoChanged$3(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_7
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$fputmCurrentProgramInfo(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 106
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$fgetmCurrentProgramInfo(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p1

    .line 107
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-static {p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final synthetic lambda$onParametersUpdated$8(Ljava/util/ArrayList;)V
    .registers 4

    .line 139
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_b
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda6;-><init>(Ljava/util/Map;)V

    invoke-static {p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 142
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final synthetic lambda$onProgramListUpdated$4(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_7
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$fgetmProgramInfoCache(Lcom/android/server/broadcastradio/hal2/RadioModule;)Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndApplyChunk(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Ljava/util/List;

    .line 119
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$fgetmAidlTunerSessions(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 120
    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->onMergedProgramListUpdateFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    goto :goto_1a

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 122
    :cond_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public final synthetic lambda$onTuneFailed$1(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V
    .registers 5

    .line 93
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object p1

    .line 94
    invoke-static {p2}, Lcom/android/server/broadcastradio/hal2/Convert;->halResultToTunerResult(I)I

    move-result p2

    .line 95
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 96
    :try_start_f
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda5;-><init>(ILandroid/hardware/radio/ProgramSelector;)V

    invoke-static {p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 97
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public onAntennaStateChange(Z)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Z)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onParametersUpdated(Ljava/util/ArrayList;)V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->-$$Nest$mfireLater(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method
