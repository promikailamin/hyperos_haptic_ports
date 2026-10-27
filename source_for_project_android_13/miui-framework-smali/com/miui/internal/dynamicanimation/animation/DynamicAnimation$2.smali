.class Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$2;
.super Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist getValue(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getValue(Ljava/lang/Object;)F
    .registers 2

    .line 70
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$2;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public blacklist setValue(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 74
    return-void
.end method

.method public bridge synthetic blacklist setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 70
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$2;->setValue(Landroid/view/View;F)V

    return-void
.end method
