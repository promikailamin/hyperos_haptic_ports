.class public Lmiui/util/SuppressionRect$topRightHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "topRightHalfRect"
.end annotation


# direct methods
.method public constructor blacklist <init>(IIII)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "heightOfScreen"    # I
    .param p3, "widthOfScreen"    # I
    .param p4, "widthOfRect"    # I

    .line 205
    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    .line 206
    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$topRightHalfRect;->setType(I)V

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topRightHalfRect;->setPosition(I)V

    .line 208
    div-int/lit8 v1, p3, 0x2

    invoke-virtual {p0, v1}, Lmiui/util/SuppressionRect$topRightHalfRect;->setTopLeftX(I)V

    .line 209
    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topRightHalfRect;->setTopLeftY(I)V

    .line 210
    invoke-virtual {p0, p3}, Lmiui/util/SuppressionRect$topRightHalfRect;->setBottomRightX(I)V

    .line 211
    invoke-virtual {p0, p4}, Lmiui/util/SuppressionRect$topRightHalfRect;->setBottomRightY(I)V

    .line 212
    return-void
.end method
