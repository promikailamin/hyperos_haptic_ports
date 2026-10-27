.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final whitelist ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final whitelist DAY_IN_MILLIS:J = 0x5265c00L

.field public static final whitelist FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_ABBREV_ALL:I = 0x80000

.field public static final whitelist FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final whitelist FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final whitelist FORMAT_ABBREV_TIME:I = 0x4000

.field public static final whitelist FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final whitelist FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final whitelist FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final whitelist FORMAT_NO_NOON:I = 0x200

.field public static final whitelist FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_NO_YEAR:I = 0x8

.field public static final whitelist FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final whitelist FORMAT_SHOW_DATE:I = 0x10

.field public static final whitelist FORMAT_SHOW_TIME:I = 0x1

.field public static final whitelist FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final whitelist FORMAT_SHOW_YEAR:I = 0x4

.field public static final whitelist FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final whitelist HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MINUTE_IN_MILLIS:J = 0xea60L

.field public static final whitelist MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final whitelist MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final whitelist NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final whitelist SECOND_IN_MILLIS:J = 0x3e8L

.field public static final whitelist WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final whitelist WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final whitelist YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final whitelist YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final whitelist YEAR_IN_MILLIS:J = 0x7528ad000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static greylist-max-o sElapsedFormatHMMSS:Ljava/lang/String;

.field private static greylist-max-o sElapsedFormatMMSS:Ljava/lang/String;

.field private static greylist-max-o sLastConfig:Landroid/content/res/Configuration;

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sNowTime:Landroid/text/format/Time;

.field private static greylist-max-o sThenTime:Landroid/text/format/Time;

