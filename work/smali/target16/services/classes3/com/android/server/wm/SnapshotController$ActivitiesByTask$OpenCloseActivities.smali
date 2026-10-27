.class public Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;
.super Ljava/lang/Object;
.source "SnapshotController.java"


# instance fields
.field public final mCloseActivities:Ljava/util/ArrayList;

.field public final mOpenActivities:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 181
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 182
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    .line 183
    :goto_b
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 184
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method public allOpensOptInOnBackInvoked()Z
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_12
    if-ltz v0, :cond_24

    .line 193
    iget-object v3, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mOptInOnBackInvoked:Z

    if-nez v3, :cond_21

    return v1

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_24
    return v2
.end method

.method public recordSnapshot(Lcom/android/server/wm/ActivitySnapshotController;)V
    .registers 3

    .line 201
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->allOpensOptInOnBackInvoked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_14

    .line 204
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivitySnapshotController;->recordSnapshot(Ljava/util/ArrayList;)V

    :cond_14
    :goto_14
    return-void
.end method
