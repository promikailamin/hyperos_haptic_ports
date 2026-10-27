.class final Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.super Ljava/lang/Object;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;,
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;,
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;
    }
.end annotation


# static fields
.field private static final CALLBACK_ONDETECTED_GOT_SECURITY_EXCEPTION:I = -0x2

.field static final DEBUG:Z = false

.field private static final EXTERNAL_HOTWORD_CLEANUP_MILLIS:J = 0x7d0L

.field private static final HOTWORD_DETECTION_SERVICE_DIED:I = -0x1

.field private static final KEY_RESTART_PERIOD_IN_SECONDS:Ljava/lang/String; = "restart_period_in_seconds"

.field private static final MAX_ISOLATED_PROCESS_NUMBER:I = 0xa

.field private static final MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

.field private static final MAX_UPDATE_TIMEOUT_MILLIS:J = 0x7530L

.field private static final METRICS_INIT_CALLBACK_STATE_ERROR:I = 0x1

.field private static final METRICS_INIT_CALLBACK_STATE_SUCCESS:I = 0x0

.field private static final METRICS_INIT_UNKNOWN_NO_VALUE:I = 0x2

.field private static final METRICS_INIT_UNKNOWN_OVER_MAX_CUSTOM_VALUE:I = 0x3

.field private static final METRICS_INIT_UNKNOWN_TIMEOUT:I = 0x4

.field private static final METRICS_KEYPHRASE_TRIGGERED_DETECT_SECURITY_EXCEPTION:I = 0x8

.field private static final METRICS_KEYPHRASE_TRIGGERED_DETECT_UNEXPECTED_CALLBACK:I = 0x7

.field private static final METRICS_KEYPHRASE_TRIGGERED_REJECT_UNEXPECTED_CALLBACK:I = 0x9

.field private static final OP_MESSAGE:Ljava/lang/String; = "Providing hotword detection result to VoiceInteractionService"

.field private static final RESET_DEBUG_HOTWORD_LOGGING_TIMEOUT_MILLIS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "HotwordDetectionConnection"

.field private static final VALIDATION_TIMEOUT_MILLIS:J = 0xfa0L


# instance fields
.field private final mAudioCopyExecutor:Ljava/util/concurrent/Executor;

.field private mAudioFlinger:Landroid/os/IBinder;

.field private final mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field private mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

.field private mDebugHotwordLogging:Z

.field private mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final mDetectionComponentName:Landroid/content/ComponentName;

.field private final mDetectorType:I

.field volatile mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

.field private mLastRestartInstant:Ljava/time/Instant;

.field final mLock:Ljava/lang/Object;

.field private mPerformingSoftwareHotwordDetection:Z

.field private final mReStartPeriodSeconds:I

.field private mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

.field private mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field private final mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mUser:I

.field private mValidatingDspTrigger:Z

.field final mVoiceInteractionServiceUid:I

