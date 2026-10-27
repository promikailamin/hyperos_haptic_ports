.class Lmiui/view/ScreenView$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/ScreenView;->updateSeekPoints(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/ScreenView;


# direct methods
.method constructor blacklist <init>(Lmiui/view/ScreenView;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/view/ScreenView;

    .line 1702
    iput-object p1, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1705
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1706
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1707
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1708
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1709
    iget-object v0, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    .line 1710
    invoke-virtual {v0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    iget v1, v1, Lmiui/view/ScreenView;->mCurrentScreen:I

    int-to-float v1, v1

    .line 1709
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 1711
    .local v0, "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 1712
    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 1716
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1717
    return v1

    .line 1719
    :cond_8
    iget-object v0, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    invoke-virtual {v0}, Lmiui/view/ScreenView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 1720
    return v2

    .line 1722
    :cond_12
    sparse-switch p2, :sswitch_data_44

    .line 1738
    return v2

    .line 1731
    :sswitch_16
    iget-object v0, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    iget v0, v0, Lmiui/view/ScreenView;->mCurrentScreen:I

    iget-object v2, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    invoke-virtual {v2}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2f

    .line 1732
    iget-object v0, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    iget v2, v0, Lmiui/view/ScreenView;->mCurrentScreen:I

    iget-object v3, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    iget v3, v3, Lmiui/view/ScreenView;->mVisibleRange:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmiui/view/ScreenView;->snapToScreen(I)V

    .line 1735
    :cond_2f
    return v1

    .line 1724
    :sswitch_30
    iget-object v0, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    iget v0, v0, Lmiui/view/ScreenView;->mCurrentScreen:I

    if-lez v0, :cond_42

    .line 1725
    iget-object v0, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    iget v2, v0, Lmiui/view/ScreenView;->mCurrentScreen:I

    iget-object v3, p0, Lmiui/view/ScreenView$3;->this$0:Lmiui/view/ScreenView;

    iget v3, v3, Lmiui/view/ScreenView;->mVisibleRange:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmiui/view/ScreenView;->snapToScreen(I)V

    .line 1728
    :cond_42
    return v1

    nop

    :sswitch_data_44
    .sparse-switch
        0x1000 -> :sswitch_30
        0x2000 -> :sswitch_16
    .end sparse-switch
.end method
