.class public Landroid/os/perfdebug/ViewMonitor;
.super Ljava/lang/Object;
.source "ViewMonitor.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/os/perfdebug/ViewMonitor;
    .registers 1

    .line 13
    const-class v0, Landroid/os/perfdebug/ViewMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/ViewMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist markDrawBegin(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 17
    return-void
.end method

.method public blacklist markDrawEnd()V
    .registers 1

    .line 20
    return-void
.end method

.method public blacklist markLayoutBegin(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 29
    return-void
.end method

.method public blacklist markLayoutEnd()V
    .registers 1

    .line 32
    return-void
.end method

.method public blacklist markMeasureBegin(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 35
    return-void
.end method

.method public blacklist markMeasureEnd()V
    .registers 1

    .line 38
    return-void
.end method

.method public blacklist markOnDrawBegin(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 23
    return-void
.end method

.method public blacklist markOnDrawEnd()V
    .registers 1

    .line 26
    return-void
.end method
