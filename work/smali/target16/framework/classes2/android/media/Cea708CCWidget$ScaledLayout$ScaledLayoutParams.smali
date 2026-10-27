.class Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget$ScaledLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaledLayoutParams"
.end annotation


# static fields
.field public static final greylist-max-o SCALE_UNSPECIFIED:F = -1.0f


# instance fields
.field public greylist-max-o scaleEndCol:F

.field public greylist-max-o scaleEndRow:F

.field public greylist-max-o scaleStartCol:F

.field public greylist-max-o scaleStartRow:F


# direct methods
.method public constructor greylist-max-o <init>(FFFF)V
    .registers 6

    .line 1121
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1122
    iput p1, p0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    .line 1123
    iput p2, p0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    .line 1124
    iput p3, p0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    .line 1125
    iput p4, p0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    .line 1126
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1129
    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1130
    return-void
.end method
