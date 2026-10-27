.class Lcom/android/server/stats/pull/StatsPullAtomService$4;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 3739
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 3743
    :try_start_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mestimateAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 3749
    goto :goto_25

    .line 3744
    :catchall_6
    move-exception v0

    .line 3745
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "StatsPullAtomService"

    const-string v2, "AppOps sampling ratio estimation failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3746
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3747
    :try_start_15
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fputmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 3748
    monitor-exit v1

    .line 3750
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_25
    return-void

    .line 3748
    .restart local v0    # "e":Ljava/lang/Throwable;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v2
.end method
