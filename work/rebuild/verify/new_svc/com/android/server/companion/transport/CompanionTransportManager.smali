.class public Lcom/android/server/companion/transport/CompanionTransportManager;
.super Ljava/lang/Object;
.source "CompanionTransportManager.java"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mContext:Landroid/content/Context;

.field public final mEventListeners:Landroid/util/SparseArray;

.field public final mMessageListeners:Landroid/util/SparseArray;

.field public mOverriddenTransportType:I

.field public final mTransports:Landroid/util/SparseArray;

.field public final mTransportsListeners:Landroid/os/RemoteCallbackList;


# direct methods
.method public static synthetic $r8$lambda$36uuzDRclPDQIPJiNfz_-SR7-wo(Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/companion/IOnTransportsChangedListener;Landroid/companion/IOnTransportsChangedListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->lambda$addListener$0(Landroid/companion/IOnTransportsChangedListener;Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XfXBCcfHQMio55TByIyfN2lJwbo(Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/companion/IOnTransportsChangedListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->lambda$notifyOnTransportsChanged$1(Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/association/AssociationStore;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mOverriddenTransportType:I

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    .line 86
    iput-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    return-void
.end method


# virtual methods
.method public addListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 96
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_44

    .line 98
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_16

    .line 100
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v0, 0x0

    .line 101
    :goto_28
    :try_start_28
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 102
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/transport/Transport;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/transport/Transport;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :catchall_3e
    move-exception p0

    goto :goto_42

    .line 104
    :cond_40
    monitor-exit v1

    return-void

    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_3e

    throw p0

    .line 99
    :goto_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_16

    throw p0
.end method

.method public addListener(ILandroid/companion/IOnTransportEventListener;)V
    .registers 6

    .line 111
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 113
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_42

    .line 115
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_16

    .line 117
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    .line 118
    :try_start_27
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 119
    monitor-exit v1

    return-void

    :catchall_31
    move-exception p0

    goto :goto_40

    .line 121
    :cond_33
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/transport/Transport;

    invoke-virtual {p0, p2}, Lcom/android/server/companion/transport/Transport;->addListener(Landroid/companion/IOnTransportEventListener;)V

    .line 122
    monitor-exit v1

    return-void

    :goto_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_31

    throw p0

    .line 116
    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_16

    throw p0
.end method

.method public addListener(Landroid/companion/IOnTransportsChangedListener;)V
    .registers 5

    .line 129
    const-string v0, "CDM_CompanionTransportManager"

    const-string v1, "Registering OnTransportsChangedListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 131
    :try_start_a
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 132
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/companion/IOnTransportsChangedListener;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 142
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final addListenersToTransport(Lcom/android/server/companion/transport/Transport;)V
    .registers 7

    .line 414
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 415
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 416
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/IOnMessageReceivedListener;

    .line 417
    iget-object v4, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4, v3}, Lcom/android/server/companion/transport/Transport;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    goto :goto_18

    :catchall_2e
    move-exception p0

    goto :goto_5f

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 420
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_2e

    .line 421
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    monitor-enter v1

    .line 422
    :try_start_37
    invoke-virtual {p1}, Lcom/android/server/companion/transport/Transport;->getAssociationId()I

    move-result v0

    .line 423
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_5b

    .line 425
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/IOnTransportEventListener;

    .line 426
    invoke-virtual {p1, v0}, Lcom/android/server/companion/transport/Transport;->addListener(Landroid/companion/IOnTransportEventListener;)V

    goto :goto_49

    :catchall_59
    move-exception p0

    goto :goto_5d

    .line 429
    :cond_5b
    monitor-exit v1

    return-void

    :goto_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_37 .. :try_end_5e} :catchall_59

    throw p0

    .line 420
    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_2e

    throw p0
.end method

.method public attachSystemDataTransport(ILandroid/os/ParcelFileDescriptor;)V
    .registers 6

    .line 216
    const-string v0, "CDM_CompanionTransportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching transport for association id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 219
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    .line 222
    :try_start_24
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_42

    :cond_32
    :goto_32
    const/4 p1, 0x0

    .line 227
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->initializeTransport(Landroid/companion/AssociationInfo;Landroid/os/ParcelFileDescriptor;[B)V

    .line 229
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 230
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_30

    .line 232
    const-string p0, "CDM_CompanionTransportManager"

    const-string p1, "Transport attached."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 230
    :goto_42
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_30

    throw p0
.end method

.method public createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;
    .registers 6

    .line 377
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 378
    :try_start_3
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 379
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 380
    new-instance v1, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    .line 381
    invoke-virtual {p0, v1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListenersToTransport(Lcom/android/server/companion/transport/Transport;)V

    .line 382
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 384
    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception p0

    .line 385
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final createTransport(Landroid/companion/AssociationInfo;Landroid/os/ParcelFileDescriptor;[BI)Lcom/android/server/companion/transport/Transport;
    .registers 12

    .line 303
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    .line 306
    iget p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mOverriddenTransportType:I

    const/4 v0, 0x2

    const-string v2, "CDM_CompanionTransportManager"

    if-ne p1, v0, :cond_18

    .line 307
    const-string p1, "Creating secure transport by override"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance p1, Lcom/android/server/companion/transport/SecureTransport;

    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, p2, p0, p4}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;I)V

    return-object p1

    :cond_18
    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    .line 313
    const-string p1, "Creating raw transport by override"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance p1, Lcom/android/server/companion/transport/RawTransport;

    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, p2, p0}, Lcom/android/server/companion/transport/RawTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    return-object p1

    .line 318
    :cond_28
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 319
    const-string p1, "Creating an unauthenticated secure channel"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string p1, "CDM"

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 321
    new-instance v0, Lcom/android/server/companion/transport/SecureTransport;

    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;[BLcom/android/server/companion/securechannel/AttestationVerifier;I)V

    return-object v0

    :cond_46
    move-object p1, v2

    move-object v2, p2

    if-eqz p3, :cond_5a

    .line 326
    const-string p2, "Creating a PSK-authenticated secure channel"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Lcom/android/server/companion/transport/SecureTransport;

    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;[BLcom/android/server/companion/securechannel/AttestationVerifier;I)V

    return-object v0

    .line 331
    :cond_5a
    const-string p2, "Creating a secure channel"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance p1, Lcom/android/server/companion/transport/SecureTransport;

    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v2, p0, p4}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;I)V

    return-object p1
