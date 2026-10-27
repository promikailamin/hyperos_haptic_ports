.class Landroid/os/statistics/StackUtils;
.super Ljava/lang/Object;
.source "StackUtils.java"


# static fields
.field private static final blacklist MAX_STACK_DEPTH:I = 0x20

.field private static final blacklist MAX_STACK_LENGH:I = 0x400

.field public static final blacklist emptyJsonedStack:Lorg/json/JSONArray;

.field public static final blacklist emptyStack:[Ljava/lang/String;

.field private static final blacklist sStackTraceStringBuilder:Ljava/lang/StringBuilder;

.field private static final blacklist sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final blacklist suggestedStackTopMethodFullNames:[Ljava/lang/String;

.field private static volatile blacklist topClassMethodSimpleNames:[Ljava/util/ArrayList;

.field private static volatile blacklist topClasses:[Ljava/lang/Class;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 75

    .line 13
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    .line 14
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sput-object v1, Landroid/os/statistics/StackUtils;->emptyJsonedStack:Lorg/json/JSONArray;

    .line 19
    const-string v2, "java.lang.Thread.sleep"

    const-string v3, "java.lang.Thread.join"

    const-string v4, "java.util.concurrent.Semaphore.acquire"

    const-string v5, "java.util.concurrent.Semaphore.acquireUninterruptibly"

    const-string v6, "java.util.concurrent.Semaphore.tryAcquire"

    const-string v7, "java.util.concurrent.Semaphore.release"

    const-string v8, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquire"

    const-string v9, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireInterruptibly"

    const-string v10, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.tryAcquireNanos"

    const-string v11, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.release"

    const-string v12, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireShared"

    const-string v13, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireSharedInterruptibly"

    const-string v14, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.tryAcquireSharedNanos"

    const-string v15, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.releaseShared"

    const-string v16, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.signal"

    const-string v17, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.signalAll"

    const-string v18, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.await"

    const-string v19, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitNanos"

    const-string v20, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitUntil"

    const-string v21, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitUninterruptibly"

    const-string v22, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquire"

    const-string v23, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireInterruptibly"

    const-string v24, "java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireNanos"

    const-string v25, "java.util.concurrent.locks.AbstractQueuedSynchronizer.release"

    const-string v26, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireShared"

    const-string v27, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireSharedInterruptibly"

    const-string v28, "java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireSharedNanos"

    const-string v29, "java.util.concurrent.locks.AbstractQueuedSynchronizer.releaseShared"

    const-string v30, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.signal"

    const-string v31, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.signalAll"

    const-string v32, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await"

    const-string v33, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos"

    const-string v34, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitUntil"

    const-string v35, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitUninterruptibly"

    const-string v36, "java.util.concurrent.locks.ReentrantLock.lock"

    const-string v37, "java.util.concurrent.locks.ReentrantLock.lockInterruptibly"

    const-string v38, "java.util.concurrent.locks.ReentrantLock.tryLock"

    const-string v39, "java.util.concurrent.locks.ReentrantLock.unlock"

    const-string v40, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.lock"

    const-string v41, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.lockInterruptibly"

    const-string v42, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.tryLock"

    const-string v43, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.unlock"

    const-string v44, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.lock"

    const-string v45, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.lockInterruptibly"

    const-string v46, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.tryLock"

    const-string v47, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.unlock"

    const-string v48, "java.util.concurrent.locks.StampedLock$ReadLockView.lock"

    const-string v49, "java.util.concurrent.locks.StampedLock$ReadLockView.lockInterruptibly"

    const-string v50, "java.util.concurrent.locks.StampedLock$ReadLockView.tryLock"

    const-string v51, "java.util.concurrent.locks.StampedLock$ReadLockView.unlock"

    const-string v52, "java.util.concurrent.locks.StampedLock$WriteLockView.lock"

    const-string v53, "java.util.concurrent.locks.StampedLock$WriteLockView.lockInterruptibly"

    const-string v54, "java.util.concurrent.locks.StampedLock$WriteLockView.tryLock"

    const-string v55, "java.util.concurrent.locks.StampedLock$WriteLockView.unlock"

    const-string v56, "java.util.concurrent.locks.StampedLock.writeLock"

    const-string v57, "java.util.concurrent.locks.StampedLock.tryWriteLock"

    const-string v58, "java.util.concurrent.locks.StampedLock.writeLockInterruptibly"

    const-string v59, "java.util.concurrent.locks.StampedLock.readLock"

    const-string v60, "java.util.concurrent.locks.StampedLock.tryReadLock"

    const-string v61, "java.util.concurrent.locks.StampedLock.readLockInterruptibly"

    const-string v62, "java.util.concurrent.locks.StampedLock.unlockWrite"

    const-string v63, "java.util.concurrent.locks.StampedLock.unlockRead"

    const-string v64, "java.util.concurrent.locks.StampedLock.unlock"

    const-string v65, "java.util.concurrent.locks.StampedLock.tryConvertToReadLock"

    const-string v66, "java.util.concurrent.locks.StampedLock.tryConvertToWriteLock"

    const-string v67, "java.util.concurrent.locks.StampedLock.tryConvertToOptimisticRead"

    const-string v68, "java.util.concurrent.locks.StampedLock.tryUnlockWrite"

    const-string v69, "java.util.concurrent.locks.StampedLock.tryUnlockRead"

    const-string v70, "java.util.concurrent.locks.StampedLock.unstampedUnlockRead"

    const-string v71, "java.util.concurrent.locks.LockSupport.park"

    const-string v72, "java.util.concurrent.locks.LockSupport.parkNanos"

    const-string v73, "java.util.concurrent.locks.LockSupport.parkUntil"

    const-string v74, "java.util.concurrent.locks.LockSupport.unpark"

    filled-new-array/range {v2 .. v74}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/StackUtils;->suggestedStackTopMethodFullNames:[Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getStackTrace(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 5
    .param p0, "jsonedStackTrace"    # Lorg/json/JSONArray;

    .line 255
    if-nez p0, :cond_5

    .line 256
    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v0

    .line 258
    :cond_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 259
    .local v0, "stackTrace":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 261
    :try_start_f
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_15} :catch_16

    .line 264
    goto :goto_1b

    .line 262
    :catch_16
    move-exception v2

    .line 263
    .local v2, "ex":Lorg/json/JSONException;
    const-string v3, ""

    aput-object v3, v0, v1

    .line 259
    .end local v2    # "ex":Lorg/json/JSONException;
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 266
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method

.method public static blacklist getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 23
    .param p0, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p1, "javaStackTraceClasses"    # [Ljava/lang/Class;
    .param p2, "nativeStackTrace"    # [Ljava/lang/String;

    .line 115
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    .line 116
    .local v0, "length":I
    const/4 v4, 0x0

    .line 117
    .local v4, "depth":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v5, "stackTrace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v7, 0x400

    if-eqz v3, :cond_38

    array-length v8, v3

    if-lez v8, :cond_38

    .line 120
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_17
    array-length v9, v3

    if-ge v8, v9, :cond_35

    .line 121
    aget-object v9, v3, v8

    .line 122
    .local v9, "line":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 123
    goto :goto_32

    .line 125
    :cond_23
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 127
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v0, v10

    .line 128
    if-ge v4, v6, :cond_38

    if-lt v0, v7, :cond_32

    .line 129
    goto :goto_38

    .line 120
    .end local v9    # "line":Ljava/lang/String;
    :cond_32
    :goto_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_35
    move v8, v4

    move v4, v0

    goto :goto_3a

    .line 134
    .end local v8    # "i":I
    :cond_38
    :goto_38
    move v8, v4

    move v4, v0

    .end local v0    # "length":I
    .local v4, "length":I
    .local v8, "depth":I
    :goto_3a
    if-ge v8, v6, :cond_1fc

    if-ge v4, v7, :cond_1fc

    if-eqz v1, :cond_1fc

    array-length v0, v1

    if-nez v0, :cond_45

    goto/16 :goto_1fc

    .line 139
    :cond_45
    sget-object v0, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-nez v0, :cond_db

    .line 140
    const-class v10, Landroid/os/statistics/StackUtils;

    monitor-enter v10

    .line 141
    :try_start_4d
    sget-object v0, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    if-nez v0, :cond_d6

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 144
    .local v11, "topClassMethodSimpleNamesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    sget-object v12, Landroid/os/statistics/StackUtils;->suggestedStackTopMethodFullNames:[Ljava/lang/String;

    array-length v13, v12

    move v14, v9

    :goto_5b
    if-ge v14, v13, :cond_9c

    aget-object v0, v12, v14
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_d8

    move-object v15, v0

    .line 146
    .local v15, "methodFullName":Ljava/lang/String;
    :try_start_60
    const-string v0, "."

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, "dotPosition":I
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "methodSimpleName":Ljava/lang/String;
    invoke-virtual {v15, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 149
    .local v16, "classFullName":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v18, v17

    .line 150
    .local v18, "clazz":Ljava/lang/Class;
    move-object/from16 v6, v18

    .end local v18    # "clazz":Ljava/lang/Class;
    .local v6, "clazz":Ljava/lang/Class;
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 151
    .local v18, "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v18, :cond_8d

    .line 152
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v19

    .line 153
    move-object/from16 v9, v18

    .end local v18    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    .line 151
    .end local v9    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8d
    move-object/from16 v9, v18

    .line 155
    .end local v18    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_8f
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catch Ljava/lang/ClassNotFoundException; {:try_start_60 .. :try_end_92} :catch_93
    .catchall {:try_start_60 .. :try_end_92} :catchall_d8

    .line 157
    .end local v0    # "dotPosition":I
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v7    # "methodSimpleName":Ljava/lang/String;
    .end local v9    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "classFullName":Ljava/lang/String;
    goto :goto_94

    .line 156
    :catch_93
    move-exception v0

    .line 144
    .end local v15    # "methodFullName":Ljava/lang/String;
    :goto_94
    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0x20

    const/16 v7, 0x400

    const/4 v9, 0x0

    goto :goto_5b

    .line 159
    :cond_9c
    :try_start_9c
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 160
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Class;

    .line 159
    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 161
    .local v0, "localTopClasses":[Ljava/lang/Class;
    array-length v6, v0

    new-array v6, v6, [Ljava/util/ArrayList;

    .line 162
    .local v6, "localTopClassMethodSimpleNames":[Ljava/util/ArrayList;
    const/4 v7, 0x0

    .line 163
    .local v7, "index":I
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    .line 164
    .local v12, "clazz":Ljava/lang/Class;
    aput-object v12, v0, v7

    .line 165
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    aput-object v13, v6, v7

    .line 166
    nop

    .end local v12    # "clazz":Ljava/lang/Class;
    add-int/lit8 v7, v7, 0x1

    .line 167
    goto :goto_b8

    .line 168
    :cond_d2
    sput-object v0, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    .line 169
    sput-object v6, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    .line 171
    .end local v0    # "localTopClasses":[Ljava/lang/Class;
    .end local v6    # "localTopClassMethodSimpleNames":[Ljava/util/ArrayList;
    .end local v7    # "index":I
    .end local v11    # "topClassMethodSimpleNamesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_d6
    monitor-exit v10

    goto :goto_db

    :catchall_d8
    move-exception v0

    monitor-exit v10
    :try_end_da
    .catchall {:try_start_9c .. :try_end_da} :catchall_d8

    throw v0

    .line 174
    :cond_db
    :goto_db
    const/4 v0, 0x0

    .line 175
    .local v0, "topIndex":I
    const/4 v6, 0x0

    .line 176
    .local v6, "needSkipPart":Z
    const/4 v7, 0x1

    if-eqz v2, :cond_10c

    .line 178
    array-length v9, v2

    if-lt v9, v7, :cond_ec

    const/4 v9, 0x0

    aget-object v10, v2, v9

    const-class v9, Ljava/lang/Thread;

    if-ne v10, v9, :cond_ec

    .line 179
    const/4 v6, 0x1

    goto :goto_10c

    .line 180
    :cond_ec
    array-length v9, v2

    const/4 v10, 0x4

    if-lt v9, v10, :cond_10c

    const/4 v9, 0x0

    aget-object v10, v2, v9

    const-class v9, Ljava/lang/Object;

    if-ne v10, v9, :cond_10c

    aget-object v9, v2, v7

    const-class v10, Ljava/lang/Thread;

    if-eq v9, v10, :cond_10b

    const/4 v9, 0x2

    aget-object v9, v2, v9

    const-class v10, Ljava/lang/Thread;

    if-eq v9, v10, :cond_10b

    const/4 v9, 0x3

    aget-object v9, v2, v9

    const-class v10, Ljava/lang/Thread;

    if-ne v9, v10, :cond_10c

    .line 182
    :cond_10b
    const/4 v6, 0x1

    .line 185
    :cond_10c
    :goto_10c
    if-eqz v6, :cond_140

    .line 186
    array-length v9, v1

    sub-int/2addr v9, v7

    move v0, v9

    .line 187
    :goto_111
    if-lez v0, :cond_140

    .line 188
    aget-object v9, v2, v0

    .line 189
    .local v9, "clazz":Ljava/lang/Class;
    if-eqz v9, :cond_13c

    .line 190
    const/4 v10, -0x1

    .line 191
    .local v10, "index":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_119
    sget-object v12, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    array-length v12, v12

    if-ge v11, v12, :cond_129

    .line 192
    sget-object v12, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    aget-object v12, v12, v11

    if-ne v12, v9, :cond_126

    .line 193
    move v10, v11

    .line 194
    goto :goto_129

    .line 191
    :cond_126
    add-int/lit8 v11, v11, 0x1

    goto :goto_119

    .line 197
    .end local v11    # "i":I
    :cond_129
    :goto_129
    if-ltz v10, :cond_13c

    .line 198
    aget-object v11, v1, v0

    .line 199
    .local v11, "element":Ljava/lang/StackTraceElement;
    sget-object v12, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    aget-object v12, v12, v10

    .line 200
    .local v12, "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13c

    .line 201
    goto :goto_140

    .line 205
    .end local v10    # "index":I
    .end local v11    # "element":Ljava/lang/StackTraceElement;
    .end local v12    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13c
    nop

    .end local v9    # "clazz":Ljava/lang/Class;
    add-int/lit8 v0, v0, -0x1

    .line 206
    goto :goto_111

    .line 209
    :cond_140
    :goto_140
    const/4 v9, 0x0

    .line 210
    .local v9, "previousClazz":Ljava/lang/Class;
    sget-object v10, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-eqz v7, :cond_14d

    .line 211
    sget-object v7, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    goto :goto_154

    :cond_14d
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    .local v7, "sb":Ljava/lang/StringBuilder;
    :goto_154
    const/4 v10, 0x0

    .line 213
    .local v10, "foundTopLine":Z
    move v11, v0

    .local v11, "i":I
    :goto_156
    array-length v12, v1

    if-ge v11, v12, :cond_1e5

    .line 214
    aget-object v12, v1, v11

    .line 215
    .local v12, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-nez v12, :cond_163

    .line 216
    const/16 v14, 0x20

    const/16 v15, 0x400

    goto/16 :goto_1e1

    .line 218
    :cond_163
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 219
    if-nez v2, :cond_16b

    const/4 v13, 0x0

    goto :goto_16d

    :cond_16b
    aget-object v13, v2, v11

    .line 220
    .local v13, "clazz":Ljava/lang/Class;
    :goto_16d
    const/16 v14, 0x2e

    if-eqz v13, :cond_17d

    if-ne v9, v13, :cond_17d

    .line 221
    const/16 v15, 0x2d

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_188

    .line 223
    :cond_17d
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :goto_188
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    if-nez v10, :cond_1c9

    .line 227
    const/4 v10, 0x1

    .line 228
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v14

    if-eqz v14, :cond_19e

    .line 229
    const-string v14, "(Native)"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c9

    .line 230
    :cond_19e
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1c4

    .line 231
    const/16 v14, 0x28

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const/16 v14, 0x3a

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 234
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x29

    .line 235
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c9

    .line 237
    :cond_1c4
    const-string v14, "(None)"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_1c9
    :goto_1c9
    move-object v9, v13

    .line 241
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v8, v8, 0x1

    .line 243
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/2addr v4, v14

    .line 244
    const/16 v14, 0x20

    if-ge v8, v14, :cond_1e5

    const/16 v15, 0x400

    if-lt v4, v15, :cond_1e1

    .line 245
    goto :goto_1e5

    .line 213
    .end local v12    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v13    # "clazz":Ljava/lang/Class;
    :cond_1e1
    :goto_1e1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_156

    .line 248
    .end local v11    # "i":I
    :cond_1e5
    :goto_1e5
    sget-object v11, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    if-ne v7, v11, :cond_1ef

    .line 249
    sget-object v11, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    :cond_1ef
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    return-object v11

    .line 136
    .end local v0    # "topIndex":I
    .end local v6    # "needSkipPart":Z
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "previousClazz":Ljava/lang/Class;
    .end local v10    # "foundTopLine":Z
    :cond_1fc
    :goto_1fc
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
