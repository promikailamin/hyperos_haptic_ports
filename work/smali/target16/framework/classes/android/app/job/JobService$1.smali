.class Landroid/app/job/JobService$1;
.super Landroid/app/job/JobServiceEngine;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/job/JobService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/job/JobService;


# direct methods
.method constructor blacklist <init>(Landroid/app/job/JobService;Landroid/app/Service;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-direct {p0, p2}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    return-void
.end method


# virtual methods
.method public blacklist getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J
    .registers 4

    .line 130
    if-nez p2, :cond_9

    .line 131
    iget-object p2, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {p2, p1}, Landroid/app/job/JobService;->getTransferredDownloadBytes(Landroid/app/job/JobParameters;)J

    move-result-wide p1

    return-wide p1

    .line 133
    :cond_9
    iget-object v0, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobService;->getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J
    .registers 4

    .line 141
    if-nez p2, :cond_9

    .line 142
    iget-object p2, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {p2, p1}, Landroid/app/job/JobService;->getTransferredUploadBytes(Landroid/app/job/JobParameters;)J

    move-result-wide p1

    return-wide p1

    .line 144
    :cond_9
    iget-object v0, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobService;->getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist onNetworkChanged(Landroid/app/job/JobParameters;)V
    .registers 3

    .line 150
    iget-object v0, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v0, p1}, Landroid/app/job/JobService;->onNetworkChanged(Landroid/app/job/JobParameters;)V

    .line 151
    return-void
.end method

.method public whitelist onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 118
    iget-object v0, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v0, p1}, Landroid/app/job/JobService;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public whitelist onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v0, p1}, Landroid/app/job/JobService;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method
