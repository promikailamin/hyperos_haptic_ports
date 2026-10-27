.class public Landroid/app/admin/FreezePeriod;
.super Ljava/lang/Object;
.source "FreezePeriod.java"


# static fields
.field static final greylist-max-o DAYS_IN_YEAR:I = 0x16d

.field private static final blacklist SENTINEL_YEAR:I = 0x7d1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FreezePeriod"


# instance fields
.field private final greylist-max-o mEnd:Ljava/time/MonthDay;

.field private final greylist-max-o mEndDay:I

.field private final greylist-max-o mStart:Ljava/time/MonthDay;

.field private final greylist-max-o mStartDay:I


# direct methods
.method private constructor greylist-max-o <init>(II)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 87
    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearToMonthDay(I)Ljava/time/MonthDay;

    move-result-object p1

    iput-object p1, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    .line 88
    iput p2, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    .line 89
    invoke-static {p2}, Landroid/app/admin/FreezePeriod;->dayOfYearToMonthDay(I)Ljava/time/MonthDay;

    move-result-object p1

    iput-object p1, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    .line 90
    return-void
.end method

.method public constructor whitelist <init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    .line 63
    iget-object p1, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    const/16 v0, 0x7d1

    invoke-virtual {p1, v0}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result p1

    iput p1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 64
    iput-object p2, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    .line 65
    iget-object p1, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    invoke-virtual {p1, v0}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result p1

    iput p1, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    .line 66
    return-void
.end method

