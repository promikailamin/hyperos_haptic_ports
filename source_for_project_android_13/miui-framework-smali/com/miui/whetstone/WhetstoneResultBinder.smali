.class public Lcom/miui/whetstone/WhetstoneResultBinder;
.super Landroid/os/Binder;
.source "WhetstoneResultBinder.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstoneResult;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneResult;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 18
    if-nez p0, :cond_4

    .line 19
    const/4 v0, 0x0

    return-object v0

    .line 21
    :cond_4
    nop

    .line 22
    const-string v0, "com.miui.whetstone.IWhetstoneResult"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/IWhetstoneResult;

    .line 23
    .local v0, "in":Lcom/miui/whetstone/IWhetstoneResult;
    if-eqz v0, :cond_10

    .line 24
    return-object v0

    .line 27
    :cond_10
    new-instance v1, Lcom/miui/whetstone/WhetstoneResultProxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/WhetstoneResultProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public blacklist onResult(Lcom/miui/whetstone/WhetstoneResult;)V
    .registers 2
    .param p1, "result"    # Lcom/miui/whetstone/WhetstoneResult;

    .line 32
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    packed-switch p1, :pswitch_data_1e

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 40
    :pswitch_8
    const-string v0, "com.miui.whetstone.IWhetstoneResult"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/miui/whetstone/WhetstoneResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstoneResult;

    .line 42
    .local v0, "result":Lcom/miui/whetstone/WhetstoneResult;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
