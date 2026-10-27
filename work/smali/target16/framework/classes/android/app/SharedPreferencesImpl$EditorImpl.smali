.class public final Landroid/app/SharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private greylist-max-o mClear:Z

.field private final greylist-max-o mEditorLock:Ljava/lang/Object;

.field private final greylist-max-o mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/app/SharedPreferencesImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$K3ZhT5raBwBpi0ZNTVZjjuEvbWI(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->lambda$notifyListeners$0(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/SharedPreferencesImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 413
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    .line 416
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 419
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method

.method private greylist-max-o commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .registers 14

    .line 525
    nop

    .line 526
    nop

    .line 527
    nop

    .line 530
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 534
    :try_start_a
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I

    move-result v0

    if-lez v0, :cond_22

    .line 539
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmMap(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v2}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmMap(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)V

    .line 541
    :cond_22
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmMap(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v8

    .line 542
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;I)V

    .line 544
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmListeners(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_42

    move v0, v3

    goto :goto_43

    :cond_42
    move v0, v2

    .line 545
    :goto_43
    if-eqz v0, :cond_5c

    .line 546
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 547
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v6}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmListeners(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v6, v4

    move-object v7, v5

    goto :goto_5f

    .line 545
    :cond_5c
    const/4 v4, 0x0

    move-object v6, v4

    move-object v7, v6

    .line 550
    :goto_5f
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_62
    .catchall {:try_start_a .. :try_end_62} :catchall_ef

    .line 551
    nop

    .line 553
    :try_start_63
    iget-boolean v5, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v5, :cond_7a

    .line 554
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_73

    .line 555
    nop

    .line 556
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    move v5, v3

    goto :goto_74

    .line 554
    :cond_73
    move v5, v2

    .line 558
    :goto_74
    nop

    .line 559
    iput-boolean v2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    move v2, v5

    move v5, v3

    goto :goto_7b

    .line 553
    :cond_7a
    move v5, v2

    .line 562
    :goto_7b
    iget-object v9, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_85
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 563
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 564
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 568
    if-eq v10, p0, :cond_b7

    if-nez v10, :cond_a0

    goto :goto_b7

    .line 574
    :cond_a0
    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b3

    .line 575
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 576
    if-eqz v12, :cond_b3

    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b3

    .line 577
    goto :goto_85

    .line 580
    :cond_b3
    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    .line 569
    :cond_b7
    :goto_b7
    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_be

    .line 570
    goto :goto_85

    .line 572
    :cond_be
    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :goto_c1
    nop

    .line 584
    if-eqz v0, :cond_c7

    .line 585
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_c7
    move v2, v3

    goto :goto_85

    .line 589
    :cond_c9
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 591
    if-eqz v2, :cond_dc

    .line 592
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;)J

    move-result-wide v2

    const-wide/16 v9, 0x1

    add-long/2addr v2, v9

    invoke-static {v0, v2, v3}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;J)V

    .line 595
    :cond_dc
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;)J

    move-result-wide v2

    .line 596
    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_63 .. :try_end_e3} :catchall_ec

    .line 597
    :try_start_e3
    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_ef

    .line 598
    move-wide v3, v2

    new-instance v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;-><init>(JZLjava/util/List;Ljava/util/Set;Ljava/util/Map;Landroid/app/SharedPreferencesImpl-IA;)V

    return-object v2

    .line 596
    :catchall_ec
    move-exception v0

    :try_start_ed
    monitor-exit v4
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    :try_start_ee
    throw v0

    .line 597
    :catchall_ef
    move-exception v0

    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_ef

    throw v0
.end method

.method private synthetic blacklist lambda$notifyListeners$0(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 2

    .line 651
    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method private greylist-max-o notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 7

    .line 630
    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    if-eqz v0, :cond_79

    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    if-nez v0, :cond_d

    iget-boolean v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysCleared:Z

    if-nez v0, :cond_d

    goto :goto_79

    .line 633
    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6e

    .line 634
    iget-boolean v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysCleared:Z

    if-eqz v0, :cond_3f

    const-wide/32 v0, 0x71a0c40

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 635
    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 636
    if-eqz v1, :cond_3e

    .line 637
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 639
    :cond_3e
    goto :goto_2a

    .line 641
    :cond_3f
    iget-object v0, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_47
    if-ltz v0, :cond_78

    .line 642
    iget-object v1, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 643
    iget-object v2, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 644
    if-eqz v3, :cond_6a

    .line 645
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 647
    :cond_6a
    goto :goto_57

    .line 641
    :cond_6b
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 651
    :cond_6e
    sget-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    :cond_78
    return-void

    .line 631
    :cond_79
    :goto_79
    return-void
.end method


# virtual methods
.method public whitelist apply()V
    .registers 5

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 486
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v2

    .line 487
    new-instance v3, Landroid/app/SharedPreferencesImpl$EditorImpl$1;

    invoke-direct {v3, p0, v2, v0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl$1;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;J)V

    .line 503
    invoke-static {v3}, Landroid/app/QueuedWork;->addFinisher(Ljava/lang/Runnable;)V

    .line 505
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;

    invoke-direct {v0, p0, v3}, Landroid/app/SharedPreferencesImpl$EditorImpl$2;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V

    .line 513
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v1, v2, v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$menqueueDiskWrite(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 519
    invoke-direct {p0, v2}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 520
    return-void
.end method

.method public whitelist clear()Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 476
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 478
    monitor-exit v0

    return-object p0

    .line 479
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist commit()Z
    .registers 4

    .line 604
    nop

    .line 610
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v0

    .line 612
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/app/SharedPreferencesImpl;->-$$Nest$menqueueDiskWrite(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 615
    :try_start_b
    iget-object v1, v0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_19
    .catchall {:try_start_b .. :try_end_10} :catchall_17

    .line 624
    nop

    .line 625
    invoke-direct {p0, v0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 626
    iget-boolean v0, v0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    return v0

    .line 619
    :catchall_17
    move-exception v0

    .line 624
    throw v0

    .line 616
    :catch_19
    move-exception v0

    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 460
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    monitor-exit v0

    return-object p0

    .line 463
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public whitelist putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 453
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v0

    return-object p0

    .line 456
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public whitelist putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 439
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    monitor-exit v0

    return-object p0

    .line 442
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public whitelist putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 6

    .line 446
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    monitor-exit v0

    return-object p0

    .line 449
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 424
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    monitor-exit v0

    return-object p0

    .line 427
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 433
    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_f

    :cond_9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p2, v2

    .line 432
    :goto_f
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    monitor-exit v0

    return-object p0

    .line 435
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public whitelist remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 468
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mEditorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    monitor-exit v0

    return-object p0

    .line 471
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
