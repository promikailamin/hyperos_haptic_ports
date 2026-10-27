.class Lcom/android/server/wm/Task$TaskActivitiesReport;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskActivitiesReport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field base:Lcom/android/server/wm/ActivityRecord;

.field numActivities:I

.field numRunning:I

.field top:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 4472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4485
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    .line 4486
    return-void

    .line 4489
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    .line 4492
    iget v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    .line 4494
    iget-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_19

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4495
    :cond_19
    iput-object p1, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 4500
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4502
    iget v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 4504
    :cond_2a
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 4472
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->accept(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method reset()V
    .registers 2

    .line 4479
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 4480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4481
    return-void
.end method
