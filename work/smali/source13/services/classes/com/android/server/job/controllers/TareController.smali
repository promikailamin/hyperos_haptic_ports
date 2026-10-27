.class public Lcom/android/server/job/controllers/TareController;
.super Lcom/android/server/job/controllers/StateController;
.source "TareController.java"


# static fields
.field private static final BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_RUNNING_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_START_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.TARE"


# instance fields
.field private final mAffordabilityCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

.field private final mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

.field private final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field private final mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

.field private mIsEnabled:Z

.field private final mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 52
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const/4 v0, 0x3

    .line 53
    const-string v3, "JobScheduler.TARE"

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    move v0, v2

    goto :goto_13

    :cond_12
    :goto_12
    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/server/job/controllers/TareController;->DEBUG:Z

    .line 61
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v4, 0x60000004

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/32 v8, 0x1d4c0

    const v10, 0x60000005

    invoke-direct {v7, v10, v2, v8, v9}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 62
    invoke-static {v3, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 74
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/32 v7, 0xea60

    invoke-direct {v3, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 75
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 86
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v9, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 87
    invoke-static {v3, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 99
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/16 v7, 0x7530

    invoke-direct {v3, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 100
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 109
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v4, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v4, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 110
    invoke-static {v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 122
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/16 v11, 0x3e8

    invoke-direct {v3, v10, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 123
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 132
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v4, 0x60000002

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v10, 0x60000003

    invoke-direct {v9, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 133
    invoke-static {v3, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 145
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v10, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 146
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 158
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const/high16 v9, 0x60000000

    invoke-direct {v3, v9, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v13, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v14, 0x60000001

    invoke-direct {v13, v14, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 159
    invoke-static {v3, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 172
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v14, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 173
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 182
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v9, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v9, v14, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 183
    invoke-static {v3, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 195
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v14, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 196
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 205
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v1, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 206
    invoke-static {v3, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 218
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v1, v10, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 219
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 218
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "backgroundJobsController"    # Lcom/android/server/job/controllers/BackgroundJobsController;
    .param p3, "connectivityController"    # Lcom/android/server/job/controllers/ConnectivityController;

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 233
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 241
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 245
    new-instance v0, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/TareController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    .line 296
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 306
    iput-object p2, p0, Lcom/android/server/job/controllers/TareController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 307
    iput-object p3, p0, Lcom/android/server/job/controllers/TareController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 308
    const-class v0, Lcom/android/server/tare/EconomyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 309
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    .line 310
    return-void
.end method

.method private addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 9
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 452
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 453
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 455
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 456
    .local v2, "billToJobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;>;"
    if-nez v2, :cond_1d

    .line 457
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 458
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 460
    :cond_1d
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 461
    .local v3, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v3, :cond_2e

    .line 462
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v4

    .line 463
    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_2e
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 466
    iget-object v4, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object v5, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    invoke-interface {v4, v0, v1, v5, p2}, Lcom/android/server/tare/EconomyManagerInternal;->registerAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 469
    :cond_3b
    return-void
.end method

.method private canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 576
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 577
    return v1

    .line 579
    :cond_6
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_57

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_57

    .line 585
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 586
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 588
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 589
    .local v2, "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    if-nez v2, :cond_38

    .line 590
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 591
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 594
    :cond_38
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 595
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 598
    :cond_49
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    invoke-interface {v3, v0, v1, p2}, Lcom/android/server/tare/EconomyManagerInternal;->canPayFor(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v3

    .line 599
    .local v3, "canAfford":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    return v3

    .line 583
    .end local v0    # "userId":I
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    .end local v3    # "canAfford":Z
    :cond_57
    :goto_57
    return v1
.end method

.method private canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 605
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 606
    return v1

    .line 608
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_e

    .line 609
    const/4 v0, 0x0

    return v0

    .line 611
    :cond_e
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_4a

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_4a

    .line 617
    :cond_23
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 618
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v0

    return v0

    .line 621
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_43

    .line 622
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v0

    return v0

    .line 624
    :cond_43
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v0

    return v0

    .line 615
    :cond_4a
    :goto_4a
    return v1
.end method

.method private getBillName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;
    .registers 4
    .param p1, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 671
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 672
    const-string v0, "EJ_MAX_START_BILL"

    return-object v0

    .line 674
    :cond_b
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 675
    const-string v0, "EJ_MAX_RUNNING_BILL"

    return-object v0

    .line 677
    :cond_16
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 678
    const-string v0, "EJ_HIGH_START_BILL"

    return-object v0

    .line 680
    :cond_21
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 681
    const-string v0, "EJ_HIGH_RUNNING_BILL"

    return-object v0

    .line 683
    :cond_2c
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 684
    const-string v0, "HIGH_START_BILL"

    return-object v0

    .line 686
    :cond_37
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 687
    const-string v0, "HIGH_RUNNING_BILL"

    return-object v0

    .line 689
    :cond_42
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 690
    const-string v0, "DEFAULT_START_BILL"

    return-object v0

    .line 692
    :cond_4d
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 693
    const-string v0, "DEFAULT_RUNNING_BILL"

    return-object v0

    .line 695
    :cond_58
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 696
    const-string v0, "LOW_START_BILL"

    return-object v0

    .line 698
    :cond_63
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 699
    const-string v0, "LOW_RUNNING_BILL"

    return-object v0

    .line 701
    :cond_6e
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 702
    const-string v0, "MIN_START_BILL"

    return-object v0

    .line 704
    :cond_79
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 705
    const-string v0, "MIN_RUNNING_BILL"

    return-object v0

    .line 707
    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_BILL ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;
    .registers 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/job/controllers/JobStatus;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            ">;"
        }
    .end annotation

    .line 496
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 497
    .local v0, "bills":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;>;"
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 498
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_19

    .line 499
    sget-object v1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 501
    :cond_19
    sget-object v1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    sparse-switch v1, :sswitch_data_66

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 522
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v2

    invoke-static {v2}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    const-string v2, "JobScheduler.TARE"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 506
    :sswitch_46
    sget-object v1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 507
    goto :goto_64

    .line 509
    :sswitch_4c
    sget-object v1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 510
    goto :goto_64

    .line 512
    :sswitch_52
    sget-object v1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 513
    goto :goto_64

    .line 515
    :sswitch_58
    sget-object v1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 516
    goto :goto_64

    .line 518
    :sswitch_5e
    sget-object v1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 519
    nop

    .line 525
    :goto_64
    return-object v0

    nop

    :sswitch_data_66
    .sparse-switch
        0x64 -> :sswitch_5e
        0xc8 -> :sswitch_58
        0x12c -> :sswitch_52
        0x190 -> :sswitch_4c
        0x1f4 -> :sswitch_46
    .end sparse-switch
.end method

.method private static getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 3
    .param p0, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 557
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    sparse-switch v0, :sswitch_data_3c

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    invoke-static {v1}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.TARE"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 559
    :sswitch_28
    const v0, 0x60000001

    return v0

    .line 561
    :sswitch_2c
    const v0, 0x60000003

    return v0

    .line 563
    :sswitch_30
    const v0, 0x60000007

    return v0

    .line 565
    :sswitch_34
    const v0, 0x60000009

    return v0

    .line 570
    :goto_38
    :sswitch_38
    const v0, 0x60000005

    return v0

    :sswitch_data_3c
    .sparse-switch
        0x64 -> :sswitch_34
        0xc8 -> :sswitch_30
        0x12c -> :sswitch_38
        0x190 -> :sswitch_2c
        0x1f4 -> :sswitch_28
    .end sparse-switch
.end method

.method private getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 531
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_b

    goto :goto_3e

    .line 538
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    sparse-switch v0, :sswitch_data_4c

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got unexpected priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.TARE"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 540
    :sswitch_2f
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object v0

    .line 542
    :sswitch_32
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object v0

    .line 544
    :sswitch_35
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object v0

    .line 546
    :sswitch_38
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object v0

    .line 551
    :goto_3b
    :sswitch_3b
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object v0

    .line 532
    :cond_3e
    :goto_3e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_49

    .line 533
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object v0

    .line 535
    :cond_49
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object v0

    :sswitch_data_4c
    .sparse-switch
        0x64 -> :sswitch_38
        0xc8 -> :sswitch_35
        0x12c -> :sswitch_3b
        0x190 -> :sswitch_32
        0x1f4 -> :sswitch_2f
    .end sparse-switch
.end method

.method private hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 629
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 630
    return v1

    .line 632
    :cond_6
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_49

    .line 633
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_49

    .line 638
    :cond_1b
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 639
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v0

    return v0

    .line 642
    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;

    move-result-object v0

    .line 643
    .local v0, "bills":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 644
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 645
    .local v3, "bill":Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    invoke-direct {p0, p1, v3}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 646
    return v1

    .line 643
    .end local v3    # "bill":Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 649
    .end local v2    # "i":I
    :cond_47
    const/4 v1, 0x0

    return v1

    .line 636
    .end local v0    # "bills":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;>;"
    :cond_49
    :goto_49
    return v1
.end method

.method private isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 437
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 9
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 473
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 474
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 476
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 477
    .local v2, "billToJobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;>;"
    if-eqz v2, :cond_3a

    .line 478
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 479
    .local v3, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v3, :cond_26

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_3a

    .line 480
    :cond_26
    iget-object v4, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object v5, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    invoke-interface {v4, v0, v1, v5, p2}, Lcom/android/server/tare/EconomyManagerInternal;->unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 484
    iget-object v4, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 485
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 486
    .local v4, "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    if-eqz v4, :cond_3a

    .line 487
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .end local v3    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    :cond_3a
    return-void
.end method

.method private setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsed"    # J
    .param p4, "isApproved"    # Z

    .line 658
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setExpeditedJobTareApproved(JZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 659
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 660
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 661
    if-eqz p4, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 662
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 664
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 666
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public canScheduleEJ(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 425
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    if-nez v0, :cond_6

    .line 426
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_15

    .line 429
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v0

    return v0

    .line 431
    :cond_15
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v0

    return v0
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 5
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 712
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    const-string v0, "Is enabled: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 713
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 715
    const-string v0, "Affordability cache:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 717
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/controllers/TareController;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 734
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 735
    return-void
.end method

.method public getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 442
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    if-nez v0, :cond_9

    .line 443
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide v0

    .line 445
    :cond_9
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 446
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v3

    .line 445
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/tare/EconomyManagerInternal;->getMaxDurationMs(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)J

    move-result-wide v0

    return-wide v0
.end method

.method synthetic lambda$dumpControllerStateLocked$3$com-android-server-job-controllers-TareController(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 8
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "userId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "billMap"    # Landroid/util/ArrayMap;

    .line 718
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 719
    .local v0, "numBills":I
    if-lez v0, :cond_39

    .line 720
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 721
    const-string v1, ":"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 726
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_36

    .line 727
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-direct {p0, v2}, Lcom/android/server/job/controllers/TareController;->getBillName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 728
    const-string v2, ": "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 726
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 731
    .end local v1    # "i":I
    :cond_36
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 733
    :cond_39
    return-void
.end method

.method synthetic lambda$new$0$com-android-server-job-controllers-TareController(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .param p4, "canAfford"    # Z

    .line 247
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 248
    .local v0, "nowElapsed":J
    sget-boolean v2, Lcom/android/server/job/controllers/TareController;->DEBUG:Z

    if-eqz v2, :cond_3e

    .line 249
    const-string v2, "JobScheduler.TARE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " affordability for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 250
    invoke-direct {p0, p3}, Lcom/android/server/job/controllers/TareController;->getBillName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_3e
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 254
    :try_start_41
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 255
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 256
    .local v3, "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    if-nez v3, :cond_56

    .line 257
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v4

    .line 258
    iget-object v4, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, p2, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 260
    :cond_56
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v4, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 263
    invoke-virtual {v4, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 264
    .local v4, "billToJobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;>;"
    if-eqz v4, :cond_b7

    .line 265
    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 266
    .local v5, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_b7

    .line 267
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 268
    .local v6, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_75
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_ac

    .line 269
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 273
    .local v8, "job":Lcom/android/server/job/controllers/JobStatus;
    if-nez p4, :cond_8c

    .line 274
    invoke-direct {p0, v8}, Lcom/android/server/job/controllers/TareController;->hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    if-eqz v9, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 v9, 0x0

    goto :goto_8d

    :cond_8c
    :goto_8c
    const/4 v9, 0x1

    .line 273
    :goto_8d
    invoke-virtual {v8, v0, v1, v9}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 275
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_96
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 279
    invoke-direct {p0, v8}, Lcom/android/server/job/controllers/TareController;->canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    .line 278
    invoke-direct {p0, v8, v0, v1, v9}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 280
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_a9
    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    .line 283
    .end local v7    # "i":I
    :cond_ac
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_b7

    .line 284
    iget-object v7, p0, Lcom/android/server/job/controllers/TareController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v7, v6}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 288
    .end local v3    # "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    .end local v4    # "billToJobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;>;"
    .end local v5    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v6    # "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_b7
    monitor-exit v2

    .line 289
    return-void

    .line 288
    :catchall_b9
    move-exception v3

    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_41 .. :try_end_bb} :catchall_b9

    throw v3
.end method

.method synthetic lambda$onConstantsUpdatedLocked$1$com-android-server-job-controllers-TareController(JLcom/android/server/job/controllers/JobStatus;)V
    .registers 6
    .param p1, "nowElapsed"    # J
    .param p3, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 407
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 408
    invoke-virtual {p3, p1, p2, v1}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    .line 409
    invoke-direct {p0, p3, p1, p2, v1}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    goto :goto_26

    .line 411
    :cond_c
    nop

    .line 412
    invoke-direct {p0, p3}, Lcom/android/server/job/controllers/TareController;->hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 411
    invoke-virtual {p3, p1, p2, v0}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    .line 413
    nop

    .line 414
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 415
    invoke-direct {p0, p3}, Lcom/android/server/job/controllers/TareController;->canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 413
    :goto_23
    invoke-direct {p0, p3, p1, p2, v1}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    .line 417
    :goto_26
    return-void
.end method

.method synthetic lambda$onConstantsUpdatedLocked$2$com-android-server-job-controllers-TareController()V
    .registers 6

    .line 404
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 406
    .local v1, "nowElapsed":J
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    new-instance v4, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/TareController;J)V

    invoke-virtual {v3, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 418
    .end local v1    # "nowElapsed":J
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 315
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 316
    .local v0, "nowElapsed":J
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    .line 317
    nop

    .line 318
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 317
    :goto_1d
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;

    move-result-object v2

    .line 321
    .local v2, "bills":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 322
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-direct {p0, p1, v4}, Lcom/android/server/job/controllers/TareController;->addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 324
    .end local v3    # "i":I
    :cond_37
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 9
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 383
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 384
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 386
    invoke-static {p1}, Lcom/android/server/job/controllers/TareController;->getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/server/tare/EconomyManagerInternal;->noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 388
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 389
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 390
    .local v2, "billToJobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;>;"
    if-eqz v2, :cond_3b

    .line 391
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3b

    .line 392
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-direct {p0, p1, v4}, Lcom/android/server/job/controllers/TareController;->removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 395
    .end local v3    # "i":I
    :cond_3b
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .registers 3

    .line 400
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/TareController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-eq v0, v1, :cond_1a

    .line 401
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    .line 403
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/TareController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    :cond_1a
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 9
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 329
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 330
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 332
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 333
    .local v2, "billToJobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;>;"
    const-string v3, "JobScheduler.TARE"

    if-nez v2, :cond_1a

    .line 334
    const-string v4, "Job is being prepared but doesn\'t have a pre-existing billToJobMap"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 336
    :cond_1a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2d

    .line 337
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-direct {p0, p1, v5}, Lcom/android/server/job/controllers/TareController;->removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 340
    .end local v4    # "i":I
    :cond_2d
    :goto_2d
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/server/job/controllers/TareController;->addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 342
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    .line 343
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/job/controllers/TareController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, v4}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_66

    .line 344
    sget-boolean v5, Lcom/android/server/job/controllers/TareController;->DEBUG:Z

    if-eqz v5, :cond_60

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is top started job"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_60
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 350
    :cond_66
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 351
    invoke-static {p1}, Lcom/android/server/job/controllers/TareController;->getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 350
    invoke-interface {v3, v0, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal;->noteOngoingEventStarted(ILjava/lang/String;ILjava/lang/String;)V

    .line 353
    :goto_77
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 358
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 359
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 361
    invoke-static {p1}, Lcom/android/server/job/controllers/TareController;->getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/server/tare/EconomyManagerInternal;->noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 364
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TareController;->getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;

    move-result-object v2

    .line 365
    .local v2, "bills":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;>;"
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 366
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 367
    .local v3, "billToJobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;>;"
    if-nez v3, :cond_34

    .line 368
    const-string v4, "JobScheduler.TARE"

    const-string v5, "Job was just unprepared but didn\'t have a pre-existing billToJobMap"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 370
    :cond_34
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_35
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_47

    .line 371
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-direct {p0, p1, v5}, Lcom/android/server/job/controllers/TareController;->removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 370
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 374
    .end local v4    # "i":I
    :cond_47
    :goto_47
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_48
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 375
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-direct {p0, p1, v5}, Lcom/android/server/job/controllers/TareController;->addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 374
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 377
    .end local v4    # "i":I
    :cond_5a
    return-void
.end method
