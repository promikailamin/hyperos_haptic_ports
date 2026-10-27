.class public final Landroid/app/Notification$Metric$FixedTime;
.super Landroid/app/Notification$Metric$MetricValue;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedTime"
.end annotation


# static fields
.field private static final blacklist KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final blacklist mValue:Ljava/time/LocalTime;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedTime;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification$Metric$FixedTime;->fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedTime;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/time/LocalTime;)V
    .registers 3

    .line 12586
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Metric$MetricValue;-><init>(Landroid/app/Notification-IA;)V

    .line 12587
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/LocalTime;

    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p1, v0}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    .line 12588
    return-void
.end method

.method private static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedTime;
    .registers 4

    .line 12592
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 12593
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    goto :goto_14

    :cond_13
    move-object p0, v2

    .line 12594
    :goto_14
    if-eqz p0, :cond_1c

    .line 12595
    new-instance v0, Landroid/app/Notification$Metric$FixedTime;

    invoke-direct {v0, p0}, Landroid/app/Notification$Metric$FixedTime;-><init>(Ljava/time/LocalTime;)V

    return-object v0

    .line 12597
    :cond_1c
    return-object v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 12609
    instance-of v0, p1, Landroid/app/Notification$Metric$FixedTime;

    if-eqz v0, :cond_13

    check-cast p1, Landroid/app/Notification$Metric$FixedTime;

    .line 12610
    if-ne p0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    .line 12611
    :cond_a
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    iget-object p1, p1, Landroid/app/Notification$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 12609
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getValue()Ljava/time/LocalTime;
    .registers 2

    .line 12628
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 12616
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist toBundle(Landroid/os/Bundle;)V
    .registers 5

    .line 12604
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "value"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12605
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 12621
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

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toValueString(Landroid/content/Context;)Landroid/app/Notification$Metric$MetricValue$ValueString;
    .registers 5

    .line 12637
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedTime;->mValue:Ljava/time/LocalTime;

    invoke-static {}, Landroid/app/Notification;->-$$Nest$smgetToday()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalTime;->atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 12639
    nop

    .line 12640
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 12639
    const/16 v2, 0xa01

    invoke-static {p1, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 12644
    new-instance v0, Landroid/app/Notification$Metric$MetricValue$ValueString;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Metric$MetricValue$ValueString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
