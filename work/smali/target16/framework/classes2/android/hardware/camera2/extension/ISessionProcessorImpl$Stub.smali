.class public abstract Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;
.super Landroid/os/Binder;
.source "ISessionProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ISessionProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ISessionProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deInitSession:I = 0x2

.field static final blacklist TRANSACTION_getRealtimeCaptureLatency:I = 0xa

.field static final blacklist TRANSACTION_initSession:I = 0x1

.field static final blacklist TRANSACTION_onCaptureSessionEnd:I = 0x4

.field static final blacklist TRANSACTION_onCaptureSessionStart:I = 0x3

.field static final blacklist TRANSACTION_setParameters:I = 0x8

.field static final blacklist TRANSACTION_startCapture:I = 0x7

.field static final blacklist TRANSACTION_startRepeating:I = 0x5

.field static final blacklist TRANSACTION_startTrigger:I = 0x9

.field static final blacklist TRANSACTION_stopRepeating:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .registers 3

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_4
    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    if-eqz v1, :cond_13

    .line 76
    check-cast v0, Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    return-object v0

    .line 78
    :cond_13
    new-instance v0, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 87
    packed-switch p0, :pswitch_data_24

    .line 131
    const/4 p0, 0x0

    return-object p0

    .line 127
    :pswitch_5
    const-string p0, "getRealtimeCaptureLatency"

    return-object p0

    .line 123
    :pswitch_8
    const-string p0, "startTrigger"

    return-object p0

    .line 119
    :pswitch_b
    const-string p0, "setParameters"

    return-object p0

    .line 115
    :pswitch_e
    const-string p0, "startCapture"

    return-object p0

    .line 111
    :pswitch_11
    const-string p0, "stopRepeating"

    return-object p0

    .line 107
    :pswitch_14
    const-string p0, "startRepeating"

    return-object p0

    .line 103
    :pswitch_17
    const-string p0, "onCaptureSessionEnd"

    return-object p0

    .line 99
    :pswitch_1a
    const-string p0, "onCaptureSessionStart"

    return-object p0

    .line 95
    :pswitch_1d
    const-string p0, "deInitSession"

    return-object p0

    .line 91
    :pswitch_20
    const-string p0, "initSession"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 4

    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 165
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 166
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 477
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 138
    invoke-static {p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    nop

    .line 143
    const-string v0, "android.hardware.camera2.extension.ISessionProcessorImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v1

    .line 150
    :cond_17
    packed-switch p1, :pswitch_data_110

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 258
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;

    move-result-object p1

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 261
    goto/16 :goto_10f

    .line 247
    :pswitch_2b
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object p4

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result p1

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    goto/16 :goto_10f

    .line 238
    :pswitch_4a
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto/16 :goto_10f

    .line 226
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object p1

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;Z)I

    move-result p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    goto/16 :goto_10f

    .line 219
    :pswitch_78
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->stopRepeating()V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto/16 :goto_10f

    .line 210
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICaptureCallback;

    move-result-object p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto/16 :goto_10f

    .line 203
    :pswitch_97
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->onCaptureSessionEnd()V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto :goto_10f

    .line 193
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    move-result-object p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->onCaptureSessionStart(Landroid/hardware/camera2/extension/IRequestProcessorImpl;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_10f

    .line 184
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->deInitSession(Landroid/os/IBinder;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_10f

    .line 155
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    if-gez p1, :cond_d2

    const/4 p4, 0x0

    goto :goto_d7

    :cond_d2
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :goto_d7
    move-object v5, p4

    .line 162
    const/4 p4, 0x0

    invoke-static {p4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance p4, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2, v5}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {p1, p4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 170
    sget-object p1, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/hardware/camera2/extension/OutputSurface;

    .line 172
    sget-object p1, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/hardware/camera2/extension/OutputSurface;

    .line 174
    sget-object p1, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/hardware/camera2/extension/OutputSurface;

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;->initSession(Landroid/os/IBinder;Ljava/lang/String;Ljava/util/Map;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object p1

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 179
    nop

    .line 268
    :goto_10f
    return v1

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_b4
        :pswitch_9e
        :pswitch_97
        :pswitch_80
        :pswitch_78
        :pswitch_5d
        :pswitch_4a
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
