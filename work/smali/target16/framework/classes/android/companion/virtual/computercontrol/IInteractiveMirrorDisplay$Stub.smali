.class public abstract Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Stub;
.super Landroid/os/Binder;
.source "IInteractiveMirrorDisplay.java"

# interfaces
.implements Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x3

.field static final blacklist TRANSACTION_resize:I = 0x1

.field static final blacklist TRANSACTION_sendTouchEvent:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.companion.virtual.computercontrol.IInteractiveMirrorDisplay"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.companion.virtual.computercontrol.IInteractiveMirrorDisplay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 68
    packed-switch p0, :pswitch_data_10

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 80
    :pswitch_5
    const-string p0, "close"

    return-object p0

    .line 76
    :pswitch_8
    const-string/jumbo p0, "sendTouchEvent"

    return-object p0

    .line 72
    :pswitch_c
    const-string/jumbo p0, "resize"

    return-object p0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 196
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {p1}, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.companion.virtual.computercontrol.IInteractiveMirrorDisplay"

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
    packed-switch p1, :pswitch_data_42

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 125
    :pswitch_1f
    invoke-virtual {p0}, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Stub;->close()V

    .line 126
    goto :goto_41

    .line 118
    :pswitch_23
    sget-object p1, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualTouchEvent;

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, p1}, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Stub;->sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V

    .line 121
    goto :goto_41

    .line 108
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, p1, p3}, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay$Stub;->resize(II)V

    .line 113
    nop

    .line 133
    :goto_41
    return v1

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_32
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
