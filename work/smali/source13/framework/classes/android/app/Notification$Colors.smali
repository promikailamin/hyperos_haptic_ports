.class public Landroid/app/Notification$Colors;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mContrastColor:I

.field private blacklist mErrorColor:I

.field private blacklist mOnAccentTextColor:I

.field private blacklist mPaletteIsForColorized:Z

.field private blacklist mPaletteIsForNightMode:Z

.field private blacklist mPaletteIsForRawColor:I

.field private blacklist mPrimaryAccentColor:I

.field private blacklist mPrimaryTextColor:I

.field private blacklist mProtectionColor:I

.field private blacklist mRippleAlpha:I

.field private blacklist mSecondaryAccentColor:I

.field private blacklist mSecondaryTextColor:I

.field private blacklist mTertiaryAccentColor:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smflattenAlpha(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 12614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12615
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 12616
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 12617
    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 12619
    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12620
    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 12621
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 12622
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 12623
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 12624
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 12625
    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 12626
    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 12627
    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 12628
    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 12629
    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return-void
.end method

.method private static blacklist calculateContrastColor(Landroid/content/Context;IIIZ)I
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "rawColor"    # I
    .param p2, "accentColor"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "nightMode"    # Z

    .line 12770
    if-nez p1, :cond_b

    .line 12771
    move v0, p2

    .line 12772
    .local v0, "color":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 12773
    invoke-static {p0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result v0

    goto :goto_f

    .line 12776
    .end local v0    # "color":I
    :cond_b
    invoke-static {p0, p1, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    .line 12779
    .restart local v0    # "color":I
    :cond_f
    :goto_f
    invoke-static {v0, p3}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v1

    return v1
.end method

.method private static blacklist flattenAlpha(II)I
    .registers 4
    .param p0, "color"    # I
    .param p1, "background"    # I

    .line 12784
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_a

    move v0, p0

    goto :goto_e

    .line 12785
    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result v0

    .line 12784
    :goto_e
    return v0
.end method

.method private static blacklist getColor(Landroid/content/res/TypedArray;II)I
    .registers 4
    .param p0, "ta"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 12656
    if-nez p0, :cond_4

    move v0, p2

    goto :goto_8

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_8
    return v0
.end method

.method private static blacklist obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "attrs"    # [I

    .line 12645
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_8

    .line 12646
    const/4 v0, 0x0

    return-object v0

    .line 12648
    :cond_8
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 12649
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 12650
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getBackgroundColor()I
    .registers 2

    .line 12790
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    return v0
.end method

.method public blacklist getContrastColor()I
    .registers 2

    .line 12836
    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    return v0
.end method

.method public blacklist getErrorColor()I
    .registers 2

    .line 12841
    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    return v0
.end method

.method public blacklist getOnAccentTextColor()I
    .registers 2

    .line 12828
    iget v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    return v0
.end method

.method public blacklist getPrimaryAccentColor()I
    .registers 2

    .line 12813
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    return v0
.end method

.method public blacklist getPrimaryTextColor()I
    .registers 2

    .line 12803
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    return v0
.end method

.method public blacklist getProtectionColor()I
    .registers 2

    .line 12798
    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return v0
.end method

.method public blacklist getRippleAlpha()I
    .registers 2

    .line 12846
    iget v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return v0
.end method

.method public blacklist getSecondaryAccentColor()I
    .registers 2

    .line 12818
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    return v0
.end method

.method public blacklist getSecondaryTextColor()I
    .registers 2

    .line 12808
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    return v0
.end method

.method public blacklist getTertiaryAccentColor()I
    .registers 2

    .line 12823
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    return v0
.end method

.method public blacklist resolvePalette(Landroid/content/Context;IZZ)V
    .registers 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rawColor"    # I
    .param p3, "isColorized"    # Z
    .param p4, "nightMode"    # Z

    .line 12673
    iget v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    if-ne v0, p2, :cond_d

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    if-ne v0, p3, :cond_d

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    if-ne v0, p4, :cond_d

    .line 12676
    return-void

    .line 12678
    :cond_d
    iput p2, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 12679
    iput-boolean p3, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 12680
    iput-boolean p4, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 12682
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_7d

    .line 12683
    if-nez p2, :cond_3d

    .line 12684
    new-array v3, v2, [I

    const v4, 0x1120026

    aput v4, v3, v1

    .line 12685
    .local v3, "attrs":[I
    invoke-static {p1, v3}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 12686
    .local v4, "ta":Landroid/content/res/TypedArray;
    :try_start_25
    invoke-static {v4, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_31

    .line 12687
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    .line 12688
    .end local v3    # "attrs":[I
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_30
    goto :goto_3f

    .line 12685
    .restart local v3    # "attrs":[I
    .restart local v4    # "ta":Landroid/content/res/TypedArray;
    :catchall_31
    move-exception v0

    if-eqz v4, :cond_3c

    :try_start_34
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    throw v0

    .line 12689
    .end local v3    # "attrs":[I
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_3d
    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12691
    :goto_3f
    iput v2, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 12692
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12693
    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12692
    const-wide/high16 v3, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v3, v4}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 12695
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12696
    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12695
    invoke-static {v0, v1, v3, v4}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 12698
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 12699
    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 12700
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 12701
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 12702
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 12703
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 12704
    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    goto/16 :goto_132

    .line 12706
    :cond_7d
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_150

    .line 12718
    .restart local v3    # "attrs":[I
    invoke-static {p1, v3}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 12719
    .restart local v4    # "ta":Landroid/content/res/TypedArray;
    if-eqz p4, :cond_8c

    const/high16 v0, -0x1000000

    :cond_8c
    :try_start_8c
    invoke-static {v4, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12720
    invoke-static {v4, v2, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 12721
    const/4 v0, 0x2

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 12722
    const/4 v0, 0x3

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 12723
    const/4 v0, 0x4

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 12724
    const/4 v0, 0x5

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 12725
    const/4 v0, 0x6

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 12726
    const/4 v0, 0x7

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 12727
    const/16 v0, 0x8

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 12728
    const/16 v0, 0x9

    const v1, 0x33ffffff

    invoke-static {v4, v0, v1}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I
    :try_end_d9
    .catchall {:try_start_8c .. :try_end_d9} :catchall_144

    .line 12729
    if-eqz v4, :cond_de

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    .line 12730
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_de
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, v0, v1, p4}, Landroid/app/Notification$Colors;->calculateContrastColor(Landroid/content/Context;IIIZ)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 12734
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    if-ne v0, v2, :cond_f4

    .line 12735
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 12738
    :cond_f4
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    if-ne v0, v2, :cond_100

    .line 12739
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 12742
    :cond_100
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    if-ne v0, v2, :cond_108

    .line 12743
    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 12745
    :cond_108
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    if-ne v0, v2, :cond_110

    .line 12746
    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 12748
    :cond_110
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    if-ne v0, v2, :cond_118

    .line 12749
    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 12751
    :cond_118
    iget v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    if-ne v0, v2, :cond_12a

    .line 12752
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 12753
    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v0

    const/16 v1, 0xff

    .line 12752
    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 12756
    :cond_12a
    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    if-ne v0, v2, :cond_132

    .line 12757
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 12761
    .end local v3    # "attrs":[I
    :cond_132
    :goto_132
    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    if-ne v0, v2, :cond_143

    .line 12762
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 12764
    :cond_143
    return-void

    .line 12718
    .restart local v3    # "attrs":[I
    .restart local v4    # "ta":Landroid/content/res/TypedArray;
    :catchall_144
    move-exception v0

    if-eqz v4, :cond_14f

    :try_start_147
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V
    :try_end_14a
    .catchall {:try_start_147 .. :try_end_14a} :catchall_14b

    goto :goto_14f

    :catchall_14b
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_14f
    :goto_14f
    throw v0

    :array_150
    .array-data 4
        0x112002d
        0x10104e2
        0x1010036
        0x1010038
        0x1010435
        0x1120026
        0x1120028
        0x11200f1
        0x1010543
        0x101042c
    .end array-data
.end method
