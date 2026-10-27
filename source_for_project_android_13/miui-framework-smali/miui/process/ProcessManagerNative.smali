.class public abstract Lmiui/process/ProcessManagerNative;
.super Landroid/os/Binder;
.source "ProcessManagerNative.java"

# interfaces
.implements Lmiui/process/IProcessManager;


# static fields
.field private static volatile blacklist pm:Lmiui/process/IProcessManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "miui.IProcessManager"

    invoke-virtual {p0, p0, v0}, Lmiui/process/ProcessManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/process/IProcessManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_4
    const-string v0, "miui.IProcessManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmiui/process/IProcessManager;

    .line 36
    .local v0, "in":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_f

    .line 37
    return-object v0

    .line 40
    :cond_f
    new-instance v1, Lmiui/process/ProcessManagerProxy;

    invoke-direct {v1, p0}, Lmiui/process/ProcessManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefault()Lmiui/process/IProcessManager;
    .registers 3

    .line 51
    sget-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    if-nez v0, :cond_1c

    .line 52
    const-class v0, Lmiui/process/ProcessManagerNative;

    monitor-enter v0

    .line 53
    :try_start_7
    sget-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    if-nez v1, :cond_17

    .line 54
    const-string v1, "ProcessManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 55
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lmiui/process/ProcessManagerNative;->asInterface(Landroid/os/IBinder;)Lmiui/process/IProcessManager;

    move-result-object v2

    sput-object v2, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    .line 57
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1

    .line 59
    :cond_1c
    :goto_1c
    sget-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 44
    return-object p0
.end method

