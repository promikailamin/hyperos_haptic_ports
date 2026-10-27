.class public Landroid/media/MediaRecorder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/AudioRecordingMonitor;
.implements Landroid/media/AudioRecordingMonitorClient;
.implements Landroid/media/MicrophoneDirection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRecorder$OzoAudioParameters;,
        Landroid/media/MediaRecorder$MetricsConstants;,
        Landroid/media/MediaRecorder$EventHandler;,
        Landroid/media/MediaRecorder$OnEventListener;,
        Landroid/media/MediaRecorder$OnInfoListener;,
        Landroid/media/MediaRecorder$OnErrorListener;,
        Landroid/media/MediaRecorder$VideoEncoderValues;,
        Landroid/media/MediaRecorder$VideoEncoder;,
        Landroid/media/MediaRecorder$AudioEncoderValues;,
        Landroid/media/MediaRecorder$AudioEncoder;,
        Landroid/media/MediaRecorder$OutputFormatValues;,
        Landroid/media/MediaRecorder$OutputFormat;,
        Landroid/media/MediaRecorder$VideoSource;,
        Landroid/media/MediaRecorder$SystemSource;,
        Landroid/media/MediaRecorder$Source;,
        Landroid/media/MediaRecorder$AudioSource;
    }
.end annotation


# static fields
.field public static final whitelist MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final whitelist MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final whitelist MEDIA_RECORDER_INFO_MAX_FILESIZE_APPROACHING:I = 0x322

.field public static final whitelist MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final whitelist MEDIA_RECORDER_INFO_NEXT_OUTPUT_FILE_STARTED:I = 0x323

.field public static final whitelist MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS:I = 0x3e8

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES:I = 0x3f1

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_DURATION_MS:I = 0x3eb

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I = 0x3ed

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS:I = 0x3ef

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_LIST_END:I = 0x7d0

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_LIST_START:I = 0x3e8

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS:I = 0x3ec

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME:I = 0x3e9

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS:I = 0x3f0

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_TYPE:I = 0x3ea

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS:I = 0x3ee

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaRecorder"


# instance fields
.field private greylist-max-o mChannelCount:I

.field private greylist-max-p mEventHandler:Landroid/media/MediaRecorder$EventHandler;

.field private greylist-max-p mFd:Ljava/io/FileDescriptor;

.field private greylist-max-o mFile:Ljava/io/File;

.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private greylist-max-o mNativeContext:J

.field private greylist mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private blacklist mOnEventListener:Landroid/media/MediaRecorder$OnEventListener;

.field private greylist mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private blacklist mOzoTuneFilePath:Ljava/lang/String;

.field private greylist-max-p mPath:Ljava/lang/String;

.field private greylist-max-o mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field blacklist mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

.field private greylist-max-o mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mSurface:Landroid/view/Surface;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNativeContext(Landroid/media/MediaRecorder;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/MediaRecorder;->mNativeContext:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnEventListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnEventListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRecorder;->mOnEventListener:Landroid/media/MediaRecorder$OnEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInfoListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoutingChangeListeners(Landroid/media/MediaRecorder;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Landroid/media/MediaRecorder;->native_init()V

    .line 123
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;-><init>(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaRecorder;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 1852
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1918
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2039
    new-instance v1, Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {v1, p0}, Landroid/media/AudioRecordingMonitorImpl;-><init>(Landroid/media/AudioRecordingMonitorClient;)V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    .line 172
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_2a

    .line 175
    new-instance v1, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v1, p0, p0, v2}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_3b

    .line 176
    :cond_2a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_39

    .line 177
    new-instance v1, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v1, p0, p0, v2}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_3b

    .line 179
    :cond_39
    iput-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    .line 182
    :goto_3b
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/MediaRecorder;->mChannelCount:I

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v1

    .line 188
    .local v1, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_46
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v5

    .line 188
    invoke-direct {p0, v3, v4, v5}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Parcel;)V
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_5e

    .line 190
    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 192
    .end local v1    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_5b
    iput-object v0, p0, Landroid/media/MediaRecorder;->mOzoTuneFilePath:Ljava/lang/String;

    .line 194
    return-void

    .line 186
    .restart local v1    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_5e
    move-exception v0

    if-eqz v1, :cond_69

    :try_start_61
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    throw v0
.end method

