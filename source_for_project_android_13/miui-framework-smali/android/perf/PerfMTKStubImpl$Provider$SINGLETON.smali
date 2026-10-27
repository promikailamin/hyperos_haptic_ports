.class public final Landroid/perf/PerfMTKStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "PerfMTKStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/perf/PerfMTKStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/perf/PerfMTKStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/perf/PerfMTKStubImpl;

    invoke-direct {v0}, Landroid/perf/PerfMTKStubImpl;-><init>()V

    sput-object v0, Landroid/perf/PerfMTKStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/perf/PerfMTKStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
