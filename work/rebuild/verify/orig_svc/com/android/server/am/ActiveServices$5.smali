.class public Lcom/android/server/am/ActiveServices$5;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .registers 2

    .line 3247
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 3253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3254
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 3256
    :try_start_c
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_16
    if-ltz v3, :cond_44

    .line 3257
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 3258
    iget-wide v6, v5, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    cmp-long v6, v6, v0

    if-gtz v6, :cond_41

    .line 3263
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3267
    invoke-virtual {v5}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v6

    if-eqz v6, :cond_41

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_41

    .line 3268
    invoke-virtual {v5, v4}, Lcom/android/server/am/ServiceRecord;->postNotification(Z)V

    .line 3269
    iput-boolean v4, v5, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    goto :goto_41

    :catchall_3f
    move-exception p0

    goto :goto_49

    :cond_41
    :goto_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 3281
    :cond_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_3f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_49
    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_3f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
