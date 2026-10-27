.class public final Landroid/media/soundtrigger/SoundTriggerDetector;
.super Ljava/lang/Object;
.source "SoundTriggerDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/SoundTriggerDetector$Callback;,
        Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;,
        Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;,
        Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;,
        Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionFlags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final greylist-max-o MSG_DETECTION_ERROR:I = 0x3

.field private static final greylist-max-o MSG_DETECTION_PAUSE:I = 0x4

.field private static final greylist-max-o MSG_DETECTION_RESUME:I = 0x5

.field private static final greylist-max-o MSG_SOUND_TRIGGER_DETECTED:I = 0x2

.field public static final whitelist RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final whitelist RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final whitelist RECOGNITION_FLAG_ENABLE_AUDIO_ECHO_CANCELLATION:I = 0x4

.field public static final whitelist RECOGNITION_FLAG_ENABLE_AUDIO_NOISE_SUPPRESSION:I = 0x8

.field public static final greylist-max-o RECOGNITION_FLAG_NONE:I = 0x0

.field public static final whitelist RECOGNITION_FLAG_RUN_IN_BATTERY_SAVER:I = 0x10

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SoundTriggerDetector"


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

.field private final blacklist mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

.field private final blacklist mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .registers 1

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ISoundTriggerSession;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)V
    .registers 6

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mLock:Ljava/lang/Object;

    .line 285
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    .line 286
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 287
    iput-object p3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    .line 288
    if-nez p4, :cond_1a

    .line 289
    new-instance p1, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;

    invoke-direct {p1, p0}, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    goto :goto_25

    .line 291
    :cond_1a
    new-instance p1, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    .line 293
    :goto_25
    new-instance p1, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/media/soundtrigger/SoundTriggerDetector-IA;)V

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    .line 294
    return-void
.end method


# virtual methods
.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 362
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 364
    :try_start_3
    monitor-exit p1

    .line 365
    return-void

    .line 364
    :catchall_5
    move-exception p2

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw p2
.end method

.method public whitelist startRecognition(I)Z
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 311
    :goto_9
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    .line 314
    :goto_10
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v1

    .line 316
    :goto_17
    nop

    .line 317
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_1e

    .line 318
    move v5, v2

    goto :goto_1f

    .line 317
    :cond_1e
    move v5, v1

    .line 320
    :goto_1f
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_25

    .line 321
    or-int/lit8 v5, v5, 0x2

    .line 326
    :cond_25
    :try_start_25
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    iget-object v6, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    iget-object v7, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    new-instance v8, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    invoke-direct {v8}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;-><init>()V

    .line 330
    invoke-virtual {v8, v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setCaptureRequested(Z)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0, v3}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setMultipleTriggersAllowed(Z)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {v0, v5}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setAudioCapabilities(I)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->build()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v0

    .line 326
    invoke-interface {p1, v6, v7, v0, v4}, Lcom/android/internal/app/ISoundTriggerSession;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_44} :catch_49

    .line 337
    nop

    .line 338
    if-nez p1, :cond_48

    move v1, v2

    :cond_48
    return v1

    .line 335
    :catch_49
    move-exception p1

    .line 336
    return v1
.end method

.method public whitelist stopRecognition()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    nop

    .line 350
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v2, Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/ISoundTriggerSession;->stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_1a

    .line 354
    nop

    .line 355
    if-nez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    .line 352
    :catch_1a
    move-exception v1

    .line 353
    return v0
.end method
