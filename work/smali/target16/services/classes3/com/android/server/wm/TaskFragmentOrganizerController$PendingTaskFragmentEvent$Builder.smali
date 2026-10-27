.class public Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerController.java"


# instance fields
.field public mActivity:Lcom/android/server/wm/ActivityRecord;

.field public mErrorCallbackToken:Landroid/os/IBinder;

.field public final mEventType:I

.field public mException:Ljava/lang/Throwable;

.field public mOpType:I

.field public mOtherActivity:Lcom/android/server/wm/ActivityRecord;

.field public mTask:Lcom/android/server/wm/Task;

.field public mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public final mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

.field public mTaskFragmentToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(ILandroid/window/ITaskFragmentOrganizer;)V
    .registers 3

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    iput p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mEventType:I

    .line 1139
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/window/ITaskFragmentOrganizer;

    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .registers 13

    .line 1183
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    iget v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mEventType:I

    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mErrorCallbackToken:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mException:Ljava/lang/Throwable;

    iget-object v7, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOtherActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTask:Lcom/android/server/wm/Task;

    iget v10, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOpType:I

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskFragmentOrganizerController-IA;)V

    return-object v0
.end method

.method public setActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 3

    .line 1163
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2

    .line 1153
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public setException(Ljava/lang/Throwable;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 3

    .line 1158
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mException:Ljava/lang/Throwable;

    return-object p0
.end method

.method public setOpType(I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2

    .line 1178
    iput p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOpType:I

    return-object p0
.end method

.method public setOtherActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2

    .line 1168
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOtherActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public setTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 3

    .line 1173
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/Task;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2

    .line 1143
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object p0
.end method

.method public setTaskFragmentToken(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2

    .line 1148
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentToken:Landroid/os/IBinder;

    return-object p0
.end method
