.class final Landroid/app/job/JobServiceEngine$JobInterface;
.super Landroid/app/job/IJobService$Stub;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobInterface"
.end annotation


# instance fields
.field final greylist-max-o mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/job/JobServiceEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/job/JobServiceEngine;)V
    .registers 3

    .line 97
    invoke-direct {p0}, Landroid/app/job/IJobService$Stub;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    .line 99
    return-void
.end method


# virtual methods
.method public blacklist getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 105
    if-eqz v0, :cond_1c

    .line 106
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 107
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 108
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 109
    iget-object p1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 112
    :cond_1c
    return-void
.end method

.method public blacklist getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 118
    if-eqz v0, :cond_1c

    .line 119
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 120
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 121
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 122
    iget-object p1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 125
    :cond_1c
    return-void
.end method

.method public blacklist onNetworkChanged(Landroid/app/job/JobParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 145
    if-eqz v0, :cond_1a

    .line 146
    iget-object v1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/job/JobServiceEngine$JobHandler;->removeMessages(I)V

    .line 147
    iget-object v0, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    invoke-virtual {v0, v2, p1}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 150
    :cond_1a
    return-void
.end method

.method public greylist-max-o startJob(Landroid/app/job/JobParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 130
    if-eqz v0, :cond_2b

    .line 131
    iget-object v0, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    invoke-static {}, Landroid/app/job/JobServiceEngine;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 133
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 135
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    .line 136
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobNamespace()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {v1, v2, p1}, Lcom/android/internal/os/DebugStore;->recordScheduleStartJob(IILjava/lang/String;)V

    .line 138
    :cond_28
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_2b
    return-void
.end method

.method public greylist-max-o stopJob(Landroid/app/job/JobParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 155
    if-eqz v0, :cond_2b

    .line 156
    iget-object v0, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 157
    invoke-static {}, Landroid/app/job/JobServiceEngine;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 158
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 160
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    .line 161
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobNamespace()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {v1, v2, p1}, Lcom/android/internal/os/DebugStore;->recordScheduleStopJob(IILjava/lang/String;)V

    .line 163
    :cond_28
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    :cond_2b
    return-void
.end method
