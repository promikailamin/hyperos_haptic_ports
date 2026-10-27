.class public abstract Landroid/hardware/health/IHealth$Stub;
.super Landroid/os/Binder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/health/IHealth$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCapacity:I = 0x7

.field static final TRANSACTION_getChargeCounterUah:I = 0x4

.field static final TRANSACTION_getChargeStatus:I = 0x9

.field static final TRANSACTION_getCurrentAverageMicroamps:I = 0x6

.field static final TRANSACTION_getCurrentNowMicroamps:I = 0x5

.field static final TRANSACTION_getDiskStats:I = 0xb

.field static final TRANSACTION_getEnergyCounterNwh:I = 0x8

.field static final TRANSACTION_getHealthInfo:I = 0xc

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getStorageInfo:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_update:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->markVintfStability()V

    .line 83
    sget-object v0, Landroid/hardware/health/IHealth$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/health/IHealth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealth;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    sget-object v0, Landroid/hardware/health/IHealth$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/health/IHealth;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/hardware/health/IHealth;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/health/IHealth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    sget-object v0, Landroid/hardware/health/IHealth$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    sparse-switch p1, :sswitch_data_c4

    .line 130
    packed-switch p1, :pswitch_data_d2

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 114
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 119
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v1

    .line 125
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 214
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object v2

    .line 215
    .local v2, "_result":Landroid/hardware/health/HealthInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 217
    goto/16 :goto_c3

    .line 207
    .end local v2    # "_result":Landroid/hardware/health/HealthInfo;
    :pswitch_3e
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getDiskStats()[Landroid/hardware/health/DiskStats;

    move-result-object v2

    .line 208
    .local v2, "_result":[Landroid/hardware/health/DiskStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 210
    goto/16 :goto_c3

    .line 200
    .end local v2    # "_result":[Landroid/hardware/health/DiskStats;
    :pswitch_4a
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getStorageInfo()[Landroid/hardware/health/StorageInfo;

    move-result-object v2

    .line 201
    .local v2, "_result":[Landroid/hardware/health/StorageInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 203
    goto/16 :goto_c3

    .line 193
    .end local v2    # "_result":[Landroid/hardware/health/StorageInfo;
    :pswitch_56
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getChargeStatus()I

    move-result v2

    .line 194
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    goto :goto_c3

    .line 186
    .end local v2    # "_result":I
    :pswitch_61
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getEnergyCounterNwh()J

    move-result-wide v2

    .line 187
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    goto :goto_c3

    .line 179
    .end local v2    # "_result":J
    :pswitch_6c
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getCapacity()I

    move-result v2

    .line 180
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    goto :goto_c3

    .line 172
    .end local v2    # "_result":I
    :pswitch_77
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getCurrentAverageMicroamps()I

    move-result v2

    .line 173
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    goto :goto_c3

    .line 165
    .end local v2    # "_result":I
    :pswitch_82
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getCurrentNowMicroamps()I

    move-result v2

    .line 166
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    goto :goto_c3

    .line 158
    .end local v2    # "_result":I
    :pswitch_8d
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->getChargeCounterUah()I

    move-result v2

    .line 159
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    goto :goto_c3

    .line 152
    .end local v2    # "_result":I
    :pswitch_98
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub;->update()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    goto :goto_c3

    .line 144
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/health/IHealthInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealthInfoCallback;

    move-result-object v2

    .line 145
    .local v2, "_arg0":Landroid/hardware/health/IHealthInfoCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/hardware/health/IHealth$Stub;->unregisterCallback(Landroid/hardware/health/IHealthInfoCallback;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    goto :goto_c3

    .line 135
    .end local v2    # "_arg0":Landroid/hardware/health/IHealthInfoCallback;
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/health/IHealthInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealthInfoCallback;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg0":Landroid/hardware/health/IHealthInfoCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Landroid/hardware/health/IHealth$Stub;->registerCallback(Landroid/hardware/health/IHealthInfoCallback;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    nop

    .line 224
    .end local v2    # "_arg0":Landroid/hardware/health/IHealthInfoCallback;
    :goto_c3
    return v1

    :sswitch_data_c4
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_9f
        :pswitch_98
        :pswitch_8d
        :pswitch_82
        :pswitch_77
        :pswitch_6c
        :pswitch_61
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
    .end packed-switch
.end method
