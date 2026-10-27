.class public abstract Landroid/app/Notification$Metric$MetricValue;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MetricValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Metric$MetricValue$ValueString;
    }
.end annotation


# static fields
.field private static final blacklist KEY_TYPE:Ljava/lang/String; = "_type"

.field private static final blacklist TYPE_FIXED_DATE:I = 0x2

.field private static final blacklist TYPE_FIXED_FLOAT:I = 0x5

.field private static final blacklist TYPE_FIXED_INT:I = 0x4

.field private static final blacklist TYPE_FIXED_STRING:I = 0x6

.field private static final blacklist TYPE_FIXED_TIME:I = 0x3

.field private static final blacklist TYPE_TIME_DIFFERENCE:I = 0x1


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$MetricValue;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification$Metric$MetricValue;->fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$MetricValue;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoBundle(Landroid/app/Notification$Metric$MetricValue;)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Landroid/app/Notification$Metric$MetricValue;->toBundle(Landroid/app/Notification$Metric$MetricValue;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 12060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Notification-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Metric$MetricValue;-><init>()V

    return-void
.end method

.method private static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$MetricValue;
    .registers 2

    .line 12064
    const-string v0, "_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 12065
    packed-switch v0, :pswitch_data_2a

    .line 12072
    const/4 p0, 0x0

    goto :goto_28

    .line 12071
    :pswitch_b
    invoke-static {p0}, Landroid/app/Notification$Metric$FixedString;->-$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedString;

    move-result-object p0

    goto :goto_28

    .line 12070
    :pswitch_10
    invoke-static {p0}, Landroid/app/Notification$Metric$FixedFloat;->-$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedFloat;

    move-result-object p0

    goto :goto_28

    .line 12069
    :pswitch_15
    invoke-static {p0}, Landroid/app/Notification$Metric$FixedInt;->-$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedInt;

    move-result-object p0

    goto :goto_28

    .line 12068
    :pswitch_1a
    invoke-static {p0}, Landroid/app/Notification$Metric$FixedTime;->-$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedTime;

    move-result-object p0

    goto :goto_28

    .line 12067
    :pswitch_1f
    invoke-static {p0}, Landroid/app/Notification$Metric$FixedDate;->-$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$FixedDate;

    move-result-object p0

    goto :goto_28

    .line 12066
    :pswitch_24
    invoke-static {p0}, Landroid/app/Notification$Metric$TimeDifference;->-$$Nest$smfromBundle(Landroid/os/Bundle;)Landroid/app/Notification$Metric$TimeDifference;

    move-result-object p0

    .line 12065
    :goto_28
    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method private static blacklist toBundle(Landroid/app/Notification$Metric$MetricValue;)Landroid/os/Bundle;
    .registers 4

    .line 12078
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12079
    instance-of v1, p0, Landroid/app/Notification$Metric$TimeDifference;

    const-string v2, "_type"

    if-eqz v1, :cond_10

    .line 12080
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3c

    .line 12081
    :cond_10
    instance-of v1, p0, Landroid/app/Notification$Metric$FixedDate;

    if-eqz v1, :cond_19

    .line 12082
    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3c

    .line 12083
    :cond_19
    instance-of v1, p0, Landroid/app/Notification$Metric$FixedTime;

    if-eqz v1, :cond_22

    .line 12084
    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3c

    .line 12085
    :cond_22
    instance-of v1, p0, Landroid/app/Notification$Metric$FixedInt;

    if-eqz v1, :cond_2b

    .line 12086
    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3c

    .line 12087
    :cond_2b
    instance-of v1, p0, Landroid/app/Notification$Metric$FixedFloat;

    if-eqz v1, :cond_34

    .line 12088
    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3c

    .line 12089
    :cond_34
    instance-of v1, p0, Landroid/app/Notification$Metric$FixedString;

    if-eqz v1, :cond_40

    .line 12090
    const/4 v1, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12094
    :goto_3c
    invoke-virtual {p0, v0}, Landroid/app/Notification$Metric$MetricValue;->toBundle(Landroid/os/Bundle;)V

    .line 12095
    return-object v0

    .line 12092
    :cond_40
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible MetricValue subclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method protected abstract blacklist toBundle(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist toValueString(Landroid/content/Context;)Landroid/app/Notification$Metric$MetricValue$ValueString;
.end method
