.class public abstract Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;
.super Landroid/os/Binder;
.source "IMiP2pPrinterManager.java"

# interfaces
.implements Lmiui/miprint/sdk/IMiP2pPrinterManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/miprint/sdk/IMiP2pPrinterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_connectP2pPrinter:I = 0x4

.field static final blacklist TRANSACTION_getP2pPrinters:I = 0x3

.field static final blacklist TRANSACTION_registerP2pPrinterListener:I = 0x1

.field static final blacklist TRANSACTION_unregisterP2pPrinterListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "miui.miprint.sdk.IMiP2pPrinterManager"

    invoke-virtual {p0, p0, v0}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/miprint/sdk/IMiP2pPrinterManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "miui.miprint.sdk.IMiP2pPrinterManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/miprint/sdk/IMiP2pPrinterManager;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Lmiui/miprint/sdk/IMiP2pPrinterManager;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
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

    .line 62
    const-string v0, "miui.miprint.sdk.IMiP2pPrinterManager"

    .line 63
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    :cond_d
    packed-switch p1, :pswitch_data_5a

    .line 74
    packed-switch p1, :pswitch_data_60

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 103
    :pswitch_1c
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 104
    .local v2, "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {p0, v2}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->connectP2pPrinter(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    goto :goto_59

    .line 96
    .end local v2    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    :pswitch_2e
    invoke-virtual {p0}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->getP2pPrinters()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    goto :goto_59

    .line 88
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/miprint/sdk/IMiP2pPrinterListener;

    move-result-object v2

    .line 89
    .local v2, "_arg0":Lmiui/miprint/sdk/IMiP2pPrinterListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    invoke-virtual {p0, v2}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->unregisterP2pPrinterListener(Lmiui/miprint/sdk/IMiP2pPrinterListener;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    goto :goto_59

    .line 79
    .end local v2    # "_arg0":Lmiui/miprint/sdk/IMiP2pPrinterListener;
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/miprint/sdk/IMiP2pPrinterListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/miprint/sdk/IMiP2pPrinterListener;

    move-result-object v2

    .line 80
    .restart local v2    # "_arg0":Lmiui/miprint/sdk/IMiP2pPrinterListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    invoke-virtual {p0, v2}, Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;->registerP2pPrinterListener(Lmiui/miprint/sdk/IMiP2pPrinterListener;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    nop

    .line 114
    .end local v2    # "_arg0":Lmiui/miprint/sdk/IMiP2pPrinterListener;
    :goto_59
    return v1

    :pswitch_data_5a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_47
        :pswitch_35
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