.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "miui.IProcessManager"

    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_32a

    .line 391
    :pswitch_e
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 383
    :pswitch_13
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 385
    .local v0, "pid":I
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->getRenderThreadTidByPid(I)I

    move-result v1

    .line 386
    .local v1, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    return v10

    .line 243
    .end local v0    # "pid":I
    .end local v1    # "result":I
    :pswitch_25
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lmiui/process/ProcessManagerNative;->notifyCameraPostProcessState()V

    .line 245
    return v10

    .line 372
    :pswitch_2c
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 374
    .local v0, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .local v1, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .local v2, "sessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 377
    .local v3, "isMuted":Z
    invoke-virtual {v7, v0, v1, v2, v3}, Lmiui/process/ProcessManagerNative;->reportTrackStatus(IIIZ)V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    return v10

    .line 364
    .end local v0    # "uid":I
    .end local v1    # "pid":I
    .end local v2    # "sessionId":I
    .end local v3    # "isMuted":Z
    :pswitch_46
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    .line 366
    .local v0, "version":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "jsonStr":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lmiui/process/ProcessManagerNative;->updateCameraBoosterCloudData(DLjava/lang/String;)V

    .line 368
    return v10

    .line 354
    .end local v0    # "version":D
    .end local v2    # "jsonStr":Ljava/lang/String;
    :pswitch_55
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 357
    .local v1, "gameScene":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 358
    .local v2, "appState":I
    invoke-virtual {v7, v0, v1, v2}, Lmiui/process/ProcessManagerNative;->reportGameScene(Ljava/lang/String;II)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    return v10

    .line 341
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "gameScene":I
    .end local v2    # "appState":I
    :pswitch_6b
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_75

    move v1, v10

    .line 343
    .local v1, "isConnect":Z
    :cond_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 344
    .local v11, "bleType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 345
    .local v12, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 346
    .local v13, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 347
    .local v14, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 348
    .local v15, "bleData":I
    move-object/from16 v0, p0

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lmiui/process/ProcessManagerNative;->notifyBluetoothEvent(ZIIILjava/lang/String;I)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    return v10

    .line 306
    .end local v1    # "isConnect":Z
    .end local v11    # "bleType":I
    .end local v12    # "uid":I
    .end local v13    # "pid":I
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "bleData":I
    :pswitch_97
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    .local v0, "modeValue":I
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->reclaimMemoryForCamera(I)V

    .line 309
    return v10

    .line 330
    .end local v0    # "modeValue":I
    :pswitch_a2
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 332
    .local v6, "tids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 333
    .local v11, "duration":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 334
    .restart local v13    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 335
    .local v14, "mode":I
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v11

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lmiui/process/ProcessManagerNative;->beginSchedThreads([IJII)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    return v10

    .line 321
    .end local v6    # "tids":[I
    .end local v11    # "duration":J
    .end local v13    # "pid":I
    .end local v14    # "mode":I
    :pswitch_c2
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->killPreloadApp(Ljava/lang/String;)I

    move-result v1

    .line 324
    .local v1, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    return v10

    .line 313
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "result":I
    :pswitch_d4
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 315
    .local v0, "enable":Z
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->enableHomeSchedBoost(Z)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    return v10

    .line 299
    .end local v0    # "enable":Z
    :pswitch_e2
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 301
    .local v0, "threshold":J
    invoke-virtual {v7, v0, v1}, Lmiui/process/ProcessManagerNative;->boostCameraByThreshold(J)V

    .line 302
    return v10

    .line 289
    .end local v0    # "threshold":J
    :pswitch_ed
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    nop

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lmiui/process/IPreloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IPreloadCallback;

    move-result-object v0

    .line 292
    .local v0, "callback":Lmiui/process/IPreloadCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .local v1, "type":I
    invoke-virtual {v7, v0, v1}, Lmiui/process/ProcessManagerNative;->registerPreloadCallback(Lmiui/process/IPreloadCallback;I)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    return v10

    .line 278
    .end local v0    # "callback":Lmiui/process/IPreloadCallback;
    .end local v1    # "type":I
    :pswitch_104
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v10, :cond_113

    move v2, v10

    goto :goto_114

    :cond_113
    move v2, v1

    .line 281
    .local v2, "ignoreMemory":Z
    :goto_114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v10, :cond_11b

    move v1, v10

    .line 282
    .local v1, "sync":Z
    :cond_11b
    sget-object v3, Lmiui/process/LifecycleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/process/LifecycleConfig;

    .line 283
    .local v3, "config":Lmiui/process/LifecycleConfig;
    invoke-virtual {v7, v0, v2, v1, v3}, Lmiui/process/ProcessManagerNative;->startPreloadApp(Ljava/lang/String;ZZLmiui/process/LifecycleConfig;)I

    move-result v4

    .line 284
    .local v4, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    return v10

    .line 176
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "sync":Z
    .end local v2    # "ignoreMemory":Z
    .end local v3    # "config":Lmiui/process/LifecycleConfig;
    .end local v4    # "result":I
    :pswitch_12e
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    nop

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lmiui/process/IForegroundWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundWindowListener;

    move-result-object v0

    .line 179
    .local v0, "listener":Lmiui/process/IForegroundWindowListener;
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    .line 180
    return v10

    .line 168
    .end local v0    # "listener":Lmiui/process/IForegroundWindowListener;
    :pswitch_13e
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    nop

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lmiui/process/IForegroundWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundWindowListener;

    move-result-object v0

    .line 171
    .restart local v0    # "listener":Lmiui/process/IForegroundWindowListener;
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    .line 172
    return v10

    .line 269
    .end local v0    # "listener":Lmiui/process/IForegroundWindowListener;
    :pswitch_14e
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .local v0, "flag":I
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->getActiveUidInfo(I)Ljava/util/List;

    move-result-object v1

    .line 272
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/process/ActiveUidInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 274
    return v10

    .line 258
    .end local v0    # "flag":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lmiui/process/ActiveUidInfo;>;"
    :pswitch_160
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 261
    .local v11, "targetAdj":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 262
    .local v12, "timeout":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 263
    .local v14, "userId":I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v11

    move-wide v3, v12

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lmiui/process/ProcessManagerNative;->adjBoost(Ljava/lang/String;IJI)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    return v10

    .line 249
    .end local v6    # "processName":Ljava/lang/String;
    .end local v11    # "targetAdj":I
    .end local v12    # "timeout":J
    .end local v14    # "userId":I
    :pswitch_180
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "cameraId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v10, :cond_18e

    move v1, v10

    .line 252
    .local v1, "isForeground":Z
    :cond_18e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "caller":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lmiui/process/ProcessManagerNative;->notifyCameraForegroundState(Ljava/lang/String;ZLjava/lang/String;)V

    .line 254
    return v10

    .line 229
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "isForeground":Z
    .end local v2    # "caller":Ljava/lang/String;
    :pswitch_196
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 231
    .local v6, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 232
    .local v11, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 233
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 234
    .local v13, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 235
    .restart local v14    # "userId":I
    nop

    .line 236
    move-object/from16 v0, p0

    move v1, v6

    move v2, v11

    move-object v3, v12

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lmiui/process/ProcessManagerNative;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 237
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 239
    return v10

    .line 221
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    .end local v6    # "pid":I
    .end local v11    # "uid":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "processName":Ljava/lang/String;
    .end local v14    # "userId":I
    :pswitch_1c0
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    nop

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lmiui/process/IActivityChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IActivityChangeListener;

    move-result-object v0

    .line 224
    .local v0, "listener":Lmiui/process/IActivityChangeListener;
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V

    .line 225
    return v10

    .line 209
    .end local v0    # "listener":Lmiui/process/IActivityChangeListener;
    :pswitch_1d0
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 214
    nop

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 214
    invoke-static {v2}, Lmiui/process/IActivityChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IActivityChangeListener;

    move-result-object v2

    .line 216
    .local v2, "listener":Lmiui/process/IActivityChangeListener;
    invoke-virtual {v7, v0, v1, v2}, Lmiui/process/ProcessManagerNative;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    .line 217
    return v10

    .line 201
    .end local v0    # "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "listener":Lmiui/process/IActivityChangeListener;
    :pswitch_1f0
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lmiui/process/ProcessManagerNative;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v1

    .line 203
    .local v1, "applicationThread":Lmiui/process/IMiuiApplicationThread;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v1, :cond_200

    invoke-interface {v1}, Lmiui/process/IMiuiApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_200
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 205
    return v10

    .line 192
    .end local v1    # "applicationThread":Lmiui/process/IMiuiApplicationThread;
    :pswitch_204
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 194
    .local v1, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .local v2, "pid":I
    if-eqz v1, :cond_215

    invoke-static {v1}, Lmiui/process/IMiuiApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    :cond_215
    invoke-virtual {v7, v0, v2}, Lmiui/process/ProcessManagerNative;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    return v10

    .line 184
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "pid":I
    :pswitch_21c
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lmiui/process/ProcessManagerNative;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v0

    .line 186
    .local v0, "foregroundInfo":Lmiui/process/ForegroundInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {v0, v9, v1}, Lmiui/process/ForegroundInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    return v10

    .line 160
    .end local v0    # "foregroundInfo":Lmiui/process/ForegroundInfo;
    :pswitch_22a
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    nop

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lmiui/process/IForegroundInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundInfoListener;

    move-result-object v0

    .line 163
    .local v0, "listener":Lmiui/process/IForegroundInfoListener;
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 164
    return v10

    .line 152
    .end local v0    # "listener":Lmiui/process/IForegroundInfoListener;
    :pswitch_23a
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    nop

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lmiui/process/IForegroundInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundInfoListener;

    move-result-object v0

    .line 155
    .restart local v0    # "listener":Lmiui/process/IForegroundInfoListener;
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 156
    return v10

    .line 142
    .end local v0    # "listener":Lmiui/process/IForegroundInfoListener;
    :pswitch_24a
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .local v1, "userId":I
    invoke-virtual {v7, v0, v1}, Lmiui/process/ProcessManagerNative;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v2

    .line 146
    .local v2, "isLocked":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return v10

    .line 134
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "userId":I
    .end local v2    # "isLocked":Z
    :pswitch_260
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    sget-object v0, Lmiui/process/ProcessCloudData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessCloudData;

    .line 136
    .local v0, "cloudData":Lmiui/process/ProcessCloudData;
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    return v10

    .line 124
    .end local v0    # "cloudData":Lmiui/process/ProcessCloudData;
    :pswitch_272
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27c

    move v1, v10

    :cond_27c
    move v0, v1

    .line 126
    .local v0, "isProtected":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, "timeout":I
    invoke-virtual {v7, v0, v1}, Lmiui/process/ProcessManagerNative;->protectCurrentProcess(ZI)Z

    move-result v2

    .line 128
    .local v2, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v10

    .line 111
    .end local v0    # "isProtected":Z
    .end local v1    # "timeout":I
    .end local v2    # "success":Z
    :pswitch_28c
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 113
    .local v6, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 114
    .local v11, "startNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v10, :cond_2a5

    move v3, v10

    goto :goto_2a6

    :cond_2a5
    move v3, v1

    .line 115
    .local v3, "ignoreMemory":Z
    :goto_2a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 116
    .local v12, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 117
    .local v13, "flag":I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v11

    move v4, v12

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lmiui/process/ProcessManagerNative;->startProcesses(Ljava/util/List;IZII)I

    move-result v0

    .line 118
    .local v0, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v10

    .line 103
    .end local v0    # "result":I
    .end local v3    # "ignoreMemory":Z
    .end local v6    # "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    .end local v11    # "startNum":I
    .end local v12    # "userId":I
    .end local v13    # "flag":I
    :pswitch_2bf
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessConfig;

    .line 105
    .local v0, "config":Lmiui/process/ProcessConfig;
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->updateConfig(Lmiui/process/ProcessConfig;)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    return v10

    .line 89
    .end local v0    # "config":Lmiui/process/ProcessConfig;
    :pswitch_2d1
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .local v0, "userId":I
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->getLockedApplication(I)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v1, :cond_2e6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_2e7

    :cond_2e6
    const/4 v2, -0x1

    .line 94
    .local v2, "N":I
    :goto_2e7
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2eb
    if-ge v3, v2, :cond_2f9

    .line 97
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_2eb

    .line 99
    :cond_2f9
    return v10

    .line 79
    .end local v0    # "userId":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "N":I
    .end local v3    # "i":I
    :pswitch_2fa
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .local v2, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_30c

    move v1, v10

    .line 83
    .local v1, "isLocked":Z
    :cond_30c
    invoke-virtual {v7, v0, v2, v1}, Lmiui/process/ProcessManagerNative;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v10

    .line 70
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "isLocked":Z
    .end local v2    # "userId":I
    :pswitch_313
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessConfig;

    .line 72
    .local v0, "config":Lmiui/process/ProcessConfig;
    invoke-virtual {v7, v0}, Lmiui/process/ProcessManagerNative;->kill(Lmiui/process/ProcessConfig;)Z

    move-result v1

    .line 73
    .local v1, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return v10

    nop

    :pswitch_data_32a
    .packed-switch 0x2
        :pswitch_313
        :pswitch_2fa
        :pswitch_2d1
        :pswitch_2bf
        :pswitch_28c
        :pswitch_272
        :pswitch_260
        :pswitch_24a
        :pswitch_23a
        :pswitch_22a
        :pswitch_21c
        :pswitch_204
        :pswitch_1f0
        :pswitch_1d0
        :pswitch_1c0
        :pswitch_196
        :pswitch_180
        :pswitch_160
        :pswitch_14e
        :pswitch_13e
        :pswitch_12e
        :pswitch_104
        :pswitch_ed
        :pswitch_e2
        :pswitch_d4
        :pswitch_e
        :pswitch_c2
        :pswitch_a2
        :pswitch_97
        :pswitch_6b
        :pswitch_55
        :pswitch_46
        :pswitch_2c
        :pswitch_25
        :pswitch_13
    .end packed-switch
.end method
