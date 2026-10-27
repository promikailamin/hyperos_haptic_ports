.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final greylist AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist CHINESE_CHINA:Ljava/util/Locale;

.field public static final greylist DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist DISALLOW_DUPLICATE_FIELD_IN_SKELETON:J = 0xa258efeL

.field private static final blacklist GREECE_GREEK:Ljava/util/Locale;

.field public static final greylist HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static greylist-max-o sIs24Hour:Z

.field private static greylist-max-o sIs24HourLocale:Ljava/util/Locale;

.field private static final greylist-max-o sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Ljava/util/Locale;

    const-string v1, "el"

    const-string v2, "GR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/text/format/DateFormat;->GREECE_GREEK:Ljava/util/Locale;

    .line 171
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "zh"

    const-string v2, "CN"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/text/format/DateFormat;->CHINESE_CHINA:Ljava/util/Locale;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o appendQuotedText(Landroid/text/SpannableStringBuilder;I)I
    .registers 7
    .param p0, "formatString"    # Landroid/text/SpannableStringBuilder;
    .param p1, "index"    # I

    .line 679
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 680
    .local v0, "length":I
    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x27

    if-ge v1, v0, :cond_19

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_19

    .line 681
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 682
    const/4 v1, 0x1

    return v1

    .line 685
    :cond_19
    const/4 v1, 0x0

    .line 688
    .local v1, "count":I
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 689
    add-int/lit8 v0, v0, -0x1

    .line 691
    :goto_21
    if-ge p1, v0, :cond_4c

    .line 692
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .line 694
    .local v3, "c":C
    if-ne v3, v2, :cond_47

    .line 696
    add-int/lit8 v4, p1, 0x1

    if-ge v4, v0, :cond_41

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_41

    .line 698
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, p1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 699
    add-int/lit8 v0, v0, -0x1

    .line 700
    add-int/lit8 v1, v1, 0x1

    .line 701
    add-int/lit8 p1, p1, 0x1

    goto :goto_4b

    .line 704
    :cond_41
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 705
    goto :goto_4c

    .line 708
    :cond_47
    add-int/lit8 p1, p1, 0x1

    .line 709
    add-int/lit8 v1, v1, 0x1

    .line 711
    .end local v3    # "c":C
    :goto_4b
    goto :goto_21

    .line 713
    :cond_4c
    :goto_4c
    return v1
.end method

