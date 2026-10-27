.class Lcom/android/server/job/controllers/PrefetchController$1;
.super Ljava/lang/Object;
.source "PrefetchController.java"

# interfaces
.implements Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/PrefetchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/PrefetchController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/controllers/PrefetchController;

    .line 104
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$1;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEstimatedLaunchTimeChanged(ILjava/lang/String;J)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newEstimatedLaunchTime"    # J

    .line 108
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 109
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 110
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 111
    iput-wide p3, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 112
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController$1;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v1}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/PrefetchController;)Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 114
    return-void
.end method
