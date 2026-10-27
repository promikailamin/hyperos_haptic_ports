.class public abstract Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;
.super Landroid/os/Binder;
.source "IVirtualDeviceManagerNative.java"

# interfaces
.implements Landroid/companion/virtualnative/IVirtualDeviceManagerNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtualnative/IVirtualDeviceManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDeviceIdForDisplayId:I = 0x3

.field static final blacklist TRANSACTION_getDeviceIdsForUid:I = 0x1

.field static final blacklist TRANSACTION_getDevicePolicy:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.companion.virtualnative.IVirtualDeviceManagerNative"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtualnative/IVirtualDeviceManagerNative;
    .registers 3

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    const-string v0, "android.companion.virtualnative.IVirtualDeviceManagerNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/virtualnative/IVirtualDeviceManagerNative;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Landroid/companion/virtualnative/IVirtualDeviceManagerNative;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 90
    packed-switch p0, :pswitch_data_e

    .line 106
    const/4 p0, 0x0

    return-object p0

    .line 102
    :pswitch_5
    const-string p0, "getDeviceIdForDisplayId"

    return-object p0

    .line 98
    :pswitch_8
    const-string p0, "getDevicePolicy"

    return-object p0

    .line 94
    :pswitch_b
    const-string p0, "getDeviceIdsForUid"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 252
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 113
    invoke-static {p1}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 117
    nop

    .line 118
    const-string v0, "android.companion.virtualnative.IVirtualDeviceManagerNative"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_17
    packed-switch p1, :pswitch_data_5a

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 152
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, p1}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;->getDeviceIdForDisplayId(I)I

    move-result p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    goto :goto_59

    .line 140
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;->getDevicePolicy(II)I

    move-result p1

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    goto :goto_59

    .line 130
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, p1}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;->getDeviceIdsForUid(I)[I

    move-result-object p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 135
    nop

    .line 164
    :goto_59
    return v1

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_47
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
