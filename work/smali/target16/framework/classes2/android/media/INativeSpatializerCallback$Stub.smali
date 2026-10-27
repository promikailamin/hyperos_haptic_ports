.class public abstract Landroid/media/INativeSpatializerCallback$Stub;
.super Landroid/os/Binder;
.source "INativeSpatializerCallback.java"

# interfaces
.implements Landroid/media/INativeSpatializerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/INativeSpatializerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/INativeSpatializerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onLevelChanged:I = 0x1

.field static final blacklist TRANSACTION_onOutputChanged:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.media.INativeSpatializerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/INativeSpatializerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/INativeSpatializerCallback;
    .registers 3

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    const-string v0, "android.media.INativeSpatializerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/INativeSpatializerCallback;

    if-eqz v1, :cond_13

    .line 61
    check-cast v0, Landroid/media/INativeSpatializerCallback;

    return-object v0

    .line 63
    :cond_13
    new-instance v0, Landroid/media/INativeSpatializerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/INativeSpatializerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    nop

    .line 72
    const-string v0, "android.media.INativeSpatializerCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 73
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 76
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v1

    .line 79
    :cond_17
    packed-switch p1, :pswitch_data_36

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 92
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, p1}, Landroid/media/INativeSpatializerCallback$Stub;->onOutputChanged(I)V

    .line 95
    goto :goto_35

    .line 84
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-virtual {p0, p1}, Landroid/media/INativeSpatializerCallback$Stub;->onLevelChanged(B)V

    .line 87
    nop

    .line 102
    :goto_35
    return v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
