.class public final Landroid/perf/PerfMTKStubImpl$Provider;
.super Ljava/lang/Object;
.source "PerfMTKStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/perf/PerfMTKStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/perf/PerfMTKStubImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideNewInstance()Landroid/perf/PerfMTKStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/perf/PerfMTKStubImpl;

    invoke-direct {v0}, Landroid/perf/PerfMTKStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/perf/PerfMTKStubImpl$Provider;->provideNewInstance()Landroid/perf/PerfMTKStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/perf/PerfMTKStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/perf/PerfMTKStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/perf/PerfMTKStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/perf/PerfMTKStubImpl$Provider;->provideSingleton()Landroid/perf/PerfMTKStubImpl;

    move-result-object v0

    return-object v0
.end method
