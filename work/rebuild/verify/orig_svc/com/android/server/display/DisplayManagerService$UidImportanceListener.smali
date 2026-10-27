.class public Lcom/android/server/display/DisplayManagerService$UidImportanceListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 1170
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onUidImportance(II)V
    .registers 6

    const/16 v0, 0x190

    const/4 v1, 0x0

    if-lt p2, v0, :cond_7

    const/4 p2, 0x1

    goto :goto_8

    :cond_7
    move p2, v1

    .line 1175
    :goto_8
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1176
    :try_start_f
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmCallbackRecordByPidByUid(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_21

    .line 1178
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_42

    :cond_21
    if-eqz p2, :cond_28

    .line 1181
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->setCachedLocked(Landroid/util/SparseArray;)V

    const/4 p0, 0x0

    goto :goto_2c

    .line 1183
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->setUncachedLocked(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p0

    .line 1185
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_1f

    if-eqz p0, :cond_41

    .line 1188
    :goto_2f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_41

    .line 1189
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->dispatchPending()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_41
    return-void

    .line 1185
    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_1f

    throw p0
.end method

.method public final setCachedLocked(Landroid/util/SparseArray;)V
    .registers 4

    const/4 p0, 0x0

    .line 1197
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_16

    .line 1198
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    .line 1200
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->setCached(Z)Z

    :cond_13
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method public final setUncachedLocked(Landroid/util/SparseArray;)Ljava/util/List;
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, v0

    .line 1209
    :goto_3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1210
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz v2, :cond_21

    .line 1212
    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->setCached(Z)Z

    move-result v3

    if-eqz v3, :cond_21

    if-nez p0, :cond_1e

    .line 1213
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1214
    :cond_1e
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_24
    return-object p0
.end method
