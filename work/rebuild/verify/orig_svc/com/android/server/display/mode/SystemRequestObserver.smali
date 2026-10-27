.class public Lcom/android/server/display/mode/SystemRequestObserver;
.super Ljava/lang/Object;
.source "SystemRequestObserver.java"


# instance fields
.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mDisplaysRestrictions:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public static synthetic $r8$lambda$MpisVvszf_6fx6CYMrEstGqIF7Q(I[ZLjava/util/List;Landroid/os/IBinder;Landroid/util/SparseArray;)V
    .registers 5

    .line 137
    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_17

    const/4 p3, 0x0

    .line 139
    aget-boolean p4, p1, p3

    if-nez p4, :cond_14

    .line 140
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    .line 141
    aput-boolean p0, p1, p3

    return-void

    .line 143
    :cond_14
    invoke-interface {p2, p0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    :cond_17
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/display/mode/SystemRequestObserver;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveSystemRequestedVotes(Lcom/android/server/display/mode/SystemRequestObserver;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/SystemRequestObserver;->removeSystemRequestedVotes(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/VotesStorage;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/server/display/mode/SystemRequestObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/SystemRequestObserver$1;-><init>(Lcom/android/server/display/mode/SystemRequestObserver;)V

    iput-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    return-void
.end method


# virtual methods
.method public final addSystemRequestedVote(Landroid/os/IBinder;I[I)V
    .registers 9

    .line 75
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_18

    aget v4, p3, v3

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :catch_16
    move-exception p2

    goto :goto_5b

    .line 79
    :cond_18
    iget-object p3, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_16

    .line 80
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_33

    .line 83
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 84
    iget-object v3, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_34

    :catchall_31
    move-exception p2

    goto :goto_59

    :cond_33
    move v3, v2

    .line 87
    :goto_34
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/SystemRequestObserver;->updateStorageLocked(I)V

    .line 89
    monitor-exit p3
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_31

    if-eqz v3, :cond_58

    .line 91
    :try_start_3d
    const-string p2, "SystemRequestObserver"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "binder linking to death: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p2, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, p2, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_58} :catch_16

    :cond_58
    return-void

    .line 89
    :goto_59
    :try_start_59
    monitor-exit p3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_31

    :try_start_5a
    throw p2
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5b} :catch_16

    .line 95
    :goto_5b
    const-string p3, "SystemRequestObserver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "linking to death failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/SystemRequestObserver;->removeSystemRequestedVotes(Landroid/os/IBinder;)V

    return-void
.end method

.method public final removeSystemRequestedVote(Landroid/os/IBinder;I)V
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 104
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_26

    .line 105
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 106
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    move v1, v2

    .line 107
    :goto_20
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/SystemRequestObserver;->updateStorageLocked(I)V

    goto :goto_27

    :catchall_24
    move-exception p0

    goto :goto_5f

    :cond_26
    move v1, v2

    .line 109
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_24

    if-eqz v1, :cond_5e

    .line 112
    :try_start_2a
    const-string p2, "SystemRequestObserver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binder unlinking to death: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_45
    .catch Ljava/util/NoSuchElementException; {:try_start_2a .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception p0

    .line 115
    const-string p2, "SystemRequestObserver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlinking to death failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5e
    return-void

    .line 109
    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_24

    throw p0
.end method

.method public final removeSystemRequestedVotes(Landroid/os/IBinder;)V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-eqz p1, :cond_20

    const/4 v1, 0x0

    .line 124
    :goto_e
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 125
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/SystemRequestObserver;->updateStorageLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :catchall_1e
    move-exception p0

    goto :goto_22

    .line 128
    :cond_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1e

    throw p0
.end method

.method public requestDisplayModes(Landroid/os/IBinder;I[I)V
    .registers 4

    if-nez p3, :cond_6

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/SystemRequestObserver;->removeSystemRequestedVote(Landroid/os/IBinder;I)V

    return-void

    .line 68
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/SystemRequestObserver;->addSystemRequestedVote(Landroid/os/IBinder;I[I)V

    return-void
.end method

.method public final updateStorageLocked(I)V
    .registers 6

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 134
    new-array v1, v1, [Z

    .line 136
    iget-object v2, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    new-instance v3, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v1, v0}, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;-><init>(I[ZLjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 148
    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v2, 0x0

    .line 149
    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1e

    invoke-static {v0}, Lcom/android/server/display/mode/Vote;->forSupportedModes(Ljava/util/List;)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    const/16 v1, 0x11

    .line 148
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
