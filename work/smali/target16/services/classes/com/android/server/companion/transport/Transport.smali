.class public abstract Lcom/android/server/companion/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAssociationId:I

.field public final mContext:Landroid/content/Context;

.field public final mEventListeners:Ljava/util/Set;

.field public final mFd:Landroid/os/ParcelFileDescriptor;

.field public final mListeners:Landroid/util/SparseArray;

.field public final mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mOnTransportClosed:Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

.field public final mPendingRequests:Landroid/util/SparseArray;

.field public final mRemoteIn:Ljava/io/InputStream;

.field public final mRemoteOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V
    .registers 5

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mEventListeners:Ljava/util/Set;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 137
    iput p1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 138
    iput-object p2, p0, Lcom/android/server/companion/transport/Transport;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 139
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    .line 140
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 141
    iput-object p3, p0, Lcom/android/server/companion/transport/Transport;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isOneway(I)Z
    .registers 2

    .line 0
    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const/high16 v0, 0x43000000    # 128.0f

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static isRequest(I)Z
    .registers 2

    .line 0
    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const/high16 v0, 0x63000000

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static isResponse(I)Z
    .registers 2

    .line 0
    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const/high16 v0, 0x33000000

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 152
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_25

    .line 154
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_16

    throw p0
.end method

.method public addListener(Landroid/companion/IOnTransportEventListener;)V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mEventListeners:Ljava/util/Set;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mEventListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final callback(I[B)V
    .registers 7

    .line 368
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 370
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_63

    .line 372
    :cond_f
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 373
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_d

    .line 374
    const-string v0, "CDM_CompanionTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is received from associationId "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sending data length "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to the listener(s)."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_4e
    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/IOnMessageReceivedListener;

    .line 379
    :try_start_5a
    invoke-virtual {p0}, Lcom/android/server/companion/transport/Transport;->getAssociationId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/companion/IOnMessageReceivedListener;->onMessageReceived(I[B)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_61} :catch_4e

    goto :goto_4e

    :cond_62
    return-void

    .line 373
    :goto_63
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_d

    throw p0
.end method

.method public close()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

    if-eqz v0, :cond_7

    .line 201
    invoke-interface {v0, p0}, Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;->onClosed(Lcom/android/server/companion/transport/Transport;)V

    :cond_7
    return-void
.end method

.method public final eventCallback(I)V
    .registers 4

    .line 302
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mEventListeners:Ljava/util/Set;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mEventListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/IOnTransportEventListener;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 305
    :try_start_15
    invoke-interface {v1, p1}, Landroid/companion/IOnTransportEventListener;->onTransportEvent(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_9
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_9

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 309
    :cond_1b
    :try_start_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public getAssociationId()I
    .registers 1

    .line 178
    iget p0, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    return p0
.end method

.method public final handleMessage(II[B)V
    .registers 7

    .line 280
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    const-string v1, "CDM_CompanionTransport"

    if-eqz v0, :cond_39

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sequence "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from association "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_39
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isOneway(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 287
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->processOneway(I[B)V

    return-void

    .line 288
    :cond_43
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isRequest(I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 290
    :try_start_49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;->processRequest(II[B)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    return-void

    :catch_4d
    move-exception p0

    .line 292
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to respond to 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 294
    :cond_67
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isResponse(I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 295
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;->processResponse(II[B)V

    return-void

    .line 297
    :cond_71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown message 0x"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final processOneway(I[B)V
    .registers 3

    sparse-switch p1, :sswitch_data_22

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring unknown message 0x"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_CompanionTransport"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :sswitch_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    return-void

    :sswitch_data_22
    .sparse-switch
        0x43678884 -> :sswitch_1e
        0x43708287 -> :sswitch_1e
        0x43807378 -> :sswitch_1e
        0x43847987 -> :sswitch_1e
    .end sparse-switch
.end method

.method public final processRequest(II[B)V
    .registers 7

    const v0, 0x33838567

    const v1, 0x33706573

    .line 330
    const-string v2, "CDM_CompanionTransport"

    sparse-switch p1, :sswitch_data_68

    .line 359
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown request 0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    return-void

    .line 337
    :sswitch_29
    :try_start_29
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    .line 338
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_32

    return-void

    .line 340
    :catch_32
    const-string p1, "Failed to restore permissions"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    goto :goto_67

    .line 332
    :sswitch_3d
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    return-void

    .line 349
    :sswitch_41
    :try_start_41
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    .line 350
    sget-object p3, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_4a

    return-void

    .line 352
    :catch_4a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to execute callback for request 0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    :goto_67
    return-void

    :sswitch_data_68
    .sparse-switch
        0x63678883 -> :sswitch_41
        0x63776885 -> :sswitch_41
        0x63807378 -> :sswitch_3d
        0x63826983 -> :sswitch_29
        0x63827765 -> :sswitch_41
    .end sparse-switch
.end method

.method public final processResponse(II[B)V
    .registers 5

    .line 387
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter v0

    .line 388
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    .line 389
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_59

    if-nez p0, :cond_25

    .line 391
    const-string p0, "CDM_CompanionTransport"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring unknown sequence "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    const p2, 0x33706573

    if-eq p1, p2, :cond_4e

    const p2, 0x33838567

    if-eq p1, p2, :cond_4a

    .line 405
    const-string p0, "CDM_CompanionTransport"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring unknown response 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 397
    :cond_4a
    invoke-virtual {p0, p3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 401
    :cond_4e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Remote failure"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :catchall_59
    move-exception p0

    .line 389
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public removeListener(Landroid/companion/IOnTransportEventListener;)V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mEventListeners:Ljava/util/Set;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mEventListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 174
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public requestForResponse(I[B)Ljava/util/concurrent/Future;
    .registers 7

    .line 245
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "CDM_CompanionTransport"

    const-string v1, "Requesting for response"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_b
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 247
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 248
    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter v2

    .line 249
    :try_start_19
    iget-object v3, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_34

    .line 253
    :try_start_1f
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    return-object v1

    :catch_23
    move-exception p1

    .line 255
    iget-object p2, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter p2

    .line 256
    :try_start_27
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 257
    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_31

    .line 258
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v1

    :catchall_31
    move-exception p0

    .line 257
    :try_start_32
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0

    :catchall_34
    move-exception p0

    .line 250
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final sendAndForget(I[B)Ljava/util/concurrent/Future;
    .registers 5

    .line 265
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "CDM_CompanionTransport"

    const-string v1, "Sending a one-way message"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_b
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const/4 v1, -0x1

    .line 269
    :try_start_11
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    const/4 p0, 0x0

    .line 270
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception p0

    .line 272
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public sendMessage(I[B)Ljava/util/concurrent/Future;
    .registers 5

    .line 219
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 220
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isOneway(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->sendAndForget(I[B)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 222
    :cond_10
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->requestForResponse(I[B)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 225
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send message 0x"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_CompanionTransport"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The message being sent must be either a one-way or a request."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public abstract sendMessage(II[B)V
.end method

.method public setOnTransportClosedListener(Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

    return-void
.end method

.method public abstract start()V
.end method
