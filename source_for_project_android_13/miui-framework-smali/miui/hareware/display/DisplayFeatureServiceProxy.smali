.class Lmiui/hareware/display/DisplayFeatureServiceProxy;
.super Ljava/lang/Object;
.source "DisplayFeatureServiceProxy.java"


# static fields
.field private static final blacklist INTERFACE_DESCRIPTOR:Ljava/lang/String; = "miui.hardware.display.IDisplayFeatureService"

.field private static final blacklist TRANSACTION_setAd:I = 0x3

.field private static final blacklist TRANSACTION_setCABC:I = 0x5

.field private static final blacklist TRANSACTION_setCE:I = 0x4

.field private static final blacklist TRANSACTION_setColorPrefer:I = 0x1

.field private static final blacklist TRANSACTION_setEyeCare:I = 0x2

.field private static final blacklist TRANSACTION_setFeature:I = 0x64

.field private static final blacklist TRANSACTION_setGamutMode:I = 0x6


# instance fields
.field private blacklist mDescriptor:Ljava/lang/String;

.field private blacklist mService:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    .line 29
    :try_start_5
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 31
    const-string v0, "miui.hardware.display.IDisplayFeatureService"

    iput-object v0, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    .line 34
    :cond_15
    goto :goto_17

    .line 33
    :catch_16
    move-exception v0

    .line 35
    :goto_17
    return-void
.end method

.method private varargs blacklist callTransact(I[I)I
    .registers 10
    .param p1, "transactId"    # I
    .param p2, "params"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 74
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 75
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, -0x1

    .line 77
    .local v2, "result":I
    :try_start_9
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_1b

    aget v6, p2, v5

    .line 79
    .local v6, "param":I
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    .end local v6    # "param":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 81
    :cond_1b
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    invoke-interface {v3, p1, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_33

    move v2, v3

    .line 86
    :cond_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 88
    nop

    .line 89
    return v2

    .line 86
    :catchall_33
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 88
    throw v3
.end method


# virtual methods
.method blacklist setAd(III)I
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "enable"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    invoke-direct {p0, v0, v1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method blacklist setCABC(II)I
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method blacklist setCE(II)I
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method blacklist setColorPrefer(II)I
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-direct {p0, v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method blacklist setEyeCare(II)I
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method blacklist setFeature(IIII)I
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .param p3, "value"    # I
    .param p4, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/16 v1, 0x64

    invoke-direct {p0, v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method blacklist setGamutMode(II)I
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method
