.class public Lcom/android/server/job/JobServiceContextStub;
.super Ljava/lang/Object;
.source "JobServiceContextStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/job/JobServiceContextStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/job/JobServiceContextStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobServiceContextStub;

    return-object v0
.end method


# virtual methods
.method public checkIfCancelJob(Lcom/android/server/job/JobServiceContext;Landroid/content/Context;Landroid/content/Intent;ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "jobContext"    # Lcom/android/server/job/JobServiceContext;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "bindFlags"    # I
    .param p5, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 18
    const/4 v0, 0x0

    return v0
.end method
