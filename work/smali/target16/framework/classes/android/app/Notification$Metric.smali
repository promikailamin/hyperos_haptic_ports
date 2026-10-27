.class public final Landroid/app/Notification$Metric;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Metric$MetricValue;,
        Landroid/app/Notification$Metric$FixedString;,
        Landroid/app/Notification$Metric$FixedFloat;,
        Landroid/app/Notification$Metric$FixedInt;,
        Landroid/app/Notification$Metric$FixedTime;,
        Landroid/app/Notification$Metric$FixedDate;,
        Landroid/app/Notification$Metric$TimeDifference;
    }
.end annotation


# static fields
.field private static final blacklist KEY_LABEL:Ljava/lang/String; = "label"

.field private static final blacklist KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final blacklist mLabel:Ljava/lang/String;

.field private final blacklist mValue:Landroid/app/Notification$Metric$MetricValue;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification$Metric;->fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoBundle(Landroid/app/Notification$Metric;)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification$Metric;->toBundle(Landroid/app/Notification$Metric;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/app/Notification$Metric$MetricValue;Ljava/lang/CharSequence;)V
    .registers 3

    .line 11982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11983
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$Metric$MetricValue;

    iput-object p1, p0, Landroid/app/Notification$Metric;->mValue:Landroid/app/Notification$Metric$MetricValue;

    .line 11984
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Metric;->mLabel:Ljava/lang/String;

    .line 11985
    iget-object p1, p0, Landroid/app/Notification$Metric;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isBlank()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "Metric label is required"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11986
    return-void
.end method

.method private static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric;
    .registers 3

    .line 11990
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 11991
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 11992
    return-object v1

    .line 11994
    :cond_b
    invoke-static {v0}, Landroid/app/Notification$Metric$MetricValue;->-$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$MetricValue;

    move-result-object v0

    .line 11995
    if-nez v0, :cond_12

    .line 11996
    return-object v1

    .line 11998
    :cond_12
    const-string/jumbo v1, "label"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11999
    new-instance v1, Landroid/app/Notification$Metric;

    invoke-direct {v1, v0, p0}, Landroid/app/Notification$Metric;-><init>(Landroid/app/Notification$Metric$MetricValue;Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private static blacklist toBundle(Landroid/app/Notification$Metric;)Landroid/os/Bundle;
    .registers 4

    .line 12004
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12005
    iget-object v1, p0, Landroid/app/Notification$Metric;->mValue:Landroid/app/Notification$Metric$MetricValue;

    invoke-static {v1}, Landroid/app/Notification$Metric$MetricValue;->-$$Nest$smtoBundle(Landroid/app/Notification$Metric$MetricValue;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12006
    const-string/jumbo v1, "label"

    iget-object p0, p0, Landroid/app/Notification$Metric;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12007
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 12012
    instance-of v0, p1, Landroid/app/Notification$Metric;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    check-cast p1, Landroid/app/Notification$Metric;

    .line 12013
    const/4 v0, 0x1

    if-ne p0, p1, :cond_b

    return v0

    .line 12014
    :cond_b
    iget-object v2, p0, Landroid/app/Notification$Metric;->mValue:Landroid/app/Notification$Metric$MetricValue;

    iget-object v3, p1, Landroid/app/Notification$Metric;->mValue:Landroid/app/Notification$Metric$MetricValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/app/Notification$Metric;->mLabel:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/Notification$Metric;->mLabel:Ljava/lang/String;

    .line 12015
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    move v1, v0

    goto :goto_22

    :cond_21
    nop

    .line 12014
    :goto_22
    return v1

    .line 12012
    :cond_23
    return v1
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 12045
    iget-object v0, p0, Landroid/app/Notification$Metric;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()Landroid/app/Notification$Metric$MetricValue;
    .registers 2

    .line 12034
    iget-object v0, p0, Landroid/app/Notification$Metric;->mValue:Landroid/app/Notification$Metric$MetricValue;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 12020
    iget-object v0, p0, Landroid/app/Notification$Metric;->mValue:Landroid/app/Notification$Metric$MetricValue;

    iget-object v1, p0, Landroid/app/Notification$Metric;->mLabel:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 12025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metric{mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Metric;->mValue:Landroid/app/Notification$Metric$MetricValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Metric;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
