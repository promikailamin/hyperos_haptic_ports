.class public abstract Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.super Landroid/os/Binder;
.source "IImsRegistrationListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsRegistrationListener"

.field static final greylist-max-o TRANSACTION_registrationAssociatedUriChanged:I = 0xb

.field static final greylist-max-o TRANSACTION_registrationChangeFailed:I = 0xc

.field static final greylist-max-o TRANSACTION_registrationConnected:I = 0x1

.field static final greylist-max-o TRANSACTION_registrationConnectedWithRadioTech:I = 0x3

.field static final greylist-max-o TRANSACTION_registrationDisconnected:I = 0x5

.field static final greylist-max-o TRANSACTION_registrationFeatureCapabilityChanged:I = 0x9

.field static final greylist-max-o TRANSACTION_registrationProgressing:I = 0x2

.field static final greylist-max-o TRANSACTION_registrationProgressingWithRadioTech:I = 0x4

.field static final greylist-max-o TRANSACTION_registrationResumed:I = 0x6

.field static final greylist-max-o TRANSACTION_registrationServiceCapabilityChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_registrationSuspended:I = 0x7

.field static final greylist-max-o TRANSACTION_voiceMessageCountUpdate:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 130
    const-string v0, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;
    .registers 3

    .line 138
    if-nez p0, :cond_4

    .line 139
    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_4
    const-string v0, "com.android.ims.internal.IImsRegistrationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/internal/IImsRegistrationListener;

    if-eqz v1, :cond_13

    .line 143
    check-cast v0, Lcom/android/ims/internal/IImsRegistrationListener;

    return-object v0

    .line 145
    :cond_13
    new-instance v0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 154
    packed-switch p0, :pswitch_data_2a

    .line 206
    const/4 p0, 0x0

    return-object p0

    .line 202
    :pswitch_5
    const-string p0, "registrationChangeFailed"

    return-object p0

    .line 198
    :pswitch_8
    const-string p0, "registrationAssociatedUriChanged"

    return-object p0

    .line 194
    :pswitch_b
    const-string p0, "voiceMessageCountUpdate"

    return-object p0

    .line 190
    :pswitch_e
    const-string p0, "registrationFeatureCapabilityChanged"

    return-object p0

    .line 186
    :pswitch_11
    const-string p0, "registrationServiceCapabilityChanged"

    return-object p0

    .line 182
    :pswitch_14
    const-string p0, "registrationSuspended"

    return-object p0

    .line 178
    :pswitch_17
    const-string p0, "registrationResumed"

    return-object p0

    .line 174
    :pswitch_1a
    const-string p0, "registrationDisconnected"

    return-object p0

    .line 170
    :pswitch_1d
    const-string p0, "registrationProgressingWithRadioTech"

    return-object p0

    .line 166
    :pswitch_20
    const-string p0, "registrationConnectedWithRadioTech"

    return-object p0

    .line 162
    :pswitch_23
    const-string p0, "registrationProgressing"

    return-object p0

    .line 158
    :pswitch_26
    const-string p0, "registrationConnected"

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 149
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 564
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 213
    invoke-static {p1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 217
    nop

    .line 218
    const-string v0, "com.android.ims.internal.IImsRegistrationListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 219
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 222
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    return v1

    .line 225
    :cond_17
    packed-switch p1, :pswitch_data_a6

    .line 321
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 312
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 314
    sget-object p3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/ims/ImsReasonInfo;

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, p1, p3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 317
    goto/16 :goto_a4

    .line 304
    :pswitch_33
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Uri;

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    .line 307
    goto :goto_a4

    .line 296
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->voiceMessageCountUpdate(I)V

    .line 299
    goto :goto_a4

    .line 284
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p3

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationFeatureCapabilityChanged(I[I[I)V

    .line 291
    goto :goto_a4

    .line 274
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, p1, p3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationServiceCapabilityChanged(II)V

    .line 279
    goto :goto_a4

    .line 268
    :pswitch_6f
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationSuspended()V

    .line 269
    goto :goto_a4

    .line 263
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationResumed()V

    .line 264
    goto :goto_a4

    .line 256
    :pswitch_77
    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 259
    goto :goto_a4

    .line 248
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressingWithRadioTech(I)V

    .line 251
    goto :goto_a4

    .line 240
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnectedWithRadioTech(I)V

    .line 243
    goto :goto_a4

    .line 234
    :pswitch_9c
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressing()V

    .line 235
    goto :goto_a4

    .line 229
    :pswitch_a0
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnected()V

    .line 230
    nop

    .line 324
    :goto_a4
    return v1

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_9c
        :pswitch_91
        :pswitch_86
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_60
        :pswitch_4d
        :pswitch_42
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
