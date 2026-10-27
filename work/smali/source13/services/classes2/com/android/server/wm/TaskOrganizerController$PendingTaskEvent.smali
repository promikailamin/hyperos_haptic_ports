.class Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingTaskEvent"
.end annotation


# static fields
.field static final EVENT_APPEARED:I = 0x0

.field static final EVENT_INFO_CHANGED:I = 0x2

.field static final EVENT_ROOT_BACK_PRESSED:I = 0x3

.field static final EVENT_VANISHED:I = 0x1


# instance fields
.field final mEventType:I

.field mForce:Z

.field final mTask:Lcom/android/server/wm/Task;

.field final mTaskOrg:Landroid/window/ITaskOrganizer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Task;I)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "event"    # I

    .line 303
    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;I)V

    .line 304
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;I)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "taskOrg"    # Landroid/window/ITaskOrganizer;
    .param p3, "eventType"    # I

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 308
    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    .line 309
    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    .line 310
    return-void
.end method


# virtual methods
.method isLifecycleEvent()Z
    .registers 4

    .line 313
    iget v0, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method
