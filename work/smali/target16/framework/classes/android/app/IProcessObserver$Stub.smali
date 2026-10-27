.class public abstract Landroid/app/IProcessObserver$Stub;
.super Landroid/os/Binder;
.source "IProcessObserver.java"

# interfaces
.implements Landroid/app/IProcessObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IProcessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IProcessObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IProcessObserver"

.field static final greylist-max-o TRANSACTION_onForegroundActivitiesChanged:I = 0x2

.field static final blacklist TRANSACTION_onForegroundServicesChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onProcessDied:I = 0x4

.field static final blacklist TRANSACTION_onProcessStarted:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.app.IProcessObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IProcessObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;
    .registers 3

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    const-string v0, "android.app.IProcessObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IProcessObserver;

    if-eqz v1, :cond_13

    .line 62
    check-cast v0, Landroid/app/IProcessObserver;

    return-object v0

    .line 64
    :cond_13
    new-instance v0, Landroid/app/IProcessObserver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IProcessObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 73
    packed-switch p0, :pswitch_data_16

    .line 93
    const/4 p0, 0x0

    return-object p0

    .line 89
    :pswitch_5
    const-string/jumbo p0, "onProcessDied"

    return-object p0

    .line 85
    :pswitch_9
    const-string/jumbo p0, "onForegroundServicesChanged"

    return-object p0

    .line 81
    :pswitch_d
    const-string/jumbo p0, "onForegroundActivitiesChanged"

    return-object p0

    .line 77
    :pswitch_11
    const-string/jumbo p0, "onProcessStarted"

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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 262
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 100
    invoke-static {p1}, Landroid/app/IProcessObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    nop

    .line 105
    const-string v0, "android.app.IProcessObserver"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v1

    .line 112
    :cond_17
    packed-switch p1, :pswitch_data_72

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 157
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1, p3}, Landroid/app/IProcessObserver$Stub;->onProcessDied(II)V

    .line 162
    goto :goto_70

    .line 145
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/IProcessObserver$Stub;->onForegroundServicesChanged(III)V

    .line 152
    goto :goto_70

    .line 133
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/IProcessObserver$Stub;->onForegroundActivitiesChanged(IIZ)V

    .line 140
    goto :goto_70

    .line 117
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/IProcessObserver$Stub;->onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V

    .line 128
    nop

    .line 169
    :goto_70
    return v1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_54
        :pswitch_41
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
