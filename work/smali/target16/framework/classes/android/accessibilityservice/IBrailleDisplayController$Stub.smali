.class public abstract Landroid/accessibilityservice/IBrailleDisplayController$Stub;
.super Landroid/os/Binder;
.source "IBrailleDisplayController.java"

# interfaces
.implements Landroid/accessibilityservice/IBrailleDisplayController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IBrailleDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IBrailleDisplayController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onConnectionFailed:I = 0x2

.field static final blacklist TRANSACTION_onDisconnected:I = 0x4

.field static final blacklist TRANSACTION_onInput:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.accessibilityservice.IBrailleDisplayController"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IBrailleDisplayController;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.accessibilityservice.IBrailleDisplayController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/accessibilityservice/IBrailleDisplayController;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/accessibilityservice/IBrailleDisplayController;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/accessibilityservice/IBrailleDisplayController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/accessibilityservice/IBrailleDisplayController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_16

    .line 90
    const/4 p0, 0x0

    return-object p0

    .line 86
    :pswitch_5
    const-string/jumbo p0, "onDisconnected"

    return-object p0

    .line 82
    :pswitch_9
    const-string/jumbo p0, "onInput"

    return-object p0

    .line 78
    :pswitch_d
    const-string/jumbo p0, "onConnectionFailed"

    return-object p0

    .line 74
    :pswitch_11
    const-string/jumbo p0, "onConnected"

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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 220
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 97
    invoke-static {p1}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 101
    nop

    .line 102
    const-string v0, "android.accessibilityservice.IBrailleDisplayController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v1

    .line 109
    :cond_17
    packed-switch p1, :pswitch_data_4e

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 139
    :pswitch_1f
    invoke-virtual {p0}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->onDisconnected()V

    .line 140
    goto :goto_4c

    .line 132
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->onInput([B)V

    .line 135
    goto :goto_4c

    .line 124
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->onConnectionFailed(I)V

    .line 127
    goto :goto_4c

    .line 114
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/accessibilityservice/IBrailleDisplayConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IBrailleDisplayConnection;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, p1, p3}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->onConnected(Landroid/accessibilityservice/IBrailleDisplayConnection;[B)V

    .line 119
    nop

    .line 147
    :goto_4c
    return v1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_39
        :pswitch_2e
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
