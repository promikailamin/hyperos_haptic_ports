.class public Lcom/android/server/lineage/display/OutdoorModeController$1;
.super Ljava/lang/Object;
.source "OutdoorModeController.java"

# interfaces
.implements Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/OutdoorModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/OutdoorModeController;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/android/server/lineage/display/OutdoorModeController$1;->this$0:Lcom/android/server/lineage/display/OutdoorModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransition(IF)V
    .registers 4

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    .line 232
    :goto_5
    iget-object p1, p0, Lcom/android/server/lineage/display/OutdoorModeController$1;->this$0:Lcom/android/server/lineage/display/OutdoorModeController;

    monitor-enter p1

    .line 233
    :try_start_8
    iget-object v0, p0, Lcom/android/server/lineage/display/OutdoorModeController$1;->this$0:Lcom/android/server/lineage/display/OutdoorModeController;

    invoke-static {v0}, Lcom/android/server/lineage/display/OutdoorModeController;->-$$Nest$fgetmIsOutdoor(Lcom/android/server/lineage/display/OutdoorModeController;)Z

    move-result v0

    if-ne v0, p2, :cond_14

    .line 234
    monitor-exit p1

    return-void

    :catchall_12
    move-exception p0

    goto :goto_20

    .line 237
    :cond_14
    iget-object v0, p0, Lcom/android/server/lineage/display/OutdoorModeController$1;->this$0:Lcom/android/server/lineage/display/OutdoorModeController;

    invoke-static {v0, p2}, Lcom/android/server/lineage/display/OutdoorModeController;->-$$Nest$fputmIsOutdoor(Lcom/android/server/lineage/display/OutdoorModeController;Z)V

    .line 238
    iget-object p0, p0, Lcom/android/server/lineage/display/OutdoorModeController$1;->this$0:Lcom/android/server/lineage/display/OutdoorModeController;

    invoke-static {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->-$$Nest$mupdateOutdoorMode(Lcom/android/server/lineage/display/OutdoorModeController;)V

    .line 239
    monitor-exit p1

    return-void

    :goto_20
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_12

    throw p0
.end method
