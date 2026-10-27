.class Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;
.super Landroid/os/AsyncTask;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRunnerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/filterfw/core/SyncRunner;",
        "Ljava/lang/Void;",
        "Landroid/filterfw/core/AsyncRunner$RunnerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AsyncRunnerTask"


# instance fields
.field final synthetic blacklist this$0:Landroid/filterfw/core/AsyncRunner;


# direct methods
.method private constructor blacklist <init>(Landroid/filterfw/core/AsyncRunner;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 43
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;
    .registers 9

    .line 49
    const-string v0, "AsyncRunnerTask"

    new-instance v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner-IA;)V

    .line 51
    const/4 v2, 0x6

    :try_start_b
    array-length v3, p1

    const/4 v4, 0x1

    if-gt v3, v4, :cond_79

    .line 55
    const/4 v3, 0x0

    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    .line 58
    iget-object v5, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v5}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmLogVerbose(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v5, "Starting background graph processing."

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_22
    iget-object v5, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {v5}, Landroid/filterfw/core/AsyncRunner;->activateGlContext()Z

    .line 61
    iget-object v5, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v5}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmLogVerbose(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v5

    if-eqz v5, :cond_34

    const-string v5, "Preparing filter graph for processing."

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_34
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/filterfw/core/SyncRunner;->beginProcessing()V

    .line 64
    iget-object v5, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v5}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmLogVerbose(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v5

    if-eqz v5, :cond_46

    const-string v5, "Running graph."

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_46
    iput v4, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 68
    :cond_48
    :goto_48
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v5, v4, :cond_6f

    .line 69
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    move-result v5

    if-nez v5, :cond_48

    .line 70
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    move-result v5

    iput v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 71
    iget v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_48

    .line 72
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/filterfw/core/SyncRunner;->waitUntilWake()V

    .line 73
    iput v4, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    goto :goto_48

    .line 79
    :cond_6f
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_78

    .line 80
    const/4 p1, 0x5

    iput p1, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 85
    :cond_78
    goto :goto_86

    .line 52
    :cond_79
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v3, "More than one runner received!"

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_81} :catch_81

    .line 82
    :catch_81
    move-exception p1

    .line 83
    iput-object p1, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    .line 84
    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 89
    :goto_86
    :try_start_86
    iget-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {p1}, Landroid/filterfw/core/AsyncRunner;->deactivateGlContext()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8b} :catch_8c

    .line 93
    goto :goto_91

    .line 90
    :catch_8c
    move-exception p1

    .line 91
    iput-object p1, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    .line 92
    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 95
    :goto_91
    iget-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {p1}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmLogVerbose(Landroid/filterfw/core/AsyncRunner;)Z

    move-result p1

    if-eqz p1, :cond_9e

    const-string p1, "Done with background graph processing."

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_9e
    return-object v1
.end method

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

    .line 43
    check-cast p1, [Landroid/filterfw/core/SyncRunner;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    .line 102
    return-void
.end method

.method protected bridge synthetic whitelist onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method

.method protected greylist-max-o onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .registers 6

    .line 106
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmLogVerbose(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v0

    const-string v1, "AsyncRunnerTask"

    if-eqz v0, :cond_f

    const-string v0, "Starting post-execute."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_f
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$msetRunning(Landroid/filterfw/core/AsyncRunner;Z)V

    .line 108
    const/4 v0, 0x5

    if-nez p1, :cond_22

    .line 110
    new-instance p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner-IA;)V

    .line 111
    iput v0, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 113
    :cond_22
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    iget-object v3, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    invoke-static {v2, v3}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$msetException(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    .line 114
    iget v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    const/4 v3, 0x6

    if-eq v2, v0, :cond_32

    iget v0, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v0, v3, :cond_51

    .line 115
    :cond_32
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmLogVerbose(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "Closing filters."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmRunner(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/SyncRunner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/SyncRunner;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_49

    .line 121
    goto :goto_51

    .line 118
    :catch_49
    move-exception v0

    .line 119
    iput v3, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 120
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v2, v0}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$msetException(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    .line 123
    :cond_51
    :goto_51
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmDoneListener(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 124
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmLogVerbose(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "Calling graph done callback."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_66
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmDoneListener(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v0

    iget p1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    invoke-interface {v0, p1}, Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;->onRunnerDone(I)V

    .line 127
    :cond_71
    iget-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {p1}, Landroid/filterfw/core/AsyncRunner;->-$$Nest$fgetmLogVerbose(Landroid/filterfw/core/AsyncRunner;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const-string p1, "Completed post-execute."

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_7e
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method
