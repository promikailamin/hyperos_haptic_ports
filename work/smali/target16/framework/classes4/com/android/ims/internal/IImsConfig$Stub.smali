.class public abstract Lcom/android/ims/internal/IImsConfig$Stub;
.super Landroid/os/Binder;
.source "IImsConfig.java"

# interfaces
.implements Lcom/android/ims/internal/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field static final greylist-max-o TRANSACTION_getFeatureValue:I = 0x5

.field static final greylist-max-o TRANSACTION_getProvisionedStringValue:I = 0x2

.field static final greylist-max-o TRANSACTION_getProvisionedValue:I = 0x1

.field static final greylist-max-o TRANSACTION_getVideoQuality:I = 0x8

.field static final greylist-max-o TRANSACTION_getVolteProvisioned:I = 0x7

.field static final greylist-max-o TRANSACTION_setFeatureValue:I = 0x6

.field static final greylist-max-o TRANSACTION_setProvisionedStringValue:I = 0x4

.field static final greylist-max-o TRANSACTION_setProvisionedValue:I = 0x3

.field static final greylist-max-o TRANSACTION_setVideoQuality:I = 0x9


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const-string v0, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsConfig;
    .registers 3

    .line 149
    if-nez p0, :cond_4

    .line 150
    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_4
    const-string v0, "com.android.ims.internal.IImsConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/internal/IImsConfig;

    if-eqz v1, :cond_13

    .line 154
    check-cast v0, Lcom/android/ims/internal/IImsConfig;

    return-object v0

    .line 156
    :cond_13
    new-instance v0, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 165
    packed-switch p0, :pswitch_data_20

    .line 205
    const/4 p0, 0x0

    return-object p0

    .line 201
    :pswitch_5
    const-string p0, "setVideoQuality"

    return-object p0

    .line 197
    :pswitch_8
    const-string p0, "getVideoQuality"

    return-object p0

    .line 193
    :pswitch_b
    const-string p0, "getVolteProvisioned"

    return-object p0

    .line 189
    :pswitch_e
    const-string p0, "setFeatureValue"

    return-object p0

    .line 185
    :pswitch_11
    const-string p0, "getFeatureValue"

    return-object p0

    .line 181
    :pswitch_14
    const-string p0, "setProvisionedStringValue"

    return-object p0

    .line 177
    :pswitch_17
    const-string p0, "setProvisionedValue"

    return-object p0

    .line 173
    :pswitch_1a
    const-string p0, "getProvisionedStringValue"

    return-object p0

    .line 169
    :pswitch_1d
    const-string p0, "getProvisionedValue"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
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

    .line 160
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 577
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 212
    invoke-static {p1}, Lcom/android/ims/internal/IImsConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "com.android.ims.internal.IImsConfig"

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
    packed-switch p1, :pswitch_data_d2

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 314
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object p3

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, p1, p3}, Lcom/android/ims/internal/IImsConfig$Stub;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    .line 319
    goto/16 :goto_d1

    .line 306
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object p1

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsConfig$Stub;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    .line 309
    goto/16 :goto_d1

    .line 298
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsConfig$Stub;->getVolteProvisioned()Z

    move-result p1

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 301
    goto/16 :goto_d1

    .line 285
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v0

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 294
    goto :goto_d1

    .line 273
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object p4

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/ims/internal/IImsConfig$Stub;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    .line 280
    goto :goto_d1

    .line 261
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result p1

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    goto :goto_d1

    .line 249
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedValue(II)I

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    goto :goto_d1

    .line 239
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    goto :goto_d1

    .line 229
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedValue(I)I

    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    nop

    .line 326
    :goto_d1
    return v1

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_ad
        :pswitch_97
        :pswitch_81
        :pswitch_6a
        :pswitch_4f
        :pswitch_43
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
