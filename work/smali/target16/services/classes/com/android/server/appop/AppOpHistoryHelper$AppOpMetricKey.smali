.class public final Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;
.super Ljava/lang/Record;
.source "AppOpHistoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "packageName",
        "opCode",
        "attributionTag"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        I,
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field public final attributionTag:Ljava/lang/String;

.field public final opCode:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetattributionTag(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->attributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetopCode(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->opCode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 513
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->opCode:I

    iput-object p3, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->attributionTag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/appop/AppOpHistoryHelper-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;

    if-eqz v0, :cond_22

    check-cast p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;

    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->opCode:I

    iget v1, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->opCode:I

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->attributionTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->attributionTag:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->packageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->opCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->attributionTag:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 513
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 3

    .line 513
    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->opCode:I

    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->attributionTag:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 513
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;

    const-string/jumbo v1, "packageName;opCode;attributionTag"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
