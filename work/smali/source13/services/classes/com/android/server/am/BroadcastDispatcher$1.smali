.class Lcom/android/server/am/BroadcastDispatcher$1;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"

# interfaces
.implements Lcom/android/server/AlarmManagerInternal$InFlightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastDispatcher;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastDispatcher;

    .line 173
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastAlarmComplete(I)V
    .registers 8
    .param p1, "recipientUid"    # I

    .line 193
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmLock(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 194
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v1, v1, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 195
    .local v1, "newCount":I
    if-ltz v1, :cond_1c

    .line 196
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v2, v2, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3b

    .line 198
    :cond_1c
    const-string v3, "BroadcastDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undercount of broadcast alarms in flight for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v3, v3, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    :goto_3b
    if-gtz v1, :cond_73

    .line 204
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v2}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmAlarmBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 205
    .local v2, "numEntries":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_48
    if-ge v3, v2, :cond_73

    .line 206
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v4}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmAlarmBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget v4, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p1, v4, :cond_70

    .line 207
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v4}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmAlarmBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 208
    .local v4, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v5, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v5}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$sminsertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    .line 209
    goto :goto_73

    .line 205
    .end local v4    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 213
    .end local v1    # "newCount":I
    .end local v2    # "numEntries":I
    .end local v3    # "i":I
    :cond_73
    :goto_73
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_7 .. :try_end_77} :catchall_75

    throw v1
.end method

.method public broadcastAlarmPending(I)V
    .registers 8
    .param p1, "recipientUid"    # I

    .line 176
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmLock(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 177
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v1, v1, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 178
    .local v1, "newCount":I
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v2, v2, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v2}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 181
    .local v2, "numEntries":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    if-ge v3, v2, :cond_4f

    .line 182
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v4}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget v4, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p1, v4, :cond_4c

    .line 183
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v4}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 184
    .local v4, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v5, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v5}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmAlarmBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    goto :goto_4f

    .line 181
    .end local v4    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 188
    .end local v1    # "newCount":I
    .end local v2    # "numEntries":I
    .end local v3    # "i":I
    :cond_4f
    :goto_4f
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_51

    throw v1
.end method
