.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final greylist-max-r COLUMNS:I = 0x3

.field static final greylist-max-r EMPTY:[Ljava/lang/Object;

.field private static final greylist-max-r END:I = 0x1

.field private static final greylist-max-r FLAGS:I = 0x2

.field private static final greylist-max-r START:I


# instance fields
.field private greylist mSpanCount:I

.field private greylist mSpanData:[I

.field private greylist mSpans:[Ljava/lang/Object;

.field private greylist mText:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 582
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/CharSequence;II)V
    .registers 5

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 62
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;IIZ)V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p2, :cond_12

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_12

    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_1c

    .line 38
    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 40
    :goto_1c
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 42
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 44
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_37

    .line 45
    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    if-eqz v0, :cond_32

    .line 46
    check-cast p1, Landroid/text/SpannableStringInternal;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V

    goto :goto_37

    .line 49
    :cond_32
    check-cast p1, Landroid/text/Spanned;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpansFromSpanned(Landroid/text/Spanned;IIZ)V

    .line 52
    :cond_37
    :goto_37
    return-void
.end method

.method private greylist checkRange(Ljava/lang/String;II)V
    .registers 8

    .line 484
    const-string v0, " "

    if-lt p3, p2, :cond_5f

    .line 490
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v1

    .line 492
    if-gt p2, v1, :cond_36

    if-gt p3, v1, :cond_36

    .line 498
    if-ltz p2, :cond_11

    if-ltz p3, :cond_11

    .line 503
    return-void

    .line 499
    :cond_11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 500
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " starts before 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 493
    :cond_36
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 494
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ends beyond length "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 485
    :cond_5f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 486
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " has end before start"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-r copySpans(Landroid/text/SpannableStringInternal;II)V
    .registers 5

    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V

    .line 568
    return-void
.end method

.method private greylist-max-r copySpans(Landroid/text/Spanned;II)V
    .registers 5

    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpansFromSpanned(Landroid/text/Spanned;IIZ)V

    .line 563
    return-void
.end method

.method private blacklist copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V
    .registers 15

    .line 103
    nop

    .line 104
    iget-object v0, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 105
    iget-object v1, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 106
    iget v2, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 107
    nop

    .line 109
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_c
    if-ge v4, v2, :cond_30

    .line 110
    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v8, v7, 0x0

    aget v8, v0, v8

    .line 111
    const/4 v9, 0x1

    add-int/2addr v7, v9

    aget v7, v0, v7

    .line 112
    invoke-direct {p0, p2, p3, v8, v7}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v7

    if-eqz v7, :cond_1f

    goto :goto_2d

    .line 113
    :cond_1f
    aget-object v7, v1, v4

    instance-of v7, v7, Landroid/text/NoCopySpan;

    if-eqz v7, :cond_2b

    .line 114
    nop

    .line 115
    if-eqz p4, :cond_2a

    .line 116
    move v6, v9

    goto :goto_2d

    .line 115
    :cond_2a
    move v6, v9

    .line 119
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    .line 109
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 122
    :cond_30
    if-nez v5, :cond_33

    return-void

    .line 124
    :cond_33
    if-nez v6, :cond_66

    if-nez p2, :cond_66

    invoke-virtual {p1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v4

    if-ne p3, v4, :cond_66

    .line 125
    iget-object p2, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 126
    iget-object p2, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length p2, p2

    new-array p2, p2, [I

    iput-object p2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 127
    iget p2, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput p2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 128
    iget-object p2, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object p3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object p4, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p4, p4

    invoke-static {p2, v3, p3, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object p1, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object p2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object p3, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length p3, p3

    invoke-static {p1, v3, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c0

    .line 131
    :cond_66
    iput v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 132
    iget p1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x3

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 134
    move p1, v3

    :goto_7a
    if-ge v3, v2, :cond_c0

    .line 135
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    aget v5, v0, v5

    .line 136
    add-int/lit8 v6, v4, 0x1

    aget v6, v0, v6

    .line 137
    invoke-direct {p0, p2, p3, v5, v6}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v7

    if-nez v7, :cond_bd

    if-eqz p4, :cond_95

    aget-object v7, v1, v3

    instance-of v7, v7, Landroid/text/NoCopySpan;

    if-eqz v7, :cond_95

    .line 139
    goto :goto_bd

    .line 141
    :cond_95
    if-ge v5, p2, :cond_98

    move v5, p2

    .line 142
    :cond_98
    if-le v6, p3, :cond_9b

    move v6, p3

    .line 144
    :cond_9b
    iget-object v7, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v8, v1, v3

    aput-object v8, v7, p1

    .line 145
    iget-object v7, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v8, p1, 0x3

    add-int/lit8 v9, v8, 0x0

    sub-int/2addr v5, p2

    aput v5, v7, v9

    .line 146
    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v7, v8, 0x1

    sub-int/2addr v6, p2

    aput v6, v5, v7

    .line 147
    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v4, v0, v4

    aput v4, v5, v8

    .line 148
    add-int/lit8 p1, p1, 0x1

    .line 134
    :cond_bd
    :goto_bd
    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    .line 151
    :cond_c0
    :goto_c0
    return-void
.end method

.method private blacklist copySpansFromSpanned(Landroid/text/Spanned;IIZ)V
    .registers 16

    .line 73
    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_39

    .line 76
    if-eqz p4, :cond_13

    aget-object v2, v0, v1

    instance-of v2, v2, Landroid/text/NoCopySpan;

    if-eqz v2, :cond_13

    .line 77
    goto :goto_36

    .line 79
    :cond_13
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 80
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 81
    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 83
    if-ge v2, p2, :cond_28

    .line 84
    move v2, p2

    .line 85
    :cond_28
    if-le v3, p3, :cond_2b

    .line 86
    move v3, p3

    .line 88
    :cond_2b
    aget-object v6, v0, v1

    sub-int v7, v2, p2

    sub-int v8, v3, p2

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    .line 75
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 90
    :cond_39
    return-void
.end method

.method private greylist-max-r isIndexFollowsNextLine(I)Z
    .registers 4

    .line 192
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    if-eq p1, v0, :cond_13

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private final greylist-max-r isOutOfCopyRange(IIII)Z
    .registers 6

    .line 160
    const/4 v0, 0x1

    if-gt p3, p2, :cond_11

    if-ge p4, p1, :cond_6

    goto :goto_11

    .line 161
    :cond_6
    if-eq p3, p4, :cond_f

    if-eq p1, p2, :cond_f

    .line 162
    if-eq p3, p2, :cond_e

    if-ne p4, p1, :cond_f

    :cond_e
    return v0

    .line 164
    :cond_f
    const/4 p1, 0x0

    return p1

    .line 160
    :cond_11
    :goto_11
    return v0
.end method

.method private static greylist region(II)Ljava/lang/String;
    .registers 4

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ... "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist sendSpanAdded(Ljava/lang/Object;II)V
    .registers 9

    .line 448
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 449
    array-length v1, v0

    .line 451
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_17

    .line 452
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 454
    :cond_17
    return-void
.end method

.method private greylist sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16

    .line 468
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 470
    array-length v1, v0

    .line 472
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_24

    .line 473
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 475
    :cond_24
    return-void
.end method

.method private greylist sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 9

    .line 458
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 459
    array-length v1, v0

    .line 461
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_17

    .line 462
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 464
    :cond_17
    return-void
.end method

.method private greylist-max-r setSpan(Ljava/lang/Object;IIIZ)V
    .registers 16

    .line 197
    nop

    .line 198
    nop

    .line 200
    const-string v0, "setSpan"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    .line 202
    and-int/lit8 v0, p4, 0x33

    const/16 v1, 0x33

    if-ne v0, v1, :cond_79

    .line 203
    invoke-direct {p0, p2}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    const-string v1, ")"

    const-string v2, " follows "

    if-eqz v0, :cond_45

    .line 204
    if-nez p5, :cond_1a

    .line 206
    return-void

    .line 208
    :cond_1a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 p2, p2, -0x1

    .line 209
    invoke-virtual {p0, p2}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_45
    invoke-direct {p0, p3}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 213
    if-nez p5, :cond_4e

    .line 215
    return-void

    .line 217
    :cond_4e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    .line 218
    invoke-virtual {p0, p3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_79
    iget p5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 223
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 226
    const/4 v2, 0x0

    move v3, v2

    :goto_81
    if-ge v3, p5, :cond_a8

    .line 227
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_a1

    .line 228
    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 p5, v3, 0x0

    aget v6, v1, p5

    .line 229
    add-int/lit8 v0, v3, 0x1

    aget v7, v1, v0

    .line 231
    aput p2, v1, p5

    .line 232
    aput p3, v1, v0

    .line 233
    add-int/lit8 v3, v3, 0x2

    aput p4, v1, v3

    .line 235
    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 236
    return-void

    .line 226
    :cond_a1
    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move v9, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 240
    :cond_a8
    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move v9, p3

    iget p1, v4, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 p1, p1, 0x1

    iget-object p2, v4, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p2, p2

    if-lt p1, p2, :cond_d8

    .line 241
    iget p1, v4, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 242
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result p1

    .line 241
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p1

    .line 243
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x3

    new-array p2, p2, [I

    .line 245
    iget-object p3, v4, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget p5, v4, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {p3, v2, p1, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object p3, v4, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget p5, v4, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 p5, p5, 0x3

    invoke-static {p3, v2, p2, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iput-object p1, v4, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 249
    iput-object p2, v4, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 252
    :cond_d8
    iget-object p1, v4, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget p2, v4, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object v5, p1, p2

    .line 253
    iget-object p1, v4, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget p2, v4, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p2, v2

    aput v8, p1, p2

    .line 254
    iget-object p1, v4, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget p2, v4, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 p2, p2, 0x3

    add-int/lit8 p2, p2, 0x1

    aput v9, p1, p2

    .line 255
    iget-object p1, v4, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget p2, v4, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 p2, p2, 0x3

    add-int/lit8 p2, p2, 0x2

    aput p4, p1, p2

    .line 256
    iget p1, v4, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v4, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 258
    instance-of p1, v4, Landroid/text/Spannable;

    if-eqz p1, :cond_108

    .line 259
    invoke-direct {p0, v5, v8, v9}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 260
    :cond_108
    return-void
.end method


# virtual methods
.method public final whitelist test-api charAt(I)C
    .registers 3

    .line 172
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10

    .line 508
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_85

    .line 509
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 510
    check-cast p1, Landroid/text/Spanned;

    .line 512
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 513
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 514
    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v4, v0

    if-ne v3, v4, :cond_85

    .line 515
    move v3, v1

    :goto_2f
    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v3, v4, :cond_83

    .line 516
    aget-object v4, v2, v3

    .line 517
    aget-object v5, v0, v3

    .line 518
    if-ne v4, p0, :cond_5a

    .line 519
    if-ne p1, v5, :cond_59

    .line 520
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_59

    .line 521
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_59

    .line 522
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_7f

    .line 523
    :cond_59
    return v1

    .line 525
    :cond_5a
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 526
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_82

    .line 527
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_82

    .line 528
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_7f

    goto :goto_82

    .line 515
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 529
    :cond_82
    :goto_82
    return v1

    .line 532
    :cond_83
    const/4 p1, 0x1

    return p1

    .line 535
    :cond_85
    return v1
.end method

.method public final whitelist getChars(II[CI)V
    .registers 6

    .line 182
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 183
    return-void
.end method

.method public greylist getSpanEnd(Ljava/lang/Object;)I
    .registers 6

    .line 313
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 314
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 317
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 318
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_15

    .line 319
    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    aget p1, v2, v0

    return p1

    .line 317
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 323
    :cond_18
    const/4 p1, -0x1

    return p1
.end method

.method public greylist getSpanFlags(Ljava/lang/Object;)I
    .registers 6

    .line 328
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 329
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 330
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 332
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 333
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_15

    .line 334
    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    aget p1, v2, v0

    return p1

    .line 332
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 338
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public greylist getSpanStart(Ljava/lang/Object;)I
    .registers 6

    .line 298
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 299
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 300
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 302
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 303
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_15

    .line 304
    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x0

    aget p1, v2, v0

    return p1

    .line 302
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 308
    :cond_18
    const/4 p1, -0x1

    return p1
.end method

.method public greylist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 343
    nop

    .line 345
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 346
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 347
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 348
    nop

    .line 349
    nop

    .line 351
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v3

    move v7, v6

    move-object v5, v4

    :goto_e
    const/4 v8, 0x1

    if-ge v6, v0, :cond_80

    .line 352
    mul-int/lit8 v9, v6, 0x3

    add-int/lit8 v10, v9, 0x0

    aget v10, v2, v10

    .line 353
    add-int/lit8 v11, v9, 0x1

    aget v11, v2, v11

    .line 355
    if-le v10, p2, :cond_1f

    .line 356
    goto/16 :goto_7d

    .line 358
    :cond_1f
    if-ge v11, p1, :cond_22

    .line 359
    goto :goto_7d

    .line 362
    :cond_22
    if-eq v10, v11, :cond_2c

    if-eq p1, p2, :cond_2c

    .line 363
    if-ne v10, p2, :cond_29

    .line 364
    goto :goto_7d

    .line 366
    :cond_29
    if-ne v11, p1, :cond_2c

    .line 367
    goto :goto_7d

    .line 372
    :cond_2c
    if-eqz p3, :cond_3b

    const-class v10, Ljava/lang/Object;

    if-eq p3, v10, :cond_3b

    aget-object v10, v1, v6

    invoke-virtual {p3, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    .line 373
    goto :goto_7d

    .line 376
    :cond_3b
    if-nez v7, :cond_42

    .line 377
    aget-object v5, v1, v6

    .line 378
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    .line 380
    :cond_42
    if-ne v7, v8, :cond_4f

    .line 381
    sub-int v4, v0, v6

    add-int/2addr v4, v8

    invoke-static {p3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 382
    aput-object v5, v4, v3

    .line 385
    :cond_4f
    add-int/lit8 v9, v9, 0x2

    aget v8, v2, v9

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    .line 386
    if-eqz v8, :cond_76

    .line 389
    move v10, v3

    :goto_59
    if-ge v10, v7, :cond_68

    .line 390
    aget-object v11, v4, v10

    invoke-virtual {p0, v11}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    and-int/2addr v11, v9

    .line 392
    if-le v8, v11, :cond_65

    .line 393
    goto :goto_68

    .line 389
    :cond_65
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    .line 397
    :cond_68
    :goto_68
    add-int/lit8 v8, v10, 0x1

    sub-int v9, v7, v10

    invoke-static {v4, v10, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    aget-object v8, v1, v6

    aput-object v8, v4, v10

    .line 399
    add-int/lit8 v7, v7, 0x1

    .line 400
    goto :goto_7d

    .line 401
    :cond_76
    add-int/lit8 v8, v7, 0x1

    aget-object v9, v1, v6

    aput-object v9, v4, v7

    move v7, v8

    .line 351
    :goto_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 406
    :cond_80
    if-nez v7, :cond_87

    .line 407
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 409
    :cond_87
    if-ne v7, v8, :cond_92

    .line 410
    invoke-static {p3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 411
    aput-object v5, p1, v3

    .line 412
    return-object p1

    .line 414
    :cond_92
    array-length p1, v4

    if-ne v7, p1, :cond_96

    .line 415
    return-object v4

    .line 418
    :cond_96
    invoke-static {p3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 419
    invoke-static {v4, v3, p1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 541
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 542
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/2addr v0, v1

    .line 543
    const/4 v1, 0x0

    :goto_e
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v1, v2, :cond_37

    .line 544
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 545
    if-eq v2, p0, :cond_1f

    .line 546
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 548
    :cond_1f
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 549
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 550
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 552
    :cond_37
    return v0
.end method

.method public final whitelist test-api length()I
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public greylist nextSpanTransition(IILjava/lang/Class;)I
    .registers 11

    .line 425
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 426
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 427
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 429
    if-nez p3, :cond_a

    .line 430
    const-class p3, Ljava/lang/Object;

    .line 433
    :cond_a
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_34

    .line 434
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    aget v5, v2, v5

    .line 435
    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    .line 437
    if-le v5, p1, :cond_24

    if-ge v5, p2, :cond_24

    aget-object v6, v1, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 438
    move p2, v5

    .line 439
    :cond_24
    if-le v4, p1, :cond_31

    if-ge v4, p2, :cond_31

    aget-object v5, v1, v3

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 440
    move p2, v4

    .line 433
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 443
    :cond_34
    return p2
.end method

.method greylist removeSpan(Ljava/lang/Object;)V
    .registers 3

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    .line 265
    return-void
.end method

.method public greylist-max-o removeSpan(Ljava/lang/Object;I)V
    .registers 11

    .line 271
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 272
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 273
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 275
    add-int/lit8 v3, v0, -0x1

    :goto_8
    if-ltz v3, :cond_36

    .line 276
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_33

    .line 277
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    aget v5, v2, v5

    .line 278
    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    .line 280
    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v0, v7

    .line 282
    invoke-static {v1, v7, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v2, v7, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 288
    and-int/lit16 p2, p2, 0x200

    if-nez p2, :cond_32

    .line 289
    invoke-direct {p0, p1, v5, v6}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 291
    :cond_32
    return-void

    .line 275
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 294
    :cond_36
    return-void
.end method

.method greylist setSpan(Ljava/lang/Object;III)V
    .registers 11

    .line 187
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    .line 188
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
