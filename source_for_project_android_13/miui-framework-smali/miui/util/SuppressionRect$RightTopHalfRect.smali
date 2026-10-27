.class public Lmiui/util/SuppressionRect$RightTopHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RightTopHalfRect"
.end annotation


# direct methods
.method public constructor blacklist <init>(IIII)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "heightOfScreen"    # I
    .param p3, "widthOfScreen"    # I
    .param p4, "widthOfRect"    # I

    .line 158
    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    .line 159
    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$RightTopHalfRect;->setType(I)V

    .line 160
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$RightTopHalfRect;->setPosition(I)V

    .line 161
    sub-int v0, p3, p4

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$RightTopHalfRect;->setTopLeftX(I)V

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$RightTopHalfRect;->setTopLeftY(I)V

    .line 163
    invoke-virtual {p0, p3}, Lmiui/util/SuppressionRect$RightTopHalfRect;->setBottomRightX(I)V

    .line 164
    div-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$RightTopHalfRect;->setBottomRightY(I)V

    .line 165
    return-void
.end method
