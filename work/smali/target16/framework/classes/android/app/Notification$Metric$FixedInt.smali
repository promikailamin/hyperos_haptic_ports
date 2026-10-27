.class public final Landroid/app/Notification$Metric$FixedInt;
.super Landroid/app/Notification$Metric$MetricValue;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedInt"
.end annotation


# static fields
.field private static final blacklist KEY_UNIT:Ljava/lang/String; = "unit"

.field private static final blacklist KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final blacklist mUnit:Ljava/lang/String;

.field private final blacklist mValue:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedInt;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification$Metric$FixedInt;->fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedInt;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 12662
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Metric$FixedInt;-><init>(ILjava/lang/CharSequence;)V

    .line 12663
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/CharSequence;)V
    .registers 4

    .line 12670
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Metric$MetricValue;-><init>(Landroid/app/Notification-IA;)V

    .line 12671
    iput p1, p0, Landroid/app/Notification$Metric$FixedInt;->mValue:I

    .line 12672
    invoke-static {p2}, Landroid/app/Notification;->safeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$Metric$FixedInt;->mUnit:Ljava/lang/String;

    .line 12673
    return-void
.end method

.method private static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedInt;
    .registers 4

    .line 12677
    new-instance v0, Landroid/app/Notification$Metric$FixedInt;

    const-string/jumbo v1, "value"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "unit"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/app/Notification$Metric$FixedInt;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 12689
    instance-of v0, p1, Landroid/app/Notification$Metric$FixedInt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    check-cast p1, Landroid/app/Notification$Metric$FixedInt;

    .line 12690
    const/4 v0, 0x1

    if-ne p0, p1, :cond_b

    return v0

    .line 12691
    :cond_b
    iget v2, p0, Landroid/app/Notification$Metric$FixedInt;->mValue:I

    iget v3, p1, Landroid/app/Notification$Metric$FixedInt;->mValue:I

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Landroid/app/Notification$Metric$FixedInt;->mUnit:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/Notification$Metric$FixedInt;->mUnit:Ljava/lang/String;

    .line 12692
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    move v1, v0

    goto :goto_1e

    :cond_1d
    nop

    .line 12691
    :goto_1e
    return v1

    .line 12689
    :cond_1f
    return v1
.end method

.method public blacklist getUnit()Ljava/lang/CharSequence;
    .registers 2

    .line 12723
    iget-object v0, p0, Landroid/app/Notification$Metric$FixedInt;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()I
    .registers 2

    .line 12710
    iget v0, p0, Landroid/app/Notification$Metric$FixedInt;->mValue:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 12697
    iget v0, p0, Landroid/app/Notification$Metric$FixedInt;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedInt;->mUnit:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist toBundle(Landroid/os/Bundle;)V
    .registers 4

    .line 12683
    const-string/jumbo v0, "value"

    iget v1, p0, Landroid/app/Notification$Metric$FixedInt;->mValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12684
    const-string/jumbo v0, "unit"

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedInt;->mUnit:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12685
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 12702
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

    iget v1, p0, Landroid/app/Notification$Metric$FixedInt;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedInt;->mUnit:Ljava/lang/String;

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

    .line 12731
    new-instance p1, Landroid/app/Notification$Metric$MetricValue$ValueString;

    iget v0, p0, Landroid/app/Notification$Metric$FixedInt;->mValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Metric$FixedInt;->mUnit:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroid/app/Notification$Metric$MetricValue$ValueString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
