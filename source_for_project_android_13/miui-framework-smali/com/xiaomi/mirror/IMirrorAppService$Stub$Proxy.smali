.class Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMirrorAppService.java"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IMirrorAppService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/xiaomi/mirror/IMirrorAppService;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 165
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 173
    const-string v0, "com.xiaomi.mirror.IMirrorAppService"

    return-object v0
.end method

.method public blacklist getMasterName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 262
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.xiaomi.mirror.IMirrorAppService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 267
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 268
    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaomi/mirror/IMirrorAppService;->getMasterName()Ljava/lang/String;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    return-object v3

    .line 270
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move-object v2, v3

    .line 273
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    nop

    .line 276
    return-object v2

    .line 273
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    throw v2
.end method

.method public blacklist isWorking()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 182
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.xiaomi.mirror.IMirrorAppService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 184
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 185
    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaomi/mirror/IMirrorAppService;->isWorking()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3f

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    return v3

    .line 187
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3f

    if-eqz v3, :cond_36

    const/4 v4, 0x1

    :cond_36
    move v2, v4

    .line 190
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    nop

    .line 193
    return v2

    .line 190
    .end local v2    # "_result":Z
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    throw v2
.end method

.method public blacklist notifyInputTypeAndPos(III)V
    .registers 9
    .param p1, "inputType"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.xiaomi.mirror.IMirrorAppService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v1, p0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 250
    .local v1, "_status":Z
    if-nez v1, :cond_2e

    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 251
    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyInputTypeAndPos(III)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    return-void

    .line 255
    .end local v1    # "_status":Z
    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    throw v1
.end method

.method public blacklist notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 283
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.xiaomi.mirror.IMirrorAppService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 285
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 286
    iget-object v1, p0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 287
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 288
    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 289
    return-void

    .line 293
    .end local v1    # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    nop

    .line 295
    return-void

    .line 293
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    throw v1
.end method

.method public blacklist notifyStartActivity(Landroid/content/Intent;Z)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "fromMirror"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 200
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.xiaomi.mirror.IMirrorAppService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 202
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 205
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    :goto_17
    if-eqz p2, :cond_1a

    move v2, v1

    :cond_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v2, p0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 209
    .local v1, "_status":Z
    if-nez v1, :cond_38

    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 210
    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyStartActivity(Landroid/content/Intent;Z)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3d

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    return-void

    .line 214
    .end local v1    # "_status":Z
    :cond_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    nop

    .line 216
    return-void

    .line 214
    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw v1
.end method

.method public blacklist notifyStartActivityFromRecents(ILandroid/os/Bundle;Z)V
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "fromMirror"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 222
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.xiaomi.mirror.IMirrorAppService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    .line 225
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 228
    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    :goto_1a
    if-eqz p3, :cond_1d

    move v2, v1

    :cond_1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v2, p0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 232
    .local v1, "_status":Z
    if-nez v1, :cond_3b

    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 233
    invoke-static {}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyStartActivityFromRecents(ILandroid/os/Bundle;Z)V
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_40

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    return-void

    .line 237
    .end local v1    # "_status":Z
    :cond_3b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    nop

    .line 239
    return-void

    .line 237
    :catchall_40
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v1
.end method
