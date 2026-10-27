.class public Lmiui/util/SuppressionRect$bottomLeftHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bottomLeftHalfRect"
.end annotation


# direct methods
.method public constructor blacklist <init>(IIII)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "heightOfScreen"    # I
    .param p3, "widthOfScreen"    # I
    .param p4, "widthOfRect"    # I

    .line 217
    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    .line 218
    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setType(I)V

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setPosition(I)V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setTopLeftX(I)V

    .line 221
    sub-int v0, p2, p4

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setTopLeftY(I)V

    .line 222
    div-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setBottomRightX(I)V

    .line 223
    invoke-virtual {p0, p2}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setBottomRightY(I)V

    .line 224
    return-void
.end method
