.class public abstract Landroid/media/ISpatializerHeadTrackingCallback$Stub;
.super Landroid/os/Binder;
.source "ISpatializerHeadTrackingCallback.java"

# interfaces
.implements Landroid/media/ISpatializerHeadTrackingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ISpatializerHeadTrackingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializerHeadTrackingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onHeadToSoundStagePoseUpdated:I = 0x2

.field static final blacklist TRANSACTION_onHeadTrackingModeChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.media.ISpatializerHeadTrackingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingCallback;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.media.ISpatializerHeadTrackingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/ISpatializerHeadTrackingCallback;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/media/ISpatializerHeadTrackingCallback;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/media/ISpatializerHeadTrackingCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/ISpatializerHeadTrackingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    nop

    .line 70
    const-string v0, "android.media.ISpatializerHeadTrackingCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 71
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v1

    .line 77
    :cond_17
    packed-switch p1, :pswitch_data_36

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 90
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, p1}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;->onHeadToSoundStagePoseUpdated([F)V

    .line 93
    goto :goto_35

    .line 82
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 84
    invoke-virtual {p0, p1}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;->onHeadTrackingModeChanged(B)V

    .line 85
    nop

    .line 100
    :goto_35
    return v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
