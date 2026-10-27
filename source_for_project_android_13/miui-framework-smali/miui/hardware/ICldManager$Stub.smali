.class public abstract Lmiui/hardware/ICldManager$Stub;
.super Landroid/os/Binder;
.source "ICldManager.java"

# interfaces
.implements Lmiui/hardware/ICldManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/ICldManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/ICldManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCldOperationStatus:I = 0x4

.field static final blacklist TRANSACTION_getFragmentLevel:I = 0x2

.field static final blacklist TRANSACTION_isCldSupported:I = 0x1

.field static final blacklist TRANSACTION_triggerCld:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "miui.hardware.ICldManager"

    invoke-virtual {p0, p0, v0}, Lmiui/hardware/ICldManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/hardware/ICldManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "miui.hardware.ICldManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/hardware/ICldManager;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lmiui/hardware/ICldManager;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lmiui/hardware/ICldManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/hardware/ICldManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
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

    .line 60
    const-string v0, "miui.hardware.ICldManager"

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
    packed-switch p1, :pswitch_data_4c

    .line 72
    packed-switch p1, :pswitch_data_52

    .line 106
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
    invoke-virtual {p0}, Lmiui/hardware/ICldManager$Stub;->getCldOperationStatus()I

    move-result v2

    .line 100
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    goto :goto_4b

    .line 91
    .end local v2    # "_result":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, v2}, Lmiui/hardware/ICldManager$Stub;->triggerCld(I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    goto :goto_4b

    .line 83
    .end local v2    # "_arg0":I
    :pswitch_35
    invoke-virtual {p0}, Lmiui/hardware/ICldManager$Stub;->getFragmentLevel()I

    move-result v2

    .line 84
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    goto :goto_4b

    .line 76
    .end local v2    # "_result":I
    :pswitch_40
    invoke-virtual {p0}, Lmiui/hardware/ICldManager$Stub;->isCldSupported()Z

    move-result v2

    .line 77
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 79
    nop

    .line 109
    .end local v2    # "_result":Z
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_40
        :pswitch_35
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
