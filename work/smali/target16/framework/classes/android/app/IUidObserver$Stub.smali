.class public abstract Landroid/app/IUidObserver$Stub;
.super Landroid/os/Binder;
.source "IUidObserver.java"

# interfaces
.implements Landroid/app/IUidObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUidObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUidObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IUidObserver"

.field static final greylist-max-o TRANSACTION_onUidActive:I = 0x2

.field static final greylist-max-o TRANSACTION_onUidCachedChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_onUidGone:I = 0x1

.field static final greylist-max-o TRANSACTION_onUidIdle:I = 0x3

.field static final blacklist TRANSACTION_onUidProcAdjChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onUidStateChanged:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.app.IUidObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUidObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;
    .registers 3

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_4
    const-string v0, "android.app.IUidObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IUidObserver;

    if-eqz v1, :cond_13

    .line 96
    check-cast v0, Landroid/app/IUidObserver;

    return-object v0

    .line 98
    :cond_13
    new-instance v0, Landroid/app/IUidObserver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IUidObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 107
    packed-switch p0, :pswitch_data_1e

    .line 135
    const/4 p0, 0x0

    return-object p0

    .line 131
    :pswitch_5
    const-string/jumbo p0, "onUidCachedChanged"

    return-object p0

    .line 127
    :pswitch_9
    const-string/jumbo p0, "onUidProcAdjChanged"

    return-object p0

    .line 123
    :pswitch_d
    const-string/jumbo p0, "onUidStateChanged"

    return-object p0

    .line 119
    :pswitch_11
    const-string/jumbo p0, "onUidIdle"

    return-object p0

    .line 115
    :pswitch_15
    const-string/jumbo p0, "onUidActive"

    return-object p0

    .line 111
    :pswitch_19
    const-string/jumbo p0, "onUidGone"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 368
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 142
    invoke-static {p1}, Landroid/app/IUidObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 146
    nop

    .line 147
    const-string v0, "android.app.IUidObserver"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 151
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return v1

    .line 154
    :cond_17
    packed-switch p1, :pswitch_data_84

    .line 220
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 211
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, p1, p3}, Landroid/app/IUidObserver$Stub;->onUidCachedChanged(IZ)V

    .line 216
    goto :goto_82

    .line 201
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, p1, p3}, Landroid/app/IUidObserver$Stub;->onUidProcAdjChanged(II)V

    .line 206
    goto :goto_82

    .line 187
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/IUidObserver$Stub;->onUidStateChanged(IIJI)V

    .line 196
    goto :goto_82

    .line 177
    :pswitch_56
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, p1, p3}, Landroid/app/IUidObserver$Stub;->onUidIdle(IZ)V

    .line 182
    goto :goto_82

    .line 169
    :pswitch_66
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, p1}, Landroid/app/IUidObserver$Stub;->onUidActive(I)V

    .line 172
    goto :goto_82

    .line 159
    :pswitch_72
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, p1, p3}, Landroid/app/IUidObserver$Stub;->onUidGone(IZ)V

    .line 164
    nop

    .line 223
    :goto_82
    return v1

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_72
        :pswitch_66
        :pswitch_56
        :pswitch_3e
        :pswitch_2f
        :pswitch_20
    .end packed-switch
.end method
