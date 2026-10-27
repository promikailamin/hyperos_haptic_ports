.class public Lcom/miui/autoui/policy/def/DefaultAutoUIMeasure;
.super Ljava/lang/Object;
.source "DefaultAutoUIMeasure.java"

# interfaces
.implements Lcom/miui/autoui/policy/api/IAutoUIMeasure;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist postViewMeasure(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 11
    return-void
.end method

.method public blacklist preViewMeasure(Landroid/view/View;II)[I
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    return-object v0
.end method