.field public static final whitelist sameMonthTable:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist sameYearTable:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 131
    const/4 v0, 0x0

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 135
    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .registers 13

    .line 562
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 563
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .registers 15

    .line 586
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .registers 14

    .line 757
    and-int/lit16 v0, p6, 0xc1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 758
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/16 p0, 0x80

    goto :goto_10

    :cond_e
    const/16 p0, 0x40

    :goto_10
    or-int/2addr p6, p0

    move v4, p6

    goto :goto_14

    .line 757
    :cond_13
    move v4, p6

    .line 761
    :goto_14
    move-wide v0, p2

    move-wide v2, p4

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateIntervalFormat;->formatDateRange(JJILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 763
    :try_start_1b
    invoke-virtual {p1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_24

    .line 766
    nop

    .line 767
    return-object p1

    .line 764
    :catch_24
    move-exception v0

    move-object p0, v0

    .line 765
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static whitelist formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 10

    .line 813
    move-wide v3, p1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist formatDuration(J)Ljava/lang/CharSequence;
    .registers 3

    .line 386
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Landroid/text/format/DateUtils;->formatDuration(JI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r formatDuration(JI)Ljava/lang/CharSequence;
    .registers 7

    .line 403
    sparse-switch p2, :sswitch_data_68

    .line 416
    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    goto :goto_f

    .line 413
    :sswitch_6
    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 414
    goto :goto_f

    .line 410
    :sswitch_9
    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 411
    goto :goto_f

    .line 405
    :sswitch_c
    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 406
    nop

    .line 418
    :goto_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p2

    .line 419
    const-wide/32 v0, 0x36ee80

    cmp-long v2, p0, v0

    if-ltz v2, :cond_34

    .line 420
    const-wide/32 v2, 0x1b7740

    add-long/2addr p0, v2

    div-long/2addr p0, v0

    long-to-int p0, p0

    .line 421
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {p1, p0, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p2, p1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 422
    :cond_34
    const-wide/32 v0, 0xea60

    cmp-long v2, p0, v0

    if-ltz v2, :cond_50

    .line 423
    const-wide/16 v2, 0x7530

    add-long/2addr p0, v2

    div-long/2addr p0, v0

    long-to-int p0, p0

    .line 424
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {p1, p0, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p2, p1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 426
    :cond_50
    const-wide/16 v0, 0x1f4

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p0, p0

    .line 427
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {p1, p0, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p2, p1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_68
    .sparse-switch
        0xa -> :sswitch_c
        0x14 -> :sswitch_9
        0x1e -> :sswitch_9
        0x28 -> :sswitch_9
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public static whitelist formatElapsedTime(J)Ljava/lang/String;
    .registers 3

    .line 437
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .registers 12

    .line 450
    nop

    .line 451
    nop

    .line 452
    nop

    .line 453
    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x0

    if-ltz v2, :cond_10

    .line 454
    div-long v5, p1, v0

    .line 455
    mul-long/2addr v0, v5

    sub-long/2addr p1, v0

    goto :goto_11

    .line 453
    :cond_10
    move-wide v5, v3

    .line 457
    :goto_11
    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1c

    .line 458
    div-long v7, p1, v0

    .line 459
    mul-long/2addr v0, v7

    sub-long/2addr p1, v0

    goto :goto_1d

    .line 457
    :cond_1c
    move-wide v7, v3

    .line 461
    :goto_1d
    nop

    .line 465
    nop

    .line 466
    if-nez p0, :cond_29

    .line 467
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_2d

    .line 469
    :cond_29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 474
    :goto_2d
    new-instance v0, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 475
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 476
    cmp-long p0, v5, v3

    if-lez p0, :cond_58

    .line 477
    sget-object p0, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 479
    :cond_58
    sget-object p0, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .registers 7

    .line 502
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 503
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 504
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 505
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 506
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 510
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p3, p2, :cond_3a

    .line 511
    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p3, p2, :cond_3a

    .line 512
    const/4 p2, 0x5

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p3, p1, :cond_3a

    .line 513
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_3e

    .line 515
    :cond_3a
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    .line 517
    :goto_3e
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getAMPMString(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 236
    add-int/lit8 p0, p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static whitelist getDayOfWeekString(II)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-static {}, Landroid/icu/text/DateFormatSymbols;->getInstance()Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    .line 209
    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_16

    .line 220
    move p1, v1

    goto :goto_f

    .line 214
    :sswitch_a
    nop

    .line 215
    const/4 p1, 0x2

    goto :goto_f

    .line 211
    :sswitch_d
    nop

    .line 212
    const/4 p1, 0x1

    .line 223
    :goto_f
    invoke-virtual {v0, v1, p1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object p1

    aget-object p0, p1, p0

    return-object p0

    :sswitch_data_16
    .sparse-switch
        0xa -> :sswitch_d
        0x32 -> :sswitch_a
    .end sparse-switch
.end method

.method public static whitelist getMonthString(II)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    .line 254
    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_1a

    .line 265
    move p1, v1

    goto :goto_13

    .line 259
    :sswitch_e
    nop

    .line 260
    const/4 p1, 0x2

    goto :goto_13

    .line 256
    :sswitch_11
    nop

    .line 257
    const/4 p1, 0x1

    .line 268
    :goto_13
    invoke-virtual {v0, v1, p1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object p1

    aget-object p0, p1, p0

    return-object p0

    :sswitch_data_1a
    .sparse-switch
        0xa -> :sswitch_11
        0x32 -> :sswitch_e
    .end sparse-switch
.end method

.method public static whitelist getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .registers 19

    .line 352
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0xc1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 353
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/16 p0, 0x80

    goto :goto_12

    :cond_10
    const/16 p0, 0x40

    :goto_12
    or-int/2addr p0, v0

    move v10, p0

    goto :goto_16

    .line 352
    :cond_15
    move v10, v0

    .line 356
    :goto_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 357
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 356
    move-wide v2, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-static/range {v0 .. v10}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .registers 8

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .registers 13

    .line 296
    nop

    .line 297
    const v6, 0x10014

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .registers 16

    .line 322
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 323
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 322
    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-static/range {v0 .. v8}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .registers 4

    .line 884
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .registers 15

    .line 834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 835
    sub-long v2, v0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 837
    const-class v4, Landroid/text/format/DateUtils;

    monitor-enter v4

    .line 838
    :try_start_d
    sget-object v5, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v5, :cond_18

    .line 839
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    sput-object v5, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 842
    :cond_18
    sget-object v5, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v5, :cond_23

    .line 843
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    sput-object v5, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 846
    :cond_23
    sget-object v5, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 847
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 850
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v2, v0

    if-gez v0, :cond_4c

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v1, :cond_4c

    .line 852
    nop

    .line 853
    const/4 v10, 0x1

    move-wide v8, p1

    move-object v5, p0

    move-wide v6, p1

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    .line 854
    nop

    .line 855
    const p1, 0x1040927

    goto :goto_71

    .line 850
    :cond_4c
    move-object v5, p0

    move-wide v6, p1

    .line 855
    sget-object p0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget p0, p0, Landroid/text/format/Time;->year:I

    sget-object p1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget p1, p1, Landroid/text/format/Time;->year:I

    const p2, 0x1040926

    if-eq p0, p1, :cond_67

    .line 857
    nop

    .line 858
    const v10, 0x20014

    move-wide v8, v6

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    .line 861
    nop

    .line 862
    move p1, p2

    goto :goto_71

    .line 864
    :cond_67
    nop

    .line 865
    const v10, 0x10010

    move-wide v8, v6

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    .line 866
    move p1, p2

    .line 868
    :goto_71
    if-eqz p3, :cond_7f

    .line 869
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 870
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 872
    :cond_7f
    monitor-exit v4

    .line 873
    return-object p0

    .line 872
    :catchall_81
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_84
    .catchall {:try_start_d .. :try_end_84} :catchall_81

    throw p0
.end method

.method private static greylist-max-o initFormatStrings()V
    .registers 2

    .line 362
    sget-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_3
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 364
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static greylist-max-o initFormatStringsLocked()V
    .registers 3

    .line 368
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 370
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_14

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 371
    :cond_14
    sput-object v1, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 372
    const v1, 0x10403bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 373
    const v1, 0x10403be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 375
    :cond_28
    return-void
.end method

.method private static blacklist isSameDate(JJ)Z
    .registers 5

    .line 528
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 530
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 531
    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 533
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 534
    invoke-static {p1, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 536
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p2

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result p3

    if-ne p2, p3, :cond_34

    .line 537
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result p3

    if-ne p2, p3, :cond_34

    .line 538
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p1

    if-ne p0, p1, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    .line 536
    :goto_35
    return p0
.end method

.method public static whitelist isToday(J)Z
    .registers 4

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/text/format/DateUtils;->isSameDate(JJ)Z

    move-result p0

    return p0
.end method
