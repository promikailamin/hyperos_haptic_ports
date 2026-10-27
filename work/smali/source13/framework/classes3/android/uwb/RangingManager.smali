.class public Landroid/uwb/RangingManager;
.super Landroid/uwb/IUwbRangingCallbacks$Stub;
.source "RangingManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Uwb.RangingManager"


# instance fields
.field private final blacklist mAdapter:Landroid/uwb/IUwbAdapter;

.field private blacklist mNextSessionId:I

.field private final blacklist mRangingSessionTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Landroid/uwb/SessionHandle;",
            "Landroid/uwb/RangingSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/uwb/IUwbAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/uwb/IUwbAdapter;

    .line 41
    invoke-direct {p0}, Landroid/uwb/IUwbRangingCallbacks$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Landroid/uwb/RangingManager;->mNextSessionId:I

    .line 42
    iput-object p1, p0, Landroid/uwb/RangingManager;->mAdapter:Landroid/uwb/IUwbAdapter;

    .line 43
    return-void
.end method

.method private static blacklist convertToReason(I)I
    .registers 2
    .param p0, "reason"    # I

    .line 460
    packed-switch p0, :pswitch_data_14

    .line 484
    const/4 v0, 0x0

    return v0

    .line 480
    :pswitch_5
    const/16 v0, 0x9

    return v0

    .line 477
    :pswitch_8
    const/4 v0, 0x3

    return v0

    .line 474
    :pswitch_a
    const/4 v0, 0x7

    return v0

    .line 471
    :pswitch_c
    const/4 v0, 0x2

    return v0

    .line 468
    :pswitch_e
    const/4 v0, 0x6

    return v0

    .line 465
    :pswitch_10
    const/4 v0, 0x5

    return v0

    .line 462
    :pswitch_12
    const/4 v0, 0x1

    return v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist hasSession(Landroid/uwb/SessionHandle;)Z
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;

    .line 99
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$openSession$0(Landroid/uwb/RangingSession;)V
    .registers 1
    .param p0, "session"    # Landroid/uwb/RangingSession;

    .line 93
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->close()V

    return-void
.end method


