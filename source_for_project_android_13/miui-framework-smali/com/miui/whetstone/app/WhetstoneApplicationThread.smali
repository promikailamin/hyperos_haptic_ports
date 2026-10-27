.class public Lcom/miui/whetstone/app/WhetstoneApplicationThread;
.super Landroid/os/Binder;
.source "WhetstoneApplicationThread.java"

# interfaces
.implements Lcom/miui/whetstone/app/IWhetstoneApplicationThread;


# instance fields
.field private blacklist mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/app/IWhetstoneApplicationThread;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_4
    nop

    .line 27
    const-string v0, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/app/IWhetstoneApplicationThread;

    .line 28
    .local v0, "in":Lcom/miui/whetstone/app/IWhetstoneApplicationThread;
    if-eqz v0, :cond_10

    .line 29
    return-object v0

    .line 31
    :cond_10
    new-instance v1, Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist dumpMemInfo([Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .registers 3
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 41
    .local v0, "memInfo":Landroid/os/Debug$MemoryInfo;
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 42
    return-object v0
.end method

.method public blacklist longScreenshot(I)Z
    .registers 4
    .param p1, "cmd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-direct {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 50
    :cond_b
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->longScreenshot(II)Z

    move-result v0

    return v0
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

    .line 56
    const/4 v0, 0x1

    const-string v1, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    packed-switch p1, :pswitch_data_32

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 69
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    .local v1, "cmd":I
    invoke-virtual {p0, v1}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->longScreenshot(I)Z

    move-result v2

    .line 72
    .local v2, "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    int-to-byte v3, v2

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    return v0

    .line 59
    .end local v1    # "cmd":I
    .end local v2    # "result":Z
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "args":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 62
    .local v2, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {p0, v1}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->dumpMemInfo([Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    return v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_b
    .end packed-switch
.end method
