.class public final Landroid/app/Notification$Metric$FixedFloat;
.super Landroid/app/Notification$Metric$MetricValue;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedFloat"
.end annotation


# static fields
.field public static final blacklist DEFAULT_MAX_FRACTION_DIGITS:I = 0x2

.field public static final blacklist DEFAULT_MIN_FRACTION_DIGITS:I = 0x0

.field private static final blacklist KEY_MAX_FRACTION_DIGITS:Ljava/lang/String; = "maxDigits"

.field private static final blacklist KEY_MIN_FRACTION_DIGITS:Ljava/lang/String; = "minDigits"

.field private static final blacklist KEY_UNIT:Ljava/lang/String; = "unit"

.field private static final blacklist KEY_VALUE:Ljava/lang/String; = "value"

.field private static final blacklist LOWER_BOUND_FRACTION_DIGITS:I = 0x0

.field private static final blacklist UPPER_BOUND_FRACTION_DIGITS:I = 0x6


# instance fields
.field private final blacklist mMaxFractionDigits:I

.field private final blacklist mMinFractionDigits:I

.field private final blacklist mUnit:Ljava/lang/String;

.field private final blacklist mValue:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedFloat;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification$Metric$FixedFloat;->fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedFloat;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(F)V
    .registers 3

    .line 12758
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Metric$FixedFloat;-><init>(FLjava/lang/CharSequence;)V

    .line 12759
    return-void
.end method

.method public constructor blacklist <init>(FLjava/lang/CharSequence;)V
    .registers 5

    .line 12766
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/Notification$Metric$FixedFloat;-><init>(FLjava/lang/CharSequence;II)V

    .line 12767
    return-void
.end method

.method public constructor blacklist <init>(FLjava/lang/CharSequence;II)V
    .registers 9

    .line 12782
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Metric$MetricValue;-><init>(Landroid/app/Notification-IA;)V

    .line 12783
    iput p1, p0, Landroid/app/Notification$Metric$FixedFloat;->mValue:F

    .line 12784
    invoke-static {p2}, Landroid/app/Notification;->safeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    .line 12786
    const/4 p1, 0x6

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ltz p3, :cond_15

    if-gt p3, p1, :cond_15

    move v1, p2

    goto :goto_16

    :cond_15
    move v1, v0

    .line 12788
    :goto_16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 12786
    const-string v3, "Invalid minFractionDigits: %s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12789
    if-ltz p4, :cond_29

    if-gt p4, p1, :cond_29

    move p1, p2

    goto :goto_2a

    :cond_29
    move p1, v0

    .line 12791
    :goto_2a
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 12789
    const-string v2, "Invalid maxFractionDigits: %s"

    invoke-static {p1, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12792
    if-gt p3, p4, :cond_3a

    goto :goto_3b

    :cond_3a
    move p2, v0

    .line 12794
    :goto_3b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 12792
    const-string v0, "Invalid minFractionDigits/maxFractionDigits: %s/%s"

    invoke-static {p2, v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12795
    iput p3, p0, Landroid/app/Notification$Metric$FixedFloat;->mMinFractionDigits:I

    .line 12796
    iput p4, p0, Landroid/app/Notification$Metric$FixedFloat;->mMaxFractionDigits:I

    .line 12797
    return-void
.end method

.method private static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedFloat;
    .registers 7

    .line 12801
    new-instance v0, Landroid/app/Notification$Metric$FixedFloat;

    .line 12802
    const-string/jumbo v1, "value"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 12803
    const-string/jumbo v2, "unit"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12804
    const-string/jumbo v3, "minDigits"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 12805
    const-string/jumbo v4, "maxDigits"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/app/Notification$Metric$FixedFloat;-><init>(FLjava/lang/CharSequence;II)V

    .line 12801
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 12819
    instance-of v0, p1, Landroid/app/Notification$Metric$FixedFloat;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    check-cast p1, Landroid/app/Notification$Metric$FixedFloat;

    .line 12820
    const/4 v0, 0x1

    if-ne p0, p1, :cond_b

    return v0

    .line 12821
    :cond_b
    iget v2, p0, Landroid/app/Notification$Metric$FixedFloat;->mValue:F

    iget v3, p1, Landroid/app/Notification$Metric$FixedFloat;->mValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2b

    iget-object v2, p0, Landroid/app/Notification$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/Notification$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    .line 12822
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Landroid/app/Notification$Metric$FixedFloat;->mMinFractionDigits:I

    iget v3, p1, Landroid/app/Notification$Metric$FixedFloat;->mMinFractionDigits:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/app/Notification$Metric$FixedFloat;->mMaxFractionDigits:I

    iget p1, p1, Landroid/app/Notification$Metric$FixedFloat;->mMaxFractionDigits:I

    if-ne v2, p1, :cond_2b

    move v1, v0

    goto :goto_2c

    :cond_2b
    nop

    .line 12821
    :goto_2c
    return v1

    .line 12819
    :cond_2d
    return v1
.end method

.method public blacklist getMaxFractionDigits()I
    .registers 2

    .line 12869
    iget v0, p0, Landroid/app/Notification$Metric$FixedFloat;->mMaxFractionDigits:I

    return v0
.end method

.method public blacklist getMinFractionDigits()I
    .registers 2

    .line 12863
    iget v0, p0, Landroid/app/Notification$Metric$FixedFloat;->mMinFractionDigits:I

    return v0
.end method

.method public blacklist getUnit()Ljava/lang/CharSequence;
    .registers 2

    .line 12857
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()F
    .registers 2

    .line 12844
    iget v0, p0, Landroid/app/Notification$Metric$FixedFloat;->mValue:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 12829
    iget v0, p0, Landroid/app/Notification$Metric$FixedFloat;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    iget v2, p0, Landroid/app/Notification$Metric$FixedFloat;->mMinFractionDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/Notification$Metric$FixedFloat;->mMaxFractionDigits:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist toBundle(Landroid/os/Bundle;)V
    .registers 4

    .line 12811
    const-string/jumbo v0, "value"

    iget v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mValue:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 12812
    const-string/jumbo v0, "unit"

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12813
    const-string/jumbo v0, "minDigits"

    iget v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mMinFractionDigits:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12814
    const-string/jumbo v0, "maxDigits"

    iget v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mMaxFractionDigits:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12815
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 12834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinFractionDigits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mMinFractionDigits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxFractionDigits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mMaxFractionDigits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toValueString(Landroid/content/Context;)Landroid/app/Notification$Metric$MetricValue$ValueString;
    .registers 4

    .line 12877
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/number/NumberFormatter;->withLocale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object p1

    iget v0, p0, Landroid/app/Notification$Metric$FixedFloat;->mMinFractionDigits:I

    iget v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mMaxFractionDigits:I

    .line 12878
    invoke-static {v0, v1}, Landroid/icu/number/Precision;->minMaxFraction(II)Landroid/icu/number/FractionPrecision;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/number/LocalizedNumberFormatter;->precision(Landroid/icu/number/Precision;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p1

    check-cast p1, Landroid/icu/number/LocalizedNumberFormatter;

    iget v0, p0, Landroid/app/Notification$Metric$FixedFloat;->mValue:F

    float-to-double v0, v0

    .line 12879
    invoke-virtual {p1, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->format(D)Landroid/icu/number/FormattedNumber;

    move-result-object p1

    .line 12880
    invoke-virtual {p1}, Landroid/icu/number/FormattedNumber;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12881
    new-instance v0, Landroid/app/Notification$Metric$MetricValue$ValueString;

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedFloat;->mUnit:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Metric$MetricValue$ValueString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
