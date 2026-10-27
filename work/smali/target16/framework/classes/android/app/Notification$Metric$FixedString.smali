.class public final Landroid/app/Notification$Metric$FixedString;
.super Landroid/app/Notification$Metric$MetricValue;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedString"
.end annotation


# static fields
.field private static final blacklist KEY_UNIT:Ljava/lang/String; = "unit"

.field private static final blacklist KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final blacklist mUnit:Ljava/lang/String;

.field private final blacklist mValue:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedString;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification$Metric$FixedString;->fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedString;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 3

    .line 12898
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Metric$FixedString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 12899
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4

    .line 12906
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Metric$MetricValue;-><init>(Landroid/app/Notification-IA;)V

    .line 12907
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Metric$FixedString;->mValue:Ljava/lang/String;

    .line 12908
    invoke-static {p2}, Landroid/app/Notification;->safeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Metric$FixedString;->mUnit:Ljava/lang/String;

    .line 12909
    return-void
.end method

.method private static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedString;
    .registers 4

    .line 12913
    new-instance v0, Landroid/app/Notification$Metric$FixedString;

    .line 12914
    const-string/jumbo v1, "value"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12915
    const-string/jumbo v2, "unit"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/app/Notification$Metric$FixedString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 12913
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 12927
    instance-of v0, p1, Landroid/app/Notification$Metric$FixedString;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    check-cast p1, Landroid/app/Notification$Metric$FixedString;

    .line 12928
    const/4 v0, 0x1

    if-ne p0, p1, :cond_b

    return v0

    .line 12929
    :cond_b
    iget-object v2, p0, Landroid/app/Notification$Metric$FixedString;->mValue:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/Notification$Metric$FixedString;->mValue:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/app/Notification$Metric$FixedString;->mUnit:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/Notification$Metric$FixedString;->mUnit:Ljava/lang/String;

    .line 12930
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    move v1, v0

    goto :goto_22

    :cond_21
    nop

    .line 12929
    :goto_22
    return v1

    .line 12927
    :cond_23
    return v1
.end method

.method public blacklist getUnit()Ljava/lang/CharSequence;
    .registers 2

    .line 12962
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedString;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/CharSequence;
    .registers 2

    .line 12949
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedString;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 12935
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedString;->mValue:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedString;->mUnit:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist toBundle(Landroid/os/Bundle;)V
    .registers 4

    .line 12921
    const-string/jumbo v0, "value"

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedString;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12922
    const-string/jumbo v0, "unit"

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedString;->mUnit:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12923
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 12940
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

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedString;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedString;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toValueString(Landroid/content/Context;)Landroid/app/Notification$Metric$MetricValue$ValueString;
    .registers 4

    .line 12970
    new-instance p1, Landroid/app/Notification$Metric$MetricValue$ValueString;

    iget-object v0, p0, Landroid/app/Notification$Metric$FixedString;->mValue:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedString;->mUnit:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroid/app/Notification$Metric$MetricValue$ValueString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
