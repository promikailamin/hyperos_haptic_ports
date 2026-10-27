.class Lcom/android/internal/widget/PointerLocationView$2;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/PointerLocationView;


# direct methods
.method public static synthetic blacklist $r8$lambda$pm8mNkvP-KZn1Ql8axWbjuFJMhg(Lcom/android/internal/widget/PointerLocationView$2;Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/PointerLocationView$2;->lambda$onSystemGestureExclusionChanged$0(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/widget/PointerLocationView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1019
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView$2;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onSystemGestureExclusionChanged$0(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4

    .line 1033
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$2;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->-$$Nest$fgetmSystemGestureExclusion(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1034
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$2;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->-$$Nest$fgetmSystemGestureExclusionRejected(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1035
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 1036
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView$2;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {p1}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    .line 1037
    return-void
.end method


# virtual methods
.method public blacklist onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 5

    .line 1024
    invoke-static {p2}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p1

    .line 1025
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object p2

    .line 1026
    if-eqz p3, :cond_12

    .line 1027
    invoke-virtual {p2, p3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1028
    sget-object p3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1030
    :cond_12
    iget-object p3, p0, Lcom/android/internal/widget/PointerLocationView$2;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {p3}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object p3

    .line 1031
    if-eqz p3, :cond_22

    .line 1032
    new-instance v0, Lcom/android/internal/widget/PointerLocationView$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/widget/PointerLocationView$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/PointerLocationView$2;Landroid/graphics/Region;Landroid/graphics/Region;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1039
    :cond_22
    return-void
.end method
