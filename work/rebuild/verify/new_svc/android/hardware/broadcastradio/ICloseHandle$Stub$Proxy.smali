.class public Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICloseHandle.java"

# interfaces
.implements Landroid/hardware/broadcastradio/ICloseHandle;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;->mCachedVersion:I

    .line 111
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 114
    iget-object p0, p0, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public close()V
    .registers 5

    .line 122
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 125
    :try_start_c
    sget-object v2, Landroid/hardware/broadcastradio/ICloseHandle;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_25

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    goto :goto_2f

    .line 128
    :cond_27
    :try_start_27
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method close is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_25

    .line 133
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    throw p0
.end method
