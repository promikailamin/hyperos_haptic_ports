.class abstract Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StaticServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mCachedInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist mIsCached:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 2586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2592
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mIsCached:Z

    return-void
.end method


# virtual methods
.method public abstract blacklist createService()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final blacklist getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .line 2599
    monitor-enter p0

    .line 2600
    :try_start_1
    iget-boolean v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mIsCached:Z

    if-eqz v0, :cond_9

    .line 2601
    iget-object p1, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object p1

    .line 2603
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_36

    .line 2605
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->isServiceEnabled(Landroid/app/ContextImpl;)Z

    move-result p1

    .line 2606
    monitor-enter p0

    .line 2607
    :try_start_f
    iget-boolean v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mIsCached:Z
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_33

    if-nez v0, :cond_2f

    .line 2609
    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 2610
    :try_start_16
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->createService()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    .line 2612
    iget-object p1, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iput-boolean v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mIsCached:Z

    goto :goto_2a

    .line 2614
    :cond_25
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    .line 2615
    iput-boolean v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mIsCached:Z
    :try_end_2a
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_16 .. :try_end_2a} :catch_2b
    .catchall {:try_start_16 .. :try_end_2a} :catchall_33

    .line 2619
    :goto_2a
    goto :goto_2f

    .line 2617
    :catch_2b
    move-exception p1

    .line 2618
    :try_start_2c
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V

    .line 2621
    :cond_2f
    :goto_2f
    iget-object p1, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object p1

    .line 2622
    :catchall_33
    move-exception p1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw p1

    .line 2603
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method protected blacklist isServiceEnabled(Landroid/app/ContextImpl;)Z
    .registers 2

    .line 2626
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist supportsFetchWithoutContext()Z
    .registers 2

    .line 2635
    const/4 v0, 0x0

    return v0
.end method
