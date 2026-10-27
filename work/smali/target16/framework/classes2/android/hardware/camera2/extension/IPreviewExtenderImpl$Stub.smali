.class public abstract Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;
.super Landroid/os/Binder;
.source "IPreviewExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IPreviewExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCaptureStage:I = 0x8

.field static final blacklist TRANSACTION_getPreviewImageProcessor:I = 0xb

.field static final blacklist TRANSACTION_getProcessorType:I = 0xa

.field static final blacklist TRANSACTION_getRequestUpdateProcessor:I = 0xc

.field static final blacklist TRANSACTION_getSessionType:I = 0x9

.field static final blacklist TRANSACTION_getSupportedResolutions:I = 0xd

.field static final blacklist TRANSACTION_init:I = 0x6

.field static final blacklist TRANSACTION_isExtensionAvailable:I = 0x7

.field static final blacklist TRANSACTION_onDeInit:I = 0x2

.field static final blacklist TRANSACTION_onDisableSession:I = 0x5

.field static final blacklist TRANSACTION_onEnableSession:I = 0x4

.field static final blacklist TRANSACTION_onInit:I = 0x1

.field static final blacklist TRANSACTION_onPresetSession:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .registers 3

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    if-eqz v1, :cond_13

    .line 90
    check-cast v0, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    return-object v0

    .line 92
    :cond_13
    new-instance v0, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 101
    packed-switch p0, :pswitch_data_2c

    .line 157
    const/4 p0, 0x0

    return-object p0

    .line 153
    :pswitch_5
    const-string p0, "getSupportedResolutions"

    return-object p0

    .line 149
    :pswitch_8
    const-string p0, "getRequestUpdateProcessor"

    return-object p0

    .line 145
    :pswitch_b
    const-string p0, "getPreviewImageProcessor"

    return-object p0

    .line 141
    :pswitch_e
    const-string p0, "getProcessorType"

    return-object p0

    .line 137
    :pswitch_11
    const-string p0, "getSessionType"

    return-object p0

    .line 133
    :pswitch_14
    const-string p0, "getCaptureStage"

    return-object p0

    .line 129
    :pswitch_17
    const-string p0, "isExtensionAvailable"

    return-object p0

    .line 125
    :pswitch_1a
    const-string p0, "init"

    return-object p0

    .line 121
    :pswitch_1d
    const-string p0, "onDisableSession"

    return-object p0

    .line 117
    :pswitch_20
    const-string p0, "onEnableSession"

    return-object p0

    .line 113
    :pswitch_23
    const-string p0, "onPresetSession"

    return-object p0

    .line 109
    :pswitch_26
    const-string p0, "onDeInit"

    return-object p0

    .line 105
    :pswitch_29
    const-string p0, "onInit"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
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

    .line 96
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 545
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 164
    invoke-static {p1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 168
    nop

    .line 169
    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 170
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 173
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v1

    .line 176
    :cond_17
    packed-switch p1, :pswitch_data_e2

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 281
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getSupportedResolutions()Ljava/util/List;

    move-result-object p1

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 284
    goto/16 :goto_e0

    .line 274
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getRequestUpdateProcessor()Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    move-result-object p1

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 277
    goto/16 :goto_e0

    .line 267
    :pswitch_37
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getPreviewImageProcessor()Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    move-result-object p1

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 270
    goto/16 :goto_e0

    .line 260
    :pswitch_43
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getProcessorType()I

    move-result p1

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    goto/16 :goto_e0

    .line 253
    :pswitch_4f
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getSessionType()I

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    goto/16 :goto_e0

    .line 246
    :pswitch_5b
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object p1

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 249
    goto/16 :goto_e0

    .line 235
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 237
    sget-object p4, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 242
    goto :goto_e0

    .line 224
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 226
    sget-object p4, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto :goto_e0

    .line 216
    :pswitch_97
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object p1

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    goto :goto_e0

    .line 209
    :pswitch_a2
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object p1

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 212
    goto :goto_e0

    .line 202
    :pswitch_ad
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object p1

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 205
    goto :goto_e0

    .line 194
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onDeInit(Landroid/os/IBinder;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_e0

    .line 181
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 185
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    nop

    .line 291
    :goto_e0
    return v1

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_b8
        :pswitch_ad
        :pswitch_a2
        :pswitch_97
        :pswitch_81
        :pswitch_67
        :pswitch_5b
        :pswitch_4f
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
