.class public abstract Lmiui/usb/IMiuiUsbManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiUsbManager.java"

# interfaces
.implements Lmiui/usb/IMiuiUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/usb/IMiuiUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/usb/IMiuiUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptMdbRestore:I = 0x1

.field static final blacklist TRANSACTION_allowUsbDebugging:I = 0x3

.field static final blacklist TRANSACTION_cancelMdbRestore:I = 0x2

.field static final blacklist TRANSACTION_denyUsbDebugging:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "miui.usb.IMiuiUsbManager"

    invoke-virtual {p0, p0, v0}, Lmiui/usb/IMiuiUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/usb/IMiuiUsbManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "miui.usb.IMiuiUsbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/usb/IMiuiUsbManager;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Lmiui/usb/IMiuiUsbManager;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Lmiui/usb/IMiuiUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/usb/IMiuiUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
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

    .line 70
    const-string v0, "miui.usb.IMiuiUsbManager"

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_d
    packed-switch p1, :pswitch_data_44

    .line 82
    packed-switch p1, :pswitch_data_4a

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 78
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 109
    :pswitch_1c
    invoke-virtual {p0}, Lmiui/usb/IMiuiUsbManager$Stub;->denyUsbDebugging()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    goto :goto_43

    .line 99
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 101
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2, v3}, Lmiui/usb/IMiuiUsbManager$Stub;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    goto :goto_43

    .line 92
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_35
    invoke-virtual {p0}, Lmiui/usb/IMiuiUsbManager$Stub;->cancelMdbRestore()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    goto :goto_43

    .line 86
    :pswitch_3c
    invoke-virtual {p0}, Lmiui/usb/IMiuiUsbManager$Stub;->acceptMdbRestore()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    nop

    .line 118
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_35
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method
