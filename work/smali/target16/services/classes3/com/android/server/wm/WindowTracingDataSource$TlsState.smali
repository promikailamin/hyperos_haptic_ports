.class public Lcom/android/server/wm/WindowTracingDataSource$TlsState;
.super Ljava/lang/Object;
.source "WindowTracingDataSource.java"


# instance fields
.field public final mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

.field public final mStatus:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowTracingDataSource$Config;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    .line 62
    iput-object p2, p0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowTracingDataSource$Config;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/WindowTracingDataSource-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowTracingDataSource$TlsState;-><init>(Lcom/android/server/wm/WindowTracingDataSource$Config;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method
