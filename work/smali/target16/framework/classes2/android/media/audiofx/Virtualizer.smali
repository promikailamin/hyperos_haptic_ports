.class public Landroid/media/audiofx/Virtualizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Virtualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;,
        Landroid/media/audiofx/Virtualizer$BaseParameterListener;,
        Landroid/media/audiofx/Virtualizer$Settings;,
        Landroid/media/audiofx/Virtualizer$ForceVirtualizationMode;,
        Landroid/media/audiofx/Virtualizer$VirtualizationMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o PARAM_FORCE_VIRTUALIZATION_MODE:I = 0x3

.field public static final whitelist PARAM_STRENGTH:I = 0x1

.field public static final whitelist PARAM_STRENGTH_SUPPORTED:I = 0x0

.field public static final greylist-max-o PARAM_VIRTUALIZATION_MODE:I = 0x4

.field public static final greylist-max-o PARAM_VIRTUAL_SPEAKER_ANGLES:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Virtualizer"

.field public static final whitelist VIRTUALIZATION_MODE_AUTO:I = 0x1

.field public static final whitelist VIRTUALIZATION_MODE_BINAURAL:I = 0x2

.field public static final whitelist VIRTUALIZATION_MODE_OFF:I = 0x0

.field public static final whitelist VIRTUALIZATION_MODE_TRANSAURAL:I = 0x3


# instance fields
.field private greylist-max-o mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

.field private greylist-max-o mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

.field private final greylist-max-o mParamListenerLock:Ljava/lang/Object;

