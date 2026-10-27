.class public Lcom/miui/leakcanary/KeyedWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "KeyedWeakReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist sHeapDumpUptimeMillis:J


# instance fields
.field public final blacklist description:Ljava/lang/String;

.field public final blacklist key:Ljava/lang/String;

.field private volatile blacklist retainedUptimeMillis:J

.field public final blacklist watchUptimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 44
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/leakcanary/KeyedWeakReference;->sHeapDumpUptimeMillis:J

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;JLjava/lang/ref/ReferenceQueue;)V
    .registers 9
    .param p1, "referent"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "watchUptimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p6, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 8
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/leakcanary/KeyedWeakReference;->retainedUptimeMillis:J

    .line 22
    iput-object p2, p0, Lcom/miui/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/miui/leakcanary/KeyedWeakReference;->description:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/miui/leakcanary/KeyedWeakReference;->watchUptimeMillis:J

    .line 25
    return-void
.end method

.method public static blacklist setHeapDumpUptimeMillis(J)V
    .registers 2
    .param p0, "heapDumpUptimeMillis"    # J

    .line 47
    sput-wide p0, Lcom/miui/leakcanary/KeyedWeakReference;->sHeapDumpUptimeMillis:J

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 3

    .line 40
    invoke-super {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/leakcanary/KeyedWeakReference;->retainedUptimeMillis:J

    .line 42
    return-void
.end method

.method public blacklist getRetainedUptimeMillis()J
    .registers 3

    .line 32
    iget-wide v0, p0, Lcom/miui/leakcanary/KeyedWeakReference;->retainedUptimeMillis:J

    return-wide v0
.end method

.method public blacklist isRetained()Z
    .registers 5

    .line 36
    iget-wide v0, p0, Lcom/miui/leakcanary/KeyedWeakReference;->retainedUptimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist setRetainedUptimeMillis(J)V
    .registers 3
    .param p1, "retainedUptimeMillis"    # J

    .line 28
    iput-wide p1, p0, Lcom/miui/leakcanary/KeyedWeakReference;->retainedUptimeMillis:J

    .line 29
    return-void
.end method
