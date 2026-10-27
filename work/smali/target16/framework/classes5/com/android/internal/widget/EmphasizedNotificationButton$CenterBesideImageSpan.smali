.class Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "EmphasizedNotificationButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EmphasizedNotificationButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenterBesideImageSpan"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CenterBesideImageSpan"


# instance fields
.field private blacklist mBaselineShiftOffset:I

.field private blacklist mImageHeight:I

.field private blacklist mMeasured:Z


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3

    .line 419
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 420
    iput p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mImageHeight:I

    .line 423
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "imageHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mImageHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CenterBesideImageSpan"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method


# virtual methods
.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 5

    .line 455
    const-string v0, "CenterBesideImageSpan"

    if-nez p1, :cond_b

    .line 456
    const-string/jumbo p1, "updateDrawState: textPaint is null; doing nothing"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void

    .line 460
    :cond_b
    iget-boolean v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mMeasured:Z

    if-nez v1, :cond_16

    .line 461
    const-string/jumbo p1, "updateDrawState: called without measure; doing nothing"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void

    .line 466
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDrawState: baselineShiftOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 471
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .registers 5

    .line 429
    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    .line 435
    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mImageHeight:I

    if-ge v0, v1, :cond_13

    .line 436
    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mImageHeight:I

    sub-int/2addr v1, v0

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    goto :goto_16

    .line 438
    :cond_13
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    .line 441
    :goto_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mMeasured:Z

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMeasureState: imageHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mImageHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px, textHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "px, baselineShiftOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CenterBesideImageSpan"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 451
    return-void
.end method
