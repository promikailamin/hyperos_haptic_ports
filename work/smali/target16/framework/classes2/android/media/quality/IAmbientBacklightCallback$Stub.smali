.class public abstract Landroid/media/quality/IAmbientBacklightCallback$Stub;
.super Landroid/os/Binder;
.source "IAmbientBacklightCallback.java"

# interfaces
.implements Landroid/media/quality/IAmbientBacklightCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/IAmbientBacklightCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/IAmbientBacklightCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAmbientBacklightEvent:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.media.quality.IAmbientBacklightCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/quality/IAmbientBacklightCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/quality/IAmbientBacklightCallback;
    .registers 3

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "android.media.quality.IAmbientBacklightCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/quality/IAmbientBacklightCallback;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Landroid/media/quality/IAmbientBacklightCallback;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Landroid/media/quality/IAmbientBacklightCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/quality/IAmbientBacklightCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    nop

    .line 55
    const-string v0, "android.media.quality.IAmbientBacklightCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v1

    .line 62
    :cond_17
    packed-switch p1, :pswitch_data_30

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 67
    :pswitch_1f
    sget-object p1, Landroid/media/quality/AmbientBacklightEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/quality/AmbientBacklightEvent;

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 69
    invoke-virtual {p0, p1}, Landroid/media/quality/IAmbientBacklightCallback$Stub;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V

    .line 70
    nop

    .line 77
    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
