.class public Lcom/android/server/pm/verify/domain/DomainVerificationSettings;
.super Ljava/lang/Object;
.source "DomainVerificationSettings.java"


# instance fields
.field public final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingPkgStates:Landroid/util/ArrayMap;

.field public final mRestoredPkgStates:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    return-void
.end method


# virtual methods
.method public mergePkgState(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/Computer;)V
    .registers 13

    .line 220
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    if-nez p3, :cond_c

    const/4 p3, 0x0

    goto :goto_10

    .line 221
    :cond_c
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    :goto_10
    if-nez p3, :cond_15

    .line 223
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_1b

    :cond_15
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    .line 225
    :goto_1b
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object p3

    .line 226
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_29
    if-ge v3, v1, :cond_64

    .line 229
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 231
    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    goto :goto_61

    .line 236
    :cond_3e
    invoke-virtual {p3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4c

    .line 237
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_61

    .line 238
    :cond_4c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eq v6, v8, :cond_5a

    .line 239
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_61

    .line 240
    :cond_5a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 246
    :cond_64
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    .line 249
    invoke-virtual {p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    :goto_70
    if-ge v2, p2, :cond_a1

    .line 253
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    .line 254
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz v0, :cond_9e

    .line 256
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v1

    .line 257
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 258
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v0

    if-nez v3, :cond_97

    .line 260
    new-instance v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-direct {v3, p3, v1, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    invoke-virtual {p0, p3, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9e

    .line 263
    :cond_97
    invoke-virtual {v3, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->addHosts(Landroid/util/ArraySet;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object p3

    .line 264
    invoke-virtual {p3, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->setLinkHandlingAllowed(Z)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    :cond_9e
    :goto_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    :cond_a1
    return-void
.end method

.method public readSettings(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V
    .registers 13

    .line 107
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    move-result-object p1

    .line 108
    iget-object v0, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->active:Landroid/util/ArrayMap;

    .line 109
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->restored:Landroid/util/ArrayMap;

    .line 111
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_b
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_41

    .line 114
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 115
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual {p2, v6}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v7, :cond_39

    .line 120
    invoke-virtual {v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 121
    invoke-virtual {p0, v7, v5, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mergePkgState(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/Computer;)V

    goto :goto_3e

    :catchall_37
    move-exception p0

    goto :goto_5b

    .line 124
    :cond_39
    iget-object v7, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 128
    :cond_41
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_45
    if-ge v3, p2, :cond_59

    .line 130
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 133
    :cond_59
    monitor-exit v1

    return-void

    :goto_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_b .. :try_end_5c} :catchall_37

    throw p0
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removePackageForUser(Ljava/lang/String;I)V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz v1, :cond_13

    .line 281
    invoke-virtual {v1, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_22

    .line 285
    :cond_13
    :goto_13
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-eqz p0, :cond_20

    .line 287
    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 289
    :cond_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_11

    throw p0
.end method

.method public removePendingState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 312
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public removeRestoredState(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 319
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public removeUser(I)V
    .registers 7

    .line 293
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_1d

    .line 296
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_1b
    move-exception p0

    goto :goto_35

    .line 301
    :cond_1d
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_23
    if-ge v2, v1, :cond_33

    .line 303
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 305
    :cond_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_1b

    throw p0
.end method

.method public restoreSettings(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V
    .registers 13

    .line 147
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    move-result-object p1

    .line 152
    iget-object v0, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->restored:Landroid/util/ArrayMap;

    .line 153
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->active:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 155
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x0

    .line 156
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 157
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 158
    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {p2, v3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez v4, :cond_32

    .line 161
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_78

    :cond_32
    :goto_32
    if-nez v4, :cond_3c

    .line 164
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    :cond_3c
    if-eqz v4, :cond_42

    .line 168
    invoke-virtual {p0, v4, v2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mergePkgState(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/Computer;)V

    goto :goto_73

    .line 175
    :cond_42
    invoke-virtual {v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_4c
    if-ltz v5, :cond_6e

    .line 178
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_6b

    .line 180
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v6, :cond_64

    if-ne v7, v8, :cond_60

    goto :goto_64

    .line 185
    :cond_60
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_6b

    .line 183
    :cond_64
    :goto_64
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    :goto_6b
    add-int/lit8 v5, v5, -0x1

    goto :goto_4c

    .line 190
    :cond_6e
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 193
    :cond_76
    monitor-exit p1

    return-void

    :goto_78
    monitor-exit p1
    :try_end_79
    .catchall {:try_start_f .. :try_end_79} :catchall_30

    throw p0
.end method

.method public writeSettings(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;ILjava/util/function/Function;)V
    .registers 13

    .line 91
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_3
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILjava/util/function/Function;)V

    .line 94
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    throw p0
.end method
