.class public abstract Lmiui/process/IMiuiApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IMiuiApplicationThread.java"

# interfaces
.implements Lmiui/process/IMiuiApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/process/IMiuiApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/IMiuiApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dumpMessage:I = 0x2

.field static final blacklist TRANSACTION_getTopWindowColorMode:I = 0x3

.field static final blacklist TRANSACTION_longScreenshot:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "miui.process.IMiuiApplicationThread"

    invoke-virtual {p0, p0, v0}, Lmiui/process/IMiuiApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/process/IMiuiApplicationThread;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "miui.process.IMiuiApplicationThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/process/IMiuiApplicationThread;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lmiui/process/IMiuiApplicationThread;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lmiui/process/IMiuiApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/process/IMiuiApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "miui.process.IMiuiApplicationThread"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    :cond_d
    packed-switch p1, :pswitch_data_4a

    .line 69
    packed-switch p1, :pswitch_data_50

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v1

    .line 92
    :pswitch_1c
    invoke-virtual {p0}, Lmiui/process/IMiuiApplicationThread$Stub;->getTopWindowColorMode()I

    move-result v2

    .line 93
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    goto :goto_48

    .line 85
    .end local v2    # "_result":I
    :pswitch_27
    invoke-virtual {p0}, Lmiui/process/IMiuiApplicationThread$Stub;->dumpMessage()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    goto :goto_48

    .line 74
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 78
    invoke-virtual {p0, v2, v3}, Lmiui/process/IMiuiApplicationThread$Stub;->longScreenshot(II)Z

    move-result v4

    .line 79
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 81
    nop

    .line 102
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :goto_48
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
