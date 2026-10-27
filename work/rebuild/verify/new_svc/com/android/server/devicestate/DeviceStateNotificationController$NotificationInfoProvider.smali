.class public Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;
.super Ljava/lang/Object;
.source "DeviceStateNotificationController.java"


# instance fields
.field mCachedLocale:Ljava/util/Locale;

.field public mCachedNotificationInfos:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    .line 250
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCachedLocale()Ljava/util/Locale;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedLocale:Ljava/util/Locale;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 273
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getNotificationInfos(Ljava/util/Locale;)Landroid/util/SparseArray;
    .registers 4

    .line 260
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->refreshNotificationInfos(Ljava/util/Locale;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    .line 264
    :cond_11
    :goto_11
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedNotificationInfos:Landroid/util/SparseArray;

    monitor-exit v0

    return-object p0

    .line 265
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw p0
.end method

.method public loadNotificationInfos()Landroid/util/SparseArray;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 286
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 288
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 289
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107010a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 291
    iget-object v3, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070107

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 293
    iget-object v4, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070106

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 296
    iget-object v5, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070105

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 299
    iget-object v6, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 300
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107010c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 302
    iget-object v7, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107010b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 305
    iget-object v8, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 306
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070109

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 308
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x1070108

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 312
    array-length v9, v2

    array-length v10, v3

    if-ne v9, v10, :cond_af

    array-length v9, v2

    array-length v10, v4

    if-ne v9, v10, :cond_af

    array-length v9, v2

    array-length v10, v5

    if-ne v9, v10, :cond_af

    array-length v9, v2

    array-length v10, v6

    if-ne v9, v10, :cond_af

    array-length v9, v2

    array-length v10, v7

    if-ne v9, v10, :cond_af

    array-length v9, v2

    array-length v10, v8

    if-ne v9, v10, :cond_af

    array-length v9, v2

    array-length v10, v0

    if-ne v9, v10, :cond_af

    const/4 v9, 0x0

    .line 324
    :goto_8c
    array-length v10, v2

    if-ge v9, v10, :cond_ae

    .line 325
    aget v10, v2, v9

    const/4 v11, -0x1

    if-ne v10, v11, :cond_95

    goto :goto_ab

    .line 330
    :cond_95
    new-instance v12, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    aget-object v13, v3, v9

    aget-object v14, v4, v9

    aget-object v15, v5, v9

    aget-object v16, v6, v9

    aget-object v17, v7, v9

    aget-object v18, v8, v9

    aget-object v19, v0, v9

    invoke-direct/range {v12 .. v19}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_ab
    add-int/lit8 v9, v9, 0x1

    goto :goto_8c

    :cond_ae
    return-object v1

    .line 320
    :cond_af
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The length of state identifiers and notification texts must match!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshNotificationInfos(Ljava/util/Locale;)V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedLocale:Ljava/util/Locale;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->loadNotificationInfos()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedNotificationInfos:Landroid/util/SparseArray;

    .line 281
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method