.end method

.method public detachSystemDataTransport(I)V
    .registers 5

    .line 239
    const-string v0, "CDM_CompanionTransportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching transport for association id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 243
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 244
    :try_start_23
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/transport/Transport;

    if-nez p1, :cond_31

    .line 246
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    goto :goto_40

    .line 249
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/companion/transport/Transport;->close()V

    .line 250
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 251
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_2f

    .line 253
    const-string p0, "CDM_CompanionTransportManager"

    const-string p1, "Transport detached."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 251
    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_2f

    throw p0
.end method

.method public detachSystemDataTransport(Lcom/android/server/companion/transport/Transport;)V
    .registers 3

    .line 433
    iget p1, p1, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 434
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 437
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    :cond_11
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 349
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 350
    :try_start_3
    const-string v1, "System Data Transports: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 351
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 352
    const-string p0, "<empty>\n"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_4a

    :catchall_16
    move-exception p0

    goto :goto_4c

    .line 354
    :cond_18
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 v1, 0x0

    .line 355
    :goto_1e
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 356
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 357
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/transport/Transport;

    .line 358
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 361
    :cond_4a
    :goto_4a
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_16

    throw p0
.end method

.method public getAssociationsWithTransport()Ljava/util/List;
    .registers 6

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 263
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 264
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iget-object v4, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 265
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 264
    invoke-virtual {v3, v4}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 267
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_2a

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 270
    :cond_28
    monitor-exit v1

    return-object v0

    :goto_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_23

    throw p0
