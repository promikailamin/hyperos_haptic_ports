.class Lmiui/view/ScreenView$ArrowIndicator;
.super Landroid/widget/ImageView;
.source "ScreenView.java"

# interfaces
.implements Lmiui/view/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowIndicator"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/ScreenView;


# direct methods
.method public constructor blacklist <init>(Lmiui/view/ScreenView;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 2222
    iput-object p1, p0, Lmiui/view/ScreenView$ArrowIndicator;->this$0:Lmiui/view/ScreenView;

    .line 2223
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2224
    return-void
.end method


# virtual methods
.method public blacklist fastOffset(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 2228
    invoke-virtual {p0}, Lmiui/view/ScreenView$ArrowIndicator;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_16

    .line 2229
    invoke-virtual {p0}, Lmiui/view/ScreenView$ArrowIndicator;->getRight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lmiui/view/ScreenView$ArrowIndicator;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView$ArrowIndicator;->mRight:I

    .line 2230
    iput p1, p0, Lmiui/view/ScreenView$ArrowIndicator;->mLeft:I

    .line 2231
    const/4 v0, 0x1

    return v0

    .line 2233
    :cond_16
    const/4 v0, 0x0

    return v0
.end method
