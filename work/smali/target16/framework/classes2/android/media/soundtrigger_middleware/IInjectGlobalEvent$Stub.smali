.class public abstract Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;
.super Landroid/os/Binder;
.source "IInjectGlobalEvent.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_setResourceContention:I = 0x2

.field static final blacklist TRANSACTION_triggerOnResourcesAvailable:I = 0x3

.field static final blacklist TRANSACTION_triggerRestart:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.media.soundtrigger_middleware.IInjectGlobalEvent"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .registers 3

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.IInjectGlobalEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    if-eqz v1, :cond_13

    .line 71
    check-cast v0, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    nop

    .line 82
    const-string v0, "android.media.soundtrigger_middleware.IInjectGlobalEvent"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 89
    :cond_17
    packed-switch p1, :pswitch_data_3c

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 108
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->triggerOnResourcesAvailable()V

    .line 109
    goto :goto_3a

    .line 99
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/media/soundtrigger_middleware/IAcknowledgeEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;

    move-result-object p3

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, p1, p3}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->setResourceContention(ZLandroid/media/soundtrigger_middleware/IAcknowledgeEvent;)V

    .line 104
    goto :goto_3a

    .line 93
    :pswitch_36
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->triggerRestart()V

    .line 94
    nop

    .line 116
    :goto_3a
    return v1

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_36
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
