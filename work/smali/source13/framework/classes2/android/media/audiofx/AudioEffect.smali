.class public Landroid/media/audiofx/AudioEffect;
.super Ljava/lang/Object;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/AudioEffect$NativeEventHandler;,
        Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$Descriptor;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final whitelist ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final whitelist ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final whitelist ALREADY_EXISTS:I = -0x2

.field public static final whitelist CONTENT_TYPE_GAME:I = 0x2

.field public static final whitelist CONTENT_TYPE_MOVIE:I = 0x1

.field public static final whitelist CONTENT_TYPE_MUSIC:I = 0x0

.field public static final whitelist CONTENT_TYPE_VOICE:I = 0x3

.field public static final whitelist EFFECT_AUXILIARY:Ljava/lang/String; = "Auxiliary"

.field public static final whitelist EFFECT_INSERT:Ljava/lang/String; = "Insert"

.field public static final whitelist EFFECT_POST_PROCESSING:Ljava/lang/String; = "Post Processing"

.field public static final whitelist EFFECT_PRE_PROCESSING:Ljava/lang/String; = "Pre Processing"

.field public static final whitelist EFFECT_TYPE_AEC:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_AGC:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_HAPTIC_GENERATOR:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_NS:Ljava/util/UUID;

.field public static final blacklist EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_BAD_VALUE:I = -0x4

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x7

.field public static final whitelist ERROR_INVALID_OPERATION:I = -0x5

.field public static final whitelist ERROR_NO_INIT:I = -0x3

.field public static final whitelist ERROR_NO_MEMORY:I = -0x6

.field public static final whitelist EXTRA_AUDIO_SESSION:Ljava/lang/String; = "android.media.extra.AUDIO_SESSION"

.field public static final whitelist EXTRA_CONTENT_TYPE:Ljava/lang/String; = "android.media.extra.CONTENT_TYPE"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.extra.PACKAGE_NAME"

.field public static final greylist-max-o NATIVE_EVENT_CONTROL_STATUS:I = 0x0

.field public static final greylist-max-o NATIVE_EVENT_ENABLED_STATUS:I = 0x1

.field public static final greylist-max-o NATIVE_EVENT_PARAMETER_CHANGED:I = 0x2

.field public static final greylist-max-o STATE_INITIALIZED:I = 0x1

.field public static final greylist-max-o STATE_UNINITIALIZED:I = 0x0

.field public static final whitelist SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioEffect-JAVA"


# instance fields
.field private greylist-max-o mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

.field private greylist-max-o mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

.field private greylist-max-o mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

.field private greylist-max-o mId:I

.field private greylist-max-o mJniData:J

.field public final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private greylist-max-o mNativeAudioEffect:J

.field public greylist-max-o mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

.field private greylist-max-o mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

.field private greylist-max-o mState:I

.field private final greylist-max-o mStateLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmControlChangeStatusListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableStatusChangeListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParameterChangeListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_init()V

    .line 94
    nop

    .line 95
    const-string v0, "c2e5d5f0-94bd-4763-9cac-4e234d06839e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    .line 99
    nop

    .line 100
    const-string v0, "47382d60-ddd8-11db-bf3a-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    .line 104
    nop

    .line 105
    const-string v0, "0bed4300-ddd6-11db-8f34-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    .line 109
    nop

    .line 110
    const-string v0, "0634f220-ddd4-11db-a0fc-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    .line 114
    nop

    .line 115
    const-string v0, "37cc2c00-dddd-11db-8577-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    .line 123
    nop

    .line 124
    const-string v0, "0a8abfe0-654c-11e0-ba26-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    .line 129
    nop

    .line 130
    const-string v0, "7b491460-8d4d-11e0-bd61-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    .line 135
    nop

    .line 136
    const-string v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    .line 141
    nop

    .line 142
    const-string v0, "fe3199be-aed0-413f-87bb-11260eb63cf1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    .line 147
    nop

    .line 148
    const-string v0, "7261676f-6d75-7369-6364-28e2fd3ac39e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

    .line 155
    nop

    .line 156
    const-string v0, "1411e6d6-aecd-4021-a1cf-a6aceb0d71e5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_HAPTIC_GENERATOR:Ljava/util/UUID;

    .line 163
    nop

    .line 164
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 163
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;Landroid/media/AudioDeviceAttributes;)V
    .registers 9
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 493
    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/UUID;

    .line 494
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    .line 493
    const/4 v3, 0x0

    const/4 v4, -0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;)V

    .line 495
    return-void
