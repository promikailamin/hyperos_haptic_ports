.class public Lcom/android/server/pm/KillAppBlocker$1;
.super Landroid/app/UidObserver;
.source "KillAppBlocker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/KillAppBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/KillAppBlocker;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/android/server/pm/KillAppBlocker$1;->this$0:Lcom/android/server/pm/KillAppBlocker;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidGone(IZ)V
    .registers 3

    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    iget-object p2, p0, Lcom/android/server/pm/KillAppBlocker$1;->this$0:Lcom/android/server/pm/KillAppBlocker;

    invoke-static {p2}, Lcom/android/server/pm/KillAppBlocker;->-$$Nest$fgetmActiveUids(Lcom/android/server/pm/KillAppBlocker;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/android/server/pm/KillAppBlocker$1;->this$0:Lcom/android/server/pm/KillAppBlocker;

    invoke-static {p1}, Lcom/android/server/pm/KillAppBlocker;->-$$Nest$fgetmActiveUids(Lcom/android/server/pm/KillAppBlocker;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_26

    .line 51
    iget-object p1, p0, Lcom/android/server/pm/KillAppBlocker$1;->this$0:Lcom/android/server/pm/KillAppBlocker;

    invoke-static {p1}, Lcom/android/server/pm/KillAppBlocker;->-$$Nest$fgetmUidsGoneCountDownLatch(Lcom/android/server/pm/KillAppBlocker;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_28

    .line 53
    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_24

    throw p1
.end method