# virtual methods
.method public blacklist onControleeAddFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 268
    monitor-enter p0

    .line 269
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 270
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onControleeAddFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    monitor-exit p0

    return-void

    .line 275
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 276
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onControleeAddFailed(ILandroid/os/PersistableBundle;)V

    .line 277
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 278
    return-void

    .line 277
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onControleeAdded(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 253
    monitor-enter p0

    .line 254
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 255
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onControleeAdded - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    monitor-exit p0

    return-void

    .line 260
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 261
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onControleeAdded(Landroid/os/PersistableBundle;)V

    .line 262
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 263
    return-void

    .line 262
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onControleeRemoveFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 297
    monitor-enter p0

    .line 298
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 299
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onControleeRemoveFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit p0

    return-void

    .line 304
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 305
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onControleeRemoveFailed(ILandroid/os/PersistableBundle;)V

    .line 306
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 307
    return-void

    .line 306
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onControleeRemoved(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 282
    monitor-enter p0

    .line 283
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 284
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onControleeRemoved - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-exit p0

    return-void

    .line 289
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 290
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onControleeRemoved(Landroid/os/PersistableBundle;)V

    .line 291
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 292
    return-void

    .line 291
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onDataReceiveFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "reason"    # I
    .param p4, "parameters"    # Landroid/os/PersistableBundle;

    .line 414
    monitor-enter p0

    .line 415
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 416
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataReceiveFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    monitor-exit p0

    return-void

    .line 421
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 422
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3, p4}, Landroid/uwb/RangingSession;->onDataReceiveFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    .line 423
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 424
    return-void

    .line 423
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onDataReceived(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "parameters"    # Landroid/os/PersistableBundle;
    .param p4, "data"    # [B

    .line 399
    monitor-enter p0

    .line 400
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 401
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataReceived - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    monitor-exit p0

    return-void

    .line 406
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 407
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3, p4}, Landroid/uwb/RangingSession;->onDataReceived(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    .line 408
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 409
    return-void

    .line 408
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onDataSendFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "reason"    # I
    .param p4, "parameters"    # Landroid/os/PersistableBundle;

    .line 384
    monitor-enter p0

    .line 385
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 386
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataSendFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    monitor-exit p0

    return-void

    .line 391
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 392
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3, p4}, Landroid/uwb/RangingSession;->onDataSendFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    .line 393
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 394
    return-void

    .line 393
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onDataSent(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 370
    monitor-enter p0

    .line 371
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 372
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataSent - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    monitor-exit p0

    return-void

    .line 376
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 377
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onDataSent(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V

    .line 378
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 379
    return-void

    .line 378
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 226
    monitor-enter p0

    .line 227
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 228
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingClosed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    monitor-exit p0

    return-void

    .line 232
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 233
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingClosed(ILandroid/os/PersistableBundle;)V

    .line 234
    iget-object v1, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    nop

    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 236
    return-void

    .line 235
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public blacklist onRangingOpenFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 119
    monitor-enter p0

    .line 120
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 121
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingOpenedFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    monitor-exit p0

    return-void

    .line 127
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 128
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingOpenFailed(ILandroid/os/PersistableBundle;)V

    .line 129
    iget-object v1, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    nop

    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public blacklist onRangingOpened(Landroid/uwb/SessionHandle;)V
    .registers 5
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 106
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingOpened - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    monitor-exit p0

    return-void

    .line 111
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 112
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0}, Landroid/uwb/RangingSession;->onRangingOpened()V

    .line 113
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onRangingPauseFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 326
    monitor-enter p0

    .line 327
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 328
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingPauseFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    monitor-exit p0

    return-void

    .line 333
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 334
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onRangingPauseFailed(ILandroid/os/PersistableBundle;)V

    .line 335
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 336
    return-void

    .line 335
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onRangingPaused(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 311
    monitor-enter p0

    .line 312
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 313
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingPaused - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    monitor-exit p0

    return-void

    .line 318
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 319
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingPaused(Landroid/os/PersistableBundle;)V

    .line 320
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 321
    return-void

    .line 320
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onRangingReconfigureFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 151
    monitor-enter p0

    .line 152
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 153
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingReconfigureFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-exit p0

    return-void

    .line 158
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 159
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingReconfigureFailed(ILandroid/os/PersistableBundle;)V

    .line 160
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 161
    return-void

    .line 160
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public blacklist onRangingReconfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 135
    monitor-enter p0

    .line 136
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 137
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingReconfigured - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    monitor-exit p0

    return-void

    .line 143
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 144
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingReconfigured(Landroid/os/PersistableBundle;)V

    .line 145
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onRangingResult(Landroid/uwb/SessionHandle;Landroid/uwb/RangingReport;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "result"    # Landroid/uwb/RangingReport;

    .line 240
    monitor-enter p0

    .line 241
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 242
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingResult - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    monitor-exit p0

    return-void

    .line 246
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 247
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingResult(Landroid/uwb/RangingReport;)V

    .line 248
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 249
    return-void

    .line 248
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onRangingResumeFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 355
    monitor-enter p0

    .line 356
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 357
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingResumeFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    monitor-exit p0

    return-void

    .line 362
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 363
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/RangingSession;->onRangingResumeFailed(ILandroid/os/PersistableBundle;)V

    .line 364
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 365
    return-void

    .line 364
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onRangingResumed(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 340
    monitor-enter p0

    .line 341
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 342
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingResumed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit p0

    return-void

    .line 347
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 348
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingResumed(Landroid/os/PersistableBundle;)V

    .line 349
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 350
    return-void

    .line 349
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onRangingStartFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 181
    monitor-enter p0

    .line 182
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 183
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingStartFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit p0

    return-void

    .line 188
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 189
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingStartFailed(ILandroid/os/PersistableBundle;)V

    .line 190
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 191
    return-void

    .line 190
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public blacklist onRangingStarted(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 166
    monitor-enter p0

    .line 167
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 168
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingStarted - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    monitor-exit p0

    return-void

    .line 173
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 174
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onRangingStarted(Landroid/os/PersistableBundle;)V

    .line 175
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 176
    return-void

    .line 175
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onRangingStopFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "parameters"    # Landroid/os/PersistableBundle;

    .line 211
    monitor-enter p0

    .line 212
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 213
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingStopFailed - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit p0

    return-void

    .line 218
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 219
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingStopFailed(ILandroid/os/PersistableBundle;)V

    .line 220
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 221
    return-void

    .line 220
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public blacklist onRangingStopped(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 196
    monitor-enter p0

    .line 197
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 198
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRangingStopped - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    monitor-exit p0

    return-void

    .line 203
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 204
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-static {p2}, Landroid/uwb/RangingManager;->convertToReason(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/uwb/RangingSession;->onRangingStopped(ILandroid/os/PersistableBundle;)V

    .line 205
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 206
    return-void

    .line 205
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public blacklist onServiceConnected(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 445
    monitor-enter p0

    .line 446
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 447
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    monitor-exit p0

    return-void

    .line 452
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 453
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onServiceConnected(Landroid/os/PersistableBundle;)V

    .line 454
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 455
    return-void

    .line 454
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist onServiceDiscovered(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 429
    monitor-enter p0

    .line 430
    :try_start_1
    invoke-direct {p0, p1}, Landroid/uwb/RangingManager;->hasSession(Landroid/uwb/SessionHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 431
    const-string v0, "Uwb.RangingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDiscovered - received unexpected SessionHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    monitor-exit p0

    return-void

    .line 436
    :cond_22
    iget-object v0, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession;

    .line 437
    .local v0, "session":Landroid/uwb/RangingSession;
    invoke-virtual {v0, p2}, Landroid/uwb/RangingSession;->onServiceDiscovered(Landroid/os/PersistableBundle;)V

    .line 438
    .end local v0    # "session":Landroid/uwb/RangingSession;
    monitor-exit p0

    .line 439
    return-void

    .line 438
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist openSession(Landroid/content/AttributionSource;Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;
    .registers 15
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callbacks"    # Landroid/uwb/RangingSession$Callback;
    .param p5, "chipId"    # Ljava/lang/String;

    .line 65
    if-eqz p5, :cond_2d

    .line 67
    :try_start_2
    iget-object v0, p0, Landroid/uwb/RangingManager;->mAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getChipIds()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "validChipIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 74
    .end local v0    # "validChipIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2d

    .line 69
    .restart local v0    # "validChipIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openSession - received invalid chipId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/uwb/RangingManager;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "params":Landroid/os/PersistableBundle;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    .end local p5    # "chipId":Ljava/lang/String;
    throw v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_29} :catch_29

    .line 72
    .end local v0    # "validChipIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Landroid/uwb/RangingManager;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "params":Landroid/os/PersistableBundle;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    .restart local p5    # "chipId":Ljava/lang/String;
    :catch_29
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    monitor-enter p0

    .line 78
    :try_start_2e
    new-instance v0, Landroid/uwb/SessionHandle;

    iget v1, p0, Landroid/uwb/RangingManager;->mNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/uwb/RangingManager;->mNextSessionId:I

    invoke-direct {v0, v1}, Landroid/uwb/SessionHandle;-><init>(I)V

    .line 79
    .local v0, "sessionHandle":Landroid/uwb/SessionHandle;
    new-instance v1, Landroid/uwb/RangingSession;

    iget-object v6, p0, Landroid/uwb/RangingManager;->mAdapter:Landroid/uwb/IUwbAdapter;

    move-object v3, v1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v0

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/uwb/RangingSession;-><init>(Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Landroid/uwb/IUwbAdapter;Landroid/uwb/SessionHandle;Ljava/lang/String;)V

    .line 81
    .local v1, "session":Landroid/uwb/RangingSession;
    iget-object v2, p0, Landroid/uwb/RangingManager;->mRangingSessionTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_6a

    .line 83
    :try_start_4a
    iget-object v3, p0, Landroid/uwb/RangingManager;->mAdapter:Landroid/uwb/IUwbAdapter;

    move-object v4, p1

    move-object v5, v0

    move-object v6, p0

    move-object v7, p2

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/uwb/IUwbAdapter;->openRanging(Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;Landroid/os/PersistableBundle;Ljava/lang/String;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_54} :catch_64
    .catchall {:try_start_4a .. :try_end_54} :catchall_6a

    .line 90
    nop

    .line 92
    :try_start_55
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 93
    .local v2, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v3, Landroid/uwb/RangingManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/uwb/RangingManager$$ExternalSyntheticLambda0;-><init>(Landroid/uwb/RangingSession;)V

    invoke-virtual {v2, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 94
    monitor-exit p0

    return-object v2

    .line 88
    .end local v2    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_64
    move-exception v2

    .line 89
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/uwb/RangingManager;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "params":Landroid/os/PersistableBundle;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    .end local p5    # "chipId":Ljava/lang/String;
    throw v3

    .line 95
    .end local v0    # "sessionHandle":Landroid/uwb/SessionHandle;
    .end local v1    # "session":Landroid/uwb/RangingSession;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/uwb/RangingManager;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "params":Landroid/os/PersistableBundle;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callbacks":Landroid/uwb/RangingSession$Callback;
    .restart local p5    # "chipId":Ljava/lang/String;
    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_55 .. :try_end_6c} :catchall_6a

    throw v0
.end method
