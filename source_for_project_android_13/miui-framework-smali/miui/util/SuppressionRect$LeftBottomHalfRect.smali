.class public Lmiui/util/SuppressionRect$LeftBottomHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeftBottomHalfRect"
.end annotation


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "heightOfScreen"    # I
    .param p3, "widthOfRect"    # I

    .line 169
    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    .line 170
    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setType(I)V

    .line 171
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setPosition(I)V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setTopLeftX(I)V

    .line 173
    div-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setTopLeftY(I)V

    .line 174
    invoke-virtual {p0, p3}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setBottomRightX(I)V

    .line 175
    invoke-virtual {p0, p2}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setBottomRightY(I)V

    .line 176
    return-void
.end method
