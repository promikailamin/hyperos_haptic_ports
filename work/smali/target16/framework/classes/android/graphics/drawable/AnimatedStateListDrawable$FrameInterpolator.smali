.class Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawable.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInterpolator"
.end annotation


# instance fields
.field private greylist-max-o mFrameTimes:[I

.field private greylist-max-o mFrames:I

.field private greylist-max-o mTotalDuration:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .registers 3

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I

    .line 689
    return-void
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .registers 6

    .line 717
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 718
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    .line 719
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 722
    nop

    .line 723
    const/4 v2, 0x0

    .line 724
    :goto_e
    if-ge v2, v0, :cond_1a

    aget v3, v1, v2

    if-lt p1, v3, :cond_1a

    .line 725
    aget v3, v1, v2

    sub-int/2addr p1, v3

    .line 726
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 731
    :cond_1a
    if-ge v2, v0, :cond_22

    .line 732
    int-to-float p1, p1

    iget v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    goto :goto_23

    .line 734
    :cond_22
    const/4 p1, 0x0

    .line 737
    :goto_23
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    return v1
.end method

.method public greylist-max-o getTotalDuration()I
    .registers 2

    .line 712
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    return v0
.end method

.method public greylist-max-o updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .registers 8

    .line 692
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 693
    iput v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    .line 695
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    array-length v1, v1

    if-ge v1, v0, :cond_13

    .line 696
    :cond_f
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 699
    :cond_13
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 700
    nop

    .line 701
    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v2, v0, :cond_2c

    .line 702
    if-eqz p2, :cond_21

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    :cond_21
    move v4, v2

    :goto_22
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    .line 703
    aput v4, v1, v2

    .line 704
    add-int/2addr v3, v4

    .line 701
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 707
    :cond_2c
    iput v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    .line 708
    return v3
.end method
