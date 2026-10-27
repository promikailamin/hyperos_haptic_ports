.class public Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"


# instance fields
.field public final mEventType:I

.field public mForce:Z

.field public final mTask:Lcom/android/server/wm/Task;

.field public final mTaskOrg:Landroid/window/ITaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;I)V
    .registers 4

    .line 468
    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;I)V
    .registers 4

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 473
    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    .line 474
    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    return-void
.end method


# virtual methods
.method public isLifecycleEvent()Z
    .registers 3

    .line 478
    iget p0, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-ne p0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    return v0
.end method
