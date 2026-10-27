.class public abstract Landroid/hardware/tv/tuner/IFilter$Stub;
.super Landroid/os/Binder;
.source "IFilter.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IFilter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_configure:I = 0x3

.field static final blacklist TRANSACTION_configureAvStreamType:I = 0x4

.field static final blacklist TRANSACTION_configureIpCid:I = 0x5

.field static final blacklist TRANSACTION_configureMonitorEvent:I = 0x6

.field static final blacklist TRANSACTION_flush:I = 0x9

.field static final blacklist TRANSACTION_getAvSharedHandle:I = 0xa

.field static final blacklist TRANSACTION_getId:I = 0xb

.field static final blacklist TRANSACTION_getId64Bit:I = 0xc

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getQueueDesc:I = 0x1

.field static final blacklist TRANSACTION_releaseAvHandle:I = 0xd

.field static final blacklist TRANSACTION_setDataSource:I = 0xe

.field static final blacklist TRANSACTION_setDelayHint:I = 0xf

.field static final blacklist TRANSACTION_start:I = 0x7

.field static final blacklist TRANSACTION_stop:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->markVintfStability()V

    .line 93
    sget-object v0, Landroid/hardware/tv/tuner/IFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IFilter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;
    .registers 3

    .line 101
    if-nez p0, :cond_4

    .line 102
    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/tv/tuner/IFilter;

    if-eqz v1, :cond_13

    .line 106
    check-cast v0, Landroid/hardware/tv/tuner/IFilter;

    return-object v0

    .line 108
    :cond_13
    new-instance v0, Landroid/hardware/tv/tuner/IFilter$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/tv/tuner/IFilter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 112
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    sget-object v0, Landroid/hardware/tv/tuner/IFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 117
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v2

    .line 124
    :cond_16
    if-ne p1, v1, :cond_23

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return v2

    .line 129
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v2

    .line 134
    :cond_33
    packed-switch p1, :pswitch_data_116

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 254
    :pswitch_3b
    sget-object p1, Landroid/hardware/tv/tuner/FilterDelayHint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/FilterDelayHint;

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/IFilter$Stub;->setDelayHint(Landroid/hardware/tv/tuner/FilterDelayHint;)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    goto/16 :goto_115

    .line 245
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/IFilter$Stub;->setDataSource(Landroid/hardware/tv/tuner/IFilter;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto/16 :goto_115

    .line 234
    :pswitch_61
    sget-object p1, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/common/NativeHandle;

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/tv/tuner/IFilter$Stub;->releaseAvHandle(Landroid/hardware/common/NativeHandle;J)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_115

    .line 226
    :pswitch_78
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getId64Bit()J

    move-result-wide p1

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    goto/16 :goto_115

    .line 219
    :pswitch_84
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getId()I

    move-result p1

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    goto/16 :goto_115

    .line 209
    :pswitch_90
    new-instance p1, Landroid/hardware/common/NativeHandle;

    invoke-direct {p1}, Landroid/hardware/common/NativeHandle;-><init>()V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/IFilter$Stub;->getAvSharedHandle(Landroid/hardware/common/NativeHandle;)J

    move-result-wide v0

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    goto/16 :goto_115

    .line 202
    :pswitch_a7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->flush()V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_115

    .line 196
    :pswitch_ae
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->stop()V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_115

    .line 190
    :pswitch_b5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->start()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_115

    .line 182
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/IFilter$Stub;->configureMonitorEvent(I)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_115

    .line 173
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/IFilter$Stub;->configureIpCid(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_115

    .line 164
    :pswitch_d8
    sget-object p1, Landroid/hardware/tv/tuner/AvStreamType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/AvStreamType;

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/IFilter$Stub;->configureAvStreamType(Landroid/hardware/tv/tuner/AvStreamType;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_115

    .line 155
    :pswitch_ea
    sget-object p1, Landroid/hardware/tv/tuner/DemuxFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/IFilter$Stub;->configure(Landroid/hardware/tv/tuner/DemuxFilterSettings;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_115

    .line 148
    :pswitch_fc
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->close()V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_115

    .line 139
    :pswitch_103
    new-instance p1, Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {p1}, Landroid/hardware/common/fmq/MQDescriptor;-><init>()V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/IFilter$Stub;->getQueueDesc(Landroid/hardware/common/fmq/MQDescriptor;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    nop

    .line 265
    :goto_115
    return v2

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_103
        :pswitch_fc
        :pswitch_ea
        :pswitch_d8
        :pswitch_ca
        :pswitch_bc
        :pswitch_b5
        :pswitch_ae
        :pswitch_a7
        :pswitch_90
        :pswitch_84
        :pswitch_78
        :pswitch_61
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method
