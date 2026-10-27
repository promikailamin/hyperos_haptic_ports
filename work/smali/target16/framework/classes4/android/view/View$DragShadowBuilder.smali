.class public Landroid/view/View$DragShadowBuilder;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragShadowBuilder"
.end annotation


# instance fields
.field private final greylist-max-r mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 29440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29441
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    .line 29442
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .registers 3

    .line 29429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29430
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    .line 29431
    return-void
.end method


# virtual methods
.method public final whitelist getView()Landroid/view/View;
    .registers 2

    .line 29456
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public whitelist onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 3

    .line 29497
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29498
    if-eqz v0, :cond_e

    .line 29499
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_15

    .line 29501
    :cond_e
    const-string p1, "View"

    const-string v0, "Asked to draw drag shadow but no view"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29503
    :goto_15
    return-void
.end method

.method public whitelist onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5

    .line 29480
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29481
    if-eqz v0, :cond_21

    .line 29482
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 29483
    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    iget p1, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Point;->set(II)V

    goto :goto_28

    .line 29485
    :cond_21
    const-string p1, "View"

    const-string p2, "Asked for drag thumb metrics but no view"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29487
    :goto_28
    return-void
.end method
