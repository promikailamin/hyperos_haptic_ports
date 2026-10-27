.class public Landroid/perf/PerfStub$Scroll;
.super Ljava/lang/Object;
.source "PerfStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/perf/PerfStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Scroll"
.end annotation


# static fields
.field public static final blacklist HORIZONTAL:I = 0x2

.field public static final blacklist PANEL_VIEW:I = 0x3

.field public static final blacklist PREFILING:I = 0x4

.field public static final blacklist VERTICAL:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