.end method

.method public final initializeTransport(Landroid/companion/AssociationInfo;Landroid/os/ParcelFileDescriptor;[B)V
    .registers 6

    .line 288
    const-string v0, "CDM_CompanionTransportManager"

    const-string v1, "Initializing transport"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getTransportFlags()I

    move-result v0

    .line 290
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createTransport(Landroid/companion/AssociationInfo;Landroid/os/ParcelFileDescriptor;[BI)Lcom/android/server/companion/transport/Transport;

    move-result-object p2

    .line 291
    invoke-virtual {p0, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListenersToTransport(Lcom/android/server/companion/transport/Transport;)V

    .line 292
    new-instance p3, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/transport/CompanionTransportManager;)V

    invoke-virtual {p2, p3}, Lcom/android/server/companion/transport/Transport;->setOnTransportClosedListener(Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;)V

    .line 293
    invoke-virtual {p2}, Lcom/android/server/companion/transport/Transport;->start()V

    .line 294
    iget-object p3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter p3

    .line 295
    :try_start_20
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    monitor-exit p3

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit p3
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final synthetic lambda$addListener$0(Landroid/companion/IOnTransportsChangedListener;Landroid/companion/IOnTransportsChangedListener;)V
    .registers 3

    if-ne p2, p1, :cond_9

    .line 137
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->getAssociationsWithTransport()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/companion/IOnTransportsChangedListener;->onTransportsChanged(Ljava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public final synthetic lambda$notifyOnTransportsChanged$1(Landroid/companion/IOnTransportsChangedListener;)V
    .registers 2

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->getAssociationsWithTransport()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/companion/IOnTransportsChangedListener;->onTransportsChanged(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public final notifyOnTransportsChanged()V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 276
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/transport/CompanionTransportManager;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 282
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public overrideTransportType(I)V
    .registers 2

    .line 368
    iput p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mOverriddenTransportType:I

    return-void
.end method

.method public removeListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .registers 5

    .line 185
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 187
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_1c

    .line 189
    :cond_f
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_d

    throw p0
.end method

.method public removeListener(ILandroid/companion/IOnTransportEventListener;)V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 151
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_39

    .line 153
    :cond_f
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_d

    .line 155
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    .line 156
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 157
    monitor-exit v1

    return-void

    :catchall_28
    move-exception p0

    goto :goto_37

    .line 159
    :cond_2a
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/transport/Transport;

    invoke-virtual {p0, p2}, Lcom/android/server/companion/transport/Transport;->removeListener(Landroid/companion/IOnTransportEventListener;)V

    .line 160
    monitor-exit v1

    return-void

    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_28

    throw p0

    .line 154
    :goto_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_d

    throw p0
.end method

.method public removeListener(Landroid/companion/IOnTransportsChangedListener;)V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 178
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeListeners(I)V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 169
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public requestPermissionRestore(I[B)Ljava/util/concurrent/Future;
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 337
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/transport/Transport;

    if-nez p0, :cond_1c

    .line 339
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing transport"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    goto :goto_25

    :cond_1c
    const p1, 0x63826983

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(I[B)Ljava/util/concurrent/Future;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 342
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_1a

    throw p0
.end method

.method public sendMessage(I[B[I)Landroid/util/SparseArray;
    .registers 9

    .line 197
    const-string v0, "CDM_CompanionTransportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 201
    :goto_2c
    :try_start_2c
    array-length v3, p3

    if-ge v2, v3, :cond_4e

    .line 202
    aget v3, p3, v2

    .line 203
    iget-object v4, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 204
    iget-object v4, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 205
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/transport/Transport;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(I[B)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 204
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4b

    :catchall_49
    move-exception p0

    goto :goto_50

    :cond_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 208
    :cond_4e
    monitor-exit v1

    return-object v0

    :goto_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_2c .. :try_end_51} :catchall_49

    throw p0
.end method
