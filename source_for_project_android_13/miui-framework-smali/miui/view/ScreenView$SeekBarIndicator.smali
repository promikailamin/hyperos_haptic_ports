.class Lmiui/view/ScreenView$SeekBarIndicator;
.super Landroid/widget/LinearLayout;
.source "ScreenView.java"

# interfaces
.implements Lmiui/view/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarIndicator"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/ScreenView;


# direct methods
.method public constructor blacklist <init>(Lmiui/view/ScreenView;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 2239
    iput-object p1, p0, Lmiui/view/ScreenView$SeekBarIndicator;->this$0:Lmiui/view/ScreenView;

    .line 2240
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2241
    return-void
.end method


# virtual methods
.method public blacklist fastOffset(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 2245
    invoke-virtual {p0}, Lmiui/view/ScreenView$SeekBarIndicator;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_16

    .line 2246
    invoke-virtual {p0}, Lmiui/view/ScreenView$SeekBarIndicator;->getRight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lmiui/view/ScreenView$SeekBarIndicator;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView$SeekBarIndicator;->mRight:I

    .line 2247
    iput p1, p0, Lmiui/view/ScreenView$SeekBarIndicator;->mLeft:I

    .line 2248
    const/4 v0, 0x1

    return v0

    .line 2250
    :cond_16
    const/4 v0, 0x0

    return v0
.end method