.field private final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method public static synthetic $r8$lambda$i8F8xvsj0XTRcMx3FdDlXqkF-FE(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->audioServerDied()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCancellationKeyPhraseDetectionFuture(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScheduledExecutorService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftwareCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateStateAfterStartFinished(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddServiceUidForAudioPolicy(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->addServiceUidForAudioPolicy(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetectFromDspSource(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforcePermissionsForDataDelivery(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionsForDataDelivery()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbestEffortClose([Ljava/io/Closeable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose([Ljava/io/Closeable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;
    .registers 1

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smupdateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smupdateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 121
    nop

    .line 122
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    .line 121
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;ILandroid/media/permission/Identity;Landroid/content/ComponentName;IZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    .registers 30
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "voiceInteractionServiceUid"    # I
    .param p4, "voiceInteractorIdentity"    # Landroid/media/permission/Identity;
    .param p5, "serviceName"    # Landroid/content/ComponentName;
    .param p6, "userId"    # I
    .param p7, "bindInstantServiceAllowed"    # Z
    .param p8, "options"    # Landroid/os/PersistableBundle;
    .param p9, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p10, "callback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .param p11, "detectorType"    # I

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    .line 151
    nop

    .line 152
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 154
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    iput-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 176
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 184
    iput-boolean v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 190
    iput-boolean v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 197
    if-eqz v2, :cond_9e

    .line 201
    move-object/from16 v11, p1

    iput-object v11, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 202
    move-object/from16 v12, p2

    iput-object v12, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 203
    move/from16 v13, p3

    iput v13, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 204
    move-object/from16 v14, p4

    iput-object v14, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 205
    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectionComponentName:Landroid/content/ComponentName;

    .line 206
    move/from16 v15, p6

    iput v15, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUser:I

    .line 207
    iput-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 208
    move/from16 v10, p11

    iput v10, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    .line 209
    const-string/jumbo v6, "voice_interaction"

    const-string/jumbo v7, "restart_period_in_seconds"

    invoke-static {v6, v7, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mReStartPeriodSeconds:I

    .line 211
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.service.voice.HotwordDetectionService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v6

    .line 212
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    .line 215
    new-instance v6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    move/from16 v9, p7

    invoke-direct {v6, v0, v8, v9}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;Z)V

    iput-object v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 217
    invoke-virtual {v6}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 219
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 220
    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct {v0, v6, v7}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 222
    if-gtz v5, :cond_86

    .line 223
    iput-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    move-object v1, v8

    goto :goto_9d

    .line 227
    :cond_86
    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    int-to-long v1, v5

    move-object/from16 v16, v8

    .end local v8    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    int-to-long v8, v5

    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v3

    move-wide v6, v1

    move-object/from16 v1, v16

    .end local v16    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    move-object/from16 v10, v17

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 236
    :goto_9d
    return-void

    .line 198
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_9e
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p6

    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Callback is null while creating connection"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private addServiceUidForAudioPolicy(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 1125
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1132
    return-void
.end method

.method private audioServerDied()V
    .registers 4

    .line 259
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Audio server died; restarting the HotwordDetectionService."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    .line 265
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 266
    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceRestartEvent(II)V

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private static bestEffortClose(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 1152
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1157
    goto :goto_5

    .line 1153
    :catch_4
    move-exception v0

    .line 1158
    :goto_5
    return-void
.end method

.method private static varargs bestEffortClose([Ljava/io/Closeable;)V
    .registers 4
    .param p0, "closeables"    # [Ljava/io/Closeable;

    .line 1145
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    .line 1146
    .local v2, "closeable":Ljava/io/Closeable;
    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    .line 1145
    .end local v2    # "closeable":Ljava/io/Closeable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1148
    :cond_c
    return-void
.end method

.method private clearDebugHotwordLoggingTimeoutLocked()V
    .registers 3

    .line 696
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    .line 697
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 700
    :cond_b
    return-void
.end method

.method private static createPipe()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1081
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_10

    .line 1085
    .local v0, "fileDescriptors":[Landroid/os/ParcelFileDescriptor;
    nop

    .line 1087
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 1082
    .end local v0    # "fileDescriptors":[Landroid/os/ParcelFileDescriptor;
    :catch_10
    move-exception v0

    .line 1083
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Failed to create audio stream pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1084
    const/4 v1, 0x0

    return-object v1
.end method

.method private detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 7
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "externalCallback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 580
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 652
    .local v0, "internalCallback":Landroid/service/voice/IDspHotwordDetectionCallback;
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    const/4 v2, 0x1

    :try_start_9
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 654
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v2
.end method

.method private detectFromDspSourceForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 7
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "externalCallback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 517
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "detectFromDspSourceForTest"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 562
    .local v0, "internalCallback":Landroid/service/voice/IDspHotwordDetectionCallback;
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 563
    const/4 v2, 0x1

    :try_start_10
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 564
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private static enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "identity"    # Landroid/media/permission/Identity;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1186
    invoke-static {p0, p1, p2, p3}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1188
    .local v0, "status":I
    if-nez v0, :cond_7

    .line 1194
    return-void

    .line 1189
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    .line 1192
    invoke-static {p1}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->toString(Landroid/media/permission/Identity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1190
    const-string v3, "Failed to obtain permission %s for identity %s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePermissionsForDataDelivery()V
    .registers 2

    .line 1162
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1172
    return-void
.end method

.method private static getInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 342
    const/4 v0, 0x2

    const/16 v1, 0x64

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 342
    if-nez p0, :cond_13

    .line 343
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 345
    :cond_13
    const-string v3, "initialization_status"

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 346
    .local v3, "status":I
    invoke-static {}, Landroid/service/voice/HotwordDetectionService;->getMaxCustomInitializationStatus()I

    move-result v4

    if-le v3, v4, :cond_2d

    .line 347
    new-instance v4, Landroid/util/Pair;

    .line 348
    if-ne v3, v1, :cond_24

    .line 349
    goto :goto_25

    .line 350
    :cond_24
    const/4 v0, 0x3

    .line 348
    :goto_25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 347
    return-object v4

    .line 353
    :cond_2d
    if-nez v3, :cond_31

    .line 354
    const/4 v0, 0x0

    goto :goto_32

    .line 355
    :cond_31
    const/4 v0, 0x1

    :goto_32
    nop

    .line 356
    .local v0, "metricsResult":I
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private handleExternalSourceHotwordDetection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 21
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "callback"    # Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 832
    move-object/from16 v9, p0

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    move-object/from16 v10, p1

    invoke-direct {v0, v10}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v11, v0

    .line 834
    .local v11, "audioSource":Ljava/io/InputStream;
    invoke-static {}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->createPipe()Landroid/util/Pair;

    move-result-object v12

    .line 835
    .local v12, "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    if-nez v12, :cond_11

    .line 837
    return-void

    .line 839
    :cond_11
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/ParcelFileDescriptor;

    .line 840
    .local v13, "serviceAudioSink":Landroid/os/ParcelFileDescriptor;
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/os/ParcelFileDescriptor;

    .line 842
    .local v14, "serviceAudioSource":Landroid/os/ParcelFileDescriptor;
    iget-object v1, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 843
    :try_start_1e
    iput-object v13, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 844
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_45

    .line 846
    iget-object v0, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;

    move-object/from16 v15, p4

    invoke-direct {v1, v9, v11, v13, v15}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 882
    iget-object v0, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v8, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v13

    move-object v7, v11

    move-object v9, v8

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    invoke-virtual {v0, v9}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 945
    return-void

    .line 844
    :catchall_45
    move-exception v0

    move-object/from16 v15, p4

    :goto_48
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_4a

    throw v0

    :catchall_4a
    move-exception v0

    goto :goto_48
.end method

.method private initAudioFlingerLocked()V
    .registers 4

    .line 242
    const-string/jumbo v0, "media.audio_flinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    .line 243
    if-eqz v0, :cond_1e

    .line 250
    :try_start_b
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    .line 255
    goto :goto_1d

    .line 251
    :catch_12
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Audio server died before we registered a DeathRecipient; retrying init."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void

    .line 244
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service media.audio_flinger wasn\'t found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isBound()Z
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 362
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method static synthetic lambda$addServiceUidForAudioPolicy$14(I)V
    .registers 2
    .param p0, "uid"    # I

    .line 1126
    const-class v0, Landroid/media/AudioManagerInternal;

    .line 1127
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    .line 1128
    .local v0, "audioManager":Landroid/media/AudioManagerInternal;
    if-eqz v0, :cond_d

    .line 1129
    invoke-virtual {v0, p0}, Landroid/media/AudioManagerInternal;->addAssistantServiceUid(I)V

    .line 1131
    :cond_d
    return-void
.end method

.method static synthetic lambda$detectFromDspSourceForTest$5(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 9
    .param p0, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p1, "internalCallback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .param p2, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 565
    nop

    .line 567
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    .line 565
    const-wide/16 v3, 0xfa0

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method static synthetic lambda$removeServiceUidForAudioPolicy$15(I)V
    .registers 2
    .param p0, "uid"    # I

    .line 1136
    const-class v0, Landroid/media/AudioManagerInternal;

    .line 1137
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    .line 1138
    .local v0, "audioManager":Landroid/media/AudioManagerInternal;
    if-eqz v0, :cond_d

    .line 1139
    invoke-virtual {v0, p0}, Landroid/media/AudioManagerInternal;->removeAssistantServiceUid(I)V

    .line 1141
    :cond_d
    return-void
.end method

.method static synthetic lambda$startListeningFromMicLocked$4(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 8
    .param p0, "internalCallback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .param p1, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 457
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method static synthetic lambda$updateAudioFlinger$11(Landroid/os/IBinder;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 2
    .param p0, "audioFlinger"    # Landroid/os/IBinder;
    .param p1, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1092
    invoke-interface {p1, p0}, Landroid/service/voice/IHotwordDetectionService;->updateAudioFlinger(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$updateContentCaptureManager$12(Landroid/view/contentcapture/IContentCaptureManager;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 4
    .param p0, "binderService"    # Landroid/view/contentcapture/IContentCaptureManager;
    .param p1, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1100
    new-instance v0, Landroid/content/ContentCaptureOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/ContentCaptureOptions;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p1, p0, v0}, Landroid/service/voice/IHotwordDetectionService;->updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method static synthetic lambda$updateStateLocked$3(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 4
    .param p0, "options"    # Landroid/os/PersistableBundle;
    .param p1, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p2, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Landroid/service/voice/IHotwordDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private removeServiceUidForAudioPolicy(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 1135
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1142
    return-void
.end method

.method private restartProcessLocked()V
    .registers 7

    .line 703
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Restarting hotword detection process"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 705
    .local v1, "oldConnection":Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 708
    .local v2, "previousIdentity":Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    .line 712
    :try_start_10
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v5, Landroid/service/voice/HotwordRejectedResult$Builder;

    invoke-direct {v5}, Landroid/service/voice/HotwordRejectedResult$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/service/voice/HotwordRejectedResult$Builder;->build()Landroid/service/voice/HotwordRejectedResult;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 713
    iget v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_25} :catch_26

    .line 718
    goto :goto_2c

    .line 716
    :catch_26
    move-exception v3

    .line 717
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "Failed to call #rejected"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2c
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 722
    :cond_2e
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 723
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 726
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-virtual {v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 728
    const-string v3, "Started the new process, issuing #onProcessRestarted"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :try_start_46
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 733
    goto :goto_52

    .line 731
    :catch_4c
    move-exception v3

    .line 732
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v4, "Failed to communicate #onProcessRestarted"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_52
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    if-eqz v3, :cond_5e

    .line 737
    const-string v3, "Process restarted: calling startRecognition() again"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMicLocked()V

    .line 741
    :cond_5e
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_6f

    .line 742
    const-string v3, "Closing external audio stream to hotword detector: process restarted"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 750
    :cond_6f
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->ignoreConnectionStatusEvents()V

    .line 751
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->unbind()V

    .line 752
    if-eqz v2, :cond_7e

    .line 753
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->removeServiceUidForAudioPolicy(I)V

    .line 755
    :cond_7e
    return-void
.end method

.method private startListeningFromMicLocked()V
    .registers 4

    .line 418
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 456
    .local v0, "internalCallback":Landroid/service/voice/IDspHotwordDetectionCallback;
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda14;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 463
    return-void
.end method

.method private stopListeningLocked()V
    .registers 4

    .line 491
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    const-string v1, "HotwordDetectionConnection"

    if-nez v0, :cond_c

    .line 492
    const-string v0, "Hotword detection is not running"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void

    .line 495
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    .line 497
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 499
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_27

    .line 500
    const-string v0, "Closing audio stream to hotword detector: stopping requested"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    .line 503
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 504
    return-void
.end method

.method private static updateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V
    .registers 3
    .param p0, "connection"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
    .param p1, "audioFlinger"    # Landroid/os/IBinder;

    .line 1092
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 1093
    return-void
.end method

.method private static updateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .registers 4
    .param p0, "connection"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 1096
    nop

    .line 1097
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1098
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    .line 1099
    .local v1, "binderService":Landroid/view/contentcapture/IContentCaptureManager;
    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda18;-><init>(Landroid/view/contentcapture/IContentCaptureManager;)V

    invoke-virtual {p0, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 1102
    return-void
.end method

.method private updateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .registers 3
    .param p1, "connection"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 1105
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-virtual {p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 1122
    return-void
.end method

.method private updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 5
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 276
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 318
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 339
    return-void
.end method


# virtual methods
.method cancelLocked()V
    .registers 4

    .line 366
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "cancelLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->clearDebugHotwordLoggingTimeoutLocked()V

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 369
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->unbind()V

    .line 370
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 371
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    if-eqz v1, :cond_2b

    .line 373
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->removeServiceUidForAudioPolicy(I)V

    .line 375
    :cond_2b
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 376
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_35

    .line 377
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 379
    :cond_35
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    if-eqz v1, :cond_3e

    .line 380
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 382
    :cond_3e
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 814
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mReStartPeriodSeconds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mReStartPeriodSeconds:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 815
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mValidatingDspTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mPerformingSoftwareHotwordDetection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mRestartCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->-$$Nest$fgetmRestartCount(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mLastRestartInstant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mDetectorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    invoke-static {v1}, Landroid/service/voice/HotwordDetector;->detectorTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method forceRestart()V
    .registers 3

    .line 673
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Requested to restart the service internally. Performing the restart"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 676
    monitor-exit v0

    .line 677
    return-void

    .line 676
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v1
.end method

.method synthetic lambda$detectFromDspSource$6$com-android-server-voiceinteraction-HotwordDetectionConnection()V
    .registers 3

    .line 658
    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    .line 659
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    .line 658
    return-void
.end method

.method synthetic lambda$detectFromDspSource$7$com-android-server-voiceinteraction-HotwordDetectionConnection(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 11
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "internalCallback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .param p3, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xfa0

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 663
    nop

    .line 665
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v3

    .line 663
    const-wide/16 v4, 0xfa0

    move-object v1, p3

    move-object v2, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/service/voice/IHotwordDetectionService;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 668
    return-void
.end method

.method synthetic lambda$enforcePermissionsForDataDelivery$16$com-android-server-voiceinteraction-HotwordDetectionConnection()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.RECORD_AUDIO"

    const-string v3, "Providing hotword detection result to VoiceInteractionService"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method synthetic lambda$handleExternalSourceHotwordDetection$10$com-android-server-voiceinteraction-HotwordDetectionConnection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .registers 14
    .param p1, "serviceAudioSource"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "serviceAudioSink"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "audioSource"    # Ljava/io/InputStream;
    .param p6, "callback"    # Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    .param p7, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 884
    new-instance v5, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;

    invoke-direct {v5, p0, p4, p5, p6}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    const/4 v2, 0x2

    move-object v0, p7

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 943
    invoke-static {p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    .line 944
    return-void
.end method

.method synthetic lambda$handleExternalSourceHotwordDetection$9$com-android-server-voiceinteraction-HotwordDetectionConnection(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 11
    .param p1, "audioSource"    # Ljava/io/InputStream;
    .param p2, "serviceAudioSink"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 847
    move-object v0, p1

    .line 848
    .local v0, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_3a

    .line 851
    .local v2, "fos":Ljava/io/OutputStream;
    const/16 v3, 0x400

    :try_start_9
    new-array v4, v3, [B

    .line 853
    .local v4, "buffer":[B
    :goto_b
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 855
    .local v6, "bytesRead":I
    if-gez v6, :cond_2c

    .line 856
    const-string v3, "HotwordDetectionConnection"

    const-string v5, "Reached end of stream for external hotword"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_30

    .line 857
    nop

    .line 865
    .end local v4    # "buffer":[B
    .end local v6    # "bytesRead":I
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_3a

    .end local v2    # "fos":Ljava/io/OutputStream;
    if-eqz v0, :cond_22

    :try_start_1f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_48
    .catchall {:try_start_1f .. :try_end_22} :catchall_46

    .line 874
    .end local v0    # "source":Ljava/io/InputStream;
    :cond_22
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 875
    :try_start_25
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 876
    monitor-exit v2

    goto :goto_73

    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    throw v0

    .line 863
    .restart local v0    # "source":Ljava/io/InputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "bytesRead":I
    :cond_2c
    :try_start_2c
    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    .line 864
    .end local v6    # "bytesRead":I
    goto :goto_b

    .line 847
    .end local v4    # "buffer":[B
    :catchall_30
    move-exception v3

    :try_start_31
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v4

    :try_start_36
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "source":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .end local p1    # "audioSource":Ljava/io/InputStream;
    .end local p2    # "serviceAudioSink":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "callback":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    :goto_39
    throw v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v0    # "source":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .restart local p1    # "audioSource":Ljava/io/InputStream;
    .restart local p2    # "serviceAudioSink":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "callback":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    :catchall_3a
    move-exception v2

    if-eqz v0, :cond_45

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v3

    :try_start_42
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .end local p1    # "audioSource":Ljava/io/InputStream;
    .end local p2    # "serviceAudioSink":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "callback":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    :cond_45
    :goto_45
    throw v2
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_48
    .catchall {:try_start_42 .. :try_end_46} :catchall_46

    .line 874
    .end local v0    # "source":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .restart local p1    # "audioSource":Ljava/io/InputStream;
    .restart local p2    # "serviceAudioSink":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "callback":Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    :catchall_46
    move-exception v0

    goto :goto_78

    .line 865
    :catch_48
    move-exception v0

    .line 866
    .local v0, "e":Ljava/io/IOException;
    :try_start_49
    const-string v2, "HotwordDetectionConnection"

    const-string v3, "Failed supplying audio data to validator"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_46

    .line 869
    :try_start_50
    invoke-interface {p3}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onError()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_53} :catch_54
    .catchall {:try_start_50 .. :try_end_53} :catchall_46

    .line 872
    goto :goto_6d

    .line 870
    :catch_54
    move-exception v2

    .line 871
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_55
    const-string v3, "HotwordDetectionConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to report onError status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_46

    .line 874
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_6d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_70
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 876
    monitor-exit v0

    .line 877
    :goto_73
    nop

    .line 878
    return-void

    .line 876
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_75

    throw v1

    .line 874
    :goto_78
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 875
    :try_start_7b
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 876
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    .line 877
    throw v0

    .line 876
    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method synthetic lambda$new$0$com-android-server-voiceinteraction-HotwordDetectionConnection()V
    .registers 4

    .line 228
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Time to restart the process, TTL has passed"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 231
    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceRestartEvent(II)V

    .line 233
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v1
.end method

.method synthetic lambda$setDebugHotwordLoggingLocked$8$com-android-server-voiceinteraction-HotwordDetectionConnection()V
    .registers 3

    .line 687
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Timeout to reset mDebugHotwordLogging to false"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    const/4 v1, 0x0

    :try_start_b
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 690
    monitor-exit v0

    .line 691
    return-void

    .line 690
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v1
.end method

.method synthetic lambda$updateServiceIdentity$13$com-android-server-voiceinteraction-HotwordDetectionConnection(Landroid/service/voice/IHotwordDetectionService;)V
    .registers 3
    .param p1, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1105
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-interface {p1, v0}, Landroid/service/voice/IHotwordDetectionService;->ping(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method synthetic lambda$updateStateAfterProcessStart$1$com-android-server-voiceinteraction-HotwordDetectionConnection(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 278
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/infra/AndroidFuture;)V

    .line 309
    .local v1, "statusCallback":Landroid/os/IRemoteCallback;
    :try_start_a
    invoke-interface {p3, p1, p2, v1}, Landroid/service/voice/IHotwordDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    .line 310
    iget v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v2, v3, v4}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 316
    goto :goto_1e

    .line 313
    :catch_16
    move-exception v2

    .line 315
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HotwordDetectionConnection"

    const-string v4, "Failed to updateState for HotwordDetectionService"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1e
    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    return-object v2
.end method

.method synthetic lambda$updateStateAfterProcessStart$2$com-android-server-voiceinteraction-HotwordDetectionConnection(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "res"    # Ljava/lang/Void;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 319
    instance-of v0, p2, Ljava/util/concurrent/TimeoutException;

    const-string v1, "HotwordDetectionConnection"

    if-eqz v0, :cond_30

    .line 320
    const-string/jumbo v0, "updateState timed out"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 322
    return-void

    .line 325
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/16 v3, 0x64

    invoke-interface {v0, v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V

    .line 326
    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceInitResultEvent(II)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_2f

    .line 328
    :catch_24
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to report initialization status UNKNOWN"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceInitResultEvent(II)V

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    goto :goto_48

    .line 333
    :cond_30
    if-eqz p2, :cond_48

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_48
    :goto_48
    return-void
.end method

.method setDebugHotwordLoggingLocked(Z)V
    .registers 7
    .param p1, "logging"    # Z

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDebugHotwordLoggingLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->clearDebugHotwordLoggingTimeoutLocked()V

    .line 682
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 684
    if-eqz p1, :cond_32

    .line 686
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    const-wide/32 v2, 0x36ee80

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 693
    :cond_32
    return-void
.end method

.method public startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 5
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "callback"    # Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 474
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->handleExternalSourceHotwordDetection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    .line 479
    return-void
.end method

.method startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 6
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "callback"    # Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 403
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 405
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    if-eqz v1, :cond_12

    .line 407
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Hotword validation is already in progress, ignoring."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit v0

    return-void

    .line 410
    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    .line 412
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMicLocked()V

    .line 413
    monitor-exit v0

    .line 414
    return-void

    .line 413
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method stopListening()V
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->stopListeningLocked()V

    .line 487
    monitor-exit v0

    .line 488
    return-void

    .line 487
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method triggerHardwareRecognitionEventForTestLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "callback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSourceForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    .line 513
    return-void
.end method

.method updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 5
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 387
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_25

    .line 388
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 389
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "call updateStateAfterProcessStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    goto :goto_2f

    .line 392
    :cond_25
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda17;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 395
    :goto_2f
    return-void
.end method
