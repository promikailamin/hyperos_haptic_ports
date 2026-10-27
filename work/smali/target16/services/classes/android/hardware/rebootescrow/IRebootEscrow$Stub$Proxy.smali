.class public Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRebootEscrow.java"

# interfaces
.implements Landroid/hardware/rebootescrow/IRebootEscrow;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->mCachedVersion:I

    .line 157
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 154
    iput-object p1, p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 160
    iget-object p0, p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public retrieveKey()[B
    .registers 5

    .line 186
    invoke-virtual {p0}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 190
    :try_start_c
    sget-object v2, Landroid/hardware/rebootescrow/IRebootEscrow;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_29

    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_29
    move-exception p0

    goto :goto_33

    .line 193
    :cond_2b
    :try_start_2b
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method retrieveKey is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_29

    .line 199
    :goto_33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 201
    throw p0
.end method

.method public storeKey([B)V
    .registers 5

    .line 168
    invoke-virtual {p0}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 171
    :try_start_c
    sget-object v2, Landroid/hardware/rebootescrow/IRebootEscrow;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 173
    iget-object p0, p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_28

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p0

    goto :goto_32

    .line 175
    :cond_2a
    :try_start_2a
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method storeKey is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_28

    .line 180
    :goto_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw p0
.end method
