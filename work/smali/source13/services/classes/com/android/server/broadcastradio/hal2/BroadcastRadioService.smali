.class public Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
.super Ljava/lang/Object;
.source "BroadcastRadioService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv"


# instance fields
.field private mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mLock:Ljava/lang/Object;

.field private final mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/broadcastradio/hal2/RadioModule;",
            ">;"
        }
    .end annotation
.end field

.field private mNextModuleId:I

.field private mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

.field private final mServiceNameToModuleIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Landroid/os/IHwBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModules(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextModuleId(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceNameToModuleIdMap(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNextModuleId(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 8
    .param p1, "nextModuleId"    # I
    .param p2, "lock"    # Ljava/lang/Object;

    .line 119
    const-string v0, "BcRadio2Srv"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 57
    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

    .line 97
    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 120
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 121
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 123
    :try_start_28
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    .line 124
    .local v1, "manager":Landroid/hidl/manager/V1_0/IServiceManager;
    if-nez v1, :cond_34

    .line 125
    const-string v2, "failed to get HIDL Service Manager"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 128
    :cond_34
    const-string v2, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

    invoke-interface {v1, v2, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3d} :catch_3f

    .line 131
    nop

    .end local v1    # "manager":Landroid/hidl/manager/V1_0/IServiceManager;
    goto :goto_45

    .line 129
    :catch_3f
    move-exception v1

    .line 130
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "failed to register for service notifications: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method static synthetic lambda$listModules$0(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .registers 2
    .param p0, "module"    # Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 136
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    return-object v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 11
    .param p1, "enabledTypes"    # [I
    .param p2, "listener"    # Landroid/hardware/radio/IAnnouncementListener;

    .line 178
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p2, v1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V

    .line 179
    .local v0, "aggregator":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
    const/4 v1, 0x0

    .line 180
    .local v1, "anySupported":Z
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 181
    :try_start_b
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/broadcastradio/hal2/RadioModule;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_3a

    .line 183
    .local v4, "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    :try_start_21
    invoke-virtual {v0, v4, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    :try_end_24
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_21 .. :try_end_24} :catch_26
    .catchall {:try_start_21 .. :try_end_24} :catchall_3a

    .line 184
    const/4 v1, 0x1

    .line 187
    goto :goto_2e

    .line 185
    :catch_26
    move-exception v5

    .line 186
    .local v5, "ex":Ljava/lang/UnsupportedOperationException;
    :try_start_27
    const-string v6, "BcRadio2Srv"

    const-string v7, "Announcements not supported for this module"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v4    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .end local v5    # "ex":Ljava/lang/UnsupportedOperationException;
    :goto_2e
    goto :goto_15

    .line 189
    :cond_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_3a

    .line 190
    if-nez v1, :cond_39

    .line 191
    const-string v2, "BcRadio2Srv"

    const-string v3, "There are no HAL modules that support announcements"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_39
    return-object v0

    .line 189
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method public hasAnyModules()Z
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 150
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public hasModule(I)Z
    .registers 5
    .param p1, "id"    # I

    .line 142
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 144
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public listModules()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 137
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    monitor-exit v0

    .line 136
    return-object v1

    .line 138
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .registers 9
    .param p1, "moduleId"    # I
    .param p2, "legacyConfig"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p3, "withAudio"    # Z
    .param p4, "callback"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    if-eqz p3, :cond_2e

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_9
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    move-object v0, v2

    .line 164
    if-eqz v0, :cond_23

    .line 167
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_2b

    .line 169
    invoke-virtual {v0, p4}, Lcom/android/server/broadcastradio/hal2/RadioModule;->openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;

    move-result-object v1

    .line 170
    .local v1, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    if-eqz p2, :cond_22

    .line 171
    invoke-virtual {v1, p2}, Lcom/android/server/broadcastradio/hal2/TunerSession;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 173
    :cond_22
    return-object v1

    .line 165
    .end local v1    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :cond_23
    :try_start_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid module ID"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .end local p0    # "this":Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    .end local p1    # "moduleId":I
    .end local p2    # "legacyConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .end local p3    # "withAudio":Z
    .end local p4    # "callback":Landroid/hardware/radio/ITunerCallback;
    throw v2

    .line 167
    .restart local v0    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .restart local p0    # "this":Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    .restart local p1    # "moduleId":I
    .restart local p2    # "legacyConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .restart local p3    # "withAudio":Z
    .restart local p4    # "callback":Landroid/hardware/radio/ITunerCallback;
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2b

    throw v2

    .line 158
    .end local v0    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-audio sessions not supported with HAL 2.x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
