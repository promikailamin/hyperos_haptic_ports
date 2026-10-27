.class Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mNewRect:Landroid/graphics/Rect;

.field private final blacklist mOldRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 67
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 68
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p6, p7, p8, p9}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {p1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 70
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {p1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setWidthChanged(Z)V

    .line 71
    iget-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {p1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 73
    :cond_2f
    return-void
.end method
