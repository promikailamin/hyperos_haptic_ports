.class public Lcom/android/server/appwidget/ReportWidgetEventsJob;
.super Landroid/app/job/JobService;
.source "ReportWidgetEventsJob.java"


# direct methods
.method public static synthetic $r8$lambda$g4Jhfkwb7E_tWc3R9F1lETqF2lI(Lcom/android/server/appwidget/ReportWidgetEventsJob;Landroid/app/job/JobParameters;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/ReportWidgetEventsJob;->lambda$onStartJob$0(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/app/job/JobScheduler;J)V
    .registers 8

    .line 44
    const-string v0, "ReportWidgetEventsJob"

    :try_start_2
    const-string v1, "com.android.server.appwidget.AppWidgetServiceImpl.ReportWidgetEventsJob"

    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x1

    if-gtz v1, :cond_15

    .line 49
    invoke-virtual {p0, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_40

    .line 53
    :cond_15
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "android"

    const-class v4, Lcom/android/server/appwidget/ReportWidgetEventsJob;

    .line 54
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v3, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v3, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    if-eq p0, v2, :cond_3f

    .line 60
    const-string p0, "Failed to schedule reportWidgetEvents job: failed result"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_13

    :cond_3f
    return-void

    .line 63
    :goto_40
    const-string p1, "Failed to schedule reportWidgetEvents job"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;)V
    .registers 3

    .line 70
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManagerInternal;

    .line 71
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManagerInternal;->saveWidgetEvents()V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 69
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/appwidget/ReportWidgetEventsJob$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/ReportWidgetEventsJob$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appwidget/ReportWidgetEventsJob;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method
