.class public interface abstract Landroid/perf/PerfMTKStub;
.super Ljava/lang/Object;
.source "PerfMTKStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/perf/PerfMTKStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 8
    const-class v0, Landroid/perf/PerfMTKStub;

    .line 9
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/perf/PerfMTKStub;

    sput-object v0, Landroid/perf/PerfMTKStub;->sInstance:Landroid/perf/PerfMTKStub;

    .line 8
    return-void
.end method

.method public static blacklist getInstance()Landroid/perf/PerfMTKStub;
    .registers 1

    .line 12
    sget-object v0, Landroid/perf/PerfMTKStub;->sInstance:Landroid/perf/PerfMTKStub;

    return-object v0
.end method

.method public static blacklist newInstance()Landroid/perf/PerfMTKStub;
    .registers 1

    .line 16
    const-class v0, Landroid/perf/PerfMTKStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/perf/PerfMTKStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getBoostParamByDevice()[I
.end method

.method public varargs abstract blacklist perfLockAcquire(I[I)I
.end method

.method public abstract blacklist perfLockRelease()I
.end method

.method public abstract blacklist perfLockReleaseHandler(I)I
.end method