.method private native greylist-max-p _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o _setNextOutputFile(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o _setOutputFile(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native blacklist _setOzoTuneFileFD(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private greylist-max-o enableNativeRoutingCallbacksLocked(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1908
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 1909
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_enableDeviceCallback(Z)V

    .line 1911
    :cond_b
    return-void
.end method

.method public static final whitelist getAudioSourceMax()I
    .registers 1

    .line 805
    const/16 v0, 0xa

    return v0
.end method

.method public static greylist-max-o isSystemOnlyAudioSource(I)Z
    .registers 2
    .param p0, "source"    # I

    .line 506
    packed-switch p0, :pswitch_data_8

    .line 520
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 518
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist isValidAudioSource(I)Z
    .registers 2
    .param p0, "source"    # I

    .line 530
    sparse-switch p0, :sswitch_data_8

    .line 547
    const/4 v0, 0x0

    return v0

    .line 545
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0x7cd -> :sswitch_5
        0x7ce -> :sswitch_5
        0x7cf -> :sswitch_5
        0x7d0 -> :sswitch_5
    .end sparse-switch
.end method

.method private final native greylist-max-o native_enableDeviceCallback(Z)V
.end method

.method private native greylist-max-p native_finalize()V
.end method

.method private final native greylist-max-o native_getActiveMicrophones(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getPortId()I
.end method

.method private final native greylist-max-o native_getRoutedDeviceId()I
.end method

.method private static final native greylist-max-p native_init()V
.end method

.method private native greylist-max-p native_reset()V
.end method

.method private final native greylist-max-o native_setInputDevice(I)Z
.end method

.method private final native greylist-max-o native_setInputSurface(Landroid/view/Surface;)V
.end method

.method private native blacklist native_setPreferredMicrophoneDirection(I)I
.end method

.method private native blacklist native_setPreferredMicrophoneFieldDimension(F)I
.end method

.method private native blacklist native_setup(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private greylist-max-r native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "mediarecorderThis"    # Ljava/lang/Object;
    .param p2, "clientName"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2137
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 2138
    invoke-virtual {v0, p3}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 2139
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v1

    .line 2140
    .local v1, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_c
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Parcel;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_19

    .line 2141
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 2142
    .end local v1    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_18
    return-void

    .line 2139
    .restart local v1    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_19
    move-exception v2

    if-eqz v1, :cond_24

    :try_start_1c
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v2
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "mediarecorder_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 2099
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRecorder;

    .line 2100
    .local v0, "mr":Landroid/media/MediaRecorder;
    if-nez v0, :cond_c

    .line 2101
    return-void

    .line 2104
    :cond_c
    iget-object v1, v0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    if-eqz v1, :cond_19

    .line 2105
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaRecorder$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2106
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2108
    .end local v1    # "m":Landroid/os/Message;
    :cond_19
    return-void
.end method

.method private native greylist setParameter(Ljava/lang/String;)V
.end method

.method public static final greylist-max-o toLogFriendlyAudioSource(I)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # I

    .line 553
    sparse-switch p0, :sswitch_data_48

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 583
    :sswitch_17
    const-string v0, "ULTRASOUND"

    return-object v0

    .line 581
    :sswitch_1a
    const-string v0, "HOTWORD"

    return-object v0

    .line 579
    :sswitch_1d
    const-string v0, "RADIO_TUNER"

    return-object v0

    .line 575
    :sswitch_20
    const-string v0, "ECHO_REFERENCE"

    return-object v0

    .line 577
    :sswitch_23
    const-string v0, "VOICE_PERFORMANCE"

    return-object v0

    .line 573
    :sswitch_26
    const-string v0, "UNPROCESSED"

    return-object v0

    .line 571
    :sswitch_29
    const-string v0, "REMOTE_SUBMIX"

    return-object v0

    .line 569
    :sswitch_2c
    const-string v0, "VOICE_COMMUNICATION"

    return-object v0

    .line 567
    :sswitch_2f
    const-string v0, "VOICE_RECOGNITION"

    return-object v0

    .line 565
    :sswitch_32
    const-string v0, "CAMCORDER"

    return-object v0

    .line 563
    :sswitch_35
    const-string v0, "VOICE_CALL"

    return-object v0

    .line 561
    :sswitch_38
    const-string v0, "VOICE_DOWNLINK"

    return-object v0

    .line 559
    :sswitch_3b
    const-string v0, "VOICE_UPLINK"

    return-object v0

    .line 557
    :sswitch_3e
    const-string v0, "MIC"

    return-object v0

    .line 555
    :sswitch_41
    const-string v0, "DEFAULT"

    return-object v0

    .line 585
    :sswitch_44
    const-string v0, "AUDIO_SOURCE_INVALID"

    return-object v0

    nop

    :sswitch_data_48
    .sparse-switch
        -0x1 -> :sswitch_44
        0x0 -> :sswitch_41
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_38
        0x4 -> :sswitch_35
        0x5 -> :sswitch_32
        0x6 -> :sswitch_2f
        0x7 -> :sswitch_2c
        0x8 -> :sswitch_29
        0x9 -> :sswitch_26
        0xa -> :sswitch_23
        0x7cd -> :sswitch_20
        0x7ce -> :sswitch_1d
        0x7cf -> :sswitch_1a
        0x7d0 -> :sswitch_17
    .end sparse-switch
.end method


# virtual methods
.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1933
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1934
    if-eqz p1, :cond_21

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1935
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->enableNativeRoutingCallbacksLocked(Z)V

    .line 1936
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 1938
    if-eqz p2, :cond_19

    move-object v3, p2

    goto :goto_1b

    :cond_19
    iget-object v3, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    :goto_1b
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 1936
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    :cond_21
    monitor-exit v0

    .line 1941
    return-void

    .line 1940
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist disableAudioFocus()V
    .registers 3

    .line 2449
    const-string v0, "focus"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    return-void
.end method

.method public blacklist disableAudioNoiseSuppression()V
    .registers 3

    .line 2579
    const-string v0, "ns"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    return-void
.end method

.method public blacklist disableAudioWindNoiseReduction()V
    .registers 3

    .line 2522
    const-string/jumbo v0, "wnr"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    return-void
.end method

.method public blacklist disableOzoAudioCustomProcessing()V
    .registers 3

    .line 2623
    const-string v0, "custom"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    return-void
.end method

.method public blacklist enableAudioFocus()V
    .registers 3

    .line 2440
    const-string v0, "focus"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    return-void
.end method

.method public blacklist enableAudioLevelsNotification()V
    .registers 2

    .line 2545
    const-string v0, "vendor.ozoaudio.audiolevels-notification.value=on"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 2546
    return-void
.end method

.method public blacklist enableAudioNoiseSuppression(Z)V
    .registers 4
    .param p1, "smart"    # Z

    .line 2566
    const-string v0, "on"

    .line 2567
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 2568
    const-string v0, "smart"

    .line 2570
    :cond_7
    const-string v1, "ns"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    return-void
.end method

.method public blacklist enableAudioWindNoiseNotification()V
    .registers 2

    .line 2504
    const-string v0, "vendor.ozoaudio.wnr-notification.value=on"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 2505
    return-void
.end method

.method public blacklist enableAudioWindNoiseReduction()V
    .registers 3

    .line 2513
    const-string/jumbo v0, "wnr"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    return-void
.end method

.method public blacklist enableMicBlockingNotification()V
    .registers 2

    .line 2555
    const-string v0, "vendor.ozoaudio.micblocking-notification.value=on"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 2556
    return-void
.end method

.method public blacklist enableOzoAudioCustomProcessing()V
    .registers 3

    .line 2614
    const-string v0, "custom"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    return-void
.end method

.method public blacklist enableSoundSourceLocalization()V
    .registers 2

    .line 2605
    const-string v0, "vendor.ozoaudio.ssloc-notification.value=on"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 2606
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 2173
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_finalize()V

    return-void
.end method

.method public whitelist getActiveMicrophones()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MicrophoneInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1976
    .local v0, "activeMicrophones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MicrophoneInfo;>;"
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->native_getActiveMicrophones(Ljava/util/ArrayList;)I

    move-result v1

    .line 1977
    .local v1, "status":I
    if-eqz v1, :cond_2b

    .line 1978
    const/4 v2, -0x3

    const-string v3, "MediaRecorder"

    if-eq v1, v2, :cond_26

    .line 1979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveMicrophones failed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_26
    const-string v2, "getActiveMicrophones failed, fallback on routed device info"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_2b
    invoke-static {v0}, Landroid/media/AudioManager;->setPortIdForMicrophones(Ljava/util/ArrayList;)V

    .line 1986
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_62

    .line 1987
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 1988
    .local v2, "device":Landroid/media/AudioDeviceInfo;
    if-eqz v2, :cond_62

    .line 1989
    invoke-static {v2}, Landroid/media/AudioManager;->microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;

    move-result-object v3

    .line 1990
    .local v3, "microphone":Landroid/media/MicrophoneInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1991
    .local v4, "channelMapping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_44
    iget v6, p0, Landroid/media/MediaRecorder;->mChannelCount:I

    if-ge v5, v6, :cond_5c

    .line 1992
    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 1994
    .end local v5    # "i":I
    :cond_5c
    invoke-virtual {v3, v4}, Landroid/media/MicrophoneInfo;->setChannelMapping(Ljava/util/List;)V

    .line 1995
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    .end local v2    # "device":Landroid/media/AudioDeviceInfo;
    .end local v3    # "microphone":Landroid/media/MicrophoneInfo;
    .end local v4    # "channelMapping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_62
    return-object v0
.end method

.method public whitelist getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;
    .registers 2

    .line 2071
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0}, Landroid/media/AudioRecordingMonitorImpl;->getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/media/MediaRecorder;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public native whitelist getMaxAmplitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 2166
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2167
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public blacklist getPortId()I
    .registers 5

    .line 2081
    iget-wide v0, p0, Landroid/media/MediaRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 2082
    const/4 v0, 0x0

    return v0

    .line 2084
    :cond_a
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_getPortId()I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 1883
    monitor-enter p0

    .line 1884
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 1885
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 1896
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_getRoutedDeviceId()I

    move-result v0

    .line 1897
    .local v0, "deviceId":I
    if-nez v0, :cond_8

    .line 1898
    const/4 v1, 0x0

    return-object v1

    .line 1900
    :cond_8
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v1

    return-object v1
.end method

.method public native whitelist getSurface()Landroid/view/Surface;
.end method

.method public native whitelist isPrivacySensitive()Z
.end method

.method public native whitelist pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist prepare()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    const-string v1, "rw"

    if-eqz v0, :cond_1e

    .line 1358
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    .local v0, "file":Ljava/io/RandomAccessFile;
    :try_start_d
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_19

    .line 1362
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1363
    nop

    .line 1364
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    goto :goto_3d

    .line 1362
    .restart local v0    # "file":Ljava/io/RandomAccessFile;
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1363
    throw v1

    .line 1364
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    :cond_1e
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_26

    .line 1365
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_3d

    .line 1366
    :cond_26
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    if-eqz v0, :cond_49

    .line 1367
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1369
    .restart local v0    # "file":Ljava/io/RandomAccessFile;
    :try_start_31
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_44

    .line 1371
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1372
    nop

    .line 1373
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    nop

    .line 1377
    :goto_3d
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepareOzoTuneFile()V

    .line 1379
    invoke-direct {p0}, Landroid/media/MediaRecorder;->_prepare()V

    .line 1380
    return-void

    .line 1371
    .restart local v0    # "file":Ljava/io/RandomAccessFile;
    :catchall_44
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1372
    throw v1

    .line 1374
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    :cond_49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid output file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist prepareOzoTuneFile()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2678
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOzoTuneFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 2679
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Landroid/media/MediaRecorder;->mOzoTuneFilePath:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    .local v0, "file":Ljava/io/RandomAccessFile;
    :try_start_d
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->_setOzoTuneFileFD(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 2683
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 2684
    goto :goto_1d

    .line 2683
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 2684
    throw v1

    .line 2686
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public whitelist registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 2052
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioRecordingMonitorImpl;->registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 2053
    return-void
.end method

.method public native whitelist release()V
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 1951
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1952
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1953
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->enableNativeRoutingCallbacksLocked(Z)V

    .line 1956
    :cond_14
    monitor-exit v0

    .line 1957
    return-void

    .line 1956
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist reset()V
    .registers 3

    .line 1441
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_reset()V

    .line 1444
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1445
    return-void
.end method

.method public native whitelist resume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setAudioChannels(I)V
    .registers 4
    .param p1, "numChannels"    # I

    .line 1150
    if-lez p1, :cond_1b

    .line 1153
    iput p1, p0, Landroid/media/MediaRecorder;->mChannelCount:I

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-number-of-channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1155
    return-void

    .line 1151
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist setAudioEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setAudioEncodingBitRate(I)V
    .registers 4
    .param p1, "bitRate"    # I

    .line 1167
    if-lez p1, :cond_19

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1171
    return-void

    .line 1168
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAudioFocusAzimuth(D)V
    .registers 5
    .param p1, "azi"    # D

    .line 2467
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-azimuth"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    return-void
.end method

.method public blacklist setAudioFocusElevation(D)V
    .registers 5
    .param p1, "ele"    # D

    .line 2476
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-elevation"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    return-void
.end method

.method public blacklist setAudioFocusGain(D)V
    .registers 5
    .param p1, "gain"    # D

    .line 2458
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zoom"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    return-void
.end method

.method public blacklist setAudioFocusHeight(D)V
    .registers 5
    .param p1, "height"    # D

    .line 2494
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-height"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    return-void
.end method

.method public blacklist setAudioFocusWidth(D)V
    .registers 5
    .param p1, "width"    # D

    .line 2485
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-width"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    return-void
.end method

.method public whitelist setAudioProfile(Landroid/media/EncoderProfiles$AudioProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/media/EncoderProfiles$AudioProfile;

    .line 901
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getBitrate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 902
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getChannels()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 903
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getSampleRate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 904
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getCodec()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 905
    return-void
.end method

.method public whitelist setAudioSamplingRate(I)V
    .registers 4
    .param p1, "samplingRate"    # I

    .line 1135
    if-lez p1, :cond_19

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-sampling-rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1139
    return-void

    .line 1136
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist setAudioSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public greylist-max-o setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1230
    const-string v0, "MediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    return-void
.end method

.method public greylist-max-o setAuxiliaryOutputFile(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 1241
    const-string v0, "MediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(String) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return-void
.end method

.method public native whitelist setCamera(Landroid/hardware/Camera;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setCaptureRate(D)V
    .registers 5
    .param p1, "fps"    # D

    .line 947
    const-string v0, "time-lapse-enable=1"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time-lapse-fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public blacklist setInitialFocusParameters(DDD)V
    .registers 9
    .param p1, "gain"    # D
    .param p3, "azimuth"    # D
    .param p5, "elevation"    # D

    .line 2417
    const-string v0, "focus"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setOzoInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zoom"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-azimuth"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    invoke-static {p5, p6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-elevation"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    return-void
.end method

.method public blacklist setInitialFocusSectorParameters(DD)V
    .registers 7
    .param p1, "sectorWidth"    # D
    .param p3, "sectorHeight"    # D

    .line 2430
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-width"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-height"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    return-void
.end method

.method public blacklist setInitialNoiseSuppression(Z)V
    .registers 4
    .param p1, "smart"    # Z

    .line 2590
    const-string v0, "on"

    .line 2591
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 2592
    const-string v0, "smart"

    .line 2594
    :cond_7
    const-string v1, "ns"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    return-void
.end method

.method public blacklist setInitialWindNoise(Z)V
    .registers 4
    .param p1, "wnr"    # Z

    .line 2531
    const-string v0, "on"

    .line 2532
    .local v0, "value":Ljava/lang/String;
    if-nez p1, :cond_6

    .line 2533
    const-string v0, "off"

    .line 2535
    :cond_6
    const-string/jumbo v1, "wnr"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaRecorder;->setOzoInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    return-void
.end method

.method public whitelist setInputSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 262
    instance-of v0, p1, Landroid/media/MediaCodec$PersistentSurface;

    if-eqz v0, :cond_8

    .line 265
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_setInputSurface(Landroid/view/Surface;)V

    .line 266
    return-void

    .line 263
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a PersistentSurface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLocation(FF)V
    .registers 10
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .line 993
    const v0, 0x461c4000    # 10000.0f

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 994
    .local v1, "latitudex10000":I
    mul-float/2addr v0, p2

    float-to-double v5, v0

    add-double/2addr v5, v3

    double-to-int v0, v5

    .line 996
    .local v0, "longitudex10000":I
    const v2, 0xdbba0

    if-gt v1, v2, :cond_6e

    const v2, -0xdbba0

    if-lt v1, v2, :cond_6e

    .line 1000
    const v2, 0x1b7740

    if-gt v0, v2, :cond_4f

    const v2, -0x1b7740

    if-lt v0, v2, :cond_4f

    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param-geotag-latitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param-geotag-longitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1007
    return-void

    .line 1001
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Longitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1002
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 997
    .end local v2    # "msg":Ljava/lang/String;
    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 998
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 4
    .param p1, "id"    # Landroid/media/metrics/LogSessionId;

    .line 206
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iput-object p1, p0, Landroid/media/MediaRecorder;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log-session-id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public native whitelist setMaxDuration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native whitelist setMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public whitelist setNextOutputFile(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1332
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1334
    .local v0, "f":Ljava/io/RandomAccessFile;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->_setNextOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 1336
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1337
    nop

    .line 1338
    return-void

    .line 1336
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1337
    throw v1
.end method

.method public whitelist setNextOutputFile(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1295
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->_setNextOutputFile(Ljava/io/FileDescriptor;)V

    .line 1296
    return-void
.end method

.method public whitelist setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/MediaRecorder$OnErrorListener;

    .line 1502
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 1503
    return-void
.end method

.method public blacklist setOnEventListener(Landroid/media/MediaRecorder$OnEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaRecorder$OnEventListener;

    .line 1720
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnEventListener:Landroid/media/MediaRecorder$OnEventListener;

    .line 1721
    return-void
.end method

.method public whitelist setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaRecorder$OnInfoListener;

    .line 1636
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 1637
    return-void
.end method

.method public whitelist setOrientationHint(I)V
    .registers 5
    .param p1, "degrees"    # I

    .line 967
    if-eqz p1, :cond_28

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_28

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_28

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 971
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_28
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-rotation-angle-degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method public whitelist setOutputFile(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 1269
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 1270
    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 1271
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    .line 1272
    return-void
.end method

.method public whitelist setOutputFile(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1254
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 1255
    iput-object v0, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    .line 1256
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 1257
    return-void
.end method

.method public whitelist setOutputFile(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1308
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 1309
    iput-object v0, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    .line 1310
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 1311
    return-void
.end method

.method public native whitelist setOutputFormat(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public blacklist setOzoAudioParameters(Ljava/lang/String;I)V
    .registers 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "mics"    # I

    .line 2396
    const-string v0, "vendor.ozoaudio.mode.value=ozoaudio"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 2397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.ozoaudio.device.value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 2398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stagefrightrecorder.ozoaudio.input-channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 2399
    return-void
.end method

.method public native blacklist setOzoAudioRuntimeParameter(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public blacklist setOzoEffectChannelMask(I)V
    .registers 4
    .param p1, "channelMask"    # I

    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stagefrightrecorder.ozoaudio.channelmask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 2408
    return-void
.end method

.method public blacklist setOzoInitParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.ozoaudio.generic.value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 2636
    return-void
.end method

.method public blacklist setOzoRuntimeParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.ozoaudio.generic.value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOzoAudioRuntimeParameter(Ljava/lang/String;)V

    .line 2648
    return-void
.end method

.method public blacklist setOzoTuneFile(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 2668
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOzoTuneFilePath:Ljava/lang/String;

    .line 2669
    return-void
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 5
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 1864
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1865
    return v0

    .line 1867
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 1868
    .local v0, "preferredDeviceId":I
    :cond_10
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->native_setInputDevice(I)Z

    move-result v1

    .line 1869
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 1870
    monitor-enter p0

    .line 1871
    :try_start_18
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1872
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v2

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw v2

    .line 1874
    :cond_1f
    :goto_1f
    return v1
.end method

.method public whitelist setPreferredMicrophoneDirection(I)Z
    .registers 3
    .param p1, "direction"    # I

    .line 2014
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_setPreferredMicrophoneDirection(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist setPreferredMicrophoneFieldDimension(F)Z
    .registers 6
    .param p1, "zoom"    # F

    .line 2027
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    const-string v3, "Argument must fall between -1 & 1 (inclusive)"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2029
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_setPreferredMicrophoneFieldDimension(F)I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public whitelist setPreviewDisplay(Landroid/view/Surface;)V
    .registers 2
    .param p1, "sv"    # Landroid/view/Surface;

    .line 284
    iput-object p1, p0, Landroid/media/MediaRecorder;->mSurface:Landroid/view/Surface;

    .line 285
    return-void
.end method

.method public native whitelist setPrivacySensitive(Z)V
.end method

.method public whitelist setProfile(Landroid/media/CamcorderProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/media/CamcorderProfile;

    .line 871
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 872
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 873
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 874
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 875
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 876
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_28

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3ef

    if-gt v0, v1, :cond_28

    goto :goto_3c

    .line 881
    :cond_28
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 882
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 883
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 884
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 886
    :goto_3c
    return-void
.end method

.method public native whitelist setVideoEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setVideoEncodingBitRate(I)V
    .registers 4
    .param p1, "bitRate"    # I

    .line 1190
    if-lez p1, :cond_19

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1194
    return-void

    .line 1191
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoEncodingProfileLevel(II)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "level"    # I

    .line 1212
    if-ltz p1, :cond_39

    .line 1215
    if-ltz p2, :cond_31

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoder-profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoder-level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1220
    return-void

    .line 1216
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding level is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1213
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding profile is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist setVideoFrameRate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setVideoProfile(Landroid/media/EncoderProfiles$VideoProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/media/EncoderProfiles$VideoProfile;

    .line 920
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getFrameRate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 921
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 922
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getBitrate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 923
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getCodec()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 924
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getProfile()I

    move-result v0

    if-ltz v0, :cond_2e

    .line 925
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getProfile()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    .line 927
    :cond_2e
    return-void
.end method

.method public native whitelist setVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native whitelist setVideoSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native whitelist start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native whitelist stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 2061
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1}, Landroid/media/AudioRecordingMonitorImpl;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 2062
    return-void
.end method
