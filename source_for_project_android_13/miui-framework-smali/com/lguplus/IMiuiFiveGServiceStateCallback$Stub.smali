.class public abstract Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;
.super Landroid/os/Binder;
.source "IMiuiFiveGServiceStateCallback.java"

# interfaces
.implements Lcom/lguplus/IMiuiFiveGServiceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/IMiuiFiveGServiceStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_on5GAvailable:I = 0x1

.field static final blacklist TRANSACTION_on5GBearerAdded:I = 0x3

.field static final blacklist TRANSACTION_on5GBearerDeleted:I = 0x4

.field static final blacklist TRANSACTION_on5GUnavailable:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "com.lguplus.IMiuiFiveGServiceStateCallback"

    invoke-virtual {p0, p0, v0}, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/lguplus/IMiuiFiveGServiceStateCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "com.lguplus.IMiuiFiveGServiceStateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lguplus/IMiuiFiveGServiceStateCallback;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/lguplus/IMiuiFiveGServiceStateCallback;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const-string v0, "com.lguplus.IMiuiFiveGServiceStateCallback"

    .line 62
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 63
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    :cond_d
    packed-switch p1, :pswitch_data_56

    .line 73
    packed-switch p1, :pswitch_data_5c

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 69
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v1

    .line 105
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;->on5GBearerDeleted(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    goto :goto_54

    .line 96
    .end local v2    # "_arg0":I
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, v2}, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;->on5GBearerAdded(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    goto :goto_54

    .line 87
    .end local v2    # "_arg0":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 89
    invoke-virtual {p0, v2}, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;->on5GUnavailable(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    goto :goto_54

    .line 78
    .end local v2    # "_arg0":I
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 80
    invoke-virtual {p0, v2}, Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;->on5GAvailable(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    nop

    .line 116
    .end local v2    # "_arg0":I
    :goto_54
    return v1

    nop

    :pswitch_data_56
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_46
        :pswitch_38
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method
