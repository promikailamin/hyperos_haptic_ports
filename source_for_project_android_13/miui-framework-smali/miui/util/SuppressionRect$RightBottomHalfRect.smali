.class public Lmiui/util/SuppressionRect$RightBottomHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RightBottomHalfRect"
.end annotation


# direct methods
.method public constructor blacklist <init>(IIII)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "heightOfScreen"    # I
    .param p3, "widthOfScreen"    # I
    .param p4, "widthOfRect"    # I

    .line 181
    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    .line 182
    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$RightBottomHalfRect;->setType(I)V

    .line 183
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$RightBottomHalfRect;->setPosition(I)V

    .line 184
    sub-int v0, p3, p4

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$RightBottomHalfRect;->setTopLeftX(I)V

    .line 185
    div-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$RightBottomHalfRect;->setTopLeftY(I)V

    .line 186
    invoke-virtual {p0, p3}, Lmiui/util/SuppressionRect$RightBottomHalfRect;->setBottomRightX(I)V

    .line 187
    invoke-virtual {p0, p2}, Lmiui/util/SuppressionRect$RightBottomHalfRect;->setBottomRightY(I)V

    .line 188
    return-void
.end method
