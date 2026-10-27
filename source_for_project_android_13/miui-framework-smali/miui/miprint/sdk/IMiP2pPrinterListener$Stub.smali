.class public abstract Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;
.super Landroid/os/Binder;
.source "IMiP2pPrinterListener.java"

# interfaces
.implements Lmiui/miprint/sdk/IMiP2pPrinterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/miprint/sdk/IMiP2pPrinterListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onP2pPrinterChange:I = 0x1

.field static final blacklist TRANSACTION_onPrinterConnectionComplete:I = 0x2

.field static final blacklist TRANSACTION_onPrinterConnectionDelay:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "miui.miprint.sdk.IMiP2pPrinterListener"

    invoke-virtual {p0, p0, v0}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/miprint/sdk/IMiP2pPrinterListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "miui.miprint.sdk.IMiP2pPrinterListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/miprint/sdk/IMiP2pPrinterListener;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lmiui/miprint/sdk/IMiP2pPrinterListener;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const-string v0, "miui.miprint.sdk.IMiP2pPrinterListener"

    .line 61
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 62
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    :cond_d
    packed-switch p1, :pswitch_data_60

    .line 72
    packed-switch p1, :pswitch_data_66

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 68
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v1

    .line 99
    :pswitch_1c
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 101
    .local v2, "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2, v3}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->onPrinterConnectionDelay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    goto :goto_5e

    .line 88
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "_arg1":I
    :pswitch_32
    sget-object v2, Lmiui/miprint/sdk/P2pPrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/miprint/sdk/P2pPrinterInfo;

    .line 90
    .local v2, "_arg0":Lmiui/miprint/sdk/P2pPrinterInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2, v3}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->onPrinterConnectionComplete(Lmiui/miprint/sdk/P2pPrinterInfo;I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    goto :goto_5e

    .line 77
    .end local v2    # "_arg0":Lmiui/miprint/sdk/P2pPrinterInfo;
    .end local v3    # "_arg1":I
    :pswitch_48
    sget-object v2, Lmiui/miprint/sdk/P2pPrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/miprint/sdk/P2pPrinterInfo;

    .line 79
    .restart local v2    # "_arg0":Lmiui/miprint/sdk/P2pPrinterInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 80
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    invoke-virtual {p0, v2, v3}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->onP2pPrinterChange(Lmiui/miprint/sdk/P2pPrinterInfo;I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    nop

    .line 112
    .end local v2    # "_arg0":Lmiui/miprint/sdk/P2pPrinterInfo;
    .end local v3    # "_arg1":I
    :goto_5e
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_48
        :pswitch_32
        :pswitch_1c
    .end packed-switch
.end method
