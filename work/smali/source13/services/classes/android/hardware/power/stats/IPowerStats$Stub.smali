.class public abstract Landroid/hardware/power/stats/IPowerStats$Stub;
.super Landroid/os/Binder;
.source "IPowerStats.java"

# interfaces
.implements Landroid/hardware/power/stats/IPowerStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/stats/IPowerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getEnergyConsumed:I = 0x4

.field static final TRANSACTION_getEnergyConsumerInfo:I = 0x3

.field static final TRANSACTION_getEnergyMeterInfo:I = 0x5

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getPowerEntityInfo:I = 0x1

.field static final TRANSACTION_getStateResidency:I = 0x2

.field static final TRANSACTION_readEnergyMeter:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->markVintfStability()V

    .line 62
    sget-object v0, Landroid/hardware/power/stats/IPowerStats$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/power/stats/IPowerStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/power/stats/IPowerStats;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    sget-object v0, Landroid/hardware/power/stats/IPowerStats$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/power/stats/IPowerStats;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/hardware/power/stats/IPowerStats;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
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

    .line 85
    sget-object v0, Landroid/hardware/power/stats/IPowerStats$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_d
    sparse-switch p1, :sswitch_data_8a

    .line 109
    packed-switch p1, :pswitch_data_98

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 98
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v1

    .line 104
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 155
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 156
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Landroid/hardware/power/stats/IPowerStats$Stub;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v3

    .line 158
    .local v3, "_result":[Landroid/hardware/power/stats/EnergyMeasurement;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 160
    goto :goto_89

    .line 147
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[Landroid/hardware/power/stats/EnergyMeasurement;
    :pswitch_44
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v2

    .line 148
    .local v2, "_result":[Landroid/hardware/power/stats/Channel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 150
    goto :goto_89

    .line 138
    .end local v2    # "_result":[Landroid/hardware/power/stats/Channel;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 139
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Landroid/hardware/power/stats/IPowerStats$Stub;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v3

    .line 141
    .local v3, "_result":[Landroid/hardware/power/stats/EnergyConsumerResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 143
    goto :goto_89

    .line 130
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :pswitch_61
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v2

    .line 131
    .local v2, "_result":[Landroid/hardware/power/stats/EnergyConsumer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 133
    goto :goto_89

    .line 121
    .end local v2    # "_result":[Landroid/hardware/power/stats/EnergyConsumer;
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 122
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Landroid/hardware/power/stats/IPowerStats$Stub;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v3

    .line 124
    .local v3, "_result":[Landroid/hardware/power/stats/StateResidencyResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 126
    goto :goto_89

    .line 113
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[Landroid/hardware/power/stats/StateResidencyResult;
    :pswitch_7e
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v2

    .line 114
    .local v2, "_result":[Landroid/hardware/power/stats/PowerEntity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 116
    nop

    .line 167
    .end local v2    # "_result":[Landroid/hardware/power/stats/PowerEntity;
    :goto_89
    return v1

    :sswitch_data_8a
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_6c
        :pswitch_61
        :pswitch_4f
        :pswitch_44
        :pswitch_32
    .end packed-switch
.end method
