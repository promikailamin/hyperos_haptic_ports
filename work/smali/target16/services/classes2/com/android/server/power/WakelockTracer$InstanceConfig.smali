.class public final Lcom/android/server/power/WakelockTracer$InstanceConfig;
.super Ljava/lang/Record;
.source "WakelockTracer.java"


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
        "thresholdMs",
        "delayMs",
        "dropPid"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        J,
        J,
        Z
    }
.end annotation


# instance fields
.field public final delayMs:J

.field public final dropPid:Z

.field public final thresholdMs:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetdelayMs(Lcom/android/server/power/WakelockTracer$InstanceConfig;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->delayMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetdropPid(Lcom/android/server/power/WakelockTracer$InstanceConfig;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->dropPid:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetthresholdMs(Lcom/android/server/power/WakelockTracer$InstanceConfig;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->thresholdMs:J

    return-wide v0
.end method

.method public constructor <init>(JJZ)V
    .registers 6

    .line 149
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-wide p1, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->thresholdMs:J

    iput-wide p3, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->delayMs:J

    iput-boolean p5, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->dropPid:Z

    return-void
.end method

.method public synthetic constructor <init>(JJZLcom/android/server/power/WakelockTracer-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/WakelockTracer$InstanceConfig;-><init>(JJZ)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    instance-of v0, p1, Lcom/android/server/power/WakelockTracer$InstanceConfig;

    if-eqz v0, :cond_1e

    check-cast p1, Lcom/android/server/power/WakelockTracer$InstanceConfig;

    iget-boolean v0, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->dropPid:Z

    iget-boolean v1, p1, Lcom/android/server/power/WakelockTracer$InstanceConfig;->dropPid:Z

    if-ne v0, v1, :cond_1e

    iget-wide v0, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->thresholdMs:J

    iget-wide v2, p1, Lcom/android/server/power/WakelockTracer$InstanceConfig;->thresholdMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->delayMs:J

    iget-wide p0, p1, Lcom/android/server/power/WakelockTracer$InstanceConfig;->delayMs:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->thresholdMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->delayMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->dropPid:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/power/WakelockTracer$InstanceConfig;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 6

    .line 149
    iget-boolean v0, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->dropPid:Z

    iget-wide v1, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->thresholdMs:J

    iget-wide v3, p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;->delayMs:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/power/WakelockTracer$InstanceConfig$$ExternalSyntheticRecord0;->m(ZJJ)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/android/server/power/WakelockTracer$InstanceConfig;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/power/WakelockTracer$InstanceConfig;

    const-string/jumbo v1, "thresholdMs;delayMs;dropPid"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
