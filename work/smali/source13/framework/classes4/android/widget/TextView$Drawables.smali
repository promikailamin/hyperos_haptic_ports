.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawables"
.end annotation


# static fields
.field static final greylist-max-o BOTTOM:I = 0x3

.field static final greylist-max-o DRAWABLE_LEFT:I = 0x1

.field static final greylist-max-o DRAWABLE_NONE:I = -0x1

.field static final greylist-max-o DRAWABLE_RIGHT:I = 0x0

.field static final greylist-max-o LEFT:I = 0x0

.field static final greylist-max-o RIGHT:I = 0x2

.field static final greylist-max-o TOP:I = 0x1


# instance fields
.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field final greylist-max-o mCompoundRect:Landroid/graphics/Rect;

.field greylist-max-o mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableError:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableHeightEnd:I

.field greylist-max-o mDrawableHeightError:I

.field greylist-max-o mDrawableHeightLeft:I

.field greylist-max-o mDrawableHeightRight:I

.field greylist-max-o mDrawableHeightStart:I

.field greylist-max-o mDrawableHeightTemp:I

.field greylist-max-o mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawablePadding:I

.field greylist-max-o mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableSaved:I

.field greylist-max-o mDrawableSizeBottom:I

.field greylist-max-o mDrawableSizeEnd:I

.field greylist-max-o mDrawableSizeError:I

.field greylist-max-o mDrawableSizeLeft:I

.field greylist-max-o mDrawableSizeRight:I

.field greylist-max-o mDrawableSizeStart:I

.field greylist-max-o mDrawableSizeTemp:I

.field greylist-max-o mDrawableSizeTop:I

.field greylist-max-o mDrawableStart:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableWidthBottom:I

.field greylist-max-o mDrawableWidthTop:I

.field greylist-max-o mHasTint:Z

.field greylist-max-o mHasTintMode:Z

.field greylist-max-o mIsRtlCompatibilityMode:Z

.field greylist-max-o mOverride:Z

.field final greylist-max-o mShowing:[Landroid/graphics/drawable/Drawable;

.field greylist-max-o mTintList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 569
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 590
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 594
    .local v0, "targetSdkVersion":I
    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_2a

    .line 595
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_2a

    :cond_28
    move v2, v1

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v2, 0x1

    :goto_2b
    iput-boolean v2, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    .line 596
    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 597
    return-void
.end method

.method private greylist-max-o applyErrorDrawableIfNeeded(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .line 694
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_64

    goto :goto_26

    .line 696
    :pswitch_8
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v2

    .line 697
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 698
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 699
    goto :goto_26

    .line 701
    :pswitch_17
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v1

    .line 702
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 703
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 704
    nop

    .line 709
    :goto_26
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_63

    .line 710
    packed-switch p1, :pswitch_data_6c

    .line 724
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 726
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v2, v1

    iput-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 727
    iget v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 728
    iget v3, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 730
    aput-object v0, v2, v1

    .line 731
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 732
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_63

    .line 712
    :pswitch_48
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 714
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v1, v2

    iput-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 715
    iget v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 716
    iget v3, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 718
    aput-object v0, v1, v2

    .line 719
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 720
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 736
    :cond_63
    :goto_63
    return-void

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_17
        :pswitch_8
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o hasMetadata()Z
    .registers 2

    .line 604
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public greylist-max-o resolveWithLayoutDirection(I)Z
    .registers 10
    .param p1, "layoutDirection"    # I

    .line 615
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 616
    .local v2, "previousLeft":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x2

    aget-object v4, v0, v3

    .line 619
    .local v4, "previousRight":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v1

    .line 620
    iget-object v6, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v6, v0, v3

    .line 622
    iget-boolean v7, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    if-eqz v7, :cond_35

    .line 624
    iget-object v7, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_24

    if-nez v5, :cond_24

    .line 625
    aput-object v7, v0, v1

    .line 626
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 627
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 630
    :cond_24
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_71

    if-nez v6, :cond_71

    .line 631
    aput-object v5, v0, v3

    .line 632
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 633
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_71

    .line 638
    :cond_35
    packed-switch p1, :pswitch_data_80

    .line 653
    iget-boolean v5, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v5, :cond_71

    .line 654
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v1

    .line 655
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 656
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 658
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v3

    .line 659
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 660
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_71

    .line 640
    :pswitch_55
    iget-boolean v5, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v5, :cond_71

    .line 641
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v3

    .line 642
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 643
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 645
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v1

    .line 646
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 647
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 666
    :cond_71
    :goto_71
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    .line 668
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v0, v1

    if-ne v5, v2, :cond_7e

    aget-object v0, v0, v3

    if-eq v0, v4, :cond_7f

    :cond_7e
    const/4 v1, 0x1

    :cond_7f
    return v1

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_55
    .end packed-switch
.end method

.method public greylist-max-o setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .registers 6
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tv"    # Landroid/widget/TextView;

    .line 673
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    if-eqz v0, :cond_a

    .line 674
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 676
    :cond_a
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 678
    if-eqz p1, :cond_30

    .line 679
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 680
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 682
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 683
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 684
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 685
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 686
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    .line 687
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "state":[I
    goto :goto_35

    .line 688
    :cond_30
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 690
    :goto_35
    return-void
.end method
