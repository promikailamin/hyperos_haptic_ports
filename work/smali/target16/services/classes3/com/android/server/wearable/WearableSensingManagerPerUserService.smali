.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "WearableSensingManagerPerUserService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WearableSensingManagerPerUserService"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public final mMaxNumberOfConcurrentConnections:I

.field public final mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mProvideDataStreamStatusCallback:Landroid/os/RemoteCallback;

.field mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

.field public mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

.field public final mSecureChannelLock:Ljava/lang/Object;

.field public final mSecureChannelMap:Ljava/util/Map;

.field public mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$B3jMR-K2riKQ_EJvprMyZE51n3w(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->lambda$createWearableHotwordCallback$1(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Blq_rVHlvU0wp6gY3n797gYVMqo(Lcom/android/server/wearable/WearableSensingManagerPerUserService;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->lambda$wrapCallbackWithSecureChannelMapCleanUp$0(ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmProvideDataStreamStatusCallback(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Landroid/os/RemoteCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mProvideDataStreamStatusCallback:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Lcom/android/server/wearable/WearableSensingSecureChannel;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureChannelLock(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureChannelMap(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmProvideDataStreamStatusCallback(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/os/RemoteCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mProvideDataStreamStatusCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mensureRemoteServiceInitiated(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monValidatedByHotwordDetectionService(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onValidatedByHotwordDetectionService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->stopActiveHotwordAudio()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisReadOnly(Landroid/os/ParcelFileDescriptor;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 87
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    .line 97
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    .line 109
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 118
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00eb

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    return-void
.end method

.method private ensureRemoteServiceInitiated()V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-nez v0, :cond_1d

    .line 148
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 149
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wearable/RemoteWearableSensingService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 150
    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;

    invoke-direct {v1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    :cond_1d
    return-void
.end method

.method public static isReadOnly(Landroid/os/ParcelFileDescriptor;)Z
    .registers 4

    const/4 v0, 0x0

    .line 772
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    sget v1, Landroid/system/OsConstants;->F_GETFL:I

    invoke-static {p0, v1, v0}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result p0

    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr p0, v1

    .line 773
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_10} :catch_15

    if-ne p0, v1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0

    :catch_15
    move-exception p0

    .line 775
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Error encountered when trying to determine if the parcelFileDescriptor is read-only. Treating it as not read-only"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static notifyStatusCallback(Landroid/os/RemoteCallback;I)V
    .registers 4

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string v1, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final createHotwordDetectionCallback()Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;
    .registers 2

    .line 687
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-object v0
.end method

.method public final createWearableHotwordCallback(Landroid/content/ComponentName;)Landroid/os/RemoteCallback;
    .registers 4

    .line 662
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/content/ComponentName;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public destroyLocked()V
    .registers 3

    .line 131
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-eqz v0, :cond_1b

    .line 133
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_e
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 136
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw p0

    .line 138
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    if-eqz p0, :cond_28

    .line 140
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2a

    .line 142
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 237
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 238
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-eqz p0, :cond_17

    .line 239
    const-string p1, ""

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_17
    return-void

    :catchall_18
    move-exception p0

    .line 237
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final ensureVoiceInteractionManagerInternalInitiated()Z
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    if-nez v0, :cond_e

    .line 172
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 173
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 175
    :cond_e
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public getAvailableConnectionCount()I
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    if-le v1, v2, :cond_19

    .line 247
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "mMaxNumberOfConcurrentConnections exceeded. This should not be possible!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 251
    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    goto :goto_22

    .line 253
    :cond_19
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    sub-int/2addr v2, p0

    monitor-exit v0

    return v2

    .line 254
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_17

    throw p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final synthetic lambda$createWearableHotwordCallback$1(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 13

    .line 664
    const-string v0, "android.app.wearable.HotwordAudioStreamBundleKey"

    const-class v1, Landroid/service/voice/HotwordAudioStream;

    .line 665
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/voice/HotwordAudioStream;

    if-nez p2, :cond_14

    .line 668
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "No hotword audio stream received, unable to process hotword."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 671
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 673
    :try_start_18
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 674
    invoke-virtual {p2}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 675
    invoke-virtual {p2}, Landroid/service/voice/HotwordAudioStream;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v5

    .line 676
    invoke-virtual {p2}, Landroid/service/voice/HotwordAudioStream;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v6

    .line 678
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v8

    .line 679
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->createHotwordDetectionCallback()Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    move-result-object v9

    move-object v7, p1

    .line 673
    invoke-virtual/range {v3 .. v9}, Landroid/service/voice/VoiceInteractionManagerInternal;->startListeningFromWearable(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/content/ComponentName;ILandroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_36

    .line 681
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 682
    throw p0
.end method

.method public final synthetic lambda$wrapCallbackWithSecureChannelMapCleanUp$0(ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 6

    .line 433
    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeConnection(I)Z

    .line 437
    :cond_c
    invoke-virtual {p2, p3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6

    .line 214
    const-string v0, "android.permission.BIND_WEARABLE_SENSING_SERVICE"

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 216
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_2f

    .line 218
    :cond_19
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service %s requires %s permission. Found %s permission"

    .line 221
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    filled-new-array {v3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 219
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return-object p0

    .line 227
    :catch_30
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onProvideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I
    .registers 18

    move-object/from16 v1, p4

    .line 336
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "onProvideConcurrentConnection in per user service."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 338
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_22

    .line 339
    const-string p0, "Detection service is not available at this moment."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 340
    invoke-static {v1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 342
    monitor-exit v2

    return v4

    :catchall_1e
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a3

    .line 344
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_1e

    .line 346
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v3

    .line 351
    :try_start_26
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget v5, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    const/4 v6, 0x1

    if-lt v2, v5, :cond_33

    move v2, v6

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    .line 354
    :goto_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_9f

    const/16 v3, 0x9

    if-eqz v2, :cond_42

    .line 356
    const-string p0, "Rejecting connection because max concurrent connections limit has been reached."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {v1, v3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return v4

    .line 367
    :cond_42
    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v12

    .line 369
    invoke-virtual {p0, v1, v12}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapCallbackWithSecureChannelMapCleanUp(Landroid/os/RemoteCallback;I)Landroid/os/RemoteCallback;

    move-result-object v11

    .line 374
    :try_start_4c
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v7, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/CompanionDeviceManager;

    new-instance v7, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;

    move-object v8, p0

    move-object v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V

    .line 373
    invoke-static {v5, p1, v7}, Lcom/android/server/wearable/WearableSensingSecureChannel;->create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object p1
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_65} :catch_91

    .line 406
    iget-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter p2

    .line 407
    :try_start_68
    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    iget v7, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    if-lt v5, v7, :cond_73

    goto :goto_7d

    .line 410
    :cond_73
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v2

    .line 412
    :goto_7d
    monitor-exit p2
    :try_end_7e
    .catchall {:try_start_68 .. :try_end_7e} :catchall_8d

    if-eqz v6, :cond_8c

    .line 414
    const-string p0, "Rejecting connection because max concurrent connections limit has been reached."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {v1, v3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 423
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    return v4

    :cond_8c
    return v12

    :catchall_8d
    move-exception v0

    move-object p0, v0

    .line 412
    :try_start_8f
    monitor-exit p2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8d

    throw p0

    :catch_91
    move-exception v0

    move-object p0, v0

    .line 402
    sget-object p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p2, "Unable to create the secure channel."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x7

    .line 403
    invoke-static {v1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return v4

    :catchall_9f
    move-exception v0

    move-object p0, v0

    .line 354
    :try_start_a1
    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_9f

    throw p0

    .line 344
    :goto_a3
    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_1e

    throw p0
.end method

.method public onProvideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .registers 8

    .line 265
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "onProvideConnection in per user service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 269
    const-string p0, "Detection service is not available at this moment."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 270
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 272
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_5f

    .line 274
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p2

    .line 275
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_1b

    .line 276
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_25
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    if-eqz v1, :cond_2f

    .line 278
    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2d

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_5d

    .line 281
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 285
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager;

    new-instance v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;

    invoke-direct {v3, p0, p2, p3, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 284
    invoke-static {v2, p1, v3}, Lcom/android/server/wearable/WearableSensingSecureChannel;->create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 319
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_4e} :catch_4f
    .catchall {:try_start_2f .. :try_end_4e} :catchall_2d

    goto :goto_5b

    :catch_4f
    move-exception p0

    .line 321
    :try_start_50
    sget-object p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p2, "Unable to create the secure channel."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x7

    .line 322
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 324
    :goto_5b
    monitor-exit v0

    return-void

    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_2d

    throw p0

    .line 275
    :goto_5f
    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_1b

    throw p0
.end method

.method public onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 504
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvideDataStream in per user service. Is data stream read-only? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v2

    if-nez v2, :cond_30

    .line 510
    const-string p0, "Detection service is not available at this moment."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 511
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 513
    monitor-exit v1

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_45

    .line 515
    :cond_30
    const-string v2, "calling over to remote servvice."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 517
    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mProvideDataStreamStatusCallback:Landroid/os/RemoteCallback;

    .line 518
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 520
    invoke-virtual {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p0

    .line 518
    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 522
    monitor-exit v1

    return-void

    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1d .. :try_end_46} :catchall_2e

    throw p0
.end method

.method public onProvideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 480
    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 483
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 485
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 486
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 488
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_2f

    .line 490
    :cond_1e
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "calling over to remote servvice."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 492
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    .line 494
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_1c

    throw p0

    .line 481
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided ParcelFileDescriptor is not read-only."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 528
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_18

    .line 530
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 531
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 532
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_29

    .line 534
    :cond_18
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    if-eqz p2, :cond_22

    .line 536
    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {p2, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 538
    :cond_22
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 539
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_16

    throw p0
.end method

.method public onRegisterDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 14

    .line 559
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 560
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v0

    if-nez v0, :cond_19

    .line 561
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 562
    invoke-static {p5, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 564
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    move-object p0, v0

    goto :goto_28

    .line 566
    :cond_19
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 567
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wearable/RemoteWearableSensingService;->registerDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 573
    monitor-exit v1

    return-void

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_16

    throw p0
.end method

.method public onStartHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 606
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_18

    .line 608
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {p2, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 611
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_38

    .line 613
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureVoiceInteractionManagerInternalInitiated()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 614
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Voice interaction manager is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-static {p2, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 617
    monitor-exit v0

    return-void

    .line 619
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 620
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->createWearableHotwordCallback(Landroid/content/ComponentName;)Landroid/os/RemoteCallback;

    move-result-object p0

    .line 620
    invoke-virtual {v1, p0, p2}, Lcom/android/server/wearable/RemoteWearableSensingService;->startHotwordRecognition(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 622
    monitor-exit v0

    return-void

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_16

    throw p0
.end method

.method public onStopHotwordRecognition(Landroid/os/RemoteCallback;)V
    .registers 4

    .line 627
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_18

    .line 629
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Detection service is not available at this moment."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 630
    invoke-static {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 632
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_22

    .line 634
    :cond_18
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 635
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0, p1}, Lcom/android/server/wearable/RemoteWearableSensingService;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V

    .line 636
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_16

    throw p0
.end method

.method public onUnregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 590
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_18

    .line 592
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 593
    invoke-static {p4, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 595
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_22

    .line 597
    :cond_18
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 598
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wearable/RemoteWearableSensingService;->unregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 600
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_16

    throw p0
.end method

.method public final onValidatedByHotwordDetectionService()V
    .registers 3

    .line 640
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_14

    .line 642
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Wearable sensing service is not available at this moment."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_1e

    .line 645
    :cond_14
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 646
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->onValidatedByHotwordDetectionService()V

    .line 647
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_12

    throw p0
.end method

.method public removeAllConnections()V
    .registers 4

    .line 463
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    .line 464
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 465
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 466
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_28

    .line 467
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_19
    if-ge v0, p0, :cond_27

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 468
    invoke-virtual {v2}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    goto :goto_19

    :cond_27
    return-void

    :catchall_28
    move-exception p0

    .line 466
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public removeConnection(I)Z
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 452
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_19

    if-eqz p0, :cond_17

    .line 454
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0

    :catchall_19
    move-exception p0

    .line 452
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public setUpServiceIfNeeded()Z
    .registers 6

    .line 191
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_a

    .line 192
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 194
    :cond_a
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 200
    :cond_10
    :try_start_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_23

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    return v1

    .line 202
    :catch_23
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "RemoteException while setting up service"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final stopActiveHotwordAudio()V
    .registers 3

    .line 651
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_14

    .line 653
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Wearable sensing service is not available at this moment."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_1e

    .line 656
    :cond_14
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 657
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->stopActiveHotwordAudio()V

    .line 658
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_12

    throw p0
.end method

.method public final wrapCallbackWithSecureChannelMapCleanUp(Landroid/os/RemoteCallback;I)Landroid/os/RemoteCallback;
    .registers 5

    .line 431
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;ILandroid/os/RemoteCallback;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public final wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Landroid/app/wearable/IWearableSensingCallback;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 714
    :cond_4
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_10

    .line 715
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Cannot create WearableSensingCallback because mComponentName is null."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 718
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 720
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 719
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-eq v1, v2, :cond_2e

    .line 721
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Caller does not belong to the package that provides the WearableSensingService implementation. Do not forward WearableSensingCallback to WearableSensingService."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 728
    :cond_2e
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$5;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/app/wearable/IWearableSensingCallback;)V

    return-object v0
.end method
