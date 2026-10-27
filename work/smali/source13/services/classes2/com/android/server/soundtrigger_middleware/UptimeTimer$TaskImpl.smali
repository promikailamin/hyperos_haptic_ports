.class Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;
.super Ljava/lang/Object;
.source "UptimeTimer.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/UptimeTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskImpl"
.end annotation


# instance fields
.field private mRunnable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;->mRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 75
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;->mRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public run()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;->mRunnable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 85
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_d

    .line 86
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    :cond_d
    return-void
.end method
