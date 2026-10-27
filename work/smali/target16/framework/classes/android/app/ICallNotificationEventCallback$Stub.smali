.class public abstract Landroid/app/ICallNotificationEventCallback$Stub;
.super Landroid/os/Binder;
.source "ICallNotificationEventCallback.java"

# interfaces
.implements Landroid/app/ICallNotificationEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ICallNotificationEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ICallNotificationEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCallNotificationPosted:I = 0x1

.field static final blacklist TRANSACTION_onCallNotificationRemoved:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.app.ICallNotificationEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/ICallNotificationEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/ICallNotificationEventCallback;
    .registers 3

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_4
    const-string v0, "android.app.ICallNotificationEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/ICallNotificationEventCallback;

    if-eqz v1, :cond_13

    .line 51
    check-cast v0, Landroid/app/ICallNotificationEventCallback;

    return-object v0

    .line 53
    :cond_13
    new-instance v0, Landroid/app/ICallNotificationEventCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/ICallNotificationEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 62
    packed-switch p0, :pswitch_data_e

    .line 74
    const/4 p0, 0x0

    return-object p0

    .line 70
    :pswitch_5
    const-string/jumbo p0, "onCallNotificationRemoved"

    return-object p0

    .line 66
    :pswitch_9
    const-string/jumbo p0, "onCallNotificationPosted"

    return-object p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 81
    invoke-static {p1}, Landroid/app/ICallNotificationEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 85
    nop

    .line 86
    const-string v0, "android.app.ICallNotificationEventCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 93
    :cond_17
    packed-switch p1, :pswitch_data_46

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 108
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 110
    sget-object p3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserHandle;

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, p1, p3}, Landroid/app/ICallNotificationEventCallback$Stub;->onCallNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 113
    goto :goto_45

    .line 98
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 100
    sget-object p3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserHandle;

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, p1, p3}, Landroid/app/ICallNotificationEventCallback$Stub;->onCallNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 103
    nop

    .line 120
    :goto_45
    return v1

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