.method static greylist-max-o canonicalizePeriods(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;"
        }
    .end annotation

    .line 221
    const/16 v0, 0x16d

    new-array v1, v0, [Z

    .line 223
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    .line 224
    iget v4, v2, Landroid/app/admin/FreezePeriod;->mStartDay:I

    :goto_17
    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getEffectiveEndDay()I

    move-result v5

    if-gt v4, v5, :cond_25

    .line 225
    add-int/lit8 v5, v4, -0x1

    rem-int/2addr v5, v0

    aput-boolean v3, v1, v5

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 227
    :cond_25
    goto :goto_8

    .line 229
    :cond_26
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    const/4 v2, 0x0

    move v4, v2

    .line 231
    :goto_2d
    if-ge v4, v0, :cond_4a

    .line 232
    aget-boolean v5, v1, v4

    if-nez v5, :cond_36

    .line 233
    add-int/lit8 v4, v4, 0x1

    .line 234
    goto :goto_2d

    .line 236
    :cond_36
    add-int/lit8 v5, v4, 0x1

    .line 237
    :goto_38
    if-ge v4, v0, :cond_41

    aget-boolean v6, v1, v4

    if-eqz v6, :cond_41

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 238
    :cond_41
    new-instance v6, Landroid/app/admin/FreezePeriod;

    invoke-direct {v6, v5, v4}, Landroid/app/admin/FreezePeriod;-><init>(II)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    goto :goto_2d

    .line 242
    :cond_4a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .line 243
    if-lez v1, :cond_80

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/FreezePeriod;

    iget v4, v4, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-ne v4, v0, :cond_80

    .line 244
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/FreezePeriod;

    iget v0, v0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-ne v0, v3, :cond_80

    .line 245
    new-instance v0, Landroid/app/admin/FreezePeriod;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    iget v3, v3, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 246
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/FreezePeriod;

    iget v4, v4, Landroid/app/admin/FreezePeriod;->mEndDay:I

    invoke-direct {v0, v3, v4}, Landroid/app/admin/FreezePeriod;-><init>(II)V

    .line 247
    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 250
    :cond_80
    return-object p0
.end method

.method private static greylist-max-o dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I
    .registers 2

    .line 194
    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result p0

    return p0
.end method

.method private static greylist-max-o dayOfYearToMonthDay(I)Ljava/time/MonthDay;
    .registers 2

    .line 185
    const/16 v0, 0x7d1

    invoke-static {v0, p0}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I
    .registers 4

    .line 203
    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v0

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 204
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result p0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result p1

    sub-int/2addr p0, p1

    mul-int/lit16 p0, p0, 0x16d

    add-int/2addr v0, p0

    .line 203
    return v0
.end method

.method static greylist-max-o validateAgainstPreviousFreezePeriod(Ljava/util/List;Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ")V"
        }
    .end annotation

    .line 304
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_15c

    if-eqz p1, :cond_15c

    if-nez p2, :cond_c

    goto/16 :goto_15c

    .line 307
    :cond_c
    invoke-virtual {p1, p3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    const-string v1, ","

    if-nez v0, :cond_1a

    invoke-virtual {p2, p3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 308
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous period ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is after current date "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FreezePeriod"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_44
    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->canonicalizePeriods(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 317
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/FreezePeriod;

    .line 318
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    .line 319
    invoke-virtual {v2, p3}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v3

    if-nez v3, :cond_6f

    iget v3, v2, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 320
    invoke-static {p3}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v4

    if-le v3, v4, :cond_6e

    goto :goto_6f

    .line 324
    :cond_6e
    goto :goto_53

    .line 321
    :cond_6f
    :goto_6f
    nop

    .line 322
    move-object v0, v2

    .line 325
    :cond_71
    nop

    .line 326
    invoke-virtual {v0, p3}, Landroid/app/admin/FreezePeriod;->toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object p0

    .line 327
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {p3, v0}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 328
    new-instance v0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/time/LocalDate;

    invoke-direct {v0, p3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    .line 330
    :cond_8a
    iget-object p3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/time/LocalDate;

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {p3, v0}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result p3

    if-nez p3, :cond_135

    .line 335
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Prev: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "; cur: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 337
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/LocalDate;

    invoke-static {v0, p2}, Landroid/app/admin/FreezePeriod;->distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-long v0, p2

    .line 339
    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const-string v2, ", "

    if-lez p2, :cond_103

    .line 341
    const-wide/16 p0, 0x3c

    cmp-long p0, v0, p0

    if-ltz p0, :cond_e3

    goto :goto_114

    .line 342
    :cond_e3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Previous freeze period too close to new period: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->combinedPeriodTooClose(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    throw p0

    .line 347
    :cond_103
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/time/LocalDate;

    invoke-static {p0, p1}, Landroid/app/admin/FreezePeriod;->distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-long p0, p0

    .line 349
    const-wide/16 v0, 0x5a

    cmp-long p2, p0, v0

    if-gtz p2, :cond_115

    .line 354
    :goto_114
    return-void

    .line 350
    :cond_115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Combined freeze period exceeds maximum days: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->combinedPeriodTooLong(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    throw p0

    .line 331
    :cond_135
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current freeze dates inverted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_15c
    :goto_15c
    return-void
.end method

.method static greylist-max-o validatePeriods(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;)V"
        }
    .end annotation

    .line 263
    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->canonicalizePeriods(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v1, p0, :cond_bc

    .line 267
    const/4 p0, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_bb

    .line 268
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/FreezePeriod;

    .line 269
    invoke-virtual {v1}, Landroid/app/admin/FreezePeriod;->getLength()I

    move-result v2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_8f

    .line 273
    if-lez p0, :cond_2e

    add-int/lit8 v2, p0, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    goto :goto_3a

    .line 274
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    .line 275
    :goto_3a
    if-eq v2, v1, :cond_8c

    .line 277
    if-nez p0, :cond_4e

    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 279
    iget v3, v1, Landroid/app/admin/FreezePeriod;->mStartDay:I

    iget v4, v2, Landroid/app/admin/FreezePeriod;->mEndDay:I

    rsub-int v4, v4, 0x16d

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_55

    .line 284
    :cond_4e
    iget v3, v1, Landroid/app/admin/FreezePeriod;->mStartDay:I

    iget v4, v2, Landroid/app/admin/FreezePeriod;->mEndDay:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 286
    :goto_55
    const/16 v4, 0x3c

    if-lt v3, v4, :cond_5a

    goto :goto_8c

    .line 287
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Freeze periods "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " and "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " are too close together: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " days apart"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->freezePeriodTooClose(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    throw p0

    .line 267
    :cond_8c
    :goto_8c
    add-int/lit8 p0, p0, 0x1

    goto :goto_f

    .line 270
    :cond_8f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Freeze period "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is too long: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 271
    invoke-virtual {v1}, Landroid/app/admin/FreezePeriod;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " days"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->freezePeriodTooLong(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    throw p0

    .line 293
    :cond_bb
    return-void

    .line 265
    :cond_bc
    invoke-static {}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->duplicateOrOverlapPeriods()Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method greylist-max-o after(Ljava/time/LocalDate;)Z
    .registers 3

    .line 129
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result p1

    if-le v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method greylist-max-o contains(Ljava/time/LocalDate;)Z
    .registers 5

    .line 116
    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result p1

    .line 117
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    .line 119
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-gt v0, p1, :cond_15

    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-gt p1, v0, :cond_15

    move v1, v2

    :cond_15
    return v1

    .line 123
    :cond_16
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-le v0, p1, :cond_1e

    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-gt p1, v0, :cond_1f

    :cond_1e
    move v1, v2

    :cond_1f
    return v1
.end method

.method greylist-max-o getEffectiveEndDay()I
    .registers 2

    .line 107
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v0

    if-nez v0, :cond_9

    .line 108
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    return v0

    .line 110
    :cond_9
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    add-int/lit16 v0, v0, 0x16d

    return v0
.end method

.method public whitelist getEnd()Ljava/time/MonthDay;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    return-object v0
.end method

.method greylist-max-o getLength()I
    .registers 3

    .line 94
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->getEffectiveEndDay()I

    move-result v0

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getStart()Ljava/time/MonthDay;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    return-object v0
.end method

.method greylist-max-o isWrapped()Z
    .registers 3

    .line 99
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist-max-o toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v0

    .line 144
    invoke-virtual {p0, p1}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 146
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-gt v1, v0, :cond_15

    .line 149
    nop

    .line 150
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v0

    goto :goto_28

    .line 153
    :cond_15
    nop

    .line 154
    const/4 v0, -0x1

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_28

    .line 158
    :cond_1b
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-le v1, v0, :cond_25

    .line 161
    nop

    .line 162
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v0

    goto :goto_28

    .line 165
    :cond_25
    nop

    .line 166
    const/4 v2, 0x1

    move v0, v2

    .line 169
    :goto_28
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    const/16 v3, 0x7d1

    invoke-static {v3, v1}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    add-int/2addr v4, v2

    .line 169
    invoke-virtual {v1, v4}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    .line 171
    iget v2, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    invoke-static {v3, v2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v2

    .line 172
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result p1

    add-int/2addr p1, v0

    .line 171
    invoke-virtual {v2, p1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object p1

    .line 173
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 178
    const-string v0, "MMM dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    const/16 v3, 0x7d1

    invoke-static {v3, v2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    .line 180
    invoke-static {v3, v2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    return-object v0
.end method
