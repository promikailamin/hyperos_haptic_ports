.class public abstract Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub;
.super Landroid/os/Binder;
.source "IComputerControlSessionCallback.java"

# interfaces
.implements Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSessionClosed:I = 0x4

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x2

.field static final blacklist TRANSACTION_onSessionCreationFailed:I = 0x3

.field static final blacklist TRANSACTION_onSessionPending:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.companion.virtual.computercontrol.IComputerControlSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback;
    .registers 3

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    const-string v0, "android.companion.virtual.computercontrol.IComputerControlSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback;

    if-eqz v1, :cond_13

    .line 61
    check-cast v0, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback;

    return-object v0

    .line 63
    :cond_13
    new-instance v0, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 72
    packed-switch p0, :pswitch_data_16

    .line 92
    const/4 p0, 0x0

    return-object p0

    .line 88
    :pswitch_5
    const-string/jumbo p0, "onSessionClosed"

    return-object p0

    .line 84
    :pswitch_9
    const-string/jumbo p0, "onSessionCreationFailed"

    return-object p0

    .line 80
    :pswitch_d
    const-string/jumbo p0, "onSessionCreated"

    return-object p0

    .line 76
    :pswitch_11
    const-string/jumbo p0, "onSessionPending"

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

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 229
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 99
    invoke-static {p1}, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 103
    nop

    .line 104
    const-string v0, "android.companion.virtual.computercontrol.IComputerControlSessionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 108
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 111
    :cond_17
    packed-switch p1, :pswitch_data_5a

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 143
    :pswitch_1f
    invoke-virtual {p0}, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub;->onSessionClosed()V

    .line 144
    goto :goto_58

    .line 136
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub;->onSessionCreationFailed(I)V

    .line 139
    goto :goto_58

    .line 124
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object p3

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/companion/virtual/computercontrol/IComputerControlSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/computercontrol/IComputerControlSession;

    move-result-object p4

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, p1, p3, p4}, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub;->onSessionCreated(ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/computercontrol/IComputerControlSession;)V

    .line 131
    goto :goto_58

    .line 116
    :pswitch_49
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub;->onSessionPending(Landroid/app/PendingIntent;)V

    .line 119
    nop

    .line 151
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_49
        :pswitch_2e
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
