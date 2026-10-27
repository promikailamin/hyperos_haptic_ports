.class Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$14;
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

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist getValue(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public bridge synthetic blacklist getValue(Ljava/lang/Object;)F
    .registers 2

    .line 251
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$14;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public blacklist setValue(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .line 254
    float-to-int v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollY(I)V

    .line 255
    return-void
.end method

.method public bridge synthetic blacklist setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 251
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$14;->setValue(Landroid/view/View;F)V

    return-void
.end method
