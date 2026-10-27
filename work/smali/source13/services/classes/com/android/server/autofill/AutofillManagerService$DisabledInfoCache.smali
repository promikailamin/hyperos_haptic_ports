.class final Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DisabledInfoCache"
.end annotation


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 943
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    return-void
.end method

.method private getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 1018
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 1019
    .local v0, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    if-nez v0, :cond_16

    .line 1020
    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;-><init>(Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo-IA;)V

    move-object v0, v1

    .line 1021
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1023
    :cond_16
    return-object v0
.end method


# virtual methods
.method addDisabledActivityLocked(ILandroid/content/ComponentName;J)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "expiration"    # J

    .line 964
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 966
    nop

    .line 967
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    move-result-object v1

    .line 968
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->putDisableActivityLocked(Landroid/content/ComponentName;J)V

    .line 969
    .end local v1    # "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    monitor-exit v0

    .line 970
    return-void

    .line 969
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method addDisabledAppLocked(ILjava/lang/String;J)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "expiration"    # J

    .line 954
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 956
    nop

    .line 957
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    move-result-object v1

    .line 958
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->putDisableAppsLocked(Ljava/lang/String;J)V

    .line 959
    .end local v1    # "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    monitor-exit v0

    .line 960
    return-void

    .line 959
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method dump(ILjava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 1007
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1008
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 1009
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    if-eqz v1, :cond_10

    .line 1010
    invoke-virtual {v1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1012
    .end local v1    # "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    :cond_10
    monitor-exit v0

    .line 1013
    return-void

    .line 1012
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getAppDisabledActivities(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 996
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_6
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 1001
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    if-eqz v1, :cond_15

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->getAppDisabledActivitiesLocked(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    move-object v1, v2

    .line 1002
    .local v1, "disabledList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-exit v0

    .line 1003
    return-object v1

    .line 1002
    .end local v1    # "disabledList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getAppDisabledExpiration(ILjava/lang/String;)J
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 984
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_6
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 988
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    if-eqz v1, :cond_15

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->getAppDisabledExpirationLocked(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_17

    :cond_15
    const-wide/16 v2, 0x0

    :goto_17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v1, v2

    .line 989
    .local v1, "expiration":Ljava/lang/Long;
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_22

    .line 990
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 989
    .end local v1    # "expiration":Ljava/lang/Long;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method isAutofillDisabledLocked(ILandroid/content/ComponentName;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 974
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_6
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 978
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    if-eqz v1, :cond_15

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    move v1, v2

    .line 979
    .local v1, "disabled":Z
    monitor-exit v0

    .line 980
    return v1

    .line 979
    .end local v1    # "disabled":Z
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method remove(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 947
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 949
    monitor-exit v0

    .line 950
    return-void

    .line 949
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
