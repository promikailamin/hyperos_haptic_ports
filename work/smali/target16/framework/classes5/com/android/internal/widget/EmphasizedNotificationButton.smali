.class public Lcom/android/internal/widget/EmphasizedNotificationButton;
.super Landroid/widget/Button;
.source "EmphasizedNotificationButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/EmphasizedNotificationButton$SpacerSpan;,
        Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;
    }
.end annotation


# static fields
.field private static final blacklist FIRST_STRONG_ISOLATE:Ljava/lang/String; = "\u2068"

.field private static final blacklist IMAGE_SPAN_TEXT:Ljava/lang/String; = "\ufffd"

.field private static final blacklist LEFT_TO_RIGHT_ISOLATE:Ljava/lang/String; = "\u2066"

.field private static final blacklist POP_DIRECTIONAL_ISOLATE:Ljava/lang/String; = "\u2069"

.field private static final blacklist RIGHT_TO_LEFT_ISOLATE:Ljava/lang/String; = "\u2067"

.field private static final blacklist SPACER_SPAN_TEXT:Ljava/lang/String; = "\u00a0"

.field private static final blacklist TAG:Ljava/lang/String; = "EmphasizedNotificationButton"


# instance fields
.field private final blacklist mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private blacklist mGluePending:Z

.field private blacklist mGluedLayoutDirection:I

.field private blacklist mIconSize:I

.field private blacklist mIconToGlue:Landroid/graphics/drawable/Drawable;

.field private blacklist mInitialDrawablePadding:I

.field private blacklist mLabelToGlue:Ljava/lang/CharSequence;

.field private blacklist mPriority:Z

