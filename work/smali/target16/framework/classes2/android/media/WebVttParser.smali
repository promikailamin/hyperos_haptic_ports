.class Landroid/media/WebVttParser;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttParser$Phase;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WebVttParser"


# instance fields
.field private blacklist mBuffer:Ljava/lang/String;

.field private blacklist mCue:Landroid/media/TextTrackCue;

.field private blacklist mCueTexts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListener:Landroid/media/WebVttCueListener;

.field private final blacklist mParseCueId:Landroid/media/WebVttParser$Phase;

.field private final blacklist mParseCueText:Landroid/media/WebVttParser$Phase;

.field private final blacklist mParseCueTime:Landroid/media/WebVttParser$Phase;

.field private final blacklist mParseHeader:Landroid/media/WebVttParser$Phase;

.field private final blacklist mParseStart:Landroid/media/WebVttParser$Phase;

.field private blacklist mPhase:Landroid/media/WebVttParser$Phase;

.field private final blacklist mSkipRest:Landroid/media/WebVttParser$Phase;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCueTexts(Landroid/media/WebVttParser;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParseCueId(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParseCueText(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParseCueTime(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParseHeader(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhase(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSkipRest(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCue(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)V
    .registers 2

    iput-object p1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V
    .registers 2

    iput-object p1, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/WebVttCueListener;)V
    .registers 3

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    new-instance v0, Landroid/media/WebVttParser$1;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$1;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    .line 699
    new-instance v0, Landroid/media/WebVttParser$2;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$2;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    .line 716
    new-instance v0, Landroid/media/WebVttParser$3;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$3;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    .line 816
    new-instance v0, Landroid/media/WebVttParser$4;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$4;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    .line 841
    new-instance v0, Landroid/media/WebVttParser$5;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$5;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    .line 944
    new-instance v0, Landroid/media/WebVttParser$6;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$6;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 580
    const-string v0, ""

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 581
    iput-object p1, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    .line 582
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    .line 583
    return-void
.end method

.method private blacklist log_warning(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 971
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " (\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void
.end method

.method private blacklist log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 966
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private blacklist log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 960
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " (\'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void
.end method

.method public static blacklist parseFloatPercentage(Ljava/lang/String;)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 588
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 591
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 593
    const-string v0, ".*[^0-9.].*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 598
    :try_start_1b
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 599
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_2b

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_2b

    .line 602
    return p0

    .line 600
    :cond_2b
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "is out of range"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_33} :catch_33

    .line 603
    :catch_33
    move-exception p0

    .line 604
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "is not a number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 594
    :cond_3c
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "contains an invalid character"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 589
    :cond_44
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "does not end in %"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist parseIntPercentage(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 609
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 612
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 614
    const-string v0, ".*[^0-9].*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 619
    :try_start_1b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 620
    if-ltz p0, :cond_26

    const/16 v0, 0x64

    if-gt p0, v0, :cond_26

    .line 623
    return p0

    .line 621
    :cond_26
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "is out of range"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_2e} :catch_2e

    .line 624
    :catch_2e
    move-exception p0

    .line 625
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "is not a number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 615
    :cond_37
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "contains an invalid character"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 610
    :cond_3f
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "does not end in %"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist parseTimestampMs(Ljava/lang/String;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 630
    const-string v0, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 634
    const-string v0, "\\."

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 635
    nop

    .line 636
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const-wide/16 v3, 0x0

    :goto_1c
    if-ge v0, v2, :cond_2b

    aget-object v5, v1, v0

    .line 637
    const-wide/16 v6, 0x3c

    mul-long/2addr v3, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 639
    :cond_2b
    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v3, v0

    return-wide v3

    .line 631
    :cond_37
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "has invalid format"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist timeToString(J)Ljava/lang/String;
    .registers 11

    .line 643
    const-wide/32 v0, 0x36ee80

    div-long v0, p0, v0

    .line 644
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0xea60

    div-long v1, p0, v1

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v5, 0x3e8

    div-long v7, p0, v5

    rem-long/2addr v7, v3

    .line 645
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    rem-long/2addr p0, v5

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 643
    const-string p1, "%d:%02d:%02d.%03d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist eos()V
    .registers 4

    .line 669
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 670
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 673
    :cond_1b
    iget-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 674
    const-string v0, ""

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 676
    invoke-virtual {p0}, Landroid/media/WebVttParser;->yieldCue()V

    .line 677
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 678
    return-void
.end method

.method public blacklist parse(Ljava/lang/String;)V
    .registers 8

    .line 649
    nop

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    const-string v2, "\ufffd"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 653
    iget-object p1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_44

    .line 654
    nop

    .line 655
    iget-object p1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    move p1, v1

    goto :goto_45

    .line 653
    :cond_44
    move p1, v2

    .line 658
    :goto_45
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string v4, "[\r\n]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 659
    nop

    :goto_4e
    array-length v4, v3

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_5c

    .line 660
    iget-object v4, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    aget-object v5, v3, v2

    invoke-interface {v4, v5}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 663
    :cond_5c
    array-length v2, v3

    sub-int/2addr v2, v1

    aget-object v1, v3, v2

    iput-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 664
    if-eqz p1, :cond_79

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 666
    :cond_79
    return-void
.end method

.method public blacklist yieldCue()V
    .registers 3

    .line 681
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 682
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 683
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    iget-object v1, v1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 684
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 685
    iget-object v0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    invoke-interface {v0, v1}, Landroid/media/WebVttCueListener;->onCueParsed(Landroid/media/TextTrackCue;)V

    .line 687
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    .line 688
    return-void
.end method
