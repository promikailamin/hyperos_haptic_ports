.class public Lcom/android/server/audio/AudioServerPermissionProvider;
.super Ljava/lang/Object;
.source "AudioServerPermissionProvider.java"


# static fields
.field public static final HDS_PERMS:[B

.field public static final MONITORED_PERMS:[Ljava/lang/String;

.field public static final NONPACKAGE_UIDS:[I


# instance fields
.field public mDest:Lcom/android/media/permission/INativePermissionController;

.field public mHdsUid:I

.field public mIsUpdateDeferred:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageMap:Ljava/util/Map;

.field public final mPermMap:[[I

.field public final mPermissionPredicate:Ljava/util/function/BiPredicate;

.field public final mUserIdSupplier:Ljava/util/function/Supplier;


# direct methods
.method public static synthetic $r8$lambda$4JbauhRkHO0AT-Ifc0V4mlAWpzA(Ljava/lang/Integer;)Ljava/util/Map;
    .registers 1

    .line 177
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$W9ZZjXFn_I5uhi5LWjFkj6BUBlM(Ljava/util/Map$Entry;)Lcom/android/media/permission/UidPackageState;
    .registers 3

    .line 330
    new-instance v0, Lcom/android/media/permission/UidPackageState;

    invoke-direct {v0}, Lcom/android/media/permission/UidPackageState;-><init>()V

    .line 331
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/media/permission/UidPackageState;->uid:I

    .line 332
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/android/media/permission/UidPackageState;->packageStates:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x10

    .line 65
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/4 v1, 0x3

    .line 67
    new-array v2, v1, [B

    fill-array-data v2, :array_70

    sput-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    const/16 v2, 0x3f5

    const/16 v3, 0x417

    .line 75
    filled-new-array {v2, v3}, [I

    move-result-object v2

    sput-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->NONPACKAGE_UIDS:[I

    .line 78
    const-string v2, "android.permission.RECORD_AUDIO"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 79
    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    .line 80
    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS"

    aput-object v3, v0, v2

    .line 81
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 82
    const-string v2, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 83
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 84
    const-string v2, "android.permission.CALL_AUDIO_INTERCEPTION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 85
    const-string v2, "android.permission.ACCESS_ULTRASOUND"

    aput-object v2, v0, v1

    .line 86
    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    .line 87
    const-string v2, "android.permission.CAPTURE_MEDIA_OUTPUT"

    aput-object v2, v0, v1

    .line 88
    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    .line 89
    const-string v2, "android.permission.CAPTURE_TUNER_AUDIO_INPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 90
    const-string v2, "android.permission.CAPTURE_VOICE_COMMUNICATION_OUTPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 92
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 93
    const-string v2, "android.permission.BYPASS_CONCURRENT_RECORD_AUDIO_RESTRICTION"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 95
    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    aput-object v2, v0, v1

    return-void

    :array_70
    .array-data 1
        0xat
        0x8t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/function/BiPredicate;Ljava/util/function/Supplier;)V
    .registers 7

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 110
    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    const/4 v1, 0x1

    .line 113
    iput-boolean v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    const/4 v1, -0x1

    .line 116
    iput v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_23

    .line 130
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 132
    :cond_23
    iput-object p3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mUserIdSupplier:Ljava/util/function/Supplier;

    .line 133
    iput-object p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermissionPredicate:Ljava/util/function/BiPredicate;

    .line 135
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearIsolatedServiceUid(I)V
    .registers 14

    .line 275
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 277
    iget v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    if-eq v2, p1, :cond_3e

    .line 278
    const-string v2, "AudioServerPermissionProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected isolated service uid cleared: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", expected "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    goto :goto_a3

    :cond_3e
    const/4 v2, 0x1

    if-eqz v1, :cond_53

    .line 284
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/media/permission/UidPackageState$PackageState;

    .line 285
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILcom/android/media/permission/UidPackageState$PackageState;Z)V

    goto :goto_5a

    .line 287
    :cond_53
    const-string v1, "AudioServerPermissionProvider"

    const-string v3, "clearIsolatedService uid not found"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_5a
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez v1, :cond_62

    .line 291
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 292
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_3c

    return-void

    .line 295
    :cond_62
    :try_start_62
    sget-object v1, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_67
    if-ge v5, v3, :cond_9e

    aget-byte v6, v1, v5

    .line 296
    iget-object v7, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v7, v7, v6

    array-length v8, v7

    sub-int/2addr v8, v2

    new-array v8, v8, [I

    .line 297
    invoke-static {v7, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_7a

    goto :goto_96

    .line 299
    :cond_7a
    iget-object v9, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v9, v9, v6

    invoke-static {v9, v4, v8, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iget-object v9, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v9, v9, v6

    add-int/lit8 v10, v7, 0x1

    array-length v11, v9

    sub-int/2addr v11, v7

    sub-int/2addr v11, v2

    invoke-static {v9, v10, v8, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget-object v7, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v8, v7, v6

    .line 303
    iget-object v7, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v7, v6, v8}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_96} :catch_99
    .catchall {:try_start_62 .. :try_end_96} :catchall_3c

    :goto_96
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    :catch_99
    const/4 p1, 0x0

    .line 307
    :try_start_9a
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 309
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    :cond_9e
    const/4 p1, -0x1

    .line 311
    iput p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    .line 312
    monitor-exit v0

    return-void

    :goto_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_3c

    throw p0
.end method

.method public final getUidsHoldingPerm(I)[I
    .registers 14

    .line 347
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 348
    new-instance v1, Landroid/util/IntArray;

    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sget-object v3, Lcom/android/server/audio/AudioServerPermissionProvider;->NONPACKAGE_UIDS:[I

    array-length v4, v3

    add-int/2addr v2, v4

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 349
    array-length v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_17
    if-ge v5, v2, :cond_2d

    aget v6, v3, v5

    .line 350
    iget-object v7, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 351
    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 354
    :cond_2d
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 355
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_37

    .line 358
    :cond_4b
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mUserIdSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v3, v2

    move v5, v4

    :goto_55
    if-ge v5, v3, :cond_81

    aget v6, v2, v5

    move v7, v4

    .line 359
    :goto_5a
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_7e

    .line 360
    invoke-virtual {v1, v7}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 361
    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 362
    iget-object v9, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermissionPredicate:Ljava/util/function/BiPredicate;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    aget-object v11, v11, p1

    invoke-interface {v9, v10, v11}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 363
    invoke-virtual {v0, v8}, Landroid/util/IntArray;->add(I)V

    :cond_7b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_7e
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 367
    :cond_81
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioServerPermissionProvider;->isSpecialHdsPermission(I)Z

    move-result p1

    if-eqz p1, :cond_8f

    iget p0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_8f

    .line 368
    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    .line 370
    :cond_8f
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    .line 371
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method

.method public final isSpecialHdsPermission(I)Z
    .registers 6

    .line 316
    sget-object p0, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_10

    aget-byte v3, p0, v2

    if-ne p1, v3, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    return v1
.end method

.method public onModifyPackageState(ILcom/android/media/permission/UidPackageState$PackageState;Z)V
    .registers 7

    .line 172
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 173
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p3, :cond_2a

    .line 177
    :try_start_9
    iget-object p3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 178
    iget-object v1, p2, Lcom/android/media/permission/UidPackageState$PackageState;->packageName:Ljava/lang/String;

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/media/permission/UidPackageState$PackageState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 180
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    goto :goto_75

    .line 183
    :cond_2a
    iget-object p3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-eqz p3, :cond_73

    .line 185
    iget-object p2, p2, Lcom/android/media/permission/UidPackageState$PackageState;->packageName:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_42

    .line 187
    monitor-exit v0

    return-void

    .line 189
    :cond_42
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_51

    .line 190
    iget-object p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_51
    iget-object p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez p2, :cond_57

    .line 200
    monitor-exit v0

    return-void

    .line 202
    :cond_57
    new-instance p2, Lcom/android/media/permission/UidPackageState;

    invoke-direct {p2}, Lcom/android/media/permission/UidPackageState;-><init>()V

    .line 203
    iput p1, p2, Lcom/android/media/permission/UidPackageState;->uid:I

    .line 204
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/android/media/permission/UidPackageState;->packageStates:Ljava/util/List;
    :try_end_68
    .catchall {:try_start_9 .. :try_end_68} :catchall_28

    .line 206
    :try_start_68
    iget-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {p1, p2}, Lcom/android/media/permission/INativePermissionController;->updatePackagesForUid(Lcom/android/media/permission/UidPackageState;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6d} :catch_6e
    .catchall {:try_start_68 .. :try_end_6d} :catchall_28

    goto :goto_71

    :catch_6e
    const/4 p1, 0x0

    .line 209
    :try_start_6f
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 211
    :goto_71
    monitor-exit v0

    return-void

    .line 194
    :cond_73
    monitor-exit v0

    return-void

    .line 211
    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_28

    throw p0
.end method

.method public onPermissionStateChanged()V
    .registers 8

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 218
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 219
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    goto :goto_48

    .line 221
    :cond_e
    const-string v1, "audioserver_permission_update"

    const-wide/32 v3, 0x80000

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_c

    const/4 v1, 0x0

    :goto_17
    const/16 v5, 0x10

    if-ge v1, v5, :cond_3e

    .line 224
    :try_start_1b
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioServerPermissionProvider;->getUidsHoldingPerm(I)[I

    move-result-object v5

    .line 225
    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_35

    .line 226
    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v5, v6, v1

    .line 227
    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v6, v1, v5}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_32} :catch_39
    .catchall {:try_start_1b .. :try_end_32} :catchall_33

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_42

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_17

    :catch_39
    const/4 v1, 0x0

    .line 232
    :try_start_3a
    iput-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 234
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_33

    .line 236
    :cond_3e
    :try_start_3e
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_46

    :goto_42
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 237
    throw p0

    .line 238
    :goto_46
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_c

    throw p0
.end method

.method public onServiceStart(Lcom/android/media/permission/INativePermissionController;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_34

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_6
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServerPermissionProvider;->resetNativePackageState()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1e

    const/4 p1, 0x0

    move v1, p1

    :goto_d
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2d

    .line 150
    :try_start_11
    iget-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    if-eqz v2, :cond_20

    .line 151
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioServerPermissionProvider;->getUidsHoldingPerm(I)[I

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_35

    .line 153
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    iget-object v3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_d

    .line 155
    :cond_2d
    iput-boolean p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2f} :catch_30
    .catchall {:try_start_11 .. :try_end_2f} :catchall_1e

    goto :goto_33

    :catch_30
    const/4 p1, 0x0

    .line 158
    :try_start_31
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 160
    :goto_33
    monitor-exit v0

    :goto_34
    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_1e

    throw p0
.end method

.method public final resetNativePackageState()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez v0, :cond_5

    return-void

    .line 326
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    .line 327
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 328
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 337
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v1, v0}, Lcom/android/media/permission/INativePermissionController;->populatePackagesForUids(Ljava/util/List;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22

    return-void

    :catch_22
    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    return-void
.end method

.method public setIsolatedServiceUid(II)V
    .registers 12

    .line 242
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    if-ne v1, p1, :cond_b

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_72

    .line 244
    :cond_b
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz p2, :cond_30

    .line 245
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/media/permission/UidPackageState$PackageState;

    .line 246
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILcom/android/media/permission/UidPackageState$PackageState;Z)V

    goto :goto_38

    .line 248
    :cond_30
    const-string p2, "AudioServerPermissionProvider"

    const-string/jumbo v2, "setIsolatedService owning uid not found"

    invoke-static {p2, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_38
    iput p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    .line 252
    iget-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    const/4 p2, 0x1

    if-nez p1, :cond_43

    .line 253
    iput-boolean p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 254
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_9

    return-void

    .line 257
    :cond_43
    :try_start_43
    sget-object p1, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    array-length v2, p1

    move v3, v1

    :goto_47
    if-ge v3, v2, :cond_70

    aget-byte v4, p1, v3

    .line 258
    iget-object v5, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v5, v5, v4

    array-length v6, v5

    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [I

    .line 259
    array-length v8, v5

    invoke-static {v5, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget v5, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    aput v5, v7, v6

    .line 261
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    .line 262
    iget-object v5, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v7, v5, v4

    .line 263
    iget-object v5, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v5, v4, v7}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_68} :catch_6b
    .catchall {:try_start_43 .. :try_end_68} :catchall_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :catch_6b
    const/4 p1, 0x0

    .line 267
    :try_start_6c
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 269
    iput-boolean p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 271
    :cond_70
    monitor-exit v0

    return-void

    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_9

    throw p0
.end method
