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
        Landroid/media/MediaRecorder$EventHandler;,
        Landroid/media/MediaRecorder$AudioSource;,
        Landroid/media/MediaRecorder$OnErrorListener;,
        Landroid/media/MediaRecorder$OnInfoListener;,
        Landroid/media/MediaRecorder$MetricsConstants;,
        Landroid/media/MediaRecorder$VideoEncoderValues;,
        Landroid/media/MediaRecorder$VideoEncoder;,
        Landroid/media/MediaRecorder$AudioEncoderValues;,
        Landroid/media/MediaRecorder$AudioEncoder;,
        Landroid/media/MediaRecorder$OutputFormatValues;,
        Landroid/media/MediaRecorder$OutputFormat;,
        Landroid/media/MediaRecorder$VideoSource;,
        Landroid/media/MediaRecorder$SystemSource;,
        Landroid/media/MediaRecorder$Source;
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

.field private greylist mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

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

    .line 112
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Landroid/media/MediaRecorder;->native_init()V

    .line 114
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;-><init>(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 5

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaRecorder;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 1669
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1768
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 1889
    new-instance v1, Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {v1, p0}, Landroid/media/AudioRecordingMonitorImpl;-><init>(Landroid/media/AudioRecordingMonitorClient;)V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    .line 157
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 160
    new-instance v0, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_39

    .line 161
    :cond_29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 162
    new-instance v0, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_39

    .line 164
    :cond_37
    iput-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    .line 167
    :goto_39
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRecorder;->mChannelCount:I

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v0

    .line 173
    :try_start_44
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_51

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_55

    .line 175
    :cond_51
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object p1

    .line 176
    :goto_55
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v2

    .line 176
    invoke-direct {p0, v1, p1, v2}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Parcel;)V
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_67

    .line 178
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 179
    :cond_66
    return-void

    .line 171
    :catchall_67
    move-exception p1

    if-eqz v0, :cond_72

    :try_start_6a
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_72
    :goto_72
    throw p1
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

.method private greylist-max-o enableNativeRoutingCallbacksLocked(Z)V
    .registers 3

    .line 1758
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 1759
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_enableDeviceCallback(Z)V

    .line 1761
    :cond_b
    return-void
.end method

.method public static final whitelist getAudioSourceMax()I
    .registers 1

    .line 769
    const/16 v0, 0xa

    return v0
.end method