.field private final blacklist mRipple:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public static synthetic blacklist $r8$lambda$5CE8kCROMxWM-ZwhCWhAl_p0kwM(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->lambda$glueIconAsync$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KB5uAWLyLcdl5CQPnHr9d_g-4Mg(Lcom/android/internal/widget/EmphasizedNotificationButton;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->lambda$glueLabelAsync$2(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$prwlPqoltwpDgPLx-93RXhAHfC0(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->lambda$setImageIconAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableWrapper;

    .line 86
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10502b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    .line 91
    sget-object v0, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 93
    const/16 p2, 0x34

    :try_start_3b
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_75

    .line 95
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V

    .line 98
    :cond_46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "iconSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "px, initialDrawablePadding = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "px"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EmphasizedNotificationButton"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 91
    :catchall_75
    move-exception p2

    if-eqz p1, :cond_80

    :try_start_78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_80

    :catchall_7c
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    throw p2
.end method

.method private blacklist appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .registers 6

    .line 355
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 356
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 357
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 358
    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 359
    return-void
.end method

.method private blacklist glueIconAndLabel(I)V
    .registers 7

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    const-string v1, "EmphasizedNotificationButton"

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    if-nez v0, :cond_15

    .line 284
    const-string p1, "glueIconAndLabel: null icon and label, setting text to empty string"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-void

    .line 288
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_24

    .line 290
    const-string p1, "glueIconAndLabel: null icon, setting text to label"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-void

    .line 294
    :cond_24
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const-string/jumbo v3, "\ufffd"

    if-nez v0, :cond_44

    .line 296
    const-string p1, "glueIconAndLabel: null label, setting text to ImageSpan with icon"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 299
    new-instance v0, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, p1, v3, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    .line 301
    return-void

    .line 304
    :cond_44
    const/4 v0, 0x1

    if-ne p1, v0, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    .line 307
    :goto_49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glueIconAndLabel: icon = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v4, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", iconSize = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v4, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v4, "px, initialDrawablePadding = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v4, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v4, "px, labelToGlue.length = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v4, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    .line 311
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", rtlLayout = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->logIfTextDirectionNotFirstStrong()V

    .line 317
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 322
    if-eqz v0, :cond_a3

    const-string/jumbo v0, "\u2067"

    goto :goto_a6

    :cond_a3
    const-string/jumbo v0, "\u2066"

    :goto_a6
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 324
    new-instance v0, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, p1, v3, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 325
    new-instance v0, Lcom/android/internal/widget/EmphasizedNotificationButton$SpacerSpan;

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I

    invoke-direct {v0, v1}, Lcom/android/internal/widget/EmphasizedNotificationButton$SpacerSpan;-><init>(I)V

    const-string/jumbo v1, "\u00a0"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 330
    const-string/jumbo v0, "\u2068"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    invoke-direct {v1, v2}, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 334
    const-string/jumbo v0, "\u2069"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 335
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method

.method private blacklist glueIconAndLabelIfNeeded()V
    .registers 4

    .line 235
    iget-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    const-string v1, "EmphasizedNotificationButton"

    if-nez v0, :cond_c

    .line 237
    const-string v0, "glueIconAndLabelIfNeeded: glue not pending; doing nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 244
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_18

    .line 246
    const-string v0, "glueIconAndLabelIfNeeded: layout direction not resolved; doing nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 254
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getLayoutDirection()I

    move-result v0

    .line 255
    if-eqz v0, :cond_27

    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    .line 256
    const-string v0, "glueIconAndLabelIfNeeded: resolved layout direction neither LTR nor RTL; doing nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 264
    :cond_27
    invoke-direct {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabel(I)V

    .line 266
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    .line 267
    iput v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    .line 268
    return-void
.end method

.method private synthetic blacklist lambda$glueIconAsync$1(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 164
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setIconToGlue(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$glueLabelAsync$2(Ljava/lang/CharSequence;)V
    .registers 2

    .line 202
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setLabelToGlue(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic blacklist lambda$setImageIconAsync$0(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private blacklist logIfTextDirectionNotFirstStrong()V
    .registers 5

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->isTextDirectionResolved()Z

    move-result v0

    const-string v1, "EmphasizedNotificationButton"

    if-nez v0, :cond_d

    .line 342
    const-string v0, "glueIconAndLabel: text direction not resolved; letting View assume FIRST STRONG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getTextDirection()I

    move-result v0

    .line 346
    const/4 v2, 0x1

    if-eq v0, v2, :cond_30

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glueIconAndLabel: expected text direction TEXT_DIRECTION_FIRST_STRONG but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; will use a FIRST STRONG ISOLATE regardless"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_30
    return-void
.end method

.method private blacklist prepareIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 179
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 181
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 182
    iget v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    return-void
.end method

.method private blacklist setIconToGlue(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 168
    if-eqz p1, :cond_5

    .line 169
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->prepareIcon(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_5
    iput-object p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    .line 173
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    .line 175
    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabelIfNeeded()V

    .line 176
    return-void
.end method

.method private blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 135
    if-eqz p1, :cond_5

    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->prepareIcon(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    return-void
.end method

.method private blacklist setLabelToGlue(Ljava/lang/CharSequence;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    .line 207
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    .line 209
    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabelIfNeeded()V

    .line 210
    return-void
.end method


# virtual methods
.method public blacklist glueIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "glueIconAsync"
    .end annotation

    .line 154
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 155
    :goto_a
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setIconToGlue(Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-void
.end method

.method public blacklist glueIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 163
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 164
    :goto_a
    new-instance v0, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public blacklist glueLabel(Ljava/lang/CharSequence;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "glueLabelAsync"
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setLabelToGlue(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public blacklist glueLabelAsync(Ljava/lang/CharSequence;)Ljava/lang/Runnable;
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 202
    new-instance v0, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/EmphasizedNotificationButton;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public blacklist isPriority()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mPriority:Z

    return v0
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 6

    .line 214
    invoke-super {p0, p1}, Landroid/widget/Button;->onRtlPropertiesChanged(I)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRtlPropertiesChanged: layoutDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gluedLayoutDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmphasizedNotificationButton"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_30

    move v0, v3

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 222
    :goto_31
    if-eqz v0, :cond_3f

    iget v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    if-eq p1, v0, :cond_3f

    .line 224
    const-string/jumbo p1, "onRtlPropertiesChanged: layout direction changed; regluing"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-boolean v3, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    .line 229
    :cond_3f
    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabelIfNeeded()V

    .line 230
    return-void
.end method

.method public blacklist setButtonBackground(Landroid/content/res/ColorStateList;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    .line 113
    return-void
.end method

.method public blacklist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 121
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 122
    :goto_a
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method

.method public blacklist setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 130
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 131
    :goto_a
    new-instance v0, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public blacklist setIsPriority(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 368
    iput-boolean p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mPriority:Z

    .line 369
    return-void
.end method

.method public blacklist setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    .line 107
    return-void
.end method
