.class public Lcom/android/server/wm/SnapshotController$ActivitiesByTask;
.super Ljava/lang/Object;
.source "SnapshotController.java"


# instance fields
.field public final mActivitiesMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/SnapshotController-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    if-nez v0, :cond_1c

    .line 163
    new-instance v0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    invoke-direct {v0}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;-><init>()V

    .line 164
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_1c
    invoke-virtual {v0, p1}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->add(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public recordSnapshot(Lcom/android/server/wm/ActivitySnapshotController;)V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->mActivitiesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;

    .line 172
    invoke-virtual {v1, p1}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->recordSnapshot(Lcom/android/server/wm/ActivitySnapshotController;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method
