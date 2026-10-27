.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final greylist-max-o SHOW_TIME:I

.field private static final greylist-max-o sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mLastDisplay:I

.field greylist-max-o mLastFormat:Ljava/text/DateFormat;

.field private blacklist mLocalTime:Ljava/time/LocalDateTime;

.field private greylist-max-o mNowText:Ljava/lang/String;

.field private greylist-max-o mShowRelativeTime:Z

.field private greylist-max-o mTimeMillis:J

.field private greylist-max-o mUpdateTimeMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUpdateTimeMillis(Landroid/widget/DateTimeView;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 92
    sget-object v0, Lcom/android/internal/R$styleable;->DateTimeView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method private static blacklist computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .registers 4

    .line 322
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object p0

    .line 323
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 324
    invoke-static {p0, p1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I
    .registers 4

    .line 344
    sget-object v0, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object p1, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    .line 345
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    .line 344
    return p0
.end method

.method private greylist-max-o getTimeFormat()Ljava/text/DateFormat;
    .registers 2

    .line 349
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private blacklist maybeSetText(Ljava/lang/String;)V
    .registers 3

    .line 310
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 311
    return-void

    .line 314
    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method public static greylist-max-o setReceiverHandler(Landroid/os/Handler;)V
    .registers 3

    .line 417
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 418
    if-nez v0, :cond_15

    .line 419
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView-IA;)V

    .line 420
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 422
    :cond_15
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    .line 423
    return-void
.end method

.method private static blacklist toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .registers 2

    .line 536
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object p0

    .line 537
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;
    .registers 3

    .line 531
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 532
    invoke-static {p0, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o updateNowText()V
    .registers 3

    .line 335
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_5

    .line 336
    return-void

    .line 338
    :cond_5
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104072e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 340
    return-void
.end method

.method private greylist-max-o updateRelativeTime()V
    .registers 16

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 246
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 249
    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_15

    move v4, v5

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    .line 251
    :goto_16
    const-wide/32 v6, 0xea60

    cmp-long v8, v2, v6

    const-wide/16 v9, 0x1

    if-gez v8, :cond_2b

    .line 252
    iget-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    .line 253
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-long/2addr v0, v6

    add-long/2addr v0, v9

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 254
    return-void

    .line 255
    :cond_2b
    const-wide/32 v11, 0x36ee80

    cmp-long v8, v2, v11

    const-wide/16 v13, -0x1

    if-gez v8, :cond_56

    .line 256
    div-long/2addr v2, v6

    long-to-int v0, v2

    .line 257
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v4, :cond_44

    .line 258
    const v2, 0x10403b1

    goto :goto_47

    .line 259
    :cond_44
    const v2, 0x10403b2

    :goto_47
    nop

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 257
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 261
    goto/16 :goto_ee

    .line 262
    :cond_56
    const-wide/32 v6, 0x5265c00

    cmp-long v8, v2, v6

    if-gez v8, :cond_80

    .line 263
    div-long/2addr v2, v11

    long-to-int v0, v2

    .line 264
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v4, :cond_6d

    .line 265
    const v2, 0x10403ac

    goto :goto_70

    .line 266
    :cond_6d
    const v2, 0x10403ad

    :goto_70
    nop

    .line 267
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 264
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 268
    move-wide v6, v11

    goto/16 :goto_ee

    .line 269
    :cond_80
    const-wide v11, 0x7528ad000L

    cmp-long v8, v2, v11

    if-gez v8, :cond_cd

    .line 271
    iget-object v2, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 272
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    .line 273
    invoke-static {v0, v1, v3}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 275
    invoke-static {v2, v0}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 276
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v4, :cond_ad

    .line 277
    const v8, 0x10403a7

    goto :goto_b0

    .line 278
    :cond_ad
    const v8, 0x10403a8

    :goto_b0
    nop

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 276
    invoke-virtual {v2, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 280
    if-nez v4, :cond_c3

    if-eq v1, v5, :cond_c2

    goto :goto_c3

    .line 284
    :cond_c2
    goto :goto_ca

    .line 281
    :cond_c3
    :goto_c3
    invoke-static {v0, v3}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 282
    move-wide v6, v13

    .line 287
    :goto_ca
    move v0, v1

    move-object v1, v2

    goto :goto_ee

    .line 288
    :cond_cd
    div-long/2addr v2, v11

    long-to-int v0, v2

    .line 289
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v4, :cond_dd

    .line 290
    const v2, 0x10403b5

    goto :goto_e0

    .line 291
    :cond_dd
    const v2, 0x10403b6

    :goto_e0
    nop

    .line 292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 293
    move-wide v6, v11

    .line 295
    :goto_ee
    cmp-long v2, v6, v13

    if-eqz v2, :cond_106

    .line 296
    if-eqz v4, :cond_fe

    .line 297
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/2addr v0, v5

    int-to-long v4, v0

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v2, v9

    iput-wide v2, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_106

    .line 299
    :cond_fe
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v4, v0

    mul-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v2, v9

    iput-wide v2, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 302
    :cond_106
    :goto_106
    invoke-direct {p0, v1}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    .line 303
    return-void
.end method


# virtual methods
.method greylist-max-o clearFormatAndUpdate()V
    .registers 2

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 354
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 355
    return-void
.end method

.method public blacklist isShowRelativeTime()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 101
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 102
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 103
    if-nez v0, :cond_18

    .line 104
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView-IA;)V

    .line 105
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    :cond_18
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    .line 113
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_22

    .line 114
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 116
    :cond_22
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 329
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 330
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 331
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 332
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 120
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 121
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 122
    if-eqz v0, :cond_10

    .line 123
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    .line 125
    :cond_10
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 15

    .line 359
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 360
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_dd

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 364
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 366
    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_1c

    move v4, v5

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    .line 368
    :goto_1d
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 369
    const-wide/32 v7, 0xea60

    cmp-long v9, v2, v7

    if-gez v9, :cond_2d

    .line 370
    iget-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    goto/16 :goto_da

    .line 371
    :cond_2d
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v2, v9

    const-string v12, "count"

    if-gez v11, :cond_57

    .line 372
    div-long/2addr v2, v7

    long-to-int v0, v2

    .line 373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    nop

    .line 375
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 377
    if-eqz v4, :cond_4e

    const v1, 0x10403af

    goto :goto_51

    .line 378
    :cond_4e
    const v1, 0x10403b0

    .line 374
    :goto_51
    invoke-static {v0, v6, v1}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_da

    .line 379
    :cond_57
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v2, v7

    if-gez v7, :cond_7e

    .line 380
    div-long/2addr v2, v9

    long-to-int v0, v2

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    nop

    .line 383
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 385
    if-eqz v4, :cond_76

    const v1, 0x10403aa

    goto :goto_79

    .line 386
    :cond_76
    const v1, 0x10403ab

    .line 382
    :goto_79
    invoke-static {v0, v6, v1}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_da

    .line 387
    :cond_7e
    const-wide v7, 0x7528ad000L

    cmp-long v9, v2, v7

    if-gez v9, :cond_bb

    .line 389
    iget-object v2, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 390
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    .line 391
    invoke-static {v0, v1, v3}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 393
    invoke-static {v2, v0}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    nop

    .line 396
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 398
    if-eqz v4, :cond_b3

    const v1, 0x10403a5

    goto :goto_b6

    .line 399
    :cond_b3
    const v1, 0x10403a6

    .line 395
    :goto_b6
    invoke-static {v0, v6, v1}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    .line 400
    goto :goto_da

    .line 401
    :cond_bb
    div-long/2addr v2, v7

    long-to-int v0, v2

    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    nop

    .line 404
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 406
    if-eqz v4, :cond_d3

    const v1, 0x10403b3

    goto :goto_d6

    .line 407
    :cond_d3
    const v1, 0x10403b4

    .line 403
    :goto_d6
    invoke-static {v0, v6, v1}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_da
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_dd
    return-void
.end method

.method public greylist-max-o setShowRelativeTime(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 138
    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 139
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 140
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 141
    return-void
.end method

.method public greylist setTime(J)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 130
    iput-wide p1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 131
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 132
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 133
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 134
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 156
    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 157
    :goto_d
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    if-eqz v0, :cond_15

    .line 159
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 161
    :cond_15
    return-void
.end method

.method greylist update()V
    .registers 16

    .line 165
    iget-object v0, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_ca

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    goto/16 :goto_ca

    .line 168
    :cond_e
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_16

    .line 169
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    .line 170
    return-void

    .line 174
    :cond_16
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 177
    iget-object v1, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 178
    nop

    .line 179
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    sget-object v3, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 180
    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 182
    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v4

    .line 184
    const-wide/16 v6, 0xc

    invoke-virtual {v1, v6, v7}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v8

    .line 185
    invoke-virtual {v1, v6, v7}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v6

    .line 186
    invoke-static {v2, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v10

    .line 187
    invoke-static {v3, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v2

    .line 188
    invoke-static {v1, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v12

    .line 189
    invoke-static {v4, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v0

    .line 193
    cmp-long v4, v0, v10

    if-ltz v4, :cond_60

    cmp-long v4, v0, v2

    if-ltz v4, :cond_68

    :cond_60
    cmp-long v4, v0, v8

    if-ltz v4, :cond_6a

    cmp-long v4, v0, v6

    if-gez v4, :cond_6a

    .line 195
    :cond_68
    nop

    .line 196
    goto :goto_6b

    .line 199
    :cond_6a
    const/4 v5, 0x1

    .line 205
    :goto_6b
    iget v4, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v5, v4, :cond_76

    iget-object v4, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v4, :cond_76

    .line 207
    iget-object v4, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_9f

    .line 209
    :cond_76
    packed-switch v5, :pswitch_data_cc

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown display value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :pswitch_92
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    .line 215
    goto :goto_9d

    .line 211
    :pswitch_98
    invoke-direct {p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v4

    .line 212
    nop

    .line 219
    :goto_9d
    iput-object v4, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 223
    :goto_9f
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-direct {p0, v4}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    .line 227
    if-nez v5, :cond_b6

    .line 229
    cmp-long v0, v6, v2

    if-lez v0, :cond_b2

    goto :goto_b3

    :cond_b2
    move-wide v6, v2

    :goto_b3
    iput-wide v6, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_c9

    .line 232
    :cond_b6
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_c1

    .line 234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_c9

    .line 238
    :cond_c1
    cmp-long v0, v8, v10

    if-gez v0, :cond_c6

    .line 239
    goto :goto_c7

    :cond_c6
    move-wide v8, v10

    :goto_c7
    iput-wide v8, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 242
    :goto_c9
    return-void

    .line 166
    :cond_ca
    :goto_ca
    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_98
        :pswitch_92
    .end packed-switch
.end method
