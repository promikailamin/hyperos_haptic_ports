.class public abstract Landroid/companion/ICompanionDeviceService$Stub;
.super Landroid/os/Binder;
.source "ICompanionDeviceService.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onActionRequested:I = 0x4

.field static final blacklist TRANSACTION_onDeviceAppeared:I = 0x1

.field static final blacklist TRANSACTION_onDeviceDisappeared:I = 0x2

.field static final blacklist TRANSACTION_onDevicePresenceEvent:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.companion.ICompanionDeviceService"

    invoke-virtual {p0, p0, v0}, Landroid/companion/ICompanionDeviceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "android.companion.ICompanionDeviceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/ICompanionDeviceService;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Landroid/companion/ICompanionDeviceService;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Landroid/companion/ICompanionDeviceService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/ICompanionDeviceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 64
    packed-switch p0, :pswitch_data_16

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 80
    :pswitch_5
    const-string/jumbo p0, "onActionRequested"

    return-object p0

    .line 76
    :pswitch_9
    const-string/jumbo p0, "onDevicePresenceEvent"

    return-object p0

    .line 72
    :pswitch_d
    const-string/jumbo p0, "onDeviceDisappeared"

    return-object p0

    .line 68
    :pswitch_11
    const-string/jumbo p0, "onDeviceAppeared"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 218
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {p1}, Landroid/companion/ICompanionDeviceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    nop

    .line 96
    const-string v0, "android.companion.ICompanionDeviceService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_17
    packed-switch p1, :pswitch_data_64

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 132
    :pswitch_1f
    sget-object p1, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/AssociationInfo;

    .line 134
    sget-object p3, Landroid/companion/ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/companion/ActionRequest;

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, p1, p3}, Landroid/companion/ICompanionDeviceService$Stub;->onActionRequested(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V

    .line 137
    goto :goto_63

    .line 124
    :pswitch_36
    sget-object p1, Landroid/companion/DevicePresenceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/DevicePresenceEvent;

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceService$Stub;->onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V

    .line 127
    goto :goto_63

    .line 116
    :pswitch_45
    sget-object p1, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/AssociationInfo;

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceService$Stub;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    .line 119
    goto :goto_63

    .line 108
    :pswitch_54
    sget-object p1, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/AssociationInfo;

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, p1}, Landroid/companion/ICompanionDeviceService$Stub;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    .line 111
    nop

    .line 144
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_54
        :pswitch_45
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
