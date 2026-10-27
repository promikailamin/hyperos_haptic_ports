.class public Lmiui/util/SuppressionRect$LeftTopHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeftTopHalfRect"
.end annotation


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "heightOfScreen"    # I
    .param p3, "widthOfRect"    # I

    .line 147
    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    .line 148
    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setType(I)V

    .line 149
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setPosition(I)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setTopLeftX(I)V

    .line 151
    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setTopLeftY(I)V

    .line 152
    invoke-virtual {p0, p3}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setBottomRightX(I)V

    .line 153
    div-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setBottomRightY(I)V

    .line 154
    return-void
.end method
