.class public abstract Landroid/hardware/power/IPowerHintSession$Stub;
.super Landroid/os/Binder;
.source "IPowerHintSession.java"

# interfaces
.implements Landroid/hardware/power/IPowerHintSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/IPowerHintSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/IPowerHintSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x5

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_pause:I = 0x3

.field static final TRANSACTION_reportActualWorkDuration:I = 0x2

.field static final TRANSACTION_resume:I = 0x4

.field static final TRANSACTION_updateTargetWorkDuration:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->markVintfStability()V

    .line 53
    sget-object v0, Landroid/hardware/power/IPowerHintSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/power/IPowerHintSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/power/IPowerHintSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    sget-object v0, Landroid/hardware/power/IPowerHintSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/power/IPowerHintSession;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/hardware/power/IPowerHintSession;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
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

    .line 76
    sget-object v0, Landroid/hardware/power/IPowerHintSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 77
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    :cond_d
    sparse-switch p1, :sswitch_data_5a

    .line 100
    packed-switch p1, :pswitch_data_68

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 84
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 89
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v1

    .line 95
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 130
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->close()V

    .line 131
    goto :goto_58

    .line 125
    :pswitch_36
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->resume()V

    .line 126
    goto :goto_58

    .line 120
    :pswitch_3a
    invoke-virtual {p0}, Landroid/hardware/power/IPowerHintSession$Stub;->pause()V

    .line 121
    goto :goto_58

    .line 113
    :pswitch_3e
    sget-object v2, Landroid/hardware/power/WorkDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/power/WorkDuration;

    .line 114
    .local v2, "_arg0":[Landroid/hardware/power/WorkDuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Landroid/hardware/power/IPowerHintSession$Stub;->reportActualWorkDuration([Landroid/hardware/power/WorkDuration;)V

    .line 116
    goto :goto_58

    .line 105
    .end local v2    # "_arg0":[Landroid/hardware/power/WorkDuration;
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 106
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2, v3}, Landroid/hardware/power/IPowerHintSession$Stub;->updateTargetWorkDuration(J)V

    .line 108
    nop

    .line 138
    .end local v2    # "_arg0":J
    :goto_58
    return v1

    nop

    :sswitch_data_5a
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
    .end packed-switch
.end method
