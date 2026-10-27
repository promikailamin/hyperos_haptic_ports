.class public Landroid/appwidget/AppWidgetEvent$Builder;
.super Ljava/lang/Object;
.source "AppWidgetEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppWidgetId:I

.field private final blacklist mClickedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDurationMillis:J

.field private blacklist mEnd:J

.field private blacklist mLastVisibilityChangeMillis:J

.field private blacklist mPosition:Landroid/graphics/Rect;

.field private final blacklist mScrolledIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStart:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mClickedIds:Landroid/util/ArraySet;

    .line 270
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mScrolledIds:Landroid/util/ArraySet;

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mAppWidgetId:I

    .line 273
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mStart:J

    .line 274
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mEnd:J

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mDurationMillis:J

    .line 276
    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mLastVisibilityChangeMillis:J

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mPosition:Landroid/graphics/Rect;

    .line 281
    return-void
.end method

.method private static blacklist addAllUntilMax(Landroid/util/ArraySet;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 383
    if-nez p1, :cond_3

    .line 384
    return-void

    .line 386
    :cond_3
    const/4 v0, 0x0

    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1b

    .line 387
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 389
    :cond_1b
    return-void
.end method

.method private static blacklist toIntArray(Landroid/util/ArraySet;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 394
    :cond_8
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 395
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_20

    .line 396
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 398
    :cond_20
    return-object v1
.end method


# virtual methods
.method public blacklist addClickedId(I)Landroid/appwidget/AppWidgetEvent$Builder;
    .registers 4

    .line 318
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mClickedIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_13

    .line 319
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mClickedIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_13
    return-object p0
.end method

.method public blacklist addScrolledId(I)Landroid/appwidget/AppWidgetEvent$Builder;
    .registers 4

    .line 325
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mScrolledIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_13

    .line 326
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mScrolledIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_13
    return-object p0
.end method

.method public blacklist build()Landroid/appwidget/AppWidgetEvent;
    .registers 13

    .line 378
    new-instance v0, Landroid/appwidget/AppWidgetEvent;

    iget v1, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mAppWidgetId:I

    iget-wide v2, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mDurationMillis:J

    iget-wide v4, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mStart:J

    iget-wide v6, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mEnd:J

    iget-object v8, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mPosition:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mClickedIds:Landroid/util/ArraySet;

    .line 379
    invoke-static {v9}, Landroid/appwidget/AppWidgetEvent$Builder;->toIntArray(Landroid/util/ArraySet;)[I

    move-result-object v9

    iget-object v10, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mScrolledIds:Landroid/util/ArraySet;

    invoke-static {v10}, Landroid/appwidget/AppWidgetEvent$Builder;->toIntArray(Landroid/util/ArraySet;)[I

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/appwidget/AppWidgetEvent;-><init>(IJJJLandroid/graphics/Rect;[I[ILandroid/appwidget/AppWidgetEvent-IA;)V

    .line 378
    return-object v0
.end method

.method public blacklist clear()V
    .registers 3

    .line 369
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mDurationMillis:J

    .line 370
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mStart:J

    .line 371
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mEnd:J

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mPosition:Landroid/graphics/Rect;

    .line 373
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mClickedIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 374
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mScrolledIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 375
    return-void
.end method

.method public blacklist endVisibility()Landroid/appwidget/AppWidgetEvent$Builder;
    .registers 7

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    iget-wide v2, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mEnd:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_c

    .line 306
    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mEnd:J

    .line 308
    :cond_c
    iget-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mDurationMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mLastVisibilityChangeMillis:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mDurationMillis:J

    .line 309
    return-object p0
.end method

.method public blacklist isEmpty()Z
    .registers 5

    .line 362
    iget v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mAppWidgetId:I

    if-lez v0, :cond_f

    iget-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

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

.method public blacklist merge(Landroid/appwidget/AppWidgetEvent;)V
    .registers 6

    .line 335
    if-nez p1, :cond_3

    .line 336
    return-void

    .line 339
    :cond_3
    iget v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mAppWidgetId:I

    if-nez v0, :cond_f

    .line 340
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getAppWidgetId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetEvent$Builder;->setAppWidgetId(I)Landroid/appwidget/AppWidgetEvent$Builder;

    goto :goto_17

    .line 341
    :cond_f
    iget v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mAppWidgetId:I

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getAppWidgetId()I

    move-result v1

    if-ne v0, v1, :cond_6e

    .line 345
    :goto_17
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getStart()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mStart:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2f

    .line 346
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getStart()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mStart:J

    .line 348
    :cond_2f
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getEnd()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mEnd:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_47

    .line 349
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getEnd()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mEnd:J

    .line 351
    :cond_47
    iget-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mDurationMillis:J

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getVisibleDuration()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mDurationMillis:J

    .line 352
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getPosition()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetEvent$Builder;->setPosition(Landroid/graphics/Rect;)Landroid/appwidget/AppWidgetEvent$Builder;

    .line 353
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mClickedIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getClickedIds()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetEvent$Builder;->addAllUntilMax(Landroid/util/ArraySet;[I)V

    .line 354
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mScrolledIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getScrolledIds()[I

    move-result-object p1

    invoke-static {v0, p1}, Landroid/appwidget/AppWidgetEvent$Builder;->addAllUntilMax(Landroid/util/ArraySet;[I)V

    .line 355
    return-void

    .line 342
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to merge events with different app widget IDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 343
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetEvent;->getAppWidgetId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAppWidgetId(I)Landroid/appwidget/AppWidgetEvent$Builder;
    .registers 2

    .line 284
    iput p1, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mAppWidgetId:I

    .line 285
    return-object p0
.end method

.method public blacklist setPosition(Landroid/graphics/Rect;)Landroid/appwidget/AppWidgetEvent$Builder;
    .registers 2

    .line 313
    iput-object p1, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mPosition:Landroid/graphics/Rect;

    .line 314
    return-object p0
.end method

.method public blacklist startVisibility()Landroid/appwidget/AppWidgetEvent$Builder;
    .registers 5

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 293
    iget-wide v2, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mStart:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    .line 294
    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mStart:J

    .line 296
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/appwidget/AppWidgetEvent$Builder;->mLastVisibilityChangeMillis:J

    .line 297
    return-object p0
.end method
