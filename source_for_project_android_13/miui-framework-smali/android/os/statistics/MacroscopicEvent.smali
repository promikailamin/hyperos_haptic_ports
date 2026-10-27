.class public abstract Landroid/os/statistics/MacroscopicEvent;
.super Landroid/os/statistics/PerfEvent;
.source "MacroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">",
        "Landroid/os/statistics/PerfEvent<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V
    .registers 3
    .param p1, "_eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 8
    .local p0, "this":Landroid/os/statistics/MacroscopicEvent;, "Landroid/os/statistics/MacroscopicEvent<TT;>;"
    .local p2, "_fields":Landroid/os/statistics/PerfEvent$DetailFields;, "TT;"
    invoke-direct {p0, p1, p2}, Landroid/os/statistics/PerfEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    .line 9
    return-void
.end method
