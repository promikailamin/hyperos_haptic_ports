.class public final Landroid/app/Notification$Metric$FixedDate;
.super Landroid/app/Notification$Metric$MetricValue;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Metric$FixedDate$Format;
    }
.end annotation


# static fields
.field private static final blacklist CLOSE_DATE_MONTH_SPAN:I = 0x3

.field public static final blacklist FORMAT_AUTOMATIC:I = 0x0

.field public static final blacklist FORMAT_LONG_DATE:I = 0x1

.field public static final blacklist FORMAT_SHORT_DATE:I = 0x2

.field private static final blacklist KEY_FORMAT:Ljava/lang/String; = "format"

.field private static final blacklist KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mValue:Ljava/time/LocalDate;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedDate;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification$Metric$FixedDate;->fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedDate;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/time/LocalDate;)V
    .registers 3

    .line 12452
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Metric$FixedDate;-><init>(Ljava/time/LocalDate;I)V

    .line 12453
    return-void
.end method

.method public constructor blacklist <init>(Ljava/time/LocalDate;I)V
    .registers 5

    .line 12459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Metric$MetricValue;-><init>(Landroid/app/Notification-IA;)V

    .line 12460
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/LocalDate;

    iput-object p1, p0, Landroid/app/Notification$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    .line 12461
    if-ltz p2, :cond_13

    const/4 p1, 0x2

    if-gt p2, p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 12462
    :goto_14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 12461
    const-string v1, "Invalid format: %s"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12463
    iput p2, p0, Landroid/app/Notification$Metric$FixedDate;->mFormat:I

    .line 12464
    return-void
.end method

.method private static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedDate;
    .registers 4

    .line 12468
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 12469
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v2

    .line 12470
    :goto_14
    if-eqz v0, :cond_23

    .line 12471
    const-string v1, "format"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 12472
    new-instance v1, Landroid/app/Notification$Metric$FixedDate;

    invoke-direct {v1, v0, p0}, Landroid/app/Notification$Metric$FixedDate;-><init>(Ljava/time/LocalDate;I)V

    return-object v1

    .line 12474
    :cond_23
    return-object v2
.end method

.method private static blacklist getAutomaticFormatFlags(Ljava/time/LocalDate;)I
    .registers 5

    .line 12551
    invoke-static {}, Landroid/app/Notification;->-$$Nest$smgetToday()Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object v0

    .line 12552
    invoke-static {p0}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object p0

    .line 12553
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v0, p0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 12555
    const-wide/16 v2, 0x3

    cmp-long p0, v0, v2

    if-gtz p0, :cond_20

    .line 12557
    const p0, 0x20018

    return p0

    .line 12561
    :cond_20
    const p0, 0x20014

    return p0
.end method

.method private static blacklist getFormatFlags(ILjava/time/LocalDate;)I
    .registers 2

    .line 12532
    packed-switch p0, :pswitch_data_10

    .line 12541
    invoke-static {p1}, Landroid/app/Notification$Metric$FixedDate;->getAutomaticFormatFlags(Ljava/time/LocalDate;)I

    move-result p0

    return p0

    .line 12537
    :pswitch_8
    const p0, 0x20014

    return p0

    .line 12534
    :pswitch_c
    const p0, 0x10014

    return p0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 12487
    instance-of v0, p1, Landroid/app/Notification$Metric$FixedDate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    check-cast p1, Landroid/app/Notification$Metric$FixedDate;

    .line 12488
    const/4 v0, 0x1

    if-ne p0, p1, :cond_b

    return v0

    .line 12489
    :cond_b
    iget-object v2, p0, Landroid/app/Notification$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    iget-object v3, p1, Landroid/app/Notification$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget v2, p0, Landroid/app/Notification$Metric$FixedDate;->mFormat:I

    iget p1, p1, Landroid/app/Notification$Metric$FixedDate;->mFormat:I

    if-ne v2, p1, :cond_1c

    move v1, v0

    :cond_1c
    return v1

    .line 12487
    :cond_1d
    return v1
.end method

.method public blacklist getFormat()I
    .registers 2

    .line 12513
    iget v0, p0, Landroid/app/Notification$Metric$FixedDate;->mFormat:I

    return v0
.end method

.method public blacklist getValue()Ljava/time/LocalDate;
    .registers 2

    .line 12508
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 12495
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    iget v1, p0, Landroid/app/Notification$Metric$FixedDate;->mFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist toBundle(Landroid/os/Bundle;)V
    .registers 5

    .line 12481
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-string/jumbo v2, "value"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12482
    const-string v0, "format"

    iget v1, p0, Landroid/app/Notification$Metric$FixedDate;->mFormat:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12483
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 12500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Notification$Metric$FixedDate;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toValueString(Landroid/content/Context;)Landroid/app/Notification$Metric$MetricValue$ValueString;
    .registers 6

    .line 12522
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 12524
    nop

    .line 12525
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iget v2, p0, Landroid/app/Notification$Metric$FixedDate;->mFormat:I

    iget-object v3, p0, Landroid/app/Notification$Metric$FixedDate;->mValue:Ljava/time/LocalDate;

    .line 12526
    invoke-static {v2, v3}, Landroid/app/Notification$Metric$FixedDate;->getFormatFlags(ILjava/time/LocalDate;)I

    move-result v2

    .line 12524
    invoke-static {p1, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 12528
    new-instance v0, Landroid/app/Notification$Metric$MetricValue$ValueString;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Metric$MetricValue$ValueString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
