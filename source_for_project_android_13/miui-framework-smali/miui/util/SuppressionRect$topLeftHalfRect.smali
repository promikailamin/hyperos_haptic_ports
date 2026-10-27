.class public Lmiui/util/SuppressionRect$topLeftHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "topLeftHalfRect"
.end annotation


# direct methods
.method public constructor blacklist <init>(IIII)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "heightOfScreen"    # I
    .param p3, "widthOfScreen"    # I
    .param p4, "widthOfRect"    # I

    .line 193
    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    .line 194
    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setType(I)V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setPosition(I)V

    .line 196
    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setTopLeftX(I)V

    .line 197
    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setTopLeftY(I)V

    .line 198
    div-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setBottomRightX(I)V

    .line 199
    invoke-virtual {p0, p4}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setBottomRightY(I)V

    .line 200
    return-void
.end method
