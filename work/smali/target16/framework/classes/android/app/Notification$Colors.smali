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

.field private blacklist mOnTertiaryAccentTextColor:I

.field private blacklist mOnTertiaryFixedAccentTextColor:I

.field private blacklist mPaletteIsForColorized:Z

.field private blacklist mPaletteIsForNightMode:Z

.field private blacklist mPaletteIsForRawColor:I

.field private blacklist mPrimaryAccentColor:I

.field private blacklist mPrimaryTextColor:I

.field private blacklist mProtectionColor:I

.field private blacklist mRippleAlpha:I

.field private blacklist mSecondaryAccentColor:I

.field private blacklist mSecondaryTextColor:I

.field private blacklist mSemanticRedContainerHighColor:I

.field private blacklist mTertiaryAccentColor:I

.field private blacklist mTertiaryFixedDimAccentColor:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smflattenAlpha(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 16693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16694
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 16695
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 16696
    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 16698
    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16699
    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 16700
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 16701
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 16702
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 16703
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 16704
    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 16705
    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 16706
    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 16707
    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 16709
    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 16710
    iput v0, p0, Landroid/app/Notification$Colors;->mSemanticRedContainerHighColor:I

    .line 16711
    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 16712
    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return-void
.end method

.method private static blacklist calculateContrastColor(Landroid/content/Context;IIIZ)I
    .registers 5

    .line 16869
    if-nez p1, :cond_b

    .line 16870
    nop

    .line 16871
    const/4 p1, 0x1

    if-ne p2, p1, :cond_f

    .line 16872
    invoke-static {p0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result p2

    goto :goto_f

    .line 16875
    :cond_b
    invoke-static {p0, p1, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result p2

    .line 16878
    :cond_f
    :goto_f
    invoke-static {p2, p3}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method private static blacklist flattenAlpha(II)I
    .registers 4

    .line 16883
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_9

    goto :goto_d

    .line 16884
    :cond_9
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p0

    .line 16883
    :goto_d
    return p0
.end method

.method private static blacklist getColor(Landroid/content/res/TypedArray;II)I
    .registers 3

    .line 16739
    if-nez p0, :cond_3

    goto :goto_7

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    :goto_7
    return p2
.end method

.method private static blacklist obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;
    .registers 4

    .line 16728
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_8

    .line 16729
    const/4 p0, 0x0

    return-object p0

    .line 16731
    :cond_8
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 16732
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 16733
    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getBackgroundColor()I
    .registers 2

    .line 16889
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    return v0
.end method

.method public blacklist getContrastColor()I
    .registers 2

    .line 16945
    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    return v0
.end method

.method public blacklist getErrorColor()I
    .registers 2

    .line 16950
    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    return v0
.end method

.method public blacklist getOnTertiaryAccentTextColor()I
    .registers 2

    .line 16927
    iget v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    return v0
.end method

.method public blacklist getOnTertiaryFixedAccentTextColor()I
    .registers 2

    .line 16937
    iget v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    return v0
.end method

.method public blacklist getPrimaryAccentColor()I
    .registers 2

    .line 16912
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    return v0
.end method

.method public blacklist getPrimaryTextColor()I
    .registers 2

    .line 16902
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    return v0
.end method

.method public blacklist getProtectionColor()I
    .registers 2

    .line 16897
    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return v0
.end method

.method public blacklist getRippleAlpha()I
    .registers 2

    .line 16963
    iget v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return v0
.end method

.method public blacklist getSecondaryAccentColor()I
    .registers 2

    .line 16917
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    return v0
.end method

.method public blacklist getSecondaryTextColor()I
    .registers 2

    .line 16907
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    return v0
.end method

.method public blacklist getSemanticRedContainerHighColor()I
    .registers 2

    .line 16958
    iget v0, p0, Landroid/app/Notification$Colors;->mSemanticRedContainerHighColor:I

    return v0
.end method

.method public blacklist getTertiaryAccentColor()I
    .registers 2

    .line 16922
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    return v0
.end method

.method public blacklist getTertiaryFixedDimAccentColor()I
    .registers 2

    .line 16932
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    return v0
.end method

.method public blacklist resolvePalette(Landroid/content/Context;IZZ)V
    .registers 8

    .line 16756
    iget v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    if-ne v0, p2, :cond_d

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    if-ne v0, p3, :cond_d

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    if-ne v0, p4, :cond_d

    .line 16759
    return-void

    .line 16761
    :cond_d
    iput p2, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 16762
    iput-boolean p3, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 16763
    iput-boolean p4, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 16765
    const v0, 0x10602cc

    if-eqz p3, :cond_a2

    .line 16766
    if-nez p2, :cond_21

    .line 16767
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    goto :goto_23

    .line 16769
    :cond_21
    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16771
    :goto_23
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->uiRichOngoing()Z

    move-result p2

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    if-eqz p2, :cond_5a

    .line 16772
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p2}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result p2

    .line 16773
    if-eqz p2, :cond_35

    const/4 p3, -0x1

    goto :goto_37

    :cond_35
    const/high16 p3, -0x1000000

    .line 16774
    :goto_37
    iget p4, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16775
    const v2, 0x3f666666    # 0.9f

    invoke-static {p4, p3, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p4

    iget v2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16774
    invoke-static {p4, v2, p2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result p4

    iput p4, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 16777
    iget p4, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16778
    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {p4, p3, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p3

    iget p4, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16777
    invoke-static {p3, p4, p2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 16780
    goto :goto_76

    .line 16781
    :cond_5a
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16782
    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    iget p3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16781
    invoke-static {p2, p3, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 16784
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16785
    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result p2

    iget p3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16784
    invoke-static {p2, p3, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 16788
    :goto_76
    iget p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 16789
    iget p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 16790
    iget p2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 16791
    iget p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget p3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p2, p3}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 16792
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 16793
    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 16794
    iget p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 16795
    iget p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 16796
    const/16 p2, 0x33

    iput p2, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    goto/16 :goto_18d

    .line 16798
    :cond_a2
    const p3, 0x1010543

    const v1, 0x101042c

    filled-new-array {p3, v1}, [I

    move-result-object p3

    .line 16803
    const v1, 0x10602d6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 16804
    const v1, 0x10602b8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 16805
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignFonts()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 16806
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    goto :goto_ce

    .line 16807
    :cond_c7
    const v1, 0x10602b9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_ce
    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 16808
    const v1, 0x10602c6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 16809
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 16810
    const v0, 0x10602dd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 16811
    const v0, 0x10602ba

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 16812
    const v0, 0x10602e1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 16814
    const v0, 0x10602bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 16817
    invoke-static {p1, p3}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 16818
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_109
    invoke-static {p3, v0, v1}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 16819
    const v0, 0x33ffffff

    invoke-static {p3, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I
    :try_end_11c
    .catchall {:try_start_109 .. :try_end_11c} :catchall_1a1

    .line 16820
    if-eqz p3, :cond_121

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V

    .line 16821
    :cond_121
    iget p3, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, p3, v0, p4}, Landroid/app/Notification$Colors;->calculateContrastColor(Landroid/content/Context;IIIZ)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 16825
    iget p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    if-ne p2, v1, :cond_137

    .line 16826
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 16829
    :cond_137
    iget p2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    if-ne p2, v1, :cond_143

    .line 16830
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 16833
    :cond_143
    iget p2, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    if-ne p2, v1, :cond_14b

    .line 16834
    iget p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 16836
    :cond_14b
    iget p2, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    if-ne p2, v1, :cond_153

    .line 16837
    iget p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 16839
    :cond_153
    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    if-ne p2, v1, :cond_15b

    .line 16840
    iget p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 16842
    :cond_15b
    iget p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    const/16 p3, 0xff

    if-ne p2, v1, :cond_16d

    .line 16843
    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 16844
    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    .line 16843
    invoke-static {p2, p3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 16847
    :cond_16d
    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    if-ne p2, v1, :cond_175

    .line 16848
    iget p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 16850
    :cond_175
    iget p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    if-ne p2, v1, :cond_185

    .line 16851
    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 16852
    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    .line 16851
    invoke-static {p2, p3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 16855
    :cond_185
    iget p2, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    if-ne p2, v1, :cond_18d

    .line 16856
    iget p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 16860
    :cond_18d
    :goto_18d
    const p2, 0x1060379

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 16861
    nop

    .line 16862
    const p2, 0x10602d1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Colors;->mSemanticRedContainerHighColor:I

    .line 16863
    return-void

    .line 16817
    :catchall_1a1
    move-exception p1

    if-eqz p3, :cond_1ac

    :try_start_1a4
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V
    :try_end_1a7
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_1a8

    goto :goto_1ac

    :catchall_1a8
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1ac
    :goto_1ac
    throw p1
.end method
