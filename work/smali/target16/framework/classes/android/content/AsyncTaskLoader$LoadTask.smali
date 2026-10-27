.class final Landroid/content/AsyncTaskLoader$LoadTask;
.super Landroid/os/AsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mDone:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist this$0:Landroid/content/AsyncTaskLoader;

.field greylist-max-o waiting:Z


# direct methods
.method constructor blacklist <init>(Landroid/content/AsyncTaskLoader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Landroid/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 63
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/content/AsyncTaskLoader$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .line 74
    :try_start_0
    iget-object p1, p0, Landroid/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {p1}, Landroid/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_6} :catch_7

    .line 76
    return-object p1

    .line 77
    :catch_7
    move-exception p1

    .line 78
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader$LoadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 88
    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_10
    throw p1
.end method

.method protected whitelist onCancelled(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 110
    iget-object p1, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :catchall_c
    move-exception p1

    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 111
    throw p1
.end method

.method protected whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/content/AsyncTaskLoader;->dispatchOnLoadComplete(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 99
    iget-object p1, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 100
    nop

    .line 101
    return-void

    .line 99
    :catchall_c
    move-exception p1

    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 100
    throw p1
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 119
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 120
    return-void
.end method

.method public greylist-max-o waitForLoader()V
    .registers 2

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 128
    goto :goto_7

    .line 126
    :catch_6
    move-exception v0

    .line 129
    :goto_7
    return-void
.end method
