.class public abstract Lmiui/swap/ISwap$Stub;
.super Landroid/os/Binder;
.source "ISwap.java"

# interfaces
.implements Lmiui/swap/ISwap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/swap/ISwap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/swap/ISwap$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_SWAP_isSupport:I = 0x1

.field static final blacklist TRANSACTION_SWAP_trigger:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "miui.swap.ISwap"

    invoke-virtual {p0, p0, v0}, Lmiui/swap/ISwap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/swap/ISwap;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_4
    const-string v0, "miui.swap.ISwap"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/swap/ISwap;

    if-eqz v1, :cond_14

    .line 43
    move-object v1, v0

    check-cast v1, Lmiui/swap/ISwap;

    return-object v1

    .line 45
    :cond_14
    new-instance v1, Lmiui/swap/ISwap$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/swap/ISwap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 49
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

    .line 53
    const-string v0, "miui.swap.ISwap"

    .line 54
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    :cond_d
    packed-switch p1, :pswitch_data_34

    .line 65
    packed-switch p1, :pswitch_data_3a

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 61
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1

    .line 76
    :pswitch_1c
    invoke-virtual {p0}, Lmiui/swap/ISwap$Stub;->SWAP_trigger()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    goto :goto_32

    .line 69
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_27
    invoke-virtual {p0}, Lmiui/swap/ISwap$Stub;->SWAP_isSupport()Z

    move-result v2

    .line 70
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    nop

    .line 86
    .end local v2    # "_result":Z
    :goto_32
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
