.class public Lcom/android/server/notification/ReviewNotificationPermissionsJobService;
.super Landroid/app/job/JobService;
.source "ReviewNotificationPermissionsJobService.java"


# static fields
.field protected static final JOB_ID:I = 0xd6eed5b

.field public static final TAG:Ljava/lang/String; = "ReviewNotificationPermissionsJobService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;J)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rescheduleTimeMillis"    # J

    .line 44
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 46
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    const v1, 0xd6eed5b

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 49
    :cond_14
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/notification/ReviewNotificationPermissionsJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v2, "component":Landroid/content/ComponentName;
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v3, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v3, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 55
    .local v1, "newJob":Landroid/app/job/JobInfo;
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 56
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 63
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 64
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 65
    .local v0, "nmi":Lcom/android/server/notification/NotificationManagerInternal;
    invoke-interface {v0}, Lcom/android/server/notification/NotificationManagerInternal;->sendReviewPermissionsNotification()V

    .line 69
    const/4 v1, 0x0

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 77
    const/4 v0, 0x1

    return v0
.end method
