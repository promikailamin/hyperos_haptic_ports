.class public Landroid/media/audiofx/Visualizer;
.super Ljava/lang/Object;
.source "Visualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Visualizer$OnDataCaptureListener;,
        Landroid/media/audiofx/Visualizer$OnServerDiedListener;,
        Landroid/media/audiofx/Visualizer$MeasurementPeakRms;
    }
.end annotation


# static fields
.field public static final whitelist ALREADY_EXISTS:I = -0x2

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_BAD_VALUE:I = -0x4

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x7

.field public static final whitelist ERROR_INVALID_OPERATION:I = -0x5

.field public static final whitelist ERROR_NO_INIT:I = -0x3

.field public static final whitelist ERROR_NO_MEMORY:I = -0x6

.field public static final whitelist MEASUREMENT_MODE_NONE:I = 0x0

.field public static final whitelist MEASUREMENT_MODE_PEAK_RMS:I = 0x1

.field private static final greylist-max-o NATIVE_EVENT_FFT_CAPTURE:I = 0x1

.field private static final greylist-max-o NATIVE_EVENT_PCM_CAPTURE:I = 0x0

.field private static final greylist-max-o NATIVE_EVENT_SERVER_DIED:I = 0x2

.field public static final whitelist SCALING_MODE_AS_PLAYED:I = 0x1

.field public static final whitelist SCALING_MODE_NORMALIZED:I = 0x0

.field public static final whitelist STATE_ENABLED:I = 0x2

.field public static final whitelist STATE_INITIALIZED:I = 0x1

.field public static final whitelist STATE_UNINITIALIZED:I = 0x0

.field public static final whitelist SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Visualizer-JAVA"


# instance fields
.field private greylist-max-o mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private greylist mId:I

.field private greylist-max-o mJniData:J

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private blacklist mNativeEventHandler:Landroid/os/Handler;

.field private greylist-max-o mNativeVisualizer:J

.field private greylist-max-o mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

.field private greylist-max-o mState:I

