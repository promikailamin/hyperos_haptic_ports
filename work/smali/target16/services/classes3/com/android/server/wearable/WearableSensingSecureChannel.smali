.class public final Lcom/android/server/wearable/WearableSensingSecureChannel;
.super Ljava/lang/Object;
.source "WearableSensingSecureChannel.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WearableSensingSecureChannel"


# instance fields
.field public mAssociationId:Ljava/lang/Integer;

.field public mClosed:Z

.field public final mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

.field public final mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mLocalIn:Ljava/io/InputStream;

.field public final mLocalOut:Ljava/io/OutputStream;

.field public final mLock:Ljava/lang/Object;

.field public final mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mOnMessageReceivedListener:Ljava/util/function/BiConsumer;

.field public final mOnTransportsChangedListener:Ljava/util/function/Consumer;

.field public final mRemoteFd:Landroid/os/ParcelFileDescriptor;

.field public final mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

.field public final mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static synthetic $r8$lambda$559WS3gaiFnRFy3miioUQSPcA9g(Lcom/android/server/wearable/WearableSensingSecureChannel;I[B)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onMessageReceived(I[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$YrHIBGaUY5-Cvpo8dku47unJd88(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->lambda$onTransportAvailable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hH2G6TouiROpvJ_1ufD97vY6Zu0(Lcom/android/server/wearable/WearableSensingSecureChannel;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onTransportsChanged(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mQ04zdXFJOXafuHjYL6IU1ngmm8(Lcom/android/server/wearable/WearableSensingSecureChannel;Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->lambda$onTransportsChanged$0(Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monAssociationCreated(Lcom/android/server/wearable/WearableSensingSecureChannel;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onAssociationCreated(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monError(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 8

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 85
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 86
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 88
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 89
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Ljava/util/function/Consumer;

    .line 96
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Ljava/util/function/BiConsumer;

    .line 103
    iput-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 143
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 144
    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    .line 145
    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

    .line 146
    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mRemoteFd:Landroid/os/ParcelFileDescriptor;

    .line 147
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    .line 148
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p1, p5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    return-void
.end method

.method public static create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;
    .registers 10

    .line 122
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/android/server/wearable/WearableSensingSecureChannel;

    const/4 v2, 0x0

    aget-object v5, v0, v2

    const/4 v2, 0x1

    aget-object v6, v0, v2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wearable/WearableSensingSecureChannel;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 133
    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->initialize()V

    return-object v1
.end method


# virtual methods
.method public close()V
    .registers 7

    .line 289
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_b

    .line 291
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_7a

    .line 293
    :cond_b
    sget-object v1, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v2, "Closing WearableSensingSecureChannel."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 294
    iput-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    .line 295
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    if-eqz v1, :cond_4d

    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_9

    .line 298
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Ljava/util/function/Consumer;

    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->removeOnTransportsChangedListener(Ljava/util/function/Consumer;)V

    .line 300
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Ljava/util/function/BiConsumer;

    const v5, 0x43708287

    invoke-virtual {v3, v5, v4}, Landroid/companion/CompanionDeviceManager;->removeOnMessageReceivedListener(ILjava/util/function/BiConsumer;)V

    .line 303
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->detachSystemDataTransport(I)V

    .line 304
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->disassociate(I)V
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_48

    .line 306
    :try_start_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4d

    :catchall_48
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    throw p0
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_9

    .line 310
    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_52} :catch_53
    .catchall {:try_start_4d .. :try_end_52} :catchall_9

    goto :goto_5b

    :catch_53
    move-exception v1

    .line 312
    :try_start_54
    sget-object v2, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v3, "Encountered IOException when closing local input stream."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_9

    .line 315
    :goto_5b
    :try_start_5b
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_61
    .catchall {:try_start_5b .. :try_end_60} :catchall_9

    goto :goto_69

    :catch_61
    move-exception v1

    .line 317
    :try_start_62
    sget-object v2, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v3, "Encountered IOException when closing local output stream."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :goto_69
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->shutdown()V

    .line 320
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->shutdown()V

    .line 321
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->shutdown()V

    .line 322
    monitor-exit v0

    return-void

    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_62 .. :try_end_7b} :catchall_9

    throw p0
.end method

.method public final initialize()V
    .registers 7

    .line 152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 154
    :try_start_4
    sget-object v2, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v3, "Requesting CDM association."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    new-instance v3, Landroid/companion/AssociationRequest$Builder;

    invoke-direct {v3}, Landroid/companion/AssociationRequest$Builder;-><init>()V

    const-string v4, "PlaceholderDisplayNameFromWSM"

    .line 157
    invoke-virtual {v3, v4}, Landroid/companion/AssociationRequest$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationRequest$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 158
    invoke-virtual {v3, v4}, Landroid/companion/AssociationRequest$Builder;->setSelfManaged(Z)Landroid/companion/AssociationRequest$Builder;

    move-result-object v3

    const-string v4, "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

    .line 159
    invoke-virtual {v3, v4}, Landroid/companion/AssociationRequest$Builder;->setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationRequest$Builder;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Landroid/companion/AssociationRequest$Builder;->build()Landroid/companion/AssociationRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    new-instance v5, Lcom/android/server/wearable/WearableSensingSecureChannel$1;

    invoke-direct {v5, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$1;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    .line 155
    invoke-virtual {v2, v3, v4, v5}, Landroid/companion/CompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_35

    .line 179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_35
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    throw p0
.end method

.method public final synthetic lambda$onTransportAvailable$1()V
    .registers 6

    .line 230
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    const/16 v1, 0x2000

    .line 231
    new-array v1, v1, [B

    .line 234
    :goto_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    .line 235
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 236
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    sget-object v2, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v4, "Sending message to wearable"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    const v4, 0x43847987

    invoke-virtual {v2, v4, v3, v0}, Landroid/companion/CompanionDeviceManager;->sendMessage(I[B[I)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2c} :catch_38

    goto :goto_e

    .line 248
    :cond_2d
    sget-object v0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v1, "Reached EOF when reading from remote stream. Reporting this as an error."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void

    .line 244
    :catch_38
    sget-object v0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v1, "IOException while reading from remote stream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void
.end method

.method public final synthetic lambda$onTransportsChanged$0(Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 216
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final onAssociationCreated(I)V
    .registers 7

    .line 184
    sget-object v0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v1, "CDM association created."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_12

    .line 187
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_42

    .line 189
    :cond_12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 190
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Ljava/util/function/BiConsumer;

    const v4, 0x43708287

    invoke-virtual {v1, v2, v4, v3}, Landroid/companion/CompanionDeviceManager;->addOnMessageReceivedListener(Ljava/util/concurrent/Executor;ILjava/util/function/BiConsumer;)V

    .line 194
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Ljava/util/function/Consumer;

    invoke-virtual {v1, v2, v3}, Landroid/companion/CompanionDeviceManager;->addOnTransportsChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 196
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1, p1, v2, v3}, Landroid/companion/CompanionDeviceManager;->attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 200
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_10

    throw p0
.end method

.method public final onError()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_b

    .line 280
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_15

    .line 282
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    .line 283
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

    invoke-interface {v0}, Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;->onError()V

    .line 284
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    return-void

    .line 282
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_9

    throw p0
.end method

.method public final onMessageReceived(I[B)V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_25

    .line 259
    sget-object p1, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v0, "Received message from wearable."

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :try_start_f
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 262
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_1a

    return-void

    .line 264
    :catch_1a
    sget-object p1, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string p2, "IOException when writing to remote stream. Closing the secure channel."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void

    .line 270
    :cond_25
    sget-object p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string p1, "Received CDM message of type MESSAGE_ONEWAY_FROM_WEARABLE, but it is for another association. Ignoring the message."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTransportAvailable()V
    .registers 3

    .line 227
    sget-object v0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v1, "Transport available"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    new-instance v1, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->execute(Ljava/lang/Runnable;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mRemoteFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;->onSecureTransportAvailable(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public final onTransportsChanged(Ljava/util/List;)V
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_b

    .line 206
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_4b

    .line 208
    :cond_b
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    if-nez v1, :cond_18

    .line 209
    sget-object p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string p1, "mAssociationId is null when transport changed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-exit v0

    return-void

    .line 212
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_9

    .line 216
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_36

    .line 217
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 218
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onTransportAvailable()V

    return-void

    :cond_36
    if-nez p1, :cond_4a

    .line 219
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 220
    sget-object p1, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v0, "CDM transport is detached. This is not recoverable."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    :cond_4a
    return-void

    .line 212
    :goto_4b
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_9

    throw p0
.end method
