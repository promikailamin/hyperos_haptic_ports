.class Landroid/net/metrics/INetdEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    .line 223
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 220
    iput-object p1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 221
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 230
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 372
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 374
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 376
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    sget-object v2, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 378
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_32

    .line 381
    .end local v2    # "_status":Z
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    goto :goto_3a

    .line 381
    .end local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    throw v2

    .line 385
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    .line 371
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    iget v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 357
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 359
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    sget-object v2, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 361
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2c

    .line 364
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    goto :goto_34

    .line 364
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    throw v2

    .line 368
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_34
    :goto_34
    iget v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onConnectEvent(IIILjava/lang/String;II)V
    .registers 12
    .param p1, "netId"    # I
    .param p2, "error"    # I
    .param p3, "latencyMs"    # I
    .param p4, "ipAddr"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 276
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_33

    .line 284
    .local v1, "_status":Z
    if-eqz v1, :cond_2b

    .line 289
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    nop

    .line 291
    return-void

    .line 285
    .restart local v1    # "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onConnectEvent is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "error":I
    .end local p3    # "latencyMs":I
    .end local p4    # "ipAddr":Ljava/lang/String;
    .end local p5    # "port":I
    .end local p6    # "uid":I
    throw v2
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 289
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "error":I
    .restart local p3    # "latencyMs":I
    .restart local p4    # "ipAddr":Ljava/lang/String;
    .restart local p5    # "port":I
    .restart local p6    # "uid":I
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw v1
.end method

.method public onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 13
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 236
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_38

    .line 246
    .local v1, "_status":Z
    if-eqz v1, :cond_30

    .line 251
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    nop

    .line 253
    return-void

    .line 247
    .restart local v1    # "_status":Z
    :cond_30
    :try_start_30
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onDnsEvent is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "eventType":I
    .end local p3    # "returnCode":I
    .end local p4    # "latencyMs":I
    .end local p5    # "hostname":Ljava/lang/String;
    .end local p6    # "ipAddresses":[Ljava/lang/String;
    .end local p7    # "ipAddressesCount":I
    .end local p8    # "uid":I
    throw v2
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_38

    .line 251
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "eventType":I
    .restart local p3    # "returnCode":I
    .restart local p4    # "latencyMs":I
    .restart local p5    # "hostname":Ljava/lang/String;
    .restart local p6    # "ipAddresses":[Ljava/lang/String;
    .restart local p7    # "ipAddressesCount":I
    .restart local p8    # "uid":I
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw v1
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "added"    # Z
    .param p3, "prefixString"    # Ljava/lang/String;
    .param p4, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 339
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 342
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_2d

    .line 345
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 350
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    nop

    .line 352
    return-void

    .line 346
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onNat64PrefixEvent is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "added":Z
    .end local p3    # "prefixString":Ljava/lang/String;
    .end local p4    # "prefixLength":I
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 350
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "added":Z
    .restart local p3    # "prefixString":Ljava/lang/String;
    .restart local p4    # "prefixLength":I
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    throw v1
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 263
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_2d

    .line 264
    .local v1, "_status":Z
    if-eqz v1, :cond_25

    .line 269
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    nop

    .line 271
    return-void

    .line 265
    .restart local v1    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onPrivateDnsValidationEvent is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "ipAddress":Ljava/lang/String;
    .end local p3    # "hostname":Ljava/lang/String;
    .end local p4    # "validated":Z
    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 269
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "ipAddress":Ljava/lang/String;
    .restart local p3    # "hostname":Ljava/lang/String;
    .restart local p4    # "validated":Z
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    throw v1
.end method

