.class public abstract Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;
.super Landroid/os/Binder;
.source "IInjectModelEvent.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/IInjectModelEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/IInjectModelEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_triggerUnloadModel:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.media.soundtrigger_middleware.IInjectModelEvent"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.IInjectModelEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    nop

    .line 64
    const-string v0, "android.media.soundtrigger_middleware.IInjectModelEvent"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 68
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v1

    .line 71
    :cond_17
    packed-switch p1, :pswitch_data_24

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 75
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->triggerUnloadModel()V

    .line 76
    nop

    .line 83
    return v1

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
