.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$updateMediaBackupExemptionLocked$3(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    return p1
.end method
