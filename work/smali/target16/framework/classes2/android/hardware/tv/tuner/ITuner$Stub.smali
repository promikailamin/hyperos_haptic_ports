.class public abstract Landroid/hardware/tv/tuner/ITuner$Stub;
.super Landroid/os/Binder;
.source "ITuner.java"

# interfaces
.implements Landroid/hardware/tv/tuner/ITuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/ITuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/ITuner$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDemuxCaps:I = 0x4

.field static final blacklist TRANSACTION_getDemuxIds:I = 0xe

.field static final blacklist TRANSACTION_getDemuxInfo:I = 0x10

.field static final blacklist TRANSACTION_getFrontendIds:I = 0x1

.field static final blacklist TRANSACTION_getFrontendInfo:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getLnbIds:I = 0x7

.field static final blacklist TRANSACTION_getMaxNumberOfFrontends:I = 0xc

.field static final blacklist TRANSACTION_isLnaSupported:I = 0xd

.field static final blacklist TRANSACTION_openDemux:I = 0x3

.field static final blacklist TRANSACTION_openDemuxById:I = 0xf

.field static final blacklist TRANSACTION_openDescrambler:I = 0x5

.field static final blacklist TRANSACTION_openFrontendById:I = 0x2

.field static final blacklist TRANSACTION_openLnbById:I = 0x8

.field static final blacklist TRANSACTION_openLnbByName:I = 0x9

.field static final blacklist TRANSACTION_setLna:I = 0xa

.field static final blacklist TRANSACTION_setMaxNumberOfFrontends:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 106
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->markVintfStability()V

    .line 107
    sget-object v0, Landroid/hardware/tv/tuner/ITuner$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/ITuner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/ITuner;
    .registers 3

    .line 115
    if-nez p0, :cond_4

    .line 116
    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/ITuner$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/tv/tuner/ITuner;

    if-eqz v1, :cond_13

    .line 120
    check-cast v0, Landroid/hardware/tv/tuner/ITuner;

    return-object v0

    .line 122
    :cond_13
    new-instance v0, Landroid/hardware/tv/tuner/ITuner$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/tv/tuner/ITuner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 126
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    sget-object v0, Landroid/hardware/tv/tuner/ITuner$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 131
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v2

    .line 138
    :cond_16
    if-ne p1, v1, :cond_23

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return v2

    .line 143
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v2

    .line 148
    :cond_33
    const/4 v0, 0x0

    const-string v1, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_184

    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 303
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/ITuner$Stub;->getDemuxInfo(I)Landroid/hardware/tv/tuner/DemuxInfo;

    move-result-object p1

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    goto/16 :goto_183

    .line 293
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/ITuner$Stub;->openDemuxById(I)Landroid/hardware/tv/tuner/IDemux;

    move-result-object p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 298
    goto/16 :goto_183

    .line 285
    :pswitch_67
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getDemuxIds()[I

    move-result-object p1

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 288
    goto/16 :goto_183

    .line 278
    :pswitch_73
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->isLnaSupported()Z

    move-result p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 281
    goto/16 :goto_183

    .line 269
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/ITuner$Stub;->getMaxNumberOfFrontends(I)I

    move-result p1

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    goto/16 :goto_183

    .line 258
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, p1, p4}, Landroid/hardware/tv/tuner/ITuner$Stub;->setMaxNumberOfFrontends(II)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_183

    .line 249
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/ITuner$Stub;->setLna(Z)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto/16 :goto_183

    .line 229
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 232
    if-gt p4, v3, :cond_d5

    .line 234
    if-gez p4, :cond_c1

    .line 235
    goto :goto_c3

    .line 237
    :cond_c1
    new-array v0, p4, [I

    .line 239
    :goto_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1, v0}, Landroid/hardware/tv/tuner/ITuner$Stub;->openLnbByName(Ljava/lang/String;[I)Landroid/hardware/tv/tuner/ILnb;

    move-result-object p1

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 243
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 244
    goto/16 :goto_183

    .line 233
    :cond_d5
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/ITuner$Stub;->openLnbById(I)Landroid/hardware/tv/tuner/ILnb;

    move-result-object p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 224
    goto/16 :goto_183

    .line 211
    :pswitch_ff
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getLnbIds()[I

    move-result-object p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 214
    goto/16 :goto_183

    .line 202
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/ITuner$Stub;->getFrontendInfo(I)Landroid/hardware/tv/tuner/FrontendInfo;

    move-result-object p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 207
    goto :goto_183

    .line 194
    :pswitch_11d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->openDescrambler()Landroid/hardware/tv/tuner/IDescrambler;

    move-result-object p1

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 197
    goto :goto_183

    .line 187
    :pswitch_128
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getDemuxCaps()Landroid/hardware/tv/tuner/DemuxCapabilities;

    move-result-object p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 190
    goto :goto_183

    .line 170
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 171
    if-gt p1, v3, :cond_14f

    .line 173
    if-gez p1, :cond_13c

    .line 174
    goto :goto_13e

    .line 176
    :cond_13c
    new-array v0, p1, [I

    .line 178
    :goto_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v0}, Landroid/hardware/tv/tuner/ITuner$Stub;->openDemux([I)Landroid/hardware/tv/tuner/IDemux;

    move-result-object p1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 182
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 183
    goto :goto_183

    .line 172
    :cond_14f
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 160
    :pswitch_166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/ITuner$Stub;->openFrontendById(I)Landroid/hardware/tv/tuner/IFrontend;

    move-result-object p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 165
    goto :goto_183

    .line 152
    :pswitch_178
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getFrontendIds()[I

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 155
    nop

    .line 315
    :goto_183
    return v2

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_178
        :pswitch_166
        :pswitch_133
        :pswitch_128
        :pswitch_11d
        :pswitch_10b
        :pswitch_ff
        :pswitch_ec
        :pswitch_b4
        :pswitch_a5
        :pswitch_92
        :pswitch_7f
        :pswitch_73
        :pswitch_67
        :pswitch_54
        :pswitch_41
    .end packed-switch
.end method