.method private blacklist getRoutedDevicesInternal()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1710
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_getRoutedDeviceIds()[I

    move-result-object v1

    .line 1711
    if-eqz v1, :cond_23

    array-length v2, v1

    if-nez v2, :cond_f

    goto :goto_23

    .line 1715
    :cond_f
    const/4 v2, 0x0

    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_22

    .line 1716
    aget v3, v1, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 1718
    if-eqz v3, :cond_1f

    .line 1719
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1715
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1722
    :cond_22
    return-object v0

    .line 1712
    :cond_23
    :goto_23
    return-object v0
.end method

.method public static greylist-max-o isSystemOnlyAudioSource(I)Z
    .registers 1

    .line 475
    packed-switch p0, :pswitch_data_8

    .line 489
    :pswitch_3
    const/4 p0, 0x1

    return p0

    .line 487
    :pswitch_5
    const/4 p0, 0x0

    return p0

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
    .registers 1

    .line 499
    sparse-switch p0, :sswitch_data_8

    .line 516
    const/4 p0, 0x0

    return p0

    .line 514
    :sswitch_5
    const/4 p0, 0x1

    return p0

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

.method private native blacklist native_getRoutedDeviceIds()[I
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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1987
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1988
    invoke-virtual {v0, p3}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object p3

    .line 1989
    invoke-virtual {p3}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object p3

    .line 1990
    :try_start_c
    invoke-virtual {p3}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Parcel;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_19

    .line 1991
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 1992
    :cond_18
    return-void

    .line 1989
    :catchall_19
    move-exception p1

    if-eqz p3, :cond_24

    :try_start_1c
    invoke-virtual {p3}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw p1
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 6

    .line 1949
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaRecorder;

    .line 1950
    if-nez p0, :cond_b

    .line 1951
    return-void

    .line 1954
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    if-eqz v0, :cond_1a

    .line 1955
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaRecorder$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1956
    iget-object p0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1958
    :cond_1a
    return-void
.end method

.method private native greylist setParameter(Ljava/lang/String;)V
.end method

.method public static final greylist-max-o toLogFriendlyAudioSource(I)Ljava/lang/String;
    .registers 3

    .line 522
    sparse-switch p0, :sswitch_data_48

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 552
    :sswitch_17
    const-string p0, "ULTRASOUND"

    return-object p0

    .line 550
    :sswitch_1a
    const-string p0, "HOTWORD"

    return-object p0

    .line 548
    :sswitch_1d
    const-string p0, "RADIO_TUNER"

    return-object p0

    .line 544
    :sswitch_20
    const-string p0, "ECHO_REFERENCE"

    return-object p0

    .line 546
    :sswitch_23
    const-string p0, "VOICE_PERFORMANCE"

    return-object p0

    .line 542
    :sswitch_26
    const-string p0, "UNPROCESSED"

    return-object p0

    .line 540
    :sswitch_29
    const-string p0, "REMOTE_SUBMIX"

    return-object p0

    .line 538
    :sswitch_2c
    const-string p0, "VOICE_COMMUNICATION"

    return-object p0

    .line 536
    :sswitch_2f
    const-string p0, "VOICE_RECOGNITION"

    return-object p0

    .line 534
    :sswitch_32
    const-string p0, "CAMCORDER"

    return-object p0

    .line 532
    :sswitch_35
    const-string p0, "VOICE_CALL"

    return-object p0

    .line 530
    :sswitch_38
    const-string p0, "VOICE_DOWNLINK"

    return-object p0

    .line 528
    :sswitch_3b
    const-string p0, "VOICE_UPLINK"

    return-object p0

    .line 526
    :sswitch_3e
    const-string p0, "MIC"

    return-object p0

    .line 524
    :sswitch_41
    const-string p0, "DEFAULT"

    return-object p0

    .line 554
    :sswitch_44
    const-string p0, "AUDIO_SOURCE_INVALID"

    return-object p0

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
    .registers 6

    .line 1783
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1784
    if-eqz p1, :cond_20

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1785
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->enableNativeRoutingCallbacksLocked(Z)V

    .line 1786
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 1788
    if-eqz p2, :cond_18

    goto :goto_1a

    :cond_18
    iget-object p2, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    :goto_1a
    invoke-direct {v2, p0, p1, p2}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 1786
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    :cond_20
    monitor-exit v0

    .line 1791
    return-void

    .line 1790
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 2023
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_finalize()V

    return-void
.end method

.method public whitelist getActiveMicrophones()Ljava/util/List;
    .registers 8
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

    .line 1825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1826
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->native_getActiveMicrophones(Ljava/util/ArrayList;)I

    move-result v1

    .line 1827
    if-eqz v1, :cond_2b

    .line 1828
    const/4 v2, -0x3

    const-string v3, "MediaRecorder"

    if-eq v1, v2, :cond_26

    .line 1829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveMicrophones failed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_26
    const-string v1, "getActiveMicrophones failed, fallback on routed device info"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    :cond_2b
    invoke-static {v0}, Landroid/media/AudioManager;->setPortIdForMicrophones(Ljava/util/ArrayList;)V

    .line 1836
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_62

    .line 1837
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 1838
    if-eqz v1, :cond_62

    .line 1839
    invoke-static {v1}, Landroid/media/AudioManager;->microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;

    move-result-object v1

    .line 1840
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1841
    const/4 v3, 0x0

    :goto_44
    iget v4, p0, Landroid/media/MediaRecorder;->mChannelCount:I

    if-ge v3, v4, :cond_5c

    .line 1842
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1841
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 1844
    :cond_5c
    invoke-virtual {v1, v2}, Landroid/media/MicrophoneInfo;->setChannelMapping(Ljava/util/List;)V

    .line 1845
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1848
    :cond_62
    return-object v0
.end method

.method public whitelist getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;
    .registers 2

    .line 1921
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0}, Landroid/media/AudioRecordingMonitorImpl;->getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 203
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

    .line 2016
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2017
    return-object v0
.end method

.method public blacklist getPortId()I
    .registers 5

    .line 1931
    iget-wide v0, p0, Landroid/media/MediaRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1932
    const/4 v0, 0x0

    return v0

    .line 1934
    :cond_a
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_getPortId()I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 1700
    monitor-enter p0

    .line 1701
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 1702
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 1733
    invoke-direct {p0}, Landroid/media/MediaRecorder;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    .line 1734
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1735
    const/4 v0, 0x0

    return-object v0

    .line 1737
    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method public whitelist getRoutedDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1750
    invoke-direct {p0}, Landroid/media/MediaRecorder;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 1322
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    const-string v1, "rw"

    if-eqz v0, :cond_1e

    .line 1323
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :try_start_d
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_19

    .line 1327
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1328
    nop

    .line 1329
    goto :goto_3f

    .line 1327
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1328
    throw v1

    .line 1329
    :cond_1e
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_28

    .line 1330
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_3f

    .line 1331
    :cond_28
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    if-eqz v0, :cond_48

    .line 1332
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1334
    :try_start_33
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    .line 1336
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1337
    nop

    .line 1338
    nop

    .line 1342
    :goto_3f
    invoke-direct {p0}, Landroid/media/MediaRecorder;->_prepare()V

    .line 1343
    return-void

    .line 1336
    :catchall_43
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1337
    throw v1

    .line 1339
    :cond_48
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid output file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 4

    .line 1902
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioRecordingMonitorImpl;->registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 1903
    return-void
.end method

.method public native whitelist release()V
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4

    .line 1801
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1802
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1803
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->enableNativeRoutingCallbacksLocked(Z)V

    .line 1806
    :cond_14
    monitor-exit v0

    .line 1807
    return-void

    .line 1806
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist reset()V
    .registers 3

    .line 1405
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_reset()V

    .line 1408
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1409
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

    .line 1114
    if-lez p1, :cond_1b

    .line 1117
    iput p1, p0, Landroid/media/MediaRecorder;->mChannelCount:I

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-number-of-channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1119
    return-void

    .line 1115
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of channels is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 1131
    if-lez p1, :cond_19

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1135
    return-void

    .line 1132
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Audio encoding bit rate is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setAudioProfile(Landroid/media/EncoderProfiles$AudioProfile;)V
    .registers 3

    .line 865
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getBitrate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 866
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getChannels()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 867
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getSampleRate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 868
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getCodec()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 869
    return-void
.end method

.method public whitelist setAudioSamplingRate(I)V
    .registers 4

    .line 1099
    if-lez p1, :cond_19

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-sampling-rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1103
    return-void

    .line 1100
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Audio sampling rate is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native whitelist setAudioSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public greylist-max-o setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 1194
    const-string p1, "MediaRecorder"

    const-string v0, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void
.end method

.method public greylist-max-o setAuxiliaryOutputFile(Ljava/lang/String;)V
    .registers 3

    .line 1205
    const-string p1, "MediaRecorder"

    const-string v0, "setAuxiliaryOutputFile(String) is no longer supported."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    return-void
.end method

.method public native whitelist setCamera(Landroid/hardware/Camera;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setCaptureRate(D)V
    .registers 5

    .line 911
    const-string v0, "time-lapse-enable=1"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time-lapse-fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method public whitelist setInputSurface(Landroid/view/Surface;)V
    .registers 3

    .line 247
    instance-of v0, p1, Landroid/media/MediaCodec$PersistentSurface;

    if-eqz v0, :cond_8

    .line 250
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_setInputSurface(Landroid/view/Surface;)V

    .line 251
    return-void

    .line 248
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not a PersistentSurface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setLocation(FF)V
    .registers 10

    .line 957
    const v0, 0x461c4000    # 10000.0f

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 958
    mul-float/2addr v0, p2

    float-to-double v5, v0

    add-double/2addr v5, v3

    double-to-int v0, v5

    .line 960
    const v2, 0xdbba0

    if-gt v1, v2, :cond_6e

    const v2, -0xdbba0

    if-lt v1, v2, :cond_6e

    .line 964
    const p1, 0x1b7740

    if-gt v0, p1, :cond_4f

    const p1, -0x1b7740

    if-lt v0, p1, :cond_4f

    .line 969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "param-geotag-latitude="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 970
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "param-geotag-longitude="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 971
    return-void

    .line 965
    :cond_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Longitude: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " out of range"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 966
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 961
    :cond_6e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Latitude: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " out of range."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 962
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 4

    .line 191
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iput-object p1, p0, Landroid/media/MediaRecorder;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log-session-id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 194
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1296
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1298
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->_setNextOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 1300
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1301
    nop

    .line 1302
    return-void

    .line 1300
    :catchall_13
    move-exception p1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1301
    throw p1
.end method

.method public whitelist setNextOutputFile(Ljava/io/FileDescriptor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->_setNextOutputFile(Ljava/io/FileDescriptor;)V

    .line 1260
    return-void
.end method

.method public whitelist setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .registers 2

    .line 1466
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 1467
    return-void
.end method

.method public whitelist setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .registers 2

    .line 1600
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 1601
    return-void
.end method

.method public whitelist setOrientationHint(I)V
    .registers 5

    .line 931
    if-eqz p1, :cond_28

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_28

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_28

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 935
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_28
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-rotation-angle-degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public whitelist setOutputFile(Ljava/io/File;)V
    .registers 3

    .line 1233
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 1234
    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 1235
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    .line 1236
    return-void
.end method

.method public whitelist setOutputFile(Ljava/io/FileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1218
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 1219
    iput-object v0, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    .line 1220
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 1221
    return-void
.end method

.method public whitelist setOutputFile(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1272
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 1273
    iput-object v0, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    .line 1274
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 1275
    return-void
.end method

.method public native whitelist setOutputFormat(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 4

    .line 1681
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1682
    return v0

    .line 1684
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 1685
    :cond_10
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->native_setInputDevice(I)Z

    move-result v0

    .line 1686
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 1687
    monitor-enter p0

    .line 1688
    :try_start_18
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1689
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw p1

    .line 1691
    :cond_1f
    :goto_1f
    return v0
.end method

.method public whitelist setPreferredMicrophoneDirection(I)Z
    .registers 2

    .line 1864
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_setPreferredMicrophoneDirection(I)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist setPreferredMicrophoneFieldDimension(F)Z
    .registers 6

    .line 1877
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

    .line 1879
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_setPreferredMicrophoneFieldDimension(F)I

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public whitelist setPreviewDisplay(Landroid/view/Surface;)V
    .registers 2

    .line 269
    iput-object p1, p0, Landroid/media/MediaRecorder;->mSurface:Landroid/view/Surface;

    .line 270
    return-void
.end method

.method public native whitelist setPrivacySensitive(Z)V
.end method

.method public whitelist setProfile(Landroid/media/CamcorderProfile;)V
    .registers 4

    .line 835
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 836
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 837
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 838
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 839
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 840
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_28

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3ef

    if-gt v0, v1, :cond_28

    goto :goto_3c

    .line 845
    :cond_28
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 846
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 847
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 848
    iget p1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 850
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

    .line 1154
    if-lez p1, :cond_19

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1158
    return-void

    .line 1155
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Video encoding bit rate is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setVideoEncodingProfileLevel(II)V
    .registers 5

    .line 1176
    if-ltz p1, :cond_39

    .line 1179
    if-ltz p2, :cond_31

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoder-profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "video-param-encoder-level="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1184
    return-void

    .line 1180
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Video encoding level is not positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1177
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Video encoding profile is not positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 884
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getFrameRate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 885
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 886
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getBitrate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 887
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getCodec()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 888
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getProfile()I

    move-result v0

    if-ltz v0, :cond_2e

    .line 889
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getProfile()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    .line 891
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

    .line 1911
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1}, Landroid/media/AudioRecordingMonitorImpl;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 1912
    return-void
.end method
