.class final Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# instance fields
.field public context:Lcom/android/server/job/JobServiceContext;

.field public newJob:Lcom/android/server/job/controllers/JobStatus;

.field public newWorkType:I

.field public preemptReason:Ljava/lang/String;

.field public preemptReasonCode:I

.field public preferredUid:I

.field public shouldStopJobReason:Ljava/lang/String;

.field public timeUntilStoppableMs:J

.field public workType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2925
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    const/4 v0, 0x0

    .line 2926
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->workType:I

    .line 2928
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 2932
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    const/4 v0, 0x0

    .line 2935
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    const/4 v1, -0x1

    .line 2936
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    const/4 v1, 0x0

    .line 2937
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->workType:I

    .line 2938
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    .line 2939
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    const-wide/16 v2, 0x0

    .line 2940
    iput-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    .line 2941
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    .line 2942
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 2943
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    return-void
.end method
