.class public final Lcom/android/server/power/WakelockTracer$WakelockEvent;
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
        "lock",
        "acquired",
        "timestampNs"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/power/WakelockTracer$Wakelock;,
        Z,
        J
    }
.end annotation


# instance fields
.field public final acquired:Z

.field public final lock:Lcom/android/server/power/WakelockTracer$Wakelock;

.field public final timestampNs:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetacquired(Lcom/android/server/power/WakelockTracer$WakelockEvent;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->acquired:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlock(Lcom/android/server/power/WakelockTracer$WakelockEvent;)Lcom/android/server/power/WakelockTracer$Wakelock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->lock:Lcom/android/server/power/WakelockTracer$Wakelock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettimestampNs(Lcom/android/server/power/WakelockTracer$WakelockEvent;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->timestampNs:J

    return-wide v0
.end method

.method public constructor <init>(Lcom/android/server/power/WakelockTracer$Wakelock;ZJ)V
    .registers 5

    .line 146
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->lock:Lcom/android/server/power/WakelockTracer$Wakelock;

    iput-boolean p2, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->acquired:Z

    iput-wide p3, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->timestampNs:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/WakelockTracer$Wakelock;ZJLcom/android/server/power/WakelockTracer-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/WakelockTracer$WakelockEvent;-><init>(Lcom/android/server/power/WakelockTracer$Wakelock;ZJ)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    instance-of v0, p1, Lcom/android/server/power/WakelockTracer$WakelockEvent;

    if-eqz v0, :cond_20

    check-cast p1, Lcom/android/server/power/WakelockTracer$WakelockEvent;

    iget-boolean v0, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->acquired:Z

    iget-boolean v1, p1, Lcom/android/server/power/WakelockTracer$WakelockEvent;->acquired:Z

    if-ne v0, v1, :cond_20

    iget-wide v0, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->timestampNs:J

    iget-wide v2, p1, Lcom/android/server/power/WakelockTracer$WakelockEvent;->timestampNs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    iget-object p0, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->lock:Lcom/android/server/power/WakelockTracer$Wakelock;

    iget-object p1, p1, Lcom/android/server/power/WakelockTracer$WakelockEvent;->lock:Lcom/android/server/power/WakelockTracer$Wakelock;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->lock:Lcom/android/server/power/WakelockTracer$Wakelock;

    iget-boolean v1, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->acquired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->timestampNs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 4

    .line 146
    iget-boolean v0, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->acquired:Z

    iget-wide v1, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->timestampNs:J

    iget-object p0, p0, Lcom/android/server/power/WakelockTracer$WakelockEvent;->lock:Lcom/android/server/power/WakelockTracer$Wakelock;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/power/WakelockTracer$WakelockEvent$$ExternalSyntheticRecord0;->m(ZJLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 146
    invoke-virtual {p0}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/power/WakelockTracer$WakelockEvent;

    const-string v1, "lock;acquired;timestampNs"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
