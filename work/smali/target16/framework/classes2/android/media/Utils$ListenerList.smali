.class public Landroid/media/Utils$ListenerList;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Utils$ListenerList$Listener;,
        Landroid/media/Utils$ListenerList$ListenerWithCancellation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mClearCallingIdentity:Z

.field private final blacklist mForceRemoveConsistency:Z

.field private blacklist mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroid/media/Utils$ListenerList$ListenerWithCancellation<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictSingleCallerOnEvent:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmForceRemoveConsistency(Landroid/media/Utils$ListenerList;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/Utils$ListenerList;->mForceRemoveConsistency:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestrictSingleCallerOnEvent(Landroid/media/Utils$ListenerList;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/Utils$ListenerList;->mRestrictSingleCallerOnEvent:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 511
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/media/Utils$ListenerList;-><init>(ZZZ)V

    .line 514
    return-void
.end method

.method public constructor blacklist <init>(ZZZ)V
    .registers 5

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    .line 538
    iput-boolean p1, p0, Landroid/media/Utils$ListenerList;->mRestrictSingleCallerOnEvent:Z

    .line 539
    iput-boolean p2, p0, Landroid/media/Utils$ListenerList;->mClearCallingIdentity:Z

    .line 540
    iput-boolean p3, p0, Landroid/media/Utils$ListenerList;->mForceRemoveConsistency:Z

    .line 541
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/Utils$ListenerList$Listener<",
            "TV;>;)V"
        }
    .end annotation

    .line 577
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    new-instance v0, Landroid/media/Utils$ListenerList$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/media/Utils$ListenerList$1;-><init>(Landroid/media/Utils$ListenerList;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V

    .line 616
    iget-object p2, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter p2

    .line 619
    :try_start_11
    iget-object p3, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    monitor-exit p2

    .line 621
    return-void

    .line 620
    :catchall_18
    move-exception p1

    monitor-exit p2
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public blacklist notify(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 654
    :try_start_3
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 655
    monitor-exit v0

    return-void

    .line 657
    :cond_d
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 658
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_49

    .line 661
    iget-boolean v0, p0, Landroid/media/Utils$ListenerList;->mClearCallingIdentity:Z

    if-eqz v0, :cond_25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 663
    :goto_26
    :try_start_26
    array-length v2, v1

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_34

    aget-object v4, v1, v3

    .line 664
    check-cast v4, Landroid/media/Utils$ListenerList$ListenerWithCancellation;

    .line 666
    invoke-interface {v4, p1, p2}, Landroid/media/Utils$ListenerList$ListenerWithCancellation;->onEvent(ILjava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_3e

    .line 663
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 669
    :cond_34
    if-eqz v0, :cond_3d

    .line 670
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    :cond_3d
    return-void

    .line 669
    :catchall_3e
    move-exception p1

    if-eqz v0, :cond_48

    .line 670
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    :cond_48
    throw p1

    .line 658
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public blacklist remove(Ljava/lang/Object;)V
    .registers 5

    .line 629
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 633
    :try_start_6
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Utils$ListenerList$ListenerWithCancellation;

    .line 634
    if-nez v1, :cond_12

    .line 635
    monitor-exit v0

    return-void

    .line 637
    :cond_12
    iget-object v2, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    .line 641
    invoke-interface {v1}, Landroid/media/Utils$ListenerList$ListenerWithCancellation;->cancel()V

    .line 642
    return-void

    .line 638
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method