.field private greylist-max-o mStrengthSupported:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParamListener(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/Virtualizer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor whitelist <init>(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 125
    sget-object v0, Landroid/media/audiofx/Virtualizer;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/Virtualizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 91
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    .line 101
    iput-object v0, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    .line 127
    if-nez p2, :cond_1f

    .line 128
    const-string p2, "Virtualizer"

    const-string v0, "WARNING: attaching a Virtualizer to global output mix is deprecated!"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1f
    const/4 p2, 0x1

    new-array v0, p2, [I

    .line 132
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Virtualizer;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 133
    aget v0, v0, p1

    if-eqz v0, :cond_2e

    move p1, p2

    :cond_2e
    iput-boolean p1, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    .line 134
    return-void
.end method

.method private static greylist-max-o deviceToMode(I)I
    .registers 1

    .line 332
    packed-switch p0, :pswitch_data_a

    .line 353
    :pswitch_3
    const/4 p0, 0x0

    return p0

    .line 350
    :pswitch_5
    const/4 p0, 0x3

    return p0

    .line 338
    :pswitch_7
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private greylist-max-o getAnglesInt(II[I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 191
    if-eqz p1, :cond_e1

    .line 195
    const/16 v0, 0xc

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 196
    move p1, v0

    goto :goto_a

    :cond_9
    nop

    .line 197
    :goto_a
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    .line 198
    const-string v3, "Virtualizer"

    if-eqz p3, :cond_58

    array-length v4, p3

    mul-int/lit8 v5, v2, 0x3

    if-lt v4, v5, :cond_18

    goto :goto_58

    .line 199
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Size of array for angles cannot accomodate number of channels in mask ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Virtualizer: array for channel / angle pairs is too small: is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", should be "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_58
    :goto_58
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 208
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 210
    invoke-static {p1}, Landroid/media/AudioFormat;->convertChannelOutMaskToNativeMask(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 212
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 214
    mul-int/lit8 p1, v2, 0x4

    mul-int/lit8 p1, p1, 0x3

    new-array p1, p1, [B

    .line 217
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/media/audiofx/Virtualizer;->getParameter([B[B)I

    move-result p2

    .line 223
    const/4 v0, 0x0

    if-ltz p2, :cond_bd

    .line 224
    if-eqz p3, :cond_bc

    .line 226
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 227
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 228
    nop

    :goto_94
    if-ge v0, v2, :cond_bc

    .line 230
    mul-int/lit8 p2, v0, 0x3

    mul-int/lit8 v3, v0, 0x4

    mul-int/lit8 v3, v3, 0x3

    .line 231
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 230
    invoke-static {v5}, Landroid/media/AudioFormat;->convertNativeChannelMaskToOutMask(I)I

    move-result v5

    aput v5, p3, p2

    .line 233
    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    aput v6, p3, v5

    .line 235
    add-int/2addr p2, v4

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    aput v3, p3, p2

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 243
    :cond_bc
    return v1

    .line 244
    :cond_bd
    const/4 p1, -0x4

    if-ne p2, p1, :cond_c1

    .line 247
    return v0

    .line 250
    :cond_c1
    invoke-virtual {p0, p2}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected status code "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " after getParameter(PARAM_VIRTUAL_SPEAKER_ANGLES)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return v0

    .line 192
    :cond_e1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Virtualizer: illegal CHANNEL_INVALID channel mask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o getDeviceForModeForce(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 325
    const/4 p0, 0x0

    return p0

    .line 327
    :cond_5
    invoke-static {p0}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result p0

    return p0
.end method

.method private static greylist-max-o getDeviceForModeQuery(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 311
    packed-switch p0, :pswitch_data_20

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtualizer: illegal virtualization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_1c
    const/4 p0, 0x2

    return p0

    .line 313
    :pswitch_1e
    const/4 p0, 0x4

    return p0

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public whitelist canVirtualize(II)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 382
    invoke-static {p2}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/audiofx/Virtualizer;->getAnglesInt(II[I)Z

    move-result p1

    return p1
.end method

.method public whitelist forceVirtualizationMode(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 441
    invoke-static {p1}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeForce(I)I

    move-result p1

    .line 442
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result p1

    .line 444
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Virtualizer;->setParameter(II)I

    move-result p1

    .line 446
    if-ltz p1, :cond_11

    .line 447
    const/4 p1, 0x1

    return p1

    .line 448
    :cond_11
    const/4 v0, -0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_16

    .line 451
    return v1

    .line 454
    :cond_16
    invoke-virtual {p0, p1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected status code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " after setParameter(PARAM_FORCE_VIRTUALIZATION_MODE)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Virtualizer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v1
.end method

.method public whitelist getProperties()Landroid/media/audiofx/Virtualizer$Settings;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 615
    new-instance v0, Landroid/media/audiofx/Virtualizer$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/Virtualizer$Settings;-><init>()V

    .line 616
    const/4 v1, 0x1

    new-array v2, v1, [S

    .line 617
    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/Virtualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 618
    const/4 v1, 0x0

    aget-short v1, v2, v1

    iput-short v1, v0, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    .line 619
    return-object v0
.end method

.method public whitelist getRoundedStrength()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x1

    new-array v1, v0, [S

    .line 172
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Virtualizer;->getParameter(I[S)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 173
    const/4 v0, 0x0

    aget-short v0, v1, v0

    return v0
.end method

.method public whitelist getSpeakerAngles(II[I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 418
    if-eqz p3, :cond_b

    .line 423
    invoke-static {p2}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiofx/Virtualizer;->getAnglesInt(II[I)Z

    move-result p1

    return p1

    .line 419
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Virtualizer: illegal null channel / angle array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getStrengthSupported()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    return v0
.end method

.method public whitelist getVirtualizationMode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 476
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 477
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Virtualizer;->getParameter(I[I)I

    move-result v1

    .line 478
    const/4 v2, 0x0

    if-ltz v1, :cond_16

    .line 479
    aget v0, v0, v2

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/Virtualizer;->deviceToMode(I)I

    move-result v0

    return v0

    .line 480
    :cond_16
    const/4 v0, -0x4

    if-ne v1, v0, :cond_1a

    .line 481
    return v2

    .line 484
    :cond_1a
    invoke-virtual {p0, v1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected status code "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after getParameter(PARAM_VIRTUALIZATION_MODE)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Virtualizer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return v2
.end method

.method public whitelist setParameterListener(Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;)V
    .registers 4

    .line 547
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_3
    iget-object v1, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    if-nez v1, :cond_16

    .line 549
    iput-object p1, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    .line 550
    new-instance p1, Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroid/media/audiofx/Virtualizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Virtualizer;Landroid/media/audiofx/Virtualizer-IA;)V

    iput-object p1, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    .line 551
    iget-object p1, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 553
    :cond_16
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public whitelist setProperties(Landroid/media/audiofx/Virtualizer$Settings;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 632
    const/4 v0, 0x1

    iget-short p1, p1, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Virtualizer;->setParameter(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 633
    return-void
.end method

.method public whitelist setStrength(S)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Virtualizer;->setParameter(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 159
    return-void
.end method
