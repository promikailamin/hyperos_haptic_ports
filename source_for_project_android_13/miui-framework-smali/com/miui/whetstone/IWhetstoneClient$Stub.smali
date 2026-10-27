.class public abstract Lcom/miui/whetstone/IWhetstoneClient$Stub;
.super Landroid/os/Binder;
.source "IWhetstoneClient.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstoneClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstoneClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IWhetstoneClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IWhetstoneClient"

.field static final blacklist TRANSACTION_setForegroundProcess:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.whetstone.IWhetstoneClient"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.miui.whetstone.IWhetstoneClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v1, :cond_14

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/miui/whetstone/IWhetstoneClient;

    return-object v1

    .line 30
    :cond_14
    new-instance v1, Lcom/miui/whetstone/IWhetstoneClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IWhetstoneClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 34
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

    .line 39
    const/4 v0, 0x1

    const-string v1, "com.miui.whetstone.IWhetstoneClient"

    sparse-switch p1, :sswitch_data_22

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 43
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v0

    .line 48
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->setForegroundProcess(ILjava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v0

    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
