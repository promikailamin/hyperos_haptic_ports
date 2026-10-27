.class public Lcom/android/server/power/WakelockTracer$IncrementalState;
.super Ljava/lang/Object;
.source "WakelockTracer.java"


# instance fields
.field public final iids:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/WakelockTracer$IncrementalState;->iids:Ljava/util/Map;

    return-void
.end method
