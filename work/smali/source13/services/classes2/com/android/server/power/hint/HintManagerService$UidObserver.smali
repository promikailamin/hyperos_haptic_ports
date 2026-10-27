.class final Lcom/android/server/power/hint/HintManagerService$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidObserver"
.end annotation


# instance fields
.field private final mProcStatesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/hint/HintManagerService;

    .line 196
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 197
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public isUidForeground(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 200
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 201
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    monitor-exit v0

    return v1

    .line 203
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method synthetic lambda$onUidGone$0$com-android-server-power-hint-HintManagerService$UidObserver(I)V
    .registers 8
    .param p1, "uid"    # I

    .line 209
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 210
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 211
    .local v1, "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    if-nez v1, :cond_1b

    .line 212
    monitor-exit v0

    return-void

    .line 214
    :cond_1b
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_21
    if-ltz v2, :cond_40

    .line 216
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 217
    .local v3, "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_2f
    if-ltz v4, :cond_3d

    .line 218
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-virtual {v5}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->close()V

    .line 217
    add-int/lit8 v4, v4, -0x1

    goto :goto_2f

    .line 214
    .end local v3    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v4    # "j":I
    :cond_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 221
    .end local v2    # "i":I
    :cond_40
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 222
    .end local v1    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw v1
.end method

.method synthetic lambda$onUidStateChanged$1$com-android-server-power-hint-HintManagerService$UidObserver(II)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 241
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 242
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$UidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 244
    .local v1, "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    if-nez v1, :cond_24

    .line 245
    monitor-exit v0

    return-void

    .line 247
    :cond_24
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 248
    .local v3, "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 249
    .local v5, "s":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$monProcStateChanged(Lcom/android/server/power/hint/HintManagerService$AppHintSession;)V

    .line 250
    .end local v5    # "s":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    goto :goto_3c

    .line 251
    .end local v3    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    :cond_4c
    goto :goto_2c

    .line 252
    .end local v1    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    :cond_4d
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public onUidActive(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 228
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 258
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 208
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/hint/HintManagerService$UidObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/hint/HintManagerService$UidObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService$UidObserver;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 232
    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 262
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 240
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/hint/HintManagerService$UidObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$UidObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/hint/HintManagerService$UidObserver;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method
