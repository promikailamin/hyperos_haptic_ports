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

.field public static final greylist DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist DISALLOW_DUPLICATE_FIELD_IN_SKELETON:J = 0xa258efeL

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
    .registers 1

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o appendQuotedText(Landroid/text/SpannableStringBuilder;I)I
    .registers 7

    .line 668
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 669
    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x27

    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_15

    .line 670
    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 671
    const/4 p0, 0x1

    return p0

    .line 674
    :cond_15
    nop

    .line 677
    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 678
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 680
    :goto_1c
    if-ge p1, v0, :cond_40

    .line 681
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .line 683
    if-ne v3, v2, :cond_3b

    .line 685
    add-int/lit8 v3, p1, 0x1

    if-ge v3, v0, :cond_37

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_37

    .line 687
    invoke-virtual {p0, p1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 688
    add-int/lit8 v0, v0, -0x1

    .line 689
    add-int/lit8 v1, v1, 0x1

    .line 690
    move p1, v3

    goto :goto_3f

    .line 693
    :cond_37
    invoke-virtual {p0, p1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 694
    goto :goto_40

    .line 697
    :cond_3b
    add-int/lit8 p1, p1, 0x1

    .line 698
    add-int/lit8 v1, v1, 0x1

    .line 700
    :goto_3f
    goto :goto_1c

    .line 702
    :cond_40
    :goto_40
    return v1
.end method

.method public static whitelist format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .registers 4

    .line 427
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .registers 14

    .line 497
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 500
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v1

    .line 501
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 505
    const/4 v4, 0x0

    move v5, v4

    :goto_17
    if-ge v5, v3, :cond_c0

    .line 506
    nop

    .line 507
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    .line 509
    const/16 v7, 0x27

    if-ne v6, v7, :cond_2c

    .line 510
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result v3

    .line 511
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 512
    goto/16 :goto_bc

    .line 509
    :cond_2c
    const/4 v7, 0x1

    move v8, v7

    .line 515
    :goto_2e
    add-int v9, v5, v8

    if-ge v9, v3, :cond_3b

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_3b

    .line 516
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 520
    :cond_3b
    const/16 v10, 0xc

    sparse-switch v6, :sswitch_data_d0

    .line 573
    const/4 v6, 0x0

    goto/16 :goto_ac

    .line 570
    :sswitch_43
    invoke-static {p1, v8}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v6

    .line 571
    goto :goto_ac

    .line 567
    :sswitch_48
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6, v8}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    move-result-object v6

    .line 568
    goto :goto_ac

    .line 564
    :sswitch_51
    const/16 v6, 0xd

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6, v8}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 565
    goto :goto_ac

    .line 561
    :sswitch_5c
    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6, v8}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 562
    goto :goto_ac

    .line 526
    :sswitch_65
    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6, v8}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 527
    goto :goto_ac

    .line 558
    :sswitch_6f
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v1, v7, v8, v6}, Landroid/text/format/DateFormat;->getMonthString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;

    move-result-object v6

    .line 559
    goto :goto_ac

    .line 536
    :sswitch_79
    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 537
    const/16 v11, 0x68

    if-ne v6, v11, :cond_86

    if-nez v7, :cond_86

    .line 538
    goto :goto_87

    .line 540
    :cond_86
    move v10, v7

    :goto_87
    invoke-static {v10, v8}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 542
    goto :goto_ac

    .line 546
    :sswitch_8c
    const/16 v6, 0xb

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 553
    invoke-static {v6, v8}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 555
    goto :goto_ac

    .line 530
    :sswitch_97
    nop

    .line 531
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 530
    invoke-static {v1, v7, v8, v6}, Landroid/text/format/DateFormat;->getDayOfWeekString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;

    move-result-object v6

    .line 532
    goto :goto_ac

    .line 523
    :sswitch_a2
    const/16 v6, 0x9

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v6, v4

    aget-object v6, v2, v6

    .line 524
    nop

    .line 577
    :goto_ac
    if-eqz v6, :cond_ba

    .line 578
    invoke-virtual {v0, v5, v9, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 579
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 580
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    goto :goto_bc

    .line 577
    :cond_ba
    move v6, v3

    move v3, v8

    .line 505
    :goto_bc
    add-int/2addr v5, v3

    move v3, v6

    goto/16 :goto_17

    .line 584
    :cond_c0
    instance-of p0, p0, Landroid/text/Spanned;

    if-eqz p0, :cond_ca

    .line 585
    new-instance p0, Landroid/text/SpannedString;

    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    .line 587
    :cond_ca
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_d0
    .sparse-switch
        0x41 -> :sswitch_a2
        0x45 -> :sswitch_97
        0x48 -> :sswitch_8c
        0x4b -> :sswitch_79
        0x4c -> :sswitch_6f
        0x4d -> :sswitch_6f
        0x61 -> :sswitch_a2
        0x63 -> :sswitch_97
        0x64 -> :sswitch_65
        0x68 -> :sswitch_79
        0x6b -> :sswitch_8c
        0x6d -> :sswitch_5c
        0x73 -> :sswitch_51
        0x79 -> :sswitch_48
        0x7a -> :sswitch_43
    .end sparse-switch
.end method

.method public static whitelist format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .registers 3

    .line 438
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 439
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 440
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o formatZoneOffset(II)Ljava/lang/String;
    .registers 4

    .line 633
    div-int/lit16 p0, p0, 0x3e8

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    const/4 v0, 0x0

    if-gez p0, :cond_11

    .line 637
    const-string v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    neg-int p0, p0

    goto :goto_16

    .line 640
    :cond_11
    const-string v1, "+"

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :goto_16
    div-int/lit16 v0, p0, 0xe10

    .line 644
    rem-int/lit16 p0, p0, 0xe10

    div-int/lit8 p0, p0, 0x3c

    .line 646
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-static {p0, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 269
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 270
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 271
    const-wide/32 v1, 0xa258efe

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    .line 273
    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 275
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getCompatibleEnglishPattern(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getCompatibleEnglishPattern(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 726
    if-eqz p1, :cond_2f

    if-eqz p0, :cond_2f

    const-string v0, "en"

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2f

    .line 730
    :cond_11
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 731
    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "US"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    .line 732
    return-object p1

    .line 735
    :cond_26
    const/16 p0, 0x202f

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 727
    :cond_2f
    :goto_2f
    return-object p1
.end method

.method public static whitelist getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 325
    const/4 v0, 0x3

    invoke-static {v0, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getDateFormatOrder(Landroid/content/Context;)[C
    .registers 1

    .line 360
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDateFormatOrder(Ljava/lang/String;)[C
    .registers 13

    .line 367
    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 368
    nop

    .line 369
    nop

    .line 370
    nop

    .line 371
    nop

    .line 373
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_c2

    .line 374
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 375
    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    const/4 v11, 0x1

    if-eq v6, v10, :cond_9d

    if-eq v6, v7, :cond_9d

    if-eq v6, v9, :cond_9d

    if-ne v6, v8, :cond_29

    goto/16 :goto_9d

    .line 386
    :cond_29
    const/16 v7, 0x47

    if-ne v6, v7, :cond_2f

    goto/16 :goto_bf

    .line 388
    :cond_2f
    const/16 v7, 0x61

    if-lt v6, v7, :cond_37

    const/16 v7, 0x7a

    if-le v6, v7, :cond_40

    :cond_37
    const/16 v7, 0x41

    if-lt v6, v7, :cond_63

    const/16 v7, 0x5a

    if-le v6, v7, :cond_40

    goto :goto_63

    .line 389
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad pattern character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_63
    :goto_63
    const/16 v7, 0x27

    if-ne v6, v7, :cond_bf

    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v11

    if-ge v1, v6, :cond_78

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_78

    .line 393
    move v1, v6

    goto :goto_bf

    .line 395
    :cond_78
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 396
    const/4 v6, -0x1

    if-eq v1, v6, :cond_84

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    .line 397
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad quoting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_9d
    :goto_9d
    if-ne v6, v10, :cond_a8

    if-nez v3, :cond_a8

    .line 377
    add-int/lit8 v3, v2, 0x1

    aput-char v10, v0, v2

    .line 378
    move v2, v3

    move v3, v11

    goto :goto_bf

    .line 379
    :cond_a8
    if-eq v6, v7, :cond_ac

    if-ne v6, v9, :cond_b5

    :cond_ac
    if-nez v4, :cond_b5

    .line 380
    add-int/lit8 v4, v2, 0x1

    aput-char v9, v0, v2

    .line 381
    move v2, v4

    move v4, v11

    goto :goto_bf

    .line 382
    :cond_b5
    if-ne v6, v8, :cond_bf

    if-nez v5, :cond_bf

    .line 383
    add-int/lit8 v5, v2, 0x1

    aput-char v8, v0, v2

    .line 384
    move v2, v5

    move v5, v11

    .line 373
    :cond_bf
    :goto_bf
    add-int/2addr v1, v11

    goto/16 :goto_c

    .line 405
    :cond_c2
    return-object v0
.end method

.method private static greylist-max-o getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 410
    const/4 v0, 0x3

    invoke-static {v0, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 412
    instance-of v0, p0, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_1a

    .line 413
    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 416
    :cond_1a
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "!(df instanceof SimpleDateFormat)"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static blacklist getDayOfWeekString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;
    .registers 7

    .line 592
    const/16 v0, 0x63

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_8

    move p3, v1

    goto :goto_9

    :cond_8
    move p3, v2

    .line 593
    :goto_9
    nop

    .line 595
    const/4 v0, 0x5

    if-ne p2, v0, :cond_f

    .line 596
    const/4 v1, 0x2

    goto :goto_14

    .line 597
    :cond_f
    const/4 v0, 0x4

    if-ne p2, v0, :cond_13

    .line 598
    goto :goto_14

    .line 600
    :cond_13
    move v1, v2

    .line 602
    :goto_14
    invoke-virtual {p0, p3, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static blacklist getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .registers 3

    .line 718
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    const-class v1, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, v1, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static whitelist getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 336
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 347
    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getMonthString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;
    .registers 7

    .line 606
    const/16 v0, 0x4c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_8

    move p3, v2

    goto :goto_9

    :cond_8
    move p3, v1

    .line 607
    :goto_9
    nop

    .line 608
    const/4 v0, 0x5

    if-ne p2, v0, :cond_15

    .line 609
    const/4 p2, 0x2

    invoke-virtual {p0, p3, p2}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    .line 610
    :cond_15
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1f

    .line 611
    invoke-virtual {p0, p3, v2}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    .line 612
    :cond_1f
    const/4 v0, 0x3

    if-ne p2, v0, :cond_29

    .line 613
    invoke-virtual {p0, p3, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    .line 616
    :cond_29
    add-int/2addr p1, v2

    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 286
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method public static greylist getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v1

    .line 311
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string p0, "Hm"

    invoke-virtual {v1, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_25

    .line 312
    :cond_1f
    const-string p0, "hm"

    invoke-virtual {v1, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 313
    :goto_25
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getCompatibleEnglishPattern(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 5

    .line 621
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 622
    const/4 v1, 0x2

    const/16 v2, 0x10

    if-ge p1, v1, :cond_19

    .line 623
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 624
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr v0, p0

    .line 623
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 627
    :cond_19
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    move p0, p1

    .line 628
    :goto_23
    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o getYearString(II)Ljava/lang/String;
    .registers 3

    .line 652
    const/4 v0, 0x2

    if-gt p1, v0, :cond_a

    rem-int/lit8 p0, p0, 0x64

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    .line 653
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d"

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 652
    :goto_1c
    return-object p0
.end method

.method public static greylist-max-r hasDesignator(Ljava/lang/CharSequence;C)Z
    .registers 8

    .line 470
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 472
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 474
    nop

    .line 475
    move v2, v0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_21

    .line 476
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 477
    const/16 v5, 0x27

    if-ne v4, v5, :cond_18

    .line 478
    xor-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 479
    :cond_18
    if-nez v3, :cond_1e

    .line 480
    if-ne v4, p1, :cond_1e

    .line 481
    const/4 p0, 0x1

    return p0

    .line 475
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 486
    :cond_21
    return v0
.end method

.method public static greylist hasSeconds(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 456
    const/16 v0, 0x73

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result p0

    return p0
.end method

.method public static whitelist is24HourFormat(Landroid/content/Context;)Z
    .registers 2

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static greylist is24HourFormat(Landroid/content/Context;I)Z
    .registers 4

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 200
    if-eqz p1, :cond_13

    .line 201
    const-string p0, "24"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 204
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourLocale(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o is24HourLocale(Ljava/util/Locale;)Z
    .registers 3

    .line 215
    sget-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    sget-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v1, :cond_13

    sget-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 217
    sget-boolean p0, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v0

    return p0

    .line 219
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_38

    .line 221
    nop

    .line 222
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 225
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_2b

    .line 226
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 227
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 228
    const/16 v1, 0x48

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    .line 229
    goto :goto_2c

    .line 230
    :cond_2b
    const/4 v0, 0x0

    .line 233
    :goto_2c
    sget-object v1, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_2f
    sput-object p0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 235
    sput-boolean v0, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 236
    monitor-exit v1

    .line 238
    return v0

    .line 236
    :catchall_35
    move-exception p0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_35

    throw p0

    .line 219
    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method private static greylist-max-o zeroPad(II)Ljava/lang/String;
    .registers 5

    .line 706
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "d"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
