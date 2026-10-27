.class public abstract Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;
.super Landroid/os/Binder;
.source "IAdvancedExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAvailableCaptureRequestKeys:I = 0x8

.field static final blacklist TRANSACTION_getAvailableCaptureResultKeys:I = 0x9

.field static final blacklist TRANSACTION_getAvailableCharacteristicsKeyValues:I = 0xc

.field static final blacklist TRANSACTION_getEstimatedCaptureLatencyRange:I = 0x3

.field static final blacklist TRANSACTION_getSessionProcessor:I = 0x7

.field static final blacklist TRANSACTION_getSupportedCaptureOutputResolutions:I = 0x5

.field static final blacklist TRANSACTION_getSupportedPostviewResolutions:I = 0x6

.field static final blacklist TRANSACTION_getSupportedPreviewOutputResolutions:I = 0x4

.field static final blacklist TRANSACTION_init:I = 0x2

.field static final blacklist TRANSACTION_isCaptureProcessProgressAvailable:I = 0xa

.field static final blacklist TRANSACTION_isExtensionAvailable:I = 0x1

.field static final blacklist TRANSACTION_isPostviewAvailable:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .registers 3

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    if-eqz v1, :cond_13

    .line 88
    check-cast v0, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    return-object v0

    .line 90
    :cond_13
    new-instance v0, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 99
    packed-switch p0, :pswitch_data_2a

    .line 151
    const/4 p0, 0x0

    return-object p0

    .line 147
    :pswitch_5
    const-string p0, "getAvailableCharacteristicsKeyValues"

    return-object p0

    .line 143
    :pswitch_8
    const-string p0, "isPostviewAvailable"

    return-object p0

    .line 139
    :pswitch_b
    const-string p0, "isCaptureProcessProgressAvailable"

    return-object p0

    .line 135
    :pswitch_e
    const-string p0, "getAvailableCaptureResultKeys"

    return-object p0

    .line 131
    :pswitch_11
    const-string p0, "getAvailableCaptureRequestKeys"

    return-object p0

    .line 127
    :pswitch_14
    const-string p0, "getSessionProcessor"

    return-object p0

    .line 123
    :pswitch_17
    const-string p0, "getSupportedPostviewResolutions"

    return-object p0

    .line 119
    :pswitch_1a
    const-string p0, "getSupportedCaptureOutputResolutions"

    return-object p0

    .line 115
    :pswitch_1d
    const-string p0, "getSupportedPreviewOutputResolutions"

    return-object p0

    .line 111
    :pswitch_20
    const-string p0, "getEstimatedCaptureLatencyRange"

    return-object p0

    .line 107
    :pswitch_23
    const-string p0, "init"

    return-object p0

    .line 103
    :pswitch_26
    const-string p0, "isExtensionAvailable"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
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

    .line 181
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 183
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 184
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 4

    .line 202
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 204
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 205
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 94
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 576
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 158
    invoke-static {p1}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    nop

    .line 163
    const-string v0, "android.hardware.camera2.extension.IAdvancedExtenderImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 164
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 167
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v1

    .line 170
    :cond_17
    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_12a

    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 301
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getAvailableCharacteristicsKeyValues(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 306
    goto/16 :goto_128

    .line 293
    :pswitch_34
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->isPostviewAvailable()Z

    move-result p1

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 296
    goto/16 :goto_128

    .line 286
    :pswitch_40
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->isCaptureProcessProgressAvailable()Z

    move-result p1

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 289
    goto/16 :goto_128

    .line 277
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 282
    goto/16 :goto_128

    .line 267
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 272
    goto/16 :goto_128

    .line 259
    :pswitch_72
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSessionProcessor()Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object p1

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 262
    goto/16 :goto_128

    .line 250
    :pswitch_7e
    sget-object p1, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/Size;

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object p1

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 255
    goto/16 :goto_128

    .line 240
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 245
    goto/16 :goto_128

    .line 230
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 235
    goto :goto_128

    .line 216
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 218
    sget-object p4, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/extension/Size;

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    goto :goto_128

    .line 196
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 200
    if-gez p4, :cond_e3

    goto :goto_e8

    :cond_e3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 201
    :goto_e8
    invoke-static {v0, p4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p4

    new-instance v0, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {p4, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p1, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_128

    .line 175
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 179
    if-gez p4, :cond_109

    goto :goto_10e

    :cond_109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 180
    :goto_10e
    invoke-static {v0, p4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p4

    new-instance v0, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {p4, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, p1, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    nop

    .line 313
    :goto_128
    return v1

    nop

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_d8
        :pswitch_ba
        :pswitch_a8
        :pswitch_95
        :pswitch_7e
        :pswitch_72
        :pswitch_5f
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_21
    .end packed-switch
.end method