.field private final greylist-max-o mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Landroid/media/audiofx/Visualizer;->native_init()V

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 179
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    .line 190
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    .line 199
    iput-object v1, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 204
    iput-object v1, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .line 228
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 230
    iget-object v3, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 231
    :try_start_21
    iput v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 236
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 237
    invoke-virtual {v4}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_a3

    .line 238
    :try_start_2b
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v4}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v6

    .line 238
    invoke-direct {p0, v5, p1, v2, v6}, Landroid/media/audiofx/Visualizer;->native_setup(Ljava/lang/Object;I[ILandroid/os/Parcel;)I

    move-result p1
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_97

    .line 240
    if-eqz v4, :cond_3d

    :try_start_3a
    invoke-virtual {v4}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 241
    :cond_3d
    if-eqz p1, :cond_85

    const/4 v4, -0x2

    if-eq p1, v4, :cond_85

    .line 242
    const-string v0, "Visualizer-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing Visualizer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    packed-switch p1, :pswitch_data_a6

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    goto :goto_6e

    .line 245
    :pswitch_66
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Effect library not loaded"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :goto_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize Visualizer engine, error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_85
    aget p1, v2, v0

    iput p1, p0, Landroid/media/audiofx/Visualizer;->mId:I

    .line 252
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 253
    const/4 p1, 0x2

    iput p1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    goto :goto_95

    .line 255
    :cond_93
    iput v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 257
    :goto_95
    monitor-exit v3
    :try_end_96
    .catchall {:try_start_3a .. :try_end_96} :catchall_a3

    .line 258
    return-void

    .line 236
    :catchall_97
    move-exception p1

    if-eqz v4, :cond_a2

    :try_start_9a
    invoke-virtual {v4}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a2
    :goto_a2
    throw p1

    .line 257
    :catchall_a3
    move-exception p1

    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_a3

    throw p1

    :pswitch_data_a6
    .packed-switch -0x5
        :pswitch_66
    .end packed-switch
.end method

.method public static native whitelist getCaptureSizeRange()[I
.end method

.method public static native whitelist getMaxCaptureRate()I
.end method

.method static synthetic blacklist lambda$postEventFromNative$0(Landroid/media/audiofx/Visualizer;I[BI)V
    .registers 6

    .line 789
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_3
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 791
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 792
    if-eqz v1, :cond_11

    .line 793
    if-nez p1, :cond_e

    .line 794
    invoke-interface {v1, p0, p2, p3}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    goto :goto_11

    .line 796
    :cond_e
    invoke-interface {v1, p0, p2, p3}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    .line 799
    :cond_11
    :goto_11
    return-void

    .line 791
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method static synthetic blacklist lambda$postEventFromNative$1(Landroid/media/audiofx/Visualizer;)V
    .registers 2

    .line 804
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_3
    iget-object p0, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .line 806
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 807
    if-eqz p0, :cond_b

    .line 808
    invoke-interface {p0}, Landroid/media/audiofx/Visualizer$OnServerDiedListener;->onServerDied()V

    .line 810
    :cond_b
    return-void

    .line 806
    :catchall_c
    move-exception p0

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p0
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getCaptureSize()I
.end method

.method private final native greylist-max-o native_getEnabled()Z
.end method

.method private final native greylist-max-o native_getFft([B)I
.end method

.method private final native greylist-max-o native_getMeasurementMode()I
.end method

.method private final native greylist-max-o native_getPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
.end method

.method private final native greylist-max-o native_getSamplingRate()I
.end method

.method private final native greylist-max-o native_getScalingMode()I
.end method

.method private final native greylist-max-o native_getWaveForm([B)I
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist-max-o native_setCaptureSize(I)I
.end method

.method private final native greylist-max-o native_setEnabled(Z)I
.end method

.method private final native greylist-max-o native_setMeasurementMode(I)I
.end method

.method private final native greylist-max-o native_setPeriodicCapture(IZZ)I
.end method

.method private final native greylist-max-o native_setScalingMode(I)I
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;I[ILandroid/os/Parcel;)I
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;II[B)V
    .registers 6

    .line 775
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/audiofx/Visualizer;

    .line 776
    if-nez p0, :cond_b

    return-void

    .line 779
    :cond_b
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_e
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    .line 781
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_43

    .line 782
    if-nez v1, :cond_14

    return-void

    .line 784
    :cond_14
    packed-switch p1, :pswitch_data_46

    .line 813
    const-string p0, "Visualizer-JAVA"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown native event in postEventFromNative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 802
    :pswitch_30
    new-instance p1, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda1;-><init>(Landroid/media/audiofx/Visualizer;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 811
    goto :goto_42

    .line 787
    :pswitch_39
    new-instance v0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;-><init>(Landroid/media/audiofx/Visualizer;I[BI)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    nop

    .line 816
    :goto_42
    return-void

    .line 781
    :catchall_43
    move-exception p0

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_39
        :pswitch_39
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3

    .line 273
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_finalize()V

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist getCaptureSize()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 369
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getCaptureSize()I

    move-result v1

    monitor-exit v0

    return v1

    .line 367
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCaptureSize() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getEnabled()Z
    .registers 5

    .line 309
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 313
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 311
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnabled() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getFft([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 552
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getFft([B)I

    move-result p1

    monitor-exit v0

    return p1

    .line 550
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFft() called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 553
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public whitelist getMeasurementMode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 442
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getMeasurementMode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 439
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeasurementMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getMeasurementPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
    .registers 5

    .line 583
    if-nez p1, :cond_b

    .line 584
    const-string p1, "Visualizer-JAVA"

    const-string v0, "Cannot store measurements in a null object"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 p1, -0x4

    return p1

    .line 587
    :cond_b
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_e
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 592
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I

    move-result p1

    monitor-exit v0

    return p1

    .line 589
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMeasurementPeakRms() called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 593
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_34

    throw p1
.end method

.method public whitelist getSamplingRate()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 456
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getSamplingRate()I

    move-result v1

    monitor-exit v0

    return v1

    .line 454
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSamplingRate() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getScalingMode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 405
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getScalingMode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 402
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScalingMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getWaveForm([B)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3f

    .line 479
    invoke-virtual {p0}, Landroid/media/audiofx/Visualizer;->getCaptureSize()I

    move-result v1

    .line 480
    array-length v2, p1

    if-gt v1, v2, :cond_15

    .line 485
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getWaveForm([B)I

    move-result p1

    monitor-exit v0

    return p1

    .line 481
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWaveForm() called with illegal size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " expecting at least "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 477
    :cond_3f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWaveForm() called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 486
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public whitelist release()V
    .registers 3

    .line 265
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_release()V

    .line 267
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist setCaptureSize(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    .line 350
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setCaptureSize(I)I

    move-result v1

    .line 351
    const/4 v2, -0x4

    if-eq v1, v2, :cond_11

    .line 355
    monitor-exit v0

    return v1

    .line 352
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCaptureSize to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " failed"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureSize() called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public whitelist setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I
    .registers 6

    .line 647
    if-nez p1, :cond_5

    .line 649
    nop

    .line 650
    const/4 p3, 0x0

    move p4, p3

    .line 653
    :cond_5
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_8
    invoke-direct {p0, p2, p3, p4}, Landroid/media/audiofx/Visualizer;->native_setPeriodicCapture(IZZ)I

    move-result p2

    .line 655
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_41

    .line 656
    if-nez p2, :cond_40

    .line 657
    iget-object p3, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter p3

    .line 658
    :try_start_12
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 659
    if-eqz p1, :cond_3b

    iget-object p1, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    if-nez p1, :cond_3b

    .line 661
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 662
    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    goto :goto_3b

    .line 663
    :cond_28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 664
    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    goto :goto_3b

    .line 666
    :cond_36
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/os/Handler;

    .line 667
    const/4 p1, -0x3

    move p2, p1

    .line 670
    :cond_3b
    :goto_3b
    monitor-exit p3

    goto :goto_40

    :catchall_3d
    move-exception p1

    monitor-exit p3
    :try_end_3f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_3d

    throw p1

    .line 672
    :cond_40
    :goto_40
    return p2

    .line 655
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public whitelist setEnabled(Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_26

    .line 291
    nop

    .line 292
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_10

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eq v3, v2, :cond_16

    :cond_10
    if-nez p1, :cond_23

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-ne v3, v1, :cond_23

    .line 294
    :cond_16
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setEnabled(Z)I

    move-result v3

    .line 295
    if-nez v3, :cond_24

    .line 296
    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    iput v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    goto :goto_24

    .line 299
    :cond_23
    const/4 v3, 0x0

    :cond_24
    :goto_24
    monitor-exit v0

    return v3

    .line 289
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled() called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public whitelist setMeasurementMode(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 424
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setMeasurementMode(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 421
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMeasurementMode() called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public whitelist setScalingMode(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eqz v1, :cond_d

    .line 388
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setScalingMode(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 385
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScalingMode() called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public greylist-max-o setServerDiedListener(Landroid/media/audiofx/Visualizer$OnServerDiedListener;)I
    .registers 3

    .line 706
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .line 708
    monitor-exit v0

    .line 709
    const/4 p1, 0x0

    return p1

    .line 708
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method
