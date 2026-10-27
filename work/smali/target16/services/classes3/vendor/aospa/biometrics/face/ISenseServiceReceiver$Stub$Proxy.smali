.class public Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISenseServiceReceiver.java"

# interfaces
.implements Lvendor/aospa/biometrics/face/ISenseServiceReceiver;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 172
    iget-object p0, p0, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onEnumerate([II)V
    .registers 5

    .line 248
    invoke-virtual {p0}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 250
    :try_start_8
    const-string v1, "vendor.aospa.biometrics.face.ISenseServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 252
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object p0, p0, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v1, 0x6

    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1f

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    throw p0
.end method

.method public onError(II)V
    .registers 5

    .line 222
    invoke-virtual {p0}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 224
    :try_start_8
    const-string v1, "vendor.aospa.biometrics.face.ISenseServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object p0, p0, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v1, 0x4

    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1f

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw p0
.end method

.method public onRemoved([II)V
    .registers 5

    .line 235
    invoke-virtual {p0}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 237
    :try_start_8
    const-string v1, "vendor.aospa.biometrics.face.ISenseServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 239
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object p0, p0, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v1, 0x5

    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1f

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    throw p0
.end method
