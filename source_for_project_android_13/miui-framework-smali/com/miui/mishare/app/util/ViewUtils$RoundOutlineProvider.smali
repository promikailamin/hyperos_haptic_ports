.class Lcom/miui/mishare/app/util/ViewUtils$RoundOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/util/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoundOutlineProvider"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/miui/mishare/app/util/ViewUtils$RoundOutlineProvider-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/mishare/app/util/ViewUtils$RoundOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 91
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 92
    .local v7, "height":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 93
    return-void
.end method
