.class public abstract Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;
.super Landroid/os/Binder;
.source "IImageCaptureExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAvailableCaptureRequestKeys:I = 0xf

.field static final blacklist TRANSACTION_getAvailableCaptureResultKeys:I = 0x10

.field static final blacklist TRANSACTION_getCaptureProcessor:I = 0x9

.field static final blacklist TRANSACTION_getCaptureStages:I = 0xa

.field static final blacklist TRANSACTION_getEstimatedCaptureLatencyRange:I = 0xe

.field static final blacklist TRANSACTION_getMaxCaptureStage:I = 0xb

.field static final blacklist TRANSACTION_getRealtimeCaptureLatency:I = 0x12

.field static final blacklist TRANSACTION_getSessionType:I = 0x6

.field static final blacklist TRANSACTION_getSupportedPostviewResolutions:I = 0xd

.field static final blacklist TRANSACTION_getSupportedResolutions:I = 0xc

.field static final blacklist TRANSACTION_init:I = 0x8

.field static final blacklist TRANSACTION_isCaptureProcessProgressAvailable:I = 0x11

.field static final blacklist TRANSACTION_isExtensionAvailable:I = 0x7

.field static final blacklist TRANSACTION_isPostviewAvailable:I = 0x13

.field static final blacklist TRANSACTION_onDeInit:I = 0x2

.field static final blacklist TRANSACTION_onDisableSession:I = 0x5

.field static final blacklist TRANSACTION_onEnableSession:I = 0x4

.field static final blacklist TRANSACTION_onInit:I = 0x1

.field static final blacklist TRANSACTION_onPresetSession:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 101
    const-string v0, "android.hardware.camera2.extension.IImageCaptureExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    .registers 3

    .line 109
    if-nez p0, :cond_4

    .line 110
    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IImageCaptureExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    if-eqz v1, :cond_13

    .line 114
    check-cast v0, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    return-object v0

    .line 116
    :cond_13
    new-instance v0, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 125
    packed-switch p0, :pswitch_data_3e

    .line 205
    const/4 p0, 0x0

    return-object p0

    .line 201
    :pswitch_5
    const-string p0, "isPostviewAvailable"

    return-object p0

    .line 197
    :pswitch_8
    const-string p0, "getRealtimeCaptureLatency"

    return-object p0

    .line 193
    :pswitch_b
    const-string p0, "isCaptureProcessProgressAvailable"

    return-object p0

    .line 189
    :pswitch_e
    const-string p0, "getAvailableCaptureResultKeys"

    return-object p0

    .line 185
    :pswitch_11
    const-string p0, "getAvailableCaptureRequestKeys"

    return-object p0

    .line 181
    :pswitch_14
    const-string p0, "getEstimatedCaptureLatencyRange"

    return-object p0

    .line 177
    :pswitch_17
    const-string p0, "getSupportedPostviewResolutions"

    return-object p0

    .line 173
    :pswitch_1a
    const-string p0, "getSupportedResolutions"

    return-object p0

    .line 169
    :pswitch_1d
    const-string p0, "getMaxCaptureStage"

    return-object p0

    .line 165
    :pswitch_20
    const-string p0, "getCaptureStages"

    return-object p0

    .line 161
    :pswitch_23
    const-string p0, "getCaptureProcessor"

    return-object p0

    .line 157
    :pswitch_26
    const-string p0, "init"

    return-object p0

    .line 153
    :pswitch_29
    const-string p0, "isExtensionAvailable"

    return-object p0

    .line 149
    :pswitch_2c
    const-string p0, "getSessionType"

    return-object p0

    .line 145
    :pswitch_2f
    const-string p0, "onDisableSession"

    return-object p0

    .line 141
    :pswitch_32
    const-string p0, "onEnableSession"

    return-object p0

    .line 137
    :pswitch_35
    const-string p0, "onPresetSession"

    return-object p0

    .line 133
    :pswitch_38
    const-string p0, "onDeInit"

    return-object p0

    .line 129
    :pswitch_3b
    const-string p0, "onInit"

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 120
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 751
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 212
    invoke-static {p1}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 216
    nop

    .line 217
    const-string v0, "android.hardware.camera2.extension.IImageCaptureExtenderImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 218
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 221
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    return v1

    .line 224
    :cond_17
    packed-switch p1, :pswitch_data_13e

    .line 384
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 377
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->isPostviewAvailable()Z

    move-result p1

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    goto/16 :goto_13d

    .line 370
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;

    move-result-object p1

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 373
    goto/16 :goto_13d

    .line 363
    :pswitch_37
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->isCaptureProcessProgressAvailable()Z

    move-result p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 366
    goto/16 :goto_13d

    .line 356
    :pswitch_43
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getAvailableCaptureResultKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 359
    goto/16 :goto_13d

    .line 349
    :pswitch_4f
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getAvailableCaptureRequestKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 352
    goto/16 :goto_13d

    .line 340
    :pswitch_5b
    sget-object p1, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/Size;

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getEstimatedCaptureLatencyRange(Landroid/hardware/camera2/extension/Size;)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object p1

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 345
    goto/16 :goto_13d

    .line 330
    :pswitch_72
    sget-object p1, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/Size;

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object p1

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 335
    goto/16 :goto_13d

    .line 322
    :pswitch_89
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getSupportedResolutions()Ljava/util/List;

    move-result-object p1

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 325
    goto/16 :goto_13d

    .line 315
    :pswitch_95
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getMaxCaptureStage()I

    move-result p1

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    goto/16 :goto_13d

    .line 308
    :pswitch_a1
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getCaptureStages()Ljava/util/List;

    move-result-object p1

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 311
    goto/16 :goto_13d

    .line 301
    :pswitch_ad
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object p1

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 304
    goto/16 :goto_13d

    .line 291
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 293
    sget-object p4, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto :goto_13d

    .line 279
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 281
    sget-object p4, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result p1

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 286
    goto :goto_13d

    .line 271
    :pswitch_e9
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->getSessionType()I

    move-result p1

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    goto :goto_13d

    .line 264
    :pswitch_f4
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    goto :goto_13d

    .line 257
    :pswitch_ff
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 260
    goto :goto_13d

    .line 250
    :pswitch_10a
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object p1

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 253
    goto :goto_13d

    .line 242
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onDeInit(Landroid/os/IBinder;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto :goto_13d

    .line 229
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 233
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Stub;->onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    nop

    .line 387
    :goto_13d
    return v1

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_123
        :pswitch_115
        :pswitch_10a
        :pswitch_ff
        :pswitch_f4
        :pswitch_e9
        :pswitch_cf
        :pswitch_b9
        :pswitch_ad
        :pswitch_a1
        :pswitch_95
        :pswitch_89
        :pswitch_72
        :pswitch_5b
        :pswitch_4f
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
