.class Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskFragmentOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingTaskFragmentEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;,
        Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$EventType;
    }
.end annotation


# static fields
.field static final EVENT_ACTIVITY_REPARENT_TO_TASK:I = 0x5

.field static final EVENT_APPEARED:I = 0x0

.field static final EVENT_ERROR:I = 0x4

.field static final EVENT_INFO_CHANGED:I = 0x2

.field static final EVENT_PARENT_INFO_CHANGED:I = 0x3

.field static final EVENT_VANISHED:I = 0x1


# instance fields
.field private final mActivity:Lcom/android/server/wm/ActivityRecord;

.field private mDeferTime:J

.field private final mErrorCallbackToken:Landroid/os/IBinder;

.field private final mEventType:I

.field private final mException:Ljava/lang/Throwable;

.field private mOpType:I

.field private final mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field private final mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mDeferTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorCallbackToken(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmException(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Ljava/lang/Throwable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mException:Ljava/lang/Throwable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mOpType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskFragmentOrg(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/ITaskFragmentOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mDeferTime:J

    return-void
.end method

.method private constructor <init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;I)V
    .registers 8
    .param p1, "eventType"    # I
    .param p2, "taskFragmentOrg"    # Landroid/window/ITaskFragmentOrganizer;
    .param p3, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p4, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p5, "exception"    # Ljava/lang/Throwable;
    .param p6, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p7, "opType"    # I

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    .line 655
    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    .line 656
    iput-object p3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 657
    iput-object p4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 658
    iput-object p5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mException:Ljava/lang/Throwable;

    .line 659
    iput-object p6, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mActivity:Lcom/android/server/wm/ActivityRecord;

    .line 660
    iput p7, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mOpType:I

    .line 661
    return-void
.end method

.method synthetic constructor <init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method


# virtual methods
.method isLifecycleEvent()Z
    .registers 2

    .line 668
    iget v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    packed-switch v0, :pswitch_data_a

    .line 675
    const/4 v0, 0x0

    return v0

    .line 673
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
