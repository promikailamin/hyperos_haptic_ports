.class public Lcom/android/server/wm/WindowTracingDataSource$Instance;
.super Landroid/tracing/perfetto/DataSourceInstance;
.source "WindowTracingDataSource.java"


# instance fields
.field public final mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

.field public final mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mWindowTracing:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/tracing/perfetto/DataSource;ILcom/android/server/wm/WindowTracingDataSource$Config;Ljava/lang/ref/WeakReference;)V
    .registers 5

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/tracing/perfetto/DataSourceInstance;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 81
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    iput-object p3, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    .line 90
    iput-object p4, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mWindowTracing:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onStart(Landroid/tracing/perfetto/StartCallbackArguments;)V
    .registers 2

    .line 95
    iget-object p1, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mWindowTracing:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowTracingPerfetto;

    if-eqz p1, :cond_f

    .line 97
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowTracingPerfetto;->onStart(Lcom/android/server/wm/WindowTracingDataSource$Config;)V

    :cond_f
    return-void
.end method

.method public onStop(Landroid/tracing/perfetto/StopCallbackArguments;)V
    .registers 2

    .line 103
    iget-object p1, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mWindowTracing:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowTracingPerfetto;

    if-eqz p1, :cond_d

    .line 105
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowTracingPerfetto;->onStop(Lcom/android/server/wm/WindowTracingDataSource$Instance;)V

    :cond_d
    return-void
.end method