.method public static whitelist format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inTimeInMillis"    # J

    .line 438
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Calendar;

    .line 508
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 511
    .local v0, "s":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v1

    .line 512
    .local v1, "dfs":Landroid/icu/text/DateFormatSymbols;
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "amPm":[Ljava/lang/String;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 516
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_be

    .line 517
    const/4 v5, 0x1

    .line 518
    .local v5, "count":I
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    .line 520
    .local v6, "c":I
    const/16 v7, 0x27

    if-ne v6, v7, :cond_2b

    .line 521
    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result v5

    .line 522
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 523
    goto/16 :goto_bb

    .line 526
    :cond_2b
    :goto_2b
    add-int v7, v4, v5

    if-ge v7, v3, :cond_3a

    add-int v7, v4, v5

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_3a

    .line 527
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 531
    :cond_3a
    sparse-switch v6, :sswitch_data_ce

    .line 584
    const/4 v7, 0x0

    .local v7, "replacement":Ljava/lang/String;
    goto/16 :goto_ac

    .line 581
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_40
    invoke-static {p1, v5}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v7

    .line 582
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ac

    .line 578
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_45
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    move-result-object v7

    .line 579
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ac

    .line 575
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_4f
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 576
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ac

    .line 572
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_5a
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 573
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ac

    .line 537
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_65
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 538
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ac

    .line 569
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_6f
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v1, v7, v5, v6}, Landroid/text/format/DateFormat;->getMonthString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;

    move-result-object v7

    .line 570
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ac

    .line 547
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_79
    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 548
    .local v7, "hour":I
    const/16 v8, 0x68

    if-ne v6, v8, :cond_87

    if-nez v7, :cond_87

    .line 549
    const/16 v7, 0xc

    .line 551
    :cond_87
    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 553
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_ac

    .line 557
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_8c
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 564
    .local v7, "hour":I
    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 566
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_ac

    .line 541
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_97
    const/4 v7, 0x7

    .line 542
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 541
    invoke-static {v1, v7, v5, v6}, Landroid/text/format/DateFormat;->getDayOfWeekString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;

    move-result-object v7

    .line 543
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ac

    .line 534
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_a1
    const/16 v7, 0x9

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    aget-object v7, v2, v7

    .line 535
    .restart local v7    # "replacement":Ljava/lang/String;
    nop

    .line 588
    :goto_ac
    if-eqz v7, :cond_bb

    .line 589
    add-int v8, v4, v5

    invoke-virtual {v0, v4, v8, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 590
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 591
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 516
    .end local v6    # "c":I
    .end local v7    # "replacement":Ljava/lang/String;
    :cond_bb
    :goto_bb
    add-int/2addr v4, v5

    goto/16 :goto_16

    .line 595
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_be
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_c8

    .line 596
    new-instance v4, Landroid/text/SpannedString;

    invoke-direct {v4, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v4

    .line 598
    :cond_c8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :sswitch_data_ce
    .sparse-switch
        0x41 -> :sswitch_a1
        0x45 -> :sswitch_97
        0x48 -> :sswitch_8c
        0x4b -> :sswitch_79
        0x4c -> :sswitch_6f
        0x4d -> :sswitch_6f
        0x61 -> :sswitch_a1
        0x63 -> :sswitch_97
        0x64 -> :sswitch_65
        0x68 -> :sswitch_79
        0x6b -> :sswitch_8c
        0x6d -> :sswitch_5a
        0x73 -> :sswitch_4f
        0x79 -> :sswitch_45
        0x7a -> :sswitch_40
    .end sparse-switch
.end method

.method public static whitelist format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Date;

    .line 449
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 450
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 451
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o formatZoneOffset(II)Ljava/lang/String;
    .registers 7
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .line 644
    div-int/lit16 p0, p0, 0x3e8

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .local v0, "tb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    if-gez p0, :cond_11

    .line 648
    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    neg-int p0, p0

    goto :goto_16

    .line 651
    :cond_11
    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :goto_16
    div-int/lit16 v1, p0, 0xe10

    .line 655
    .local v1, "hours":I
    rem-int/lit16 v2, p0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 657
    .local v2, "minutes":I
    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "skeleton"    # Ljava/lang/String;

    .line 283
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 284
    .local v0, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    const-wide/32 v1, 0xa258efe

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 286
    .local v1, "allowDuplicateFields":Z
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 336
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getDateFormatOrder(Landroid/content/Context;)[C
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 371
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDateFormatOrder(Ljava/lang/String;)[C
    .registers 12
    .param p0, "pattern"    # Ljava/lang/String;

    .line 378
    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 379
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 380
    .local v1, "resultIndex":I
    const/4 v2, 0x0

    .line 381
    .local v2, "sawDay":Z
    const/4 v3, 0x0

    .line 382
    .local v3, "sawMonth":Z
    const/4 v4, 0x0

    .line 384
    .local v4, "sawYear":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_c3

    .line 385
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 386
    .local v6, "ch":C
    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    if-eq v6, v10, :cond_9a

    if-eq v6, v7, :cond_9a

    if-eq v6, v9, :cond_9a

    if-ne v6, v8, :cond_24

    goto/16 :goto_9a

    .line 397
    :cond_24
    const/16 v7, 0x47

    if-ne v6, v7, :cond_2a

    goto/16 :goto_bf

    .line 399
    :cond_2a
    const/16 v7, 0x61

    if-lt v6, v7, :cond_32

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3b

    :cond_32
    const/16 v7, 0x41

    if-lt v6, v7, :cond_5e

    const/16 v7, 0x5a

    if-le v6, v7, :cond_3b

    goto :goto_5e

    .line 400
    :cond_3b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 402
    :cond_5e
    :goto_5e
    const/16 v7, 0x27

    if-ne v6, v7, :cond_bf

    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_75

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_75

    .line 404
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 406
    :cond_75
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 407
    const/4 v7, -0x1

    if-eq v5, v7, :cond_81

    .line 410
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 408
    :cond_81
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad quoting in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 387
    :cond_9a
    :goto_9a
    if-ne v6, v10, :cond_a6

    if-nez v2, :cond_a6

    .line 388
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .local v7, "resultIndex":I
    aput-char v10, v0, v1

    .line 389
    const/4 v1, 0x1

    move v2, v1

    move v1, v7

    .end local v2    # "sawDay":Z
    .local v1, "sawDay":Z
    goto :goto_bf

    .line 390
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v2    # "sawDay":Z
    :cond_a6
    if-eq v6, v7, :cond_aa

    if-ne v6, v9, :cond_b4

    :cond_aa
    if-nez v3, :cond_b4

    .line 391
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v9, v0, v1

    .line 392
    const/4 v1, 0x1

    move v3, v1

    move v1, v7

    .end local v3    # "sawMonth":Z
    .local v1, "sawMonth":Z
    goto :goto_bf

    .line 393
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v3    # "sawMonth":Z
    :cond_b4
    if-ne v6, v8, :cond_bf

    if-nez v4, :cond_bf

    .line 394
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v8, v0, v1

    .line 395
    const/4 v1, 0x1

    move v4, v1

    move v1, v7

    .line 384
    .end local v6    # "ch":C
    .end local v7    # "resultIndex":I
    .restart local v1    # "resultIndex":I
    :cond_bf
    :goto_bf
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 416
    .end local v5    # "i":I
    :cond_c3
    return-object v0
.end method

.method private static greylist-max-o getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 421
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 423
    .local v1, "df":Ljava/text/DateFormat;
    instance-of v2, v1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_1b

    .line 424
    move-object v2, v1

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 427
    :cond_1b
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "!(df instanceof SimpleDateFormat)"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static blacklist getDayOfWeekString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;
    .registers 8
    .param p0, "dfs"    # Landroid/icu/text/DateFormatSymbols;
    .param p1, "day"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .line 603
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x63

    if-ne p3, v2, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    .line 604
    .local v2, "standalone":Z
    :goto_9
    if-eqz v2, :cond_c

    goto :goto_d

    :cond_c
    move v0, v1

    .line 606
    .local v0, "context":I
    :goto_d
    const/4 v1, 0x5

    if-ne p2, v1, :cond_12

    .line 607
    const/4 v1, 0x2

    .local v1, "width":I
    goto :goto_18

    .line 608
    .end local v1    # "width":I
    :cond_12
    const/4 v1, 0x4

    if-ne p2, v1, :cond_17

    .line 609
    const/4 v1, 0x1

    .restart local v1    # "width":I
    goto :goto_18

    .line 611
    .end local v1    # "width":I
    :cond_17
    const/4 v1, 0x0

    .line 613
    .restart local v1    # "width":I
    :goto_18
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    return-object v3
.end method

.method public static blacklist getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 729
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    const-class v1, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, v1, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static whitelist getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 347
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 358
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getMonthString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;
    .registers 9
    .param p0, "dfs"    # Landroid/icu/text/DateFormatSymbols;
    .param p1, "month"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .line 617
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x4c

    if-ne p3, v2, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    .line 618
    .local v2, "standalone":Z
    :goto_9
    if-eqz v2, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v0

    .line 619
    .local v3, "monthContext":I
    :goto_e
    const/4 v4, 0x5

    if-ne p2, v4, :cond_19

    .line 620
    const/4 v0, 0x2

    invoke-virtual {p0, v3, v0}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 621
    :cond_19
    const/4 v4, 0x4

    if-ne p2, v4, :cond_23

    .line 622
    invoke-virtual {p0, v3, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 623
    :cond_23
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2d

    .line 624
    invoke-virtual {p0, v3, v0}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 627
    :cond_2d
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 298
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method public static greylist getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 321
    nop

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 321
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 323
    .local v0, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "Hm"

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    .line 324
    :cond_1c
    const-string/jumbo v1, "hm"

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    :goto_23
    return-object v1
.end method

.method private static greylist-max-o getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 5
    .param p0, "inDate"    # Ljava/util/Calendar;
    .param p1, "count"    # I

    .line 632
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 633
    .local v0, "tz":Ljava/util/TimeZone;
    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ge p1, v2, :cond_19

    .line 634
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xf

    .line 635
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 634
    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 638
    :cond_19
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    move v1, v2

    .line 639
    .local v1, "dst":Z
    :goto_23
    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o getYearString(II)Ljava/lang/String;
    .registers 6
    .param p0, "year"    # I
    .param p1, "count"    # I

    .line 663
    const/4 v0, 0x2

    if-gt p1, v0, :cond_a

    rem-int/lit8 v1, p0, 0x64

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 664
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 663
    :goto_1e
    return-object v0
.end method

.method public static greylist-max-r hasDesignator(Ljava/lang/CharSequence;C)Z
    .registers 9
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "designator"    # C

    .line 481
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 483
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 485
    .local v1, "length":I
    const/4 v2, 0x0

    .line 486
    .local v2, "insideQuote":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_23

    .line 487
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 488
    .local v4, "c":C
    const/16 v5, 0x27

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1b

    .line 489
    if-nez v2, :cond_18

    goto :goto_19

    :cond_18
    move v6, v0

    :goto_19
    move v2, v6

    goto :goto_20

    .line 490
    :cond_1b
    if-nez v2, :cond_20

    .line 491
    if-ne v4, p1, :cond_20

    .line 492
    return v6

    .line 486
    .end local v4    # "c":C
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 497
    .end local v3    # "i":I
    :cond_23
    return v0
.end method

.method public static greylist hasSeconds(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "inFormat"    # Ljava/lang/CharSequence;

    .line 467
    const/16 v0, 0x73

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method public static whitelist is24HourFormat(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static greylist is24HourFormat(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 208
    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 211
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourLocale(Ljava/util/Locale;)Z

    move-result v1

    return v1
.end method

.method public static greylist-max-o is24HourLocale(Ljava/util/Locale;)Z
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 222
    sget-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    sget-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 224
    sget-boolean v1, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v0

    return v1

    .line 226
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_48

    .line 228
    const/4 v1, 0x1

    .line 229
    invoke-static {v1, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 234
    .local v1, "natural":Ljava/text/DateFormat;
    sget-object v2, Landroid/text/format/DateFormat;->GREECE_GREEK:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 235
    const/4 v2, 0x1

    .local v2, "is24Hour":Z
    goto :goto_3e

    .line 236
    .end local v2    # "is24Hour":Z
    :cond_21
    sget-object v2, Landroid/text/format/DateFormat;->CHINESE_CHINA:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 237
    const/4 v2, 0x0

    .restart local v2    # "is24Hour":Z
    goto :goto_3e

    .line 239
    .end local v2    # "is24Hour":Z
    :cond_2b
    instance-of v2, v1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_3d

    .line 240
    move-object v2, v1

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 241
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "pattern":Ljava/lang/String;
    const/16 v4, 0x48

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v2

    .line 243
    .end local v3    # "pattern":Ljava/lang/String;
    .local v2, "is24Hour":Z
    goto :goto_3e

    .line 244
    .end local v2    # "is24Hour":Z
    :cond_3d
    const/4 v2, 0x0

    .line 247
    .restart local v2    # "is24Hour":Z
    :goto_3e
    monitor-enter v0

    .line 248
    :try_start_3f
    sput-object p0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 249
    sput-boolean v2, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 250
    monitor-exit v0

    .line 252
    return v2

    .line 250
    :catchall_45
    move-exception v3

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_45

    throw v3

    .line 226
    .end local v1    # "natural":Ljava/text/DateFormat;
    .end local v2    # "is24Hour":Z
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private static greylist-max-o zeroPad(II)Ljava/lang/String;
    .registers 7
    .param p0, "inValue"    # I
    .param p1, "inMinDigits"    # I

    .line 717
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
