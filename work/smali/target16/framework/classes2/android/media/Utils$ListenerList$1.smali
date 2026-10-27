.class Landroid/media/Utils$ListenerList$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/media/Utils$ListenerList$ListenerWithCancellation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/Utils$ListenerList;->add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/Utils$ListenerList$ListenerWithCancellation<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile blacklist mCancelled:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/media/Utils$ListenerList;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/media/Utils$ListenerList$Listener;


# direct methods
.method public static synthetic blacklist $r8$lambda$A27ad-TvFtNwMqQLJ5lKZWBOlkQ(Landroid/media/Utils$ListenerList$1;Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/Utils$ListenerList$1;->lambda$onEvent$0(Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/Utils$ListenerList;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 583
    iput-object p1, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    iput-object p2, p0, Landroid/media/Utils$ListenerList$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/Utils$ListenerList$1;->val$listener:Landroid/media/Utils$ListenerList$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Utils$ListenerList$1;->mLock:Ljava/lang/Object;

    .line 585
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    return-void
.end method

.method private synthetic blacklist lambda$onEvent$0(Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V
    .registers 6

    .line 592
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    invoke-static {v0}, Landroid/media/Utils$ListenerList;->-$$Nest$fgetmRestrictSingleCallerOnEvent(Landroid/media/Utils$ListenerList;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    invoke-static {v0}, Landroid/media/Utils$ListenerList;->-$$Nest$fgetmForceRemoveConsistency(Landroid/media/Utils$ListenerList;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 598
    :cond_11
    iget-boolean v0, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    if-eqz v0, :cond_16

    return-void

    .line 599
    :cond_16
    invoke-interface {p1, p2, p3}, Landroid/media/Utils$ListenerList$Listener;->onEvent(ILjava/lang/Object;)V

    goto :goto_27

    .line 593
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_1d
    iget-boolean v1, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    if-eqz v1, :cond_23

    monitor-exit v0

    return-void

    .line 595
    :cond_23
    invoke-interface {p1, p2, p3}, Landroid/media/Utils$ListenerList$Listener;->onEvent(ILjava/lang/Object;)V

    .line 596
    monitor-exit v0

    .line 601
    :goto_27
    return-void

    .line 596
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw p1
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 3

    .line 606
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    invoke-static {v0}, Landroid/media/Utils$ListenerList;->-$$Nest$fgetmForceRemoveConsistency(Landroid/media/Utils$ListenerList;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 607
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_c
    iput-boolean v1, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    .line 609
    monitor-exit v0

    goto :goto_15

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1

    .line 611
    :cond_13
    iput-boolean v1, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    .line 613
    :goto_15
    return-void
.end method

.method public blacklist onEvent(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/media/Utils$ListenerList$1;->val$listener:Landroid/media/Utils$ListenerList$Listener;

    new-instance v2, Landroid/media/Utils$ListenerList$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1, p2}, Landroid/media/Utils$ListenerList$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/Utils$ListenerList$1;Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 602
    return-void
.end method
