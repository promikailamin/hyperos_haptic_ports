.class public final Landroid/app/Notification$Metric$MetricValue$ValueString;
.super Ljava/lang/Record;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Metric$MetricValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValueString"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "text",
        "subtext"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Ljava/lang/String;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY:Landroid/app/Notification$Metric$MetricValue$ValueString;


# instance fields
.field private final blacklist subtext:Ljava/lang/String;

.field private final blacklist text:Ljava/lang/String;


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/app/Notification$Metric$MetricValue$ValueString;

    if-eqz v0, :cond_1c

    check-cast p1, Landroid/app/Notification$Metric$MetricValue$ValueString;

    iget-object v0, p0, Landroid/app/Notification$Metric$MetricValue$ValueString;->text:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/Notification$Metric$MetricValue$ValueString;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/Notification$Metric$MetricValue$ValueString;->subtext:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/Notification$Metric$MetricValue$ValueString;->subtext:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Metric$MetricValue$ValueString;->text:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/Notification$Metric$MetricValue$ValueString;->subtext:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY()Landroid/app/Notification$Metric$MetricValue$ValueString;
    .registers 1

    sget-object v0, Landroid/app/Notification$Metric$MetricValue$ValueString;->EMPTY:Landroid/app/Notification$Metric$MetricValue$ValueString;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 12108
    new-instance v0, Landroid/app/Notification$Metric$MetricValue$ValueString;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Metric$MetricValue$ValueString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/Notification$Metric$MetricValue$ValueString;->EMPTY:Landroid/app/Notification$Metric$MetricValue$ValueString;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 12105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Metric$MetricValue$ValueString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12106
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "subtext"
        }
    .end annotation

    .line 12103
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/app/Notification$Metric$MetricValue$ValueString;->text:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/Notification$Metric$MetricValue$ValueString;->subtext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 12102
    invoke-direct {p0, p1}, Landroid/app/Notification$Metric$MetricValue$ValueString;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 12102
    iget-object v0, p0, Landroid/app/Notification$Metric$MetricValue$ValueString;->text:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/Notification$Metric$MetricValue$ValueString;->subtext:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist subtext()Ljava/lang/String;
    .registers 2

    .line 12102
    iget-object v0, p0, Landroid/app/Notification$Metric$MetricValue$ValueString;->subtext:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist text()Ljava/lang/String;
    .registers 2

    .line 12102
    iget-object v0, p0, Landroid/app/Notification$Metric$MetricValue$ValueString;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 12102
    invoke-direct {p0}, Landroid/app/Notification$Metric$MetricValue$ValueString;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/Notification$Metric$MetricValue$ValueString;

    const-string/jumbo v2, "text;subtext"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
