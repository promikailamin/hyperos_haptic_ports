.class public final Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# instance fields
.field public final mCache:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 1198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addDisabledActivityLocked(ILandroid/content/ComponentName;J)V
    .registers 6

    .line 1219
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1222
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    move-result-object p0

    .line 1223
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->putDisableActivityLocked(Landroid/content/ComponentName;J)V

    .line 1224
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public addDisabledAppLocked(ILjava/lang/String;J)V
    .registers 6

    .line 1209
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    move-result-object p0

    .line 1213
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->putDisableAppsLocked(Ljava/lang/String;J)V

    .line 1214
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public dump(ILjava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 1262
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1263
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-eqz p0, :cond_13

    .line 1265
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 1267
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public getAppDisabledActivities(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 4

    .line 1251
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_6
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-eqz p0, :cond_17

    .line 1256
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->getAppDisabledActivitiesLocked(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    .line 1257
    :goto_18
    monitor-exit v0

    return-object p0

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public getAppDisabledExpiration(ILjava/lang/String;)J
    .registers 4

    .line 1239
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1242
    :try_start_6
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-eqz p0, :cond_17

    .line 1243
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->getAppDisabledExpirationLocked(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_19

    :catchall_15
    move-exception p0

    goto :goto_1b

    :cond_17
    const-wide/16 p0, 0x0

    .line 1244
    :goto_19
    monitor-exit v0

    return-wide p0

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_15

    throw p0
.end method

.method public final getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    .registers 4

    .line 1273
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-nez v0, :cond_15

    .line 1275
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;-><init>(Lcom/android/server/autofill/AutofillManagerService-IA;)V

    .line 1276
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public isAutofillDisabledLocked(ILandroid/content/ComponentName;)Z
    .registers 4

    .line 1229
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1232
    :try_start_6
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-eqz p0, :cond_17

    .line 1233
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result p0

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    .line 1234
    :goto_18
    monitor-exit v0

    return p0

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public remove(I)V
    .registers 3

    .line 1202
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1203
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1204
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
