.class Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
.super Landroid/content/ISyncAdapter$Stub;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method public static synthetic blacklist $r8$lambda$jsed2v0iR-PKSQuDTq98BcHmWFo(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$mhandleOnUnsyncableAccount(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/AbstractThreadedSyncAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;)V

    return-void
.end method

.method private blacklist isCallerSystem()Z
    .registers 5

    .line 176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 177
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 178
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    const-string v2, "203229608"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 179
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_20
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o cancelSync(Landroid/content/ISyncContext;)V
    .registers 7

    .line 262
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_7

    .line 263
    return-void

    .line 268
    :cond_7
    nop

    .line 269
    :try_start_8
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_f} :catch_a0
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_f} :catch_a0
    .catchall {:try_start_8 .. :try_end_f} :catchall_af

    .line 270
    :try_start_f
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .line 271
    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-$$Nest$fgetmSyncContext(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncContext;->getSyncContextBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_39

    .line 272
    nop

    .line 273
    goto :goto_3b

    .line 275
    :cond_39
    goto :goto_1d

    .line 270
    :cond_3a
    const/4 v2, 0x0

    .line 276
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_f .. :try_end_3c} :catchall_9d

    .line 277
    if-eqz v2, :cond_82

    .line 278
    :try_start_3e
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 279
    const-string p1, "SyncAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSync() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-$$Nest$fgetmAuthority(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-$$Nest$fgetmAccount(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_6e
    iget-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {p1}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmAllowParallelSyncs(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 282
    iget-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {p1, v2}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled(Ljava/lang/Thread;)V

    goto :goto_8f

    .line 284
    :cond_7c
    iget-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {p1}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    goto :goto_8f

    .line 287
    :cond_82
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 288
    const-string p1, "SyncAdapter"

    const-string v0, "cancelSync() unknown context"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_8f} :catch_a0
    .catch Ljava/lang/Error; {:try_start_3e .. :try_end_8f} :catch_a0
    .catchall {:try_start_3e .. :try_end_8f} :catchall_af

    .line 297
    :cond_8f
    :goto_8f
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 298
    const-string p1, "SyncAdapter"

    const-string v0, "cancelSync() finishing"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_9c
    return-void

    .line 276
    :catchall_9d
    move-exception p1

    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw p1
    :try_end_a0
    .catch Ljava/lang/RuntimeException; {:try_start_9f .. :try_end_a0} :catch_a0
    .catch Ljava/lang/Error; {:try_start_9f .. :try_end_a0} :catch_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_af

    .line 291
    :catch_a0
    move-exception p1

    .line 292
    :try_start_a1
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 293
    const-string v0, "SyncAdapter"

    const-string v1, "cancelSync() caught exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    :cond_ae
    throw p1
    :try_end_af
    .catchall {:try_start_a1 .. :try_end_af} :catchall_af

    .line 297
    :catchall_af
    move-exception p1

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 298
    const-string v0, "SyncAdapter"

    const-string v1, "cancelSync() finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_bd
    throw p1
.end method

.method public greylist-max-o onUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .registers 5

    .line 186
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_7

    .line 187
    return-void

    .line 189
    :cond_7
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method

.method public greylist-max-o startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .registers 16

    .line 197
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_7

    .line 198
    return-void

    .line 200
    :cond_7
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 201
    if-eqz p4, :cond_12

    .line 202
    invoke-virtual {p4}, Landroid/os/Bundle;->size()I

    .line 204
    :cond_12
    const-string v0, "SyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSync() start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_3f
    :try_start_3f
    new-instance v5, Landroid/content/SyncContext;

    invoke-direct {v5, p1}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    .line 213
    iget-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {p1, p3}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$mtoSyncKey(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object p1

    .line 214
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_51} :catch_fe
    .catch Ljava/lang/Error; {:try_start_3f .. :try_end_51} :catch_fe
    .catchall {:try_start_3f .. :try_end_51} :catchall_10f

    .line 215
    :try_start_51
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_d5

    .line 216
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmAutoInitialize(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_9e

    if-eqz p4, :cond_9e

    const-string v0, "initialize"

    .line 218
    invoke-virtual {p4, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_fa

    if-eqz v0, :cond_9e

    .line 221
    :try_start_71
    invoke-static {p3, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_7a

    .line 222
    invoke-static {p3, p2, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_93

    .line 225
    :cond_7a
    :try_start_7a
    new-instance p1, Landroid/content/SyncResult;

    invoke-direct {p1}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v5, p1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 226
    nop

    .line 227
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_fa

    .line 254
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p1

    if-eqz p1, :cond_92

    .line 255
    const-string p1, "SyncAdapter"

    const-string/jumbo p2, "startSync() finishing"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_92
    return-void

    .line 225
    :catchall_93
    move-exception v0

    move-object p1, v0

    :try_start_95
    new-instance p2, Landroid/content/SyncResult;

    invoke-direct {p2}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v5, p2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 226
    throw p1

    .line 229
    :cond_9e
    new-instance v2, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncAdapterThread-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmNumSyncStarts(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    .line 230
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter-IA;)V

    .line 232
    iget-object p2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {p2}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v2}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->start()V

    .line 234
    nop

    .line 235
    move v2, v10

    goto :goto_e3

    .line 236
    :cond_d5
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 237
    const-string p1, "SyncAdapter"

    const-string p2, "  alreadyInProgress"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_e2
    nop

    .line 241
    :goto_e3
    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_95 .. :try_end_e4} :catchall_fa

    .line 245
    if-eqz v2, :cond_eb

    .line 246
    :try_start_e6
    sget-object p1, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    invoke-virtual {v5, p1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_eb
    .catch Ljava/lang/RuntimeException; {:try_start_e6 .. :try_end_eb} :catch_fe
    .catch Ljava/lang/Error; {:try_start_e6 .. :try_end_eb} :catch_fe
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_10f

    .line 254
    :cond_eb
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p1

    if-eqz p1, :cond_f9

    .line 255
    const-string p1, "SyncAdapter"

    const-string/jumbo p2, "startSync() finishing"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_f9
    return-void

    .line 241
    :catchall_fa
    move-exception v0

    move-object p1, v0

    :try_start_fc
    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fa

    :try_start_fd
    throw p1
    :try_end_fe
    .catch Ljava/lang/RuntimeException; {:try_start_fd .. :try_end_fe} :catch_fe
    .catch Ljava/lang/Error; {:try_start_fd .. :try_end_fe} :catch_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_10f

    .line 248
    :catch_fe
    move-exception v0

    move-object p1, v0

    .line 249
    :try_start_100
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p2

    if-eqz p2, :cond_10e

    .line 250
    const-string p2, "SyncAdapter"

    const-string/jumbo p3, "startSync() caught exception"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :cond_10e
    throw p1
    :try_end_10f
    .catchall {:try_start_100 .. :try_end_10f} :catchall_10f

    .line 254
    :catchall_10f
    move-exception v0

    move-object p1, v0

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-$$Nest$sfgetENABLE_LOG()Z

    move-result p2

    if-eqz p2, :cond_11f

    .line 255
    const-string p2, "SyncAdapter"

    const-string/jumbo p3, "startSync() finishing"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_11f
    throw p1
.end method