.end method

.method public constructor greylist <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .registers 11
    .param p1, "type"    # Ljava/util/UUID;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "priority"    # I
    .param p4, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 475
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;)V

    .line 476
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;)V
    .registers 13
    .param p1, "type"    # Ljava/util/UUID;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "priority"    # I
    .param p4, "audioSession"    # I
    .param p5, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 501
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;Z)V

    .line 502
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;Z)V
    .registers 29
    .param p1, "type"    # Ljava/util/UUID;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "priority"    # I
    .param p4, "audioSession"    # I
    .param p5, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p6, "probe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 507
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput v0, v13, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 391
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v15, v13, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    .line 411
    const/4 v1, 0x0

    iput-object v1, v13, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 417
    iput-object v1, v13, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 423
    iput-object v1, v13, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 428
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v13, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    .line 433
    iput-object v1, v13, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    .line 508
    const/4 v12, 0x1

    new-array v11, v12, [I

    .line 509
    .local v11, "id":[I
    new-array v10, v12, [Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 511
    .local v10, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    const/4 v1, 0x0

    .line 512
    .local v1, "deviceType":I
    const-string v2, ""

    .line 513
    .local v2, "deviceAddress":Ljava/lang/String;
    if-eqz p5, :cond_51

    .line 514
    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    .line 515
    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v1

    goto :goto_48

    .line 517
    :cond_3b
    nop

    .line 518
    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 517
    invoke-static {v3, v4}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v1

    .line 520
    :goto_48
    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_55

    .line 513
    :cond_51
    move/from16 v16, v1

    move-object/from16 v17, v2

    .line 526
    .end local v1    # "deviceType":I
    .end local v2    # "deviceAddress":Ljava/lang/String;
    .local v16, "deviceType":I
    .local v17, "deviceAddress":Ljava/lang/String;
    :goto_55
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v18

    .line 528
    .local v18, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_5d
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 530
    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v19
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_111

    .line 528
    move-object/from16 v1, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object v9, v11

    move-object/from16 v20, v10

    .end local v10    # "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    .local v20, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    move-object/from16 v21, v11

    .end local v11    # "id":[I
    .local v21, "id":[I
    move-object/from16 v11, v19

    move/from16 v12, p6

    :try_start_81
    invoke-direct/range {v1 .. v12}, Landroid/media/audiofx/AudioEffect;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[I[Ljava/lang/Object;Landroid/os/Parcel;Z)I

    move-result v1
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_10e

    .line 531
    .local v1, "initResult":I
    if-eqz v18, :cond_8a

    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 532
    .end local v18    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_8a
    if-eqz v1, :cond_fa

    const/4 v2, -0x2

    if-eq v1, v2, :cond_fa

    .line 533
    const-string v0, "AudioEffect-JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when initializing AudioEffect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    packed-switch v1, :pswitch_data_124

    .line 543
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot initialize effect engine for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :pswitch_d3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Effect type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :pswitch_f2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Effect library not loaded"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_fa
    aget v2, v21, v0

    iput v2, v13, Landroid/media/audiofx/AudioEffect;->mId:I

    .line 549
    aget-object v0, v20, v0

    iput-object v0, v13, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 550
    if-nez p6, :cond_10d

    .line 551
    monitor-enter v15

    .line 552
    const/4 v0, 0x1

    :try_start_106
    iput v0, v13, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 553
    monitor-exit v15

    goto :goto_10d

    :catchall_10a
    move-exception v0

    monitor-exit v15
    :try_end_10c
    .catchall {:try_start_106 .. :try_end_10c} :catchall_10a

    throw v0

    .line 555
    :cond_10d
    :goto_10d
    return-void

    .line 526
    .end local v1    # "initResult":I
    .restart local v18    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_10e
    move-exception v0

    move-object v1, v0

    goto :goto_117

    .end local v20    # "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    .end local v21    # "id":[I
    .restart local v10    # "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    .restart local v11    # "id":[I
    :catchall_111
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object v1, v0

    .end local v10    # "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    .end local v11    # "id":[I
    .restart local v20    # "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    .restart local v21    # "id":[I
    :goto_117
    if-eqz v18, :cond_122

    :try_start_119
    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_11d

    goto :goto_122

    :catchall_11d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_122
    :goto_122
    throw v1

    nop

    :pswitch_data_124
    .packed-switch -0x5
        :pswitch_f2
        :pswitch_d3
    .end packed-switch
.end method

.method public static greylist-max-o byteArrayToFloat([B)F
    .registers 2
    .param p0, "valueBuf"    # [B

    .line 1530
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToFloat([BI)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o byteArrayToFloat([BI)F
    .registers 4
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .line 1538
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1539
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1540
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    return v1
.end method

.method public static blacklist byteArrayToInt([B)I
    .registers 2
    .param p0, "valueBuf"    # [B

    .line 1471
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o byteArrayToInt([BI)I
    .registers 4
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .line 1479
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1480
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1481
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public static blacklist byteArrayToShort([B)S
    .registers 2
    .param p0, "valueBuf"    # [B

    .line 1501
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    return v0
.end method

.method public static greylist-max-o byteArrayToShort([BI)S
    .registers 4
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .line 1508
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1509
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1510
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method

.method public static varargs blacklist concatArrays([[B)[B
    .registers 9
    .param p0, "arrays"    # [[B

    .line 1558
    const/4 v0, 0x0

    .line 1559
    .local v0, "len":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_d

    aget-object v4, p0, v3

    .line 1560
    .local v4, "a":[B
    array-length v5, v4

    add-int/2addr v0, v5

    .line 1559
    .end local v4    # "a":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1562
    :cond_d
    new-array v1, v0, [B

    .line 1564
    .local v1, "b":[B
    const/4 v3, 0x0

    .line 1565
    .local v3, "offs":I
    array-length v4, p0

    move v5, v2

    :goto_12
    if-ge v5, v4, :cond_1f

    aget-object v6, p0, v5

    .line 1566
    .local v6, "a":[B
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1567
    array-length v7, v6

    add-int/2addr v3, v7

    .line 1565
    .end local v6    # "a":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1569
    :cond_1f
    return-object v1
.end method

.method private greylist-max-o createNativeEventHandler()V
    .registers 3

    .line 1120
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_f

    .line 1121
    new-instance v0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_21

    .line 1122
    :cond_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1e

    .line 1123
    new-instance v0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_21

    .line 1125
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    .line 1127
    :goto_21
    return-void
.end method

.method public static greylist-max-o floatToByteArray(F)[B
    .registers 3
    .param p0, "value"    # F

    .line 1548
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1549
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1550
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1551
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist intToByteArray(I)[B
    .registers 3
    .param p0, "value"    # I

    .line 1490
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1491
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1492
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1493
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist isEffectSupportedForDevice(Ljava/util/UUID;Landroid/media/AudioDeviceAttributes;)Z
    .registers 10
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 570
    :try_start_0
    new-instance v7, Landroid/media/audiofx/AudioEffect;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 571
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/UUID;

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 572
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;Z)V

    move-object v0, v7

    .line 573
    .local v0, "fx":Landroid/media/audiofx/AudioEffect;
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 574
    const/4 v1, 0x1

    return v1

    .line 575
    .end local v0    # "fx":Landroid/media/audiofx/AudioEffect;
    :catch_1f
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isEffectTypeAvailable(Ljava/util/UUID;)Z
    .registers 5
    .param p0, "type"    # Ljava/util/UUID;

    .line 644
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 645
    .local v0, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 646
    return v1

    .line 649
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_1b

    .line 650
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v3, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 651
    const/4 v1, 0x1

    return v1

    .line 649
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 654
    .end local v2    # "i":I
    :cond_1b
    return v1
.end method

.method public static blacklist isError(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 1463
    if-gez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private final native greylist-max-o native_command(II[BI[B)I
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getEnabled()Z
.end method

.method private final native greylist-max-o native_getParameter(I[BI[B)I
.end method

.method private final native greylist-max-o native_hasControl()Z
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private static native greylist-max-o native_query_effects()[Ljava/lang/Object;
.end method

.method private static native greylist-max-o native_query_pre_processing(I)[Ljava/lang/Object;
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist-max-o native_setEnabled(Z)I
.end method

.method private final native greylist-max-o native_setParameter(I[BI[B)I
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[I[Ljava/lang/Object;Landroid/os/Parcel;Z)I
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "effect_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1377
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    .line 1378
    .local v0, "effect":Landroid/media/audiofx/AudioEffect;
    if-nez v0, :cond_c

    .line 1379
    return-void

    .line 1381
    :cond_c
    iget-object v1, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-eqz v1, :cond_19

    .line 1382
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1384
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1387
    .end local v1    # "m":Landroid/os/Message;
    :cond_19
    return-void
.end method

.method public static whitelist queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .registers 1

    .line 620
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_query_effects()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static greylist-max-o queryPreProcessings(I)[Landroid/media/audiofx/AudioEffect$Descriptor;
    .registers 2
    .param p0, "audioSession"    # I

    .line 633
    invoke-static {p0}, Landroid/media/audiofx/AudioEffect;->native_query_pre_processing(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static blacklist shortToByteArray(S)[B
    .registers 4
    .param p0, "value"    # S

    .line 1519
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1520
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1521
    move v1, p0

    .line 1522
    .local v1, "sValue":S
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1523
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public greylist checkState(Ljava/lang/String;)V
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1432
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1433
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1437
    monitor-exit v0

    .line 1438
    return-void

    .line 1434
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called on uninitialized AudioEffect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/AudioEffect;
    .end local p1    # "methodName":Ljava/lang/String;
    throw v1

    .line 1437
    .restart local p0    # "this":Landroid/media/audiofx/AudioEffect;
    .restart local p1    # "methodName":Ljava/lang/String;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public greylist-max-o checkStatus(I)V
    .registers 4
    .param p1, "status"    # I

    .line 1444
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->isError(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1445
    packed-switch p1, :pswitch_data_22

    .line 1453
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioEffect: set/get parameter error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioEffect: bad parameter value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :pswitch_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AudioEffect: invalid parameter operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1456
    :cond_21
    return-void

    :pswitch_data_22
    .packed-switch -0x5
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method

.method public greylist-max-p command(I[B[B)I
    .registers 11
    .param p1, "cmdCode"    # I
    .param p2, "command"    # [B
    .param p3, "reply"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1021
    const-string v0, "command()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 1022
    array-length v3, p2

    array-length v5, p3

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/audiofx/AudioEffect;->native_command(II[BI[B)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 594
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_finalize()V

    .line 595
    return-void
.end method

.method public whitelist getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 604
    const-string v0, "getDescriptor()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public whitelist getEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1049
    const-string v0, "getEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 1050
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_getEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist getId()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1038
    const-string v0, "getId()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 1039
    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    return v0
.end method

.method public blacklist getParameter(I[B)I
    .registers 5
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 850
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 852
    .local v0, "p":[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public blacklist getParameter(I[I)I
    .registers 10
    .param p1, "param"    # I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 866
    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 867
    const/4 v0, -0x4

    return v0

    .line 869
    :cond_6
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 871
    .local v0, "p":[B
    array-length v1, p2

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    .line 873
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v3

    .line 875
    .local v3, "status":I
    const/16 v4, 0x8

    if-eq v3, v2, :cond_1c

    if-ne v3, v4, :cond_1a

    goto :goto_1c

    .line 882
    :cond_1a
    const/4 v2, -0x1

    .end local v3    # "status":I
    .local v2, "status":I
    goto :goto_2e

    .line 876
    .end local v2    # "status":I
    .restart local v3    # "status":I
    :cond_1c
    :goto_1c
    const/4 v5, 0x0

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v6

    aput v6, p2, v5

    .line 877
    if-ne v3, v4, :cond_2c

    .line 878
    const/4 v4, 0x1

    invoke-static {v1, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    aput v5, p2, v4

    .line 880
    :cond_2c
    div-int/lit8 v2, v3, 0x4

    .line 884
    .end local v3    # "status":I
    .restart local v2    # "status":I
    :goto_2e
    return v2
.end method

.method public blacklist getParameter(I[S)I
    .registers 10
    .param p1, "param"    # I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 898
    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 899
    const/4 v0, -0x4

    return v0

    .line 901
    :cond_6
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 903
    .local v0, "p":[B
    array-length v2, p2

    mul-int/2addr v2, v1

    new-array v2, v2, [B

    .line 905
    .local v2, "v":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v3

    .line 907
    .local v3, "status":I
    const/4 v4, 0x4

    if-eq v3, v1, :cond_1a

    if-ne v3, v4, :cond_18

    goto :goto_1a

    .line 914
    :cond_18
    const/4 v1, -0x1

    .end local v3    # "status":I
    .local v1, "status":I
    goto :goto_2c

    .line 908
    .end local v1    # "status":I
    .restart local v3    # "status":I
    :cond_1a
    :goto_1a
    const/4 v5, 0x0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v6

    aput-short v6, p2, v5

    .line 909
    if-ne v3, v4, :cond_2a

    .line 910
    const/4 v4, 0x1

    invoke-static {v2, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v5

    aput-short v5, p2, v4

    .line 912
    :cond_2a
    div-int/lit8 v1, v3, 0x2

    .line 916
    .end local v3    # "status":I
    .restart local v1    # "status":I
    :goto_2c
    return v1
.end method

.method public blacklist getParameter([B[B)I
    .registers 5
    .param p1, "param"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 836
    const-string v0, "getParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 837
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_getParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getParameter([I[B)I
    .registers 8
    .param p1, "param"    # [I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 999
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 1000
    const/4 v0, -0x4

    return v0

    .line 1002
    :cond_6
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 1003
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_21

    .line 1004
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 1005
    .local v3, "p2":[B
    new-array v1, v1, [[B

    aput-object v2, v1, v0

    aput-object v3, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 1008
    .end local v3    # "p2":[B
    :cond_21
    invoke-virtual {p0, v2, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getParameter([I[I)I
    .registers 11
    .param p1, "param"    # [I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 930
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_46

    array-length v0, p2

    if-le v0, v1, :cond_8

    goto :goto_46

    .line 933
    :cond_8
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 934
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_23

    .line 935
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 936
    .local v3, "p2":[B
    new-array v1, v1, [[B

    aput-object v2, v1, v0

    aput-object v3, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 938
    .end local v3    # "p2":[B
    :cond_23
    array-length v1, p2

    const/4 v3, 0x4

    mul-int/2addr v1, v3

    new-array v1, v1, [B

    .line 940
    .local v1, "v":[B
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v5

    .line 942
    .local v5, "status":I
    const/16 v6, 0x8

    if-eq v5, v3, :cond_35

    if-ne v5, v6, :cond_33

    goto :goto_35

    .line 949
    :cond_33
    const/4 v0, -0x1

    .end local v5    # "status":I
    .local v0, "status":I
    goto :goto_45

    .line 943
    .end local v0    # "status":I
    .restart local v5    # "status":I
    :cond_35
    :goto_35
    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v7

    aput v7, p2, v0

    .line 944
    if-ne v5, v6, :cond_43

    .line 945
    invoke-static {v1, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    aput v0, p2, v4

    .line 947
    :cond_43
    div-int/lit8 v0, v5, 0x4

    .line 951
    .end local v5    # "status":I
    .restart local v0    # "status":I
    :goto_45
    return v0

    .line 931
    .end local v0    # "status":I
    .end local v1    # "v":[B
    .end local v2    # "p":[B
    :cond_46
    :goto_46
    const/4 v0, -0x4

    return v0
.end method

.method public blacklist getParameter([I[S)I
    .registers 11
    .param p1, "param"    # [I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 965
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_44

    array-length v0, p2

    if-le v0, v1, :cond_8

    goto :goto_44

    .line 968
    :cond_8
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 969
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_23

    .line 970
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 971
    .local v3, "p2":[B
    new-array v5, v1, [[B

    aput-object v2, v5, v0

    aput-object v3, v5, v4

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 973
    .end local v3    # "p2":[B
    :cond_23
    array-length v3, p2

    mul-int/2addr v3, v1

    new-array v3, v3, [B

    .line 975
    .local v3, "v":[B
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v5

    .line 977
    .local v5, "status":I
    const/4 v6, 0x4

    if-eq v5, v1, :cond_33

    if-ne v5, v6, :cond_31

    goto :goto_33

    .line 984
    :cond_31
    const/4 v0, -0x1

    .end local v5    # "status":I
    .local v0, "status":I
    goto :goto_43

    .line 978
    .end local v0    # "status":I
    .restart local v5    # "status":I
    :cond_33
    :goto_33
    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v7

    aput-short v7, p2, v0

    .line 979
    if-ne v5, v6, :cond_41

    .line 980
    invoke-static {v3, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    aput-short v0, p2, v4

    .line 982
    :cond_41
    div-int/lit8 v0, v5, 0x2

    .line 986
    .end local v5    # "status":I
    .restart local v0    # "status":I
    :goto_43
    return v0

    .line 966
    .end local v0    # "status":I
    .end local v2    # "p":[B
    .end local v3    # "v":[B
    :cond_44
    :goto_44
    const/4 v0, -0x4

    return v0
.end method

.method public whitelist hasControl()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1061
    const-string v0, "hasControl()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 1062
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_hasControl()Z

    move-result v0

    return v0
.end method

.method public whitelist release()V
    .registers 3

    .line 586
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_3
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_release()V

    .line 588
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 589
    monitor-exit v0

    .line 590
    return-void

    .line 589
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 1090
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 1092
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 1093
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_f

    .line 1094
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 1096
    :cond_f
    return-void

    .line 1092
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 1075
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 1077
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 1078
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_f

    .line 1079
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 1081
    :cond_f
    return-void

    .line 1077
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist setEnabled(Z)I
    .registers 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 674
    const-string v0, "setEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 675
    invoke-direct {p0, p1}, Landroid/media/audiofx/AudioEffect;->native_setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public blacklist setParameter(II)I
    .registers 6
    .param p1, "param"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 710
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 711
    .local v0, "p":[B
    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 712
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public blacklist setParameter(IS)I
    .registers 6
    .param p1, "param"    # I
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 725
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 726
    .local v0, "p":[B
    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v1

    .line 727
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public blacklist setParameter(I[B)I
    .registers 5
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 740
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 741
    .local v0, "p":[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v1

    return v1
.end method

.method public blacklist setParameter([B[B)I
    .registers 5
    .param p1, "param"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 698
    const-string v0, "setParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 699
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_setParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public blacklist setParameter([I[B)I
    .registers 8
    .param p1, "param"    # [I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 807
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 808
    const/4 v0, -0x4

    return v0

    .line 810
    :cond_6
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 811
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_21

    .line 812
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 813
    .local v3, "p2":[B
    new-array v1, v1, [[B

    aput-object v2, v1, v0

    aput-object v3, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 815
    .end local v3    # "p2":[B
    :cond_21
    invoke-virtual {p0, v2, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v0

    return v0
.end method

.method public blacklist setParameter([I[I)I
    .registers 9
    .param p1, "param"    # [I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 754
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_41

    array-length v0, p2

    if-le v0, v1, :cond_8

    goto :goto_41

    .line 757
    :cond_8
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 758
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_23

    .line 759
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 760
    .local v3, "p2":[B
    new-array v5, v1, [[B

    aput-object v2, v5, v0

    aput-object v3, v5, v4

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 762
    .end local v3    # "p2":[B
    :cond_23
    aget v3, p2, v0

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 763
    .local v3, "v":[B
    array-length v5, p2

    if-le v5, v4, :cond_3c

    .line 764
    aget v5, p2, v4

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v5

    .line 765
    .local v5, "v2":[B
    new-array v1, v1, [[B

    aput-object v3, v1, v0

    aput-object v5, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v3

    .line 767
    .end local v5    # "v2":[B
    :cond_3c
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v0

    return v0

    .line 755
    .end local v2    # "p":[B
    .end local v3    # "v":[B
    :cond_41
    :goto_41
    const/4 v0, -0x4

    return v0
.end method

.method public greylist setParameter([I[S)I
    .registers 9
    .param p1, "param"    # [I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 780
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_41

    array-length v0, p2

    if-le v0, v1, :cond_8

    goto :goto_41

    .line 783
    :cond_8
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 784
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_23

    .line 785
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 786
    .local v3, "p2":[B
    new-array v5, v1, [[B

    aput-object v2, v5, v0

    aput-object v3, v5, v4

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 789
    .end local v3    # "p2":[B
    :cond_23
    aget-short v3, p2, v0

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v3

    .line 790
    .local v3, "v":[B
    array-length v5, p2

    if-le v5, v4, :cond_3c

    .line 791
    aget-short v5, p2, v4

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v5

    .line 792
    .local v5, "v2":[B
    new-array v1, v1, [[B

    aput-object v3, v1, v0

    aput-object v5, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v3

    .line 794
    .end local v5    # "v2":[B
    :cond_3c
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v0

    return v0

    .line 781
    .end local v2    # "p":[B
    .end local v3    # "v":[B
    :cond_41
    :goto_41
    const/4 v0, -0x4

    return v0
.end method

.method public blacklist setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 1106
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 1108
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 1109
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_f

    .line 1110
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 1112
    :cond_f
    return-void

    .line 1108
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method