.method public onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 11
    .param p1, "networkIds"    # [I
    .param p2, "sentPackets"    # [I
    .param p3, "lostPackets"    # [I
    .param p4, "rttUs"    # [I
    .param p5, "sentAckDiffMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 323
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 324
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 325
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 326
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_30

    .line 327
    .local v1, "_status":Z
    if-eqz v1, :cond_28

    .line 332
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    nop

    .line 334
    return-void

    .line 328
    .restart local v1    # "_status":Z
    :cond_28
    :try_start_28
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onTcpSocketStatsEvent is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .end local p1    # "networkIds":[I
    .end local p2    # "sentPackets":[I
    .end local p3    # "lostPackets":[I
    .end local p4    # "rttUs":[I
    .end local p5    # "sentAckDiffMs":[I
    throw v2
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 332
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .restart local p1    # "networkIds":[I
    .restart local p2    # "sentPackets":[I
    .restart local p3    # "lostPackets":[I
    .restart local p4    # "rttUs":[I
    .restart local p5    # "sentAckDiffMs":[I
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    throw v1
.end method

.method public onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 28
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ethertype"    # I
    .param p4, "ipNextHeader"    # I
    .param p5, "dstHw"    # [B
    .param p6, "srcIp"    # Ljava/lang/String;
    .param p7, "dstIp"    # Ljava/lang/String;
    .param p8, "srcPort"    # I
    .param p9, "dstPort"    # I
    .param p10, "timestampNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 296
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_7b

    .line 298
    move/from16 v3, p2

    :try_start_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_77

    .line 299
    move/from16 v4, p3

    :try_start_15
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_73

    .line 300
    move/from16 v5, p4

    :try_start_1a
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_6f

    .line 301
    move-object/from16 v6, p5

    :try_start_1f
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_6b

    .line 302
    move-object/from16 v7, p6

    :try_start_24
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_67

    .line 303
    move-object/from16 v8, p7

    :try_start_29
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_63

    .line 304
    move/from16 v9, p8

    :try_start_2e
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5f

    .line 305
    move/from16 v10, p9

    :try_start_33
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_5b

    .line 306
    move-wide/from16 v11, p10

    :try_start_38
    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_57

    .line 307
    move-object/from16 v13, p0

    :try_start_3d
    iget-object v0, v13, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v14, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_55

    .line 308
    .local v0, "_status":Z
    if-eqz v0, :cond_4d

    .line 313
    .end local v0    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    nop

    .line 315
    return-void

    .line 309
    .restart local v0    # "_status":Z
    :cond_4d
    :try_start_4d
    new-instance v2, Landroid/os/RemoteException;

    const-string v14, "Method onWakeupEvent is unimplemented."

    invoke-direct {v2, v14}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v1    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "ethertype":I
    .end local p4    # "ipNextHeader":I
    .end local p5    # "dstHw":[B
    .end local p6    # "srcIp":Ljava/lang/String;
    .end local p7    # "dstIp":Ljava/lang/String;
    .end local p8    # "srcPort":I
    .end local p9    # "dstPort":I
    .end local p10    # "timestampNs":J
    throw v2
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_55

    .line 313
    .end local v0    # "_status":Z
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "ethertype":I
    .restart local p4    # "ipNextHeader":I
    .restart local p5    # "dstHw":[B
    .restart local p6    # "srcIp":Ljava/lang/String;
    .restart local p7    # "dstIp":Ljava/lang/String;
    .restart local p8    # "srcPort":I
    .restart local p9    # "dstPort":I
    .restart local p10    # "timestampNs":J
    :catchall_55
    move-exception v0

    goto :goto_90

    :catchall_57
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_90

    :catchall_5b
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_8e

    :catchall_5f
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_8c

    :catchall_63
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_8a

    :catchall_67
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_88

    :catchall_6b
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_86

    :catchall_6f
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_84

    :catchall_73
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_82

    :catchall_77
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_80

    :catchall_7b
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v3, p2

    :goto_80
    move/from16 v4, p3

    :goto_82
    move/from16 v5, p4

    :goto_84
    move-object/from16 v6, p5

    :goto_86
    move-object/from16 v7, p6

    :goto_88
    move-object/from16 v8, p7

    :goto_8a
    move/from16 v9, p8

    :goto_8c
    move/from16 v10, p9

    :goto_8e
    move-wide/from16 v11, p10

    :goto_90
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw v0
.end method
