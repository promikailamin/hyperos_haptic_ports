.class public Lcom/android/server/companion/association/AssociationStore;
.super Ljava/lang/Object;
.source "AssociationStore.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mIdToAssociationMap:Ljava/util/Map;

.field public final mLocalListeners:Ljava/util/Set;

.field public final mLock:Ljava/lang/Object;

.field public mMaxId:I

.field public mPersisted:Z

.field public final mRemoteListeners:Landroid/os/RemoteCallbackList;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$3MFCQYAaKw3hW3B_8DXfXy-ypXc(Lcom/android/server/companion/association/AssociationStore;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->lambda$writeCacheToDisk$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6UNfG1O_umewJpaaCymv-epvW3M(ILandroid/companion/AssociationInfo;)Z
    .registers 2

    .line 314
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$BRkrZb8ynhviyAR7u9OmaFg4lm8(Ljava/lang/String;ILandroid/companion/AssociationInfo;)Z
    .registers 4

    .line 460
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_18

    .line 461
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$DvwHfwHktxXwlKwUoIDSpFBxppI(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 374
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HF99kZmAfa36vlKVuqVcVO7x-p8(Lcom/android/server/companion/association/AssociationStore;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->lambda$refreshCache$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$WqPp7Sx6IUzRAOyWj-ZI9V7ufMc(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 386
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_H3C90k_pJxrsTFh8oQiDM9sZ48(ILjava/util/List;Landroid/companion/IOnAssociationsChangedListener;Ljava/lang/Object;)V
    .registers 4

    .line 574
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, p0, :cond_d

    const/4 p0, -0x1

    if-ne p3, p0, :cond_c

    goto :goto_d

    :cond_c
    return-void

    .line 577
    :cond_d
    :goto_d
    :try_start_d
    invoke-interface {p2, p1}, Landroid/companion/IOnAssociationsChangedListener;->onAssociationsChanged(Ljava/util/List;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method

.method public static synthetic $r8$lambda$iBu2fKpSoYrXZchOsV91MofWIy0(ILandroid/companion/AssociationInfo;)Z
    .registers 2

    .line 362
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$kbDu5Jw53dOi6mwN8QBQl_cBO1I(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 3

    .line 437
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    .line 438
    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$mvRyqfUentvYolYg2fq--QGmwRs(Ljava/lang/String;ILandroid/companion/AssociationInfo;)Z
    .registers 4

    .line 473
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_18

    .line 474
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->isPending()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$qIFnSrTpyjnN2HFxj9CQjwsoocE(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 3

    .line 398
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    .line 399
    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$z7yJq3ugyUSUKLz2Va7wt8hF3Fs(ILandroid/companion/AssociationInfo;)Z
    .registers 2

    .line 352
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationDiskStore;)V
    .registers 6

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 135
    iput v0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 138
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    .line 140
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    .line 146
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/android/server/companion/association/AssociationStore;->mUserManager:Landroid/os/UserManager;

    .line 148
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 149
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public addAssociation(Landroid/companion/AssociationInfo;)V
    .registers 7

    .line 206
    const-string v0, "CDM_AssociationStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding new association=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 209
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 211
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :try_start_26
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 213
    const-string p0, "CDM_AssociationStore"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association id=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] already exists."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    monitor-exit v2

    return-void

    :catchall_4f
    move-exception p0

    goto :goto_7d

    .line 217
    :cond_51
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget v3, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 220
    invoke-virtual {p0, v1}, Lcom/android/server/companion/association/AssociationStore;->writeCacheToDisk(I)V

    .line 222
    const-string v0, "CDM_AssociationStore"

    const-string v1, "Done adding new association."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_26 .. :try_end_6d} :catchall_4f

    .line 225
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/companion/utils/MetricUtils;->logCreateAssociation(Landroid/companion/AssociationInfo;Landroid/content/Context;)V

    .line 227
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7c

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    :cond_7c
    return-void

    .line 223
    :goto_7d
    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_4f

    throw p0
.end method

.method public final broadcastChange(ILandroid/companion/AssociationInfo;)V
    .registers 6

    .line 559
    const-string v0, "CDM_AssociationStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting association changes - changeType=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    monitor-enter v0

    .line 562
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;

    .line 563
    invoke-interface {v2, p1, p2}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationChanged(ILandroid/companion/AssociationInfo;)V

    goto :goto_24

    :catchall_34
    move-exception p0

    goto :goto_56

    .line 565
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_34

    .line 566
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 567
    :try_start_3a
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p2

    .line 568
    invoke-virtual {p0, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_52

    .line 573
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    goto :goto_52

    :catchall_50
    move-exception p0

    goto :goto_54

    .line 583
    :cond_52
    :goto_52
    monitor-exit v1

    return-void

    :goto_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_50

    throw p0

    .line 565
    :goto_56
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_34

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 539
    const-string v0, "Companion Device Associations: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 540
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0xa

    const-string v2, "  "

    if-eqz v0, :cond_19

    .line 541
    const-string v0, "<empty>\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_42

    .line 543
    :cond_19
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 544
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 545
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_26

    .line 549
    :cond_42
    :goto_42
    const-string v0, "Last Removed Association:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 550
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 551
    iget-object v4, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Lcom/android/server/companion/association/AssociationDiskStore;->readLastRemovedAssociation(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 553
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_51

    :cond_73
    return-void
.end method

.method public getActiveAssociations()Ljava/util/List;
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 343
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 435
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 439
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 387
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getActiveAssociationsByUser(I)Ljava/util/List;
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 363
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getAssociationByDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/AssociationInfo;
    .registers 4

    .line 419
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    move-result-object p0

    .line 421
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/AssociationInfo;

    .line 422
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/companion/DeviceId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object p1

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAssociationById(I)Landroid/companion/AssociationInfo;
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/AssociationInfo;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 410
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;
    .registers 5

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 493
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    .line 494
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 493
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 489
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAssociationWithCallerChecks() Association id=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] doesn\'t exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAssociations()Ljava/util/List;
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    if-nez v1, :cond_d

    .line 330
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->refreshCache()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_19

    .line 332
    :cond_d
    :goto_d
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 333
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_b

    throw p0
.end method

.method public getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;
    .registers 4

    .line 372
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 375
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getAssociationsByUser(I)Ljava/util/List;
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 353
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;
    .registers 5

    .line 396
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;

    invoke-direct {p1, p3}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/AssociationInfo;

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 400
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getMaxId()I
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget p0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 190
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getNextId()I
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getMaxId()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 199
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getPendingAssociations(ILjava/lang/String;)Ljava/util/List;
    .registers 5

    .line 471
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 475
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getRevokedAssociations()Ljava/util/List;
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 449
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getRevokedAssociations(ILjava/lang/String;)Ljava/util/List;
    .registers 5

    .line 458
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 462
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final synthetic lambda$refreshCache$0()V
    .registers 8

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 159
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 162
    :cond_25
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 163
    :try_start_29
    iput-boolean v2, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    .line 165
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 166
    iput v2, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 170
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 171
    invoke-virtual {v2, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsByUsers(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/association/Associations;

    invoke-virtual {v3}, Lcom/android/server/companion/association/Associations;->getAssociations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/AssociationInfo;

    .line 174
    iget-object v5, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    :catchall_74
    move-exception p0

    goto :goto_8e

    .line 176
    :cond_76
    iget v3, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/association/Associations;

    invoke-virtual {v2}, Lcom/android/server/companion/association/Associations;->getMaxId()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    goto :goto_40

    :cond_89
    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    .line 180
    monitor-exit v1

    return-void

    :goto_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_29 .. :try_end_8f} :catchall_74

    throw p0
.end method

.method public final synthetic lambda$writeCacheToDisk$2(I)V
    .registers 6

    .line 309
    new-instance v0, Lcom/android/server/companion/association/Associations;

    invoke-direct {v0}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_8
    iget v2, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    invoke-virtual {v0, v2}, Lcom/android/server/companion/association/Associations;->setMaxId(I)V

    .line 312
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 313
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda13;

    invoke-direct {v3, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v2

    .line 312
    invoke-virtual {v0, v2}, Lcom/android/server/companion/association/Associations;->setAssociations(Ljava/util/List;)V

    .line 315
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2e

    .line 316
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociationsForUser(ILcom/android/server/companion/association/Associations;)V

    return-void

    :catchall_2e
    move-exception p0

    .line 315
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public refreshCache()V
    .registers 2

    .line 156
    new-instance v0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/association/AssociationStore;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    monitor-enter v0

    .line 503
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public registerRemoteListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 4

    .line 521
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 522
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 523
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public removeAssociation(ILjava/lang/String;)V
    .registers 6

    .line 281
    const-string v0, "CDM_AssociationStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing association id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    if-nez v1, :cond_4b

    .line 289
    const-string p0, "CDM_AssociationStore"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t remove association id=["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]. It does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    goto :goto_6f

    .line 293
    :cond_4b
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->writeCacheToDisk(I)V

    .line 295
    iget-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->writeLastRemovedAssociation(Landroid/companion/AssociationInfo;Ljava/lang/String;)V

    .line 297
    const-string p1, "CDM_AssociationStore"

    const-string p2, "Done removing association."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_1e .. :try_end_5f} :catchall_49

    .line 300
    iget-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/companion/utils/MetricUtils;->logRemoveAssociation(Landroid/companion/AssociationInfo;Landroid/content/Context;)V

    .line 302
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result p1

    if-eqz p1, :cond_6e

    const/4 p1, 0x1

    .line 303
    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    :cond_6e
    return-void

    .line 298
    :goto_6f
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_49

    throw p0
.end method

.method public unregisterRemoteListener(Landroid/companion/IOnAssociationsChangedListener;)V
    .registers 3

    .line 530
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 531
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 532
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public updateAssociation(Landroid/companion/AssociationInfo;)V
    .registers 6

    .line 236
    const-string v0, "CDM_AssociationStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating new association=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_22
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    if-nez v2, :cond_4f

    .line 245
    const-string p0, "CDM_AssociationStore"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t update association id=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]. It does not exist."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    monitor-exit v1

    return-void

    :catchall_4d
    move-exception p0

    goto :goto_a2

    .line 249
    :cond_4f
    invoke-virtual {v2, p1}, Landroid/companion/AssociationInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 250
    const-string p0, "CDM_AssociationStore"

    const-string p1, "Association is the same."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    monitor-exit v1

    return-void

    .line 254
    :cond_5e
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/association/AssociationStore;->writeCacheToDisk(I)V

    .line 257
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_22 .. :try_end_6f} :catchall_4d

    .line 259
    const-string v0, "CDM_AssociationStore"

    const-string v1, "Done updating association."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-nez v0, :cond_87

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    return-void

    .line 266
    :cond_87
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 268
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    .line 269
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 270
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    const/4 v0, 0x2

    goto :goto_9e

    :cond_9d
    const/4 v0, 0x3

    .line 272
    :goto_9e
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    :cond_a1
    return-void

    .line 257
    :goto_a2
    :try_start_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_4d

    throw p0
.end method

.method public final writeCacheToDisk(I)V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/association/AssociationStore;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
