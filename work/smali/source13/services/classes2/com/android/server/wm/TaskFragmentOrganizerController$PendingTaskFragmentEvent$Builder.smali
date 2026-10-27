.class Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private mActivity:Lcom/android/server/wm/ActivityRecord;

.field private mErrorCallbackToken:Landroid/os/IBinder;

.field private final mEventType:I

.field private mException:Ljava/lang/Throwable;

.field private mOpType:I

.field private mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field private final mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method constructor <init>(ILandroid/window/ITaskFragmentOrganizer;)V
    .registers 3
    .param p1, "eventType"    # I
    .param p2, "taskFragmentOrg"    # Landroid/window/ITaskFragmentOrganizer;

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mEventType:I

    .line 695
    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    .line 696
    return-void
.end method


# virtual methods
.method build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .registers 11

    .line 724
    new-instance v9, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    iget v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mEventType:I

    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mErrorCallbackToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mException:Ljava/lang/Throwable;

    iget-object v6, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOpType:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent-IA;)V

    return-object v9
.end method

.method setActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 714
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    .line 715
    return-object p0
.end method

.method setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 704
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 705
    return-object p0
.end method

.method setException(Ljava/lang/Throwable;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 709
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mException:Ljava/lang/Throwable;

    .line 710
    return-object p0
.end method

.method setOpType(I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2
    .param p1, "opType"    # I

    .line 719
    iput p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOpType:I

    .line 720
    return-object p0
.end method

.method setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .registers 2
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 699
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 700
    return-object p0
.end method
