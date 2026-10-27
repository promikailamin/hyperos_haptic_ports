.class public abstract Lcom/android/server/voiceinteraction/DetectorSession;
.super Ljava/lang/Object;
.source "DetectorSession.java"


# static fields
.field public static final MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

.field public final mAudioCopyExecutor:Ljava/util/concurrent/Executor;

.field public final mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

.field public mDebugHotwordLogging:Z

.field public mDestroyed:Z

.field public final mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

.field public mInitialized:Z

.field public final mLock:Ljava/lang/Object;

.field public mPerformingExternalSourceHotwordDetection:Z

.field public final mProximityCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

.field public mProximityMeters:D

.field public mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field public mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mToken:Landroid/os/IBinder;

.field public final mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUserId:I

.field public final mVoiceInteractionServiceUid:I

.field public final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method public static synthetic $r8$lambda$4CWF-DI6LatVdWTm_g5kTFijDrA(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/ISandboxedDetectionService;)V
    .registers 4

    const/4 v0, 0x0

    .line 396
    invoke-interface {p2, p0, p1, v0}, Landroid/service/voice/ISandboxedDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4HsTJIPK7mS2lQO8RbfQMB0aez4(Lcom/android/server/voiceinteraction/DetectorSession;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession;->lambda$updateStateAfterProcessStartLocked$1(Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DFqYuzGsLBGJu7UvFr8QyDz09HE(Lcom/android/server/voiceinteraction/DetectorSession;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DetectorSession;->lambda$handleExternalSourceHotwordDetectionLocked$3(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Os1ijwSaN4K6hSXoPerUbHh-Dn4(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/ISandboxedDetectionService;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DetectorSession;->lambda$updateStateAfterProcessStartLocked$0(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/ISandboxedDetectionService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rfc-XP1Kqr92DO4HmSLrC1q9AME(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;ZLandroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZLandroid/service/voice/ISandboxedDetectionService;)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/voiceinteraction/DetectorSession;->lambda$handleExternalSourceHotwordDetectionLocked$4(Landroid/os/PersistableBundle;ZLandroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZLandroid/service/voice/ISandboxedDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l64tJQQsNJ90c_rdFfH9XJUWobY(Lcom/android/server/voiceinteraction/DetectorSession;D)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession;->setProximityValue(D)V

    return-void
.end method

.method public static synthetic $r8$lambda$sbSE-XWKbF4MRHpMk_X7S3FVqEc(Lcom/android/server/voiceinteraction/DetectorSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->lambda$enforcePermissionsForDataDelivery$5()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smbestEffortClose([Ljava/io/Closeable;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->bestEffortClose([Ljava/io/Closeable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x7530

    .line 147
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;I)V
    .registers 17

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

    .line 199
    new-instance v2, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 209
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 210
    iput-wide v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityMeters:D

    .line 212
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    .line 229
    iput-object p10, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

    .line 230
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 231
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 232
    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    .line 233
    iput-object p4, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mToken:Landroid/os/IBinder;

    move/from16 p1, p11

    .line 234
    iput p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUserId:I

    .line 235
    iput-object p5, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 236
    iput p6, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 237
    iput-object p7, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 238
    const-class p1, Landroid/app/AppOpsManager;

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Landroid/app/AppOpsManager;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 239
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5d

    .line 240
    new-instance p2, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 241
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p4

    iget p5, p7, Landroid/media/permission/Identity;->uid:I

    iget-object p6, p7, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object p7, p7, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    invoke-direct/range {p2 .. p7}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;-><init>(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    goto :goto_5f

    .line 245
    :cond_5d
    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 248
    :goto_5f
    iput-object p8, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 249
    iput-boolean p9, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    .line 252
    const-class p1, Landroid/attention/AttentionManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/attention/AttentionManagerInternal;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

    if-eqz p1, :cond_7a

    .line 254
    invoke-virtual {p1}, Landroid/attention/AttentionManagerInternal;->isProximitySupported()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 255
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

    invoke-virtual {p0, v2}, Landroid/attention/AttentionManagerInternal;->onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z

    :cond_7a
    return-void
.end method

.method public static bestEffortClose(Ljava/io/Closeable;)V
    .registers 1

    .line 875
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static varargs bestEffortClose([Ljava/io/Closeable;)V
    .registers 4

    .line 868
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    .line 869
    invoke-static {v2}, Lcom/android/server/voiceinteraction/DetectorSession;->bestEffortClose(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public static createPipe()Landroid/util/Pair;
    .registers 3

    .line 835
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_f

    const/4 v1, 0x0

    .line 841
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    .line 837
    const-string v1, "DetectorSession"

    const-string v2, "Failed to create audio stream pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 931
    invoke-static {p0, p1, p2, p3}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 934
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p3, "Failed to obtain permission %s for identity %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 935
    invoke-static {p3, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;
    .registers 5

    const/16 v0, 0x64

    .line 364
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    if-nez p0, :cond_13

    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 366
    :cond_13
    const-string v3, "initialization_status"

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 367
    invoke-static {}, Landroid/service/voice/HotwordDetectionService;->getMaxCustomInitializationStatus()I

    move-result v3

    if-le p0, v3, :cond_2d

    .line 368
    new-instance v3, Landroid/util/Pair;

    if-ne p0, v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v2, 0x3

    .line 369
    :goto_25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v3, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_2d
    if-nez p0, :cond_31

    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    const/4 v0, 0x1

    .line 377
    :goto_32
    new-instance v1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public closeExternalAudioStreamLocked(Ljava/lang/String;)V
    .registers 4

    .line 860
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_22

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing external audio stream to hotword detector: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->bestEffortClose(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    .line 863
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    :cond_22
    return-void
.end method

.method public destroyLocked()V
    .registers 2

    const/4 v0, 0x1

    .line 746
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    const/4 v0, 0x0

    .line 747
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    const/4 v0, 0x0

    .line 748
    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 749
    iput-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

    .line 750
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAttentionManagerInternal:Landroid/attention/AttentionManagerInternal;

    if-eqz v0, :cond_14

    .line 751
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    invoke-virtual {v0, p0}, Landroid/attention/AttentionManagerInternal;->onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    :cond_14
    return-void
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 973
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 974
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateStateAfterStartFinished="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 976
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInitialized="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 977
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDestroyed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 978
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DetectorType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    invoke-static {v0}, Landroid/service/voice/HotwordDetector;->detectorTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mPerformingExternalSourceHotwordDetection="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public enforceExtraKeyphraseIdNotLeaked(Landroid/service/voice/HotwordDetectedResult;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 6

    const-wide/32 v0, 0xcd1a6bb

    .line 944
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_1e

    .line 950
    :cond_c
    iget-object p0, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length p2, p0

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p2, :cond_22

    aget-object v1, p0, v0

    .line 951
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->getKeyphraseId()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/voice/HotwordDetectedResult;->getHotwordPhraseId()I

    move-result v2

    if-ne v1, v2, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 955
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Ignoring #onDetected due to trusted service sharing a keyphrase ID which the DSP did not detect"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforcePermissionsForDataDelivery()V
    .registers 2

    .line 885
    new-instance v0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final getDetectorType()I
    .registers 2

    .line 960
    instance-of v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 962
    :cond_6
    instance-of v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    if-eqz v0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 964
    :cond_c
    instance-of p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    if-eqz p0, :cond_12

    const/4 p0, 0x3

    return p0

    .line 967
    :cond_12
    const-string p0, "DetectorSession"

    const-string v0, "Unexpected detector type"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final handleExternalSourceHotwordDetectionLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V
    .registers 17

    .line 521
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    if-eqz v0, :cond_c

    .line 522
    const-string p0, "DetectorSession"

    const-string p1, "Hotword validation is already in progress for external source."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 526
    :cond_c
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v7, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 528
    invoke-static {}, Lcom/android/server/voiceinteraction/DetectorSession;->createPipe()Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_18

    return-void

    .line 533
    :cond_18
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 534
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 536
    iput-object v6, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x1

    .line 537
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 539
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v7, v6, p4}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 584
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v5, p2

    move-object v2, p3

    move-object v8, p4

    move v3, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;ZLandroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Z)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 729
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    const/16 p2, 0xa

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {p1, p2, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    return-void
.end method

.method public abstract informRestartProcessLocked()V
.end method

.method public initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 5

    .line 735
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    if-eqz v1, :cond_c

    goto :goto_16

    .line 739
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession;->updateStateAfterProcessStartLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    const/4 p1, 0x1

    .line 740
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    .line 741
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    goto :goto_18

    .line 737
    :cond_16
    :goto_16
    monitor-exit v0

    return-void

    .line 741
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_14

    throw p0
.end method

.method public isDestroyed()Z
    .registers 2

    .line 827
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 829
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isSameCallback(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Z
    .registers 3

    .line 809
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_a

    const/4 p0, 0x0

    .line 811
    :try_start_6
    monitor-exit v0

    return p0

    :catchall_8
    move-exception p0

    goto :goto_1a

    .line 813
    :cond_a
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 814
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_8

    throw p0
.end method

.method public isSameToken(Landroid/os/IBinder;)Z
    .registers 4

    .line 818
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 820
    :try_start_6
    monitor-exit v0

    return v1

    :catchall_8
    move-exception p0

    goto :goto_11

    .line 822
    :cond_a
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mToken:Landroid/os/IBinder;

    if-ne p0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    monitor-exit v0

    return v1

    .line 823
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_8

    throw p0
.end method

.method public final synthetic lambda$enforcePermissionsForDataDelivery$5()V
    .registers 9

    .line 886
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 887
    :try_start_3
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/policy/AppOpsPolicy;->isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 888
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECORD_AUDIO"

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget v4, v3, Landroid/media/permission/Identity;->uid:I

    iget-object v3, v3, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static {v0, v2, v5, v4, v3}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6a

    .line 896
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 897
    invoke-static {}, Lcom/android/server/policy/AppOpsPolicy;->getVoiceActivationOp()I

    move-result v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget v4, v3, Landroid/media/permission/Identity;->uid:I

    iget-object v3, v3, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 896
    invoke-virtual {v0, v2, v4, v3}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_56

    if-nez v0, :cond_3a

    goto :goto_56

    .line 907
    :cond_3a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The app op OP_RECEIVE_SANDBOX_TRIGGER_AUDIO is denied for identity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_53
    move-exception v0

    move-object p0, v0

    goto :goto_9b

    .line 901
    :cond_56
    :goto_56
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 902
    invoke-static {}, Lcom/android/server/policy/AppOpsPolicy;->getVoiceActivationOp()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget v4, v0, Landroid/media/permission/Identity;->uid:I

    iget-object v5, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    const-string v7, "Providing hotword detection result to VoiceInteractionService"

    .line 901
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 892
    :cond_6a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain permission RECORD_AUDIO for identity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_83
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-string v3, "android.permission.RECORD_AUDIO"

    const-string v4, "Providing hotword detection result to VoiceInteractionService"

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :goto_8e
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    const-string v3, "Providing hotword detection result to VoiceInteractionService"

    invoke-static {v0, p0, v2, v3}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    monitor-exit v1

    return-void

    :goto_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_53

    throw p0
.end method

.method public final synthetic lambda$handleExternalSourceHotwordDetectionLocked$3(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 8

    const/4 v0, 0x0

    .line 541
    :try_start_1
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_30

    const/16 p2, 0x400

    .line 544
    :try_start_8
    new-array v2, p2, [B

    .line 546
    :goto_a
    invoke-virtual {p1, v2, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_34

    .line 549
    const-string p2, "DetectorSession"

    const-string v2, "Reached end of stream for external hotword"

    invoke-static {p2, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_32

    .line 558
    :try_start_17
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_30

    :try_start_1a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_2e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2c

    .line 575
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 576
    :try_start_20
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 577
    const-string p2, "start external source"

    invoke-virtual {p0, p2}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    .line 578
    monitor-exit p1

    return-void

    :catchall_29
    move-exception p0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_29

    throw p0

    :catchall_2c
    move-exception p1

    goto :goto_99

    :catch_2e
    move-exception p1

    goto :goto_4c

    :catchall_30
    move-exception p2

    goto :goto_41

    :catchall_32
    move-exception p2

    goto :goto_38

    .line 556
    :cond_34
    :try_start_34
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_32

    goto :goto_a

    .line 540
    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v1

    :try_start_3d
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_30

    :goto_41
    if-eqz p1, :cond_4b

    :try_start_43
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception p1

    :try_start_48
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    throw p2
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_2e
    .catchall {:try_start_48 .. :try_end_4c} :catchall_2c

    .line 559
    :goto_4c
    :try_start_4c
    const-string p2, "DetectorSession"

    const-string v1, "Failed supplying audio data to validator"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_2c

    const/4 p1, 0x3

    .line 562
    :try_start_54
    new-instance p2, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v1, "Copy audio data failure for external source detection."

    invoke-direct {p2, p1, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5e} :catch_5f
    .catchall {:try_start_54 .. :try_end_5e} :catchall_2c

    goto :goto_8a

    :catch_5f
    move-exception p2

    .line 566
    :try_start_60
    const-string p3, "DetectorSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to report onHotwordDetectionServiceFailure status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p2

    if-eq p2, p1, :cond_87

    .line 568
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    iget p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 p3, 0xf

    invoke-static {p1, p3, p2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 572
    :cond_87
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V
    :try_end_8a
    .catchall {:try_start_60 .. :try_end_8a} :catchall_2c

    .line 575
    :goto_8a
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 576
    :try_start_8d
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 577
    const-string p2, "start external source"

    invoke-virtual {p0, p2}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    .line 578
    monitor-exit p1

    return-void

    :catchall_96
    move-exception p0

    monitor-exit p1
    :try_end_98
    .catchall {:try_start_8d .. :try_end_98} :catchall_96

    throw p0

    .line 575
    :goto_99
    iget-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 576
    :try_start_9c
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 577
    const-string p3, "start external source"

    invoke-virtual {p0, p3}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    .line 578
    monitor-exit p2
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_a5

    .line 579
    throw p1

    :catchall_a5
    move-exception p0

    .line 578
    :try_start_a6
    monitor-exit p2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw p0
.end method

.method public final synthetic lambda$handleExternalSourceHotwordDetectionLocked$4(Landroid/os/PersistableBundle;ZLandroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZLandroid/service/voice/ISandboxedDetectionService;)V
    .registers 22

    if-nez p1, :cond_7

    .line 589
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    :cond_7
    move-object v4, p1

    .line 591
    const-string p1, "android.service.voice.HotwordDetectionService.KEY_SYSTEM_WILL_CLOSE_AUDIO_STREAM_AFTER_CALLBACK"

    invoke-virtual {v4, p1, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 596
    new-instance v5, Lcom/android/server/voiceinteraction/DetectorSession$3;

    move-object v6, p0

    move v10, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v11, p8

    invoke-direct/range {v5 .. v11}, Lcom/android/server/voiceinteraction/DetectorSession$3;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V

    const/4 v2, 0x2

    move-object v1, p3

    move-object/from16 v3, p4

    move-object/from16 v0, p9

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/ISandboxedDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 727
    invoke-static {p3}, Lcom/android/server/voiceinteraction/DetectorSession;->bestEffortClose(Ljava/io/Closeable;)V

    return-void
.end method

.method public final synthetic lambda$updateStateAfterProcessStartLocked$0(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/ISandboxedDetectionService;)Ljava/util/concurrent/CompletableFuture;
    .registers 7

    .line 275
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 276
    new-instance v1, Lcom/android/server/voiceinteraction/DetectorSession$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/voiceinteraction/DetectorSession$1;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Lcom/android/internal/infra/AndroidFuture;)V

    const/4 v2, 0x3

    .line 316
    :try_start_b
    invoke-interface {p3, p1, p2, v1}, Landroid/service/voice/ISandboxedDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    if-eq p1, v2, :cond_38

    .line 318
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    iget p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 p3, 0x4

    invoke-static {p1, p3, p2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_1f

    goto :goto_38

    :catch_1f
    move-exception p1

    .line 324
    const-string p2, "DetectorSession"

    const-string p3, "Failed to updateState for HotwordDetectionService"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    if-eq p1, v2, :cond_38

    .line 326
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    const/16 p2, 0x13

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {p1, p2, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    :cond_38
    :goto_38
    const-wide/16 p0, 0x7530

    .line 331
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$updateStateAfterProcessStartLocked$1(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 6

    .line 333
    instance-of p1, p2, Ljava/util/concurrent/TimeoutException;

    const-string v0, "DetectorSession"

    if-eqz p1, :cond_49

    .line 334
    const-string p1, "updateState timed out"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_5f

    :cond_15
    const/4 p1, 0x3

    .line 339
    :try_start_16
    iget-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/16 v1, 0x64

    invoke-interface {p2, v1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V

    .line 340
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p2

    if-eq p2, p1, :cond_5f

    .line 341
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p2

    iget v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v2, 0x4

    invoke-static {p2, v2, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceInitResultEvent(III)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p2

    .line 345
    const-string v1, "Failed to report initialization status UNKNOWN"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p2

    if-eq p2, p1, :cond_45

    .line 347
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    const/16 p2, 0xe

    iget v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {p1, p2, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 351
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    return-void

    :cond_49
    if-eqz p2, :cond_5f

    .line 354
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to update state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_5f
    return-void
.end method

.method public notifyOnDetectorRemoteException()V
    .registers 3

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOnDetectorRemoteException: mRemoteExceptionListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

    if-eqz v0, :cond_25

    .line 264
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;->onDetectorRemoteException(Landroid/os/IBinder;I)V

    :cond_25
    return-void
.end method

.method public final reportErrorGetRemoteException()V
    .registers 4

    .line 767
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    .line 768
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    const/16 v1, 0xf

    iget v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 772
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    return-void
.end method

.method public reportErrorLocked(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 4

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call onHotwordDetectionServiceFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorGetRemoteException()V

    return-void
.end method

.method public reportErrorLocked(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 4

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call onVisualQueryDetectionServiceFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorGetRemoteException()V

    return-void
.end method

.method public reportErrorLocked(Ljava/lang/String;)V
    .registers 4

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onUnknownFailure(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call onUnknownFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DetectorSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorGetRemoteException()V

    return-void
.end method

.method public saveProximityValueToBundle(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 7

    .line 845
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_13

    .line 846
    :try_start_5
    iget-wide v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityMeters:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double p0, v1, v3

    if-eqz p0, :cond_13

    .line 847
    invoke-virtual {p1, v1, v2}, Landroid/service/voice/HotwordDetectedResult;->setProximity(D)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 849
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public setDebugHotwordLoggingLocked(Z)V
    .registers 4

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugHotwordLoggingLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    return-void
.end method

.method public final setProximityValue(D)V
    .registers 4

    .line 853
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_3
    iput-wide p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityMeters:D

    .line 855
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public startListeningFromExternalSourceLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 12

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 409
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/voiceinteraction/DetectorSession;->handleExternalSourceHotwordDetectionLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V

    return-void
.end method

.method public startListeningFromWearableLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    .registers 12

    .line 426
    new-instance v4, Lcom/android/server/voiceinteraction/DetectorSession$2;

    invoke-direct {v4, p0, p4}, Lcom/android/server/voiceinteraction/DetectorSession$2;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 501
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/voiceinteraction/DetectorSession;->handleExternalSourceHotwordDetectionLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V

    return-void
.end method

.method public updateRemoteSandboxedDetectionServiceLocked(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .registers 2

    .line 763
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    return-void
.end method

.method public final updateStateAfterProcessStartLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p2, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    .line 332
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    if-nez p0, :cond_1d

    .line 358
    const-string p0, "DetectorSession"

    const-string p1, "Failed to create AndroidFuture"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/time/Instant;)V
    .registers 7

    .line 383
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    .line 384
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 390
    :cond_12
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    .line 391
    invoke-virtual {v0, p3}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result p3

    if-eqz p3, :cond_35

    .line 392
    const-string p3, "DetectorSession"

    const-string v0, "call updateStateAfterProcessStartLocked"

    invoke-static {p3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession;->updateStateAfterProcessStartLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    return-void

    .line 395
    :cond_35
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance p3, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;

    invoke-direct {p3, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {p0, p3}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method
