.class public abstract Landroid/debug/IAdbCallback$Stub;
.super Landroid/os/Binder;
.source "IAdbCallback.java"

# interfaces
.implements Landroid/debug/IAdbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/debug/IAdbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/debug/IAdbCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDebuggingChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.debug.IAdbCallback"

    invoke-virtual {p0, p0, v0}, Landroid/debug/IAdbCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbCallback;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.debug.IAdbCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/debug/IAdbCallback;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/debug/IAdbCallback;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/debug/IAdbCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/debug/IAdbCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 60
    packed-switch p0, :pswitch_data_a

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 64
    :pswitch_5
    const-string/jumbo p0, "onDebuggingChanged"

    return-object p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 75
    invoke-static {p1}, Landroid/debug/IAdbCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 79
    nop

    .line 80
    const-string v0, "android.debug.IAdbCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 87
    :cond_17
    packed-switch p1, :pswitch_data_30

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 92
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p3

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, p1, p3}, Landroid/debug/IAdbCallback$Stub;->onDebuggingChanged(ZB)V

    .line 97
    nop

    .line 104
    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
