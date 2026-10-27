.class public abstract Landroid/media/ISoundDose$Stub;
.super Landroid/os/Binder;
.source "ISoundDose.java"

# interfaces
.implements Landroid/media/ISoundDose;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ISoundDose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISoundDose$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_forceComputeCsdOnAllDevices:I = 0xb

.field static final blacklist TRANSACTION_forceUseFrameworkMel:I = 0xa

.field static final blacklist TRANSACTION_getCsd:I = 0x8

.field static final blacklist TRANSACTION_getOutputRs2UpperBound:I = 0x7

.field static final blacklist TRANSACTION_initCachedAudioDeviceCategories:I = 0x5

.field static final blacklist TRANSACTION_isSoundDoseHalSupported:I = 0x9

.field static final blacklist TRANSACTION_resetCsd:I = 0x2

.field static final blacklist TRANSACTION_setAudioDeviceCategory:I = 0x6

.field static final blacklist TRANSACTION_setCsdEnabled:I = 0x4

.field static final blacklist TRANSACTION_setOutputRs2UpperBound:I = 0x1

.field static final blacklist TRANSACTION_updateAttenuation:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "android.media.ISoundDose"

    invoke-virtual {p0, p0, v0}, Landroid/media/ISoundDose$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/ISoundDose;
    .registers 3

    .line 119
    if-nez p0, :cond_4

    .line 120
    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_4
    const-string v0, "android.media.ISoundDose"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/ISoundDose;

    if-eqz v1, :cond_13

    .line 124
    check-cast v0, Landroid/media/ISoundDose;

    return-object v0

    .line 126
    :cond_13
    new-instance v0, Landroid/media/ISoundDose$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/ISoundDose$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 130
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    nop

    .line 135
    const-string v0, "android.media.ISoundDose"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_17
    packed-switch p1, :pswitch_data_b6

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 229
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, p1}, Landroid/media/ISoundDose$Stub;->forceComputeCsdOnAllDevices(Z)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_b4

    .line 220
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, p1}, Landroid/media/ISoundDose$Stub;->forceUseFrameworkMel(Z)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    goto/16 :goto_b4

    .line 212
    :pswitch_3d
    invoke-virtual {p0}, Landroid/media/ISoundDose$Stub;->isSoundDoseHalSupported()Z

    move-result p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto :goto_b4

    .line 205
    :pswitch_48
    invoke-virtual {p0}, Landroid/media/ISoundDose$Stub;->getCsd()F

    move-result p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 208
    goto :goto_b4

    .line 198
    :pswitch_53
    invoke-virtual {p0}, Landroid/media/ISoundDose$Stub;->getOutputRs2UpperBound()F

    move-result p1

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 201
    goto :goto_b4

    .line 191
    :pswitch_5e
    sget-object p1, Landroid/media/ISoundDose$AudioDeviceCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ISoundDose$AudioDeviceCategory;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Landroid/media/ISoundDose$Stub;->setAudioDeviceCategory(Landroid/media/ISoundDose$AudioDeviceCategory;)V

    .line 194
    goto :goto_b4

    .line 183
    :pswitch_6d
    sget-object p1, Landroid/media/ISoundDose$AudioDeviceCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/ISoundDose$AudioDeviceCategory;

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1}, Landroid/media/ISoundDose$Stub;->initCachedAudioDeviceCategories([Landroid/media/ISoundDose$AudioDeviceCategory;)V

    .line 186
    goto :goto_b4

    .line 175
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, p1}, Landroid/media/ISoundDose$Stub;->setCsdEnabled(Z)V

    .line 178
    goto :goto_b4

    .line 165
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1, p3}, Landroid/media/ISoundDose$Stub;->updateAttenuation(FI)V

    .line 170
    goto :goto_b4

    .line 155
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 157
    sget-object p3, Landroid/media/SoundDoseRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/media/SoundDoseRecord;

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1, p3}, Landroid/media/ISoundDose$Stub;->resetCsd(F[Landroid/media/SoundDoseRecord;)V

    .line 160
    goto :goto_b4

    .line 147
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1}, Landroid/media/ISoundDose$Stub;->setOutputRs2UpperBound(F)V

    .line 150
    nop

    .line 240
    :goto_b4
    return v1

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_96
        :pswitch_87
        :pswitch_7c
        :pswitch_6d
        :pswitch_5e
        :pswitch_53
        :pswitch_48
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
