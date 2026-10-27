.class public final Lcom/android/server/power/WakelockTracer$Wakelock;
.super Ljava/lang/Record;
.source "WakelockTracer.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "tag",
        "ownerUid",
        "ownerPid",
        "flags",
        "workUid"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        I,
        I,
        I,
        I
    }
.end annotation


# instance fields
.field public final flags:I

.field public final ownerPid:I

.field public final ownerUid:I

.field public final tag:Ljava/lang/String;

.field public final workUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetflags(Lcom/android/server/power/WakelockTracer$Wakelock;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->flags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetownerPid(Lcom/android/server/power/WakelockTracer$Wakelock;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerPid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetownerUid(Lcom/android/server/power/WakelockTracer$Wakelock;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgettag(Lcom/android/server/power/WakelockTracer$Wakelock;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetworkUid(Lcom/android/server/power/WakelockTracer$Wakelock;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->workUid:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 6

    .line 143
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->tag:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerUid:I

    iput p3, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerPid:I

    iput p4, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->flags:I

    iput p5, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->workUid:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILcom/android/server/power/WakelockTracer-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/WakelockTracer$Wakelock;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/power/WakelockTracer$Wakelock;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/android/server/power/WakelockTracer$Wakelock;

    iget v0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerUid:I

    iget v1, p1, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerUid:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerPid:I

    iget v1, p1, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerPid:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->flags:I

    iget v1, p1, Lcom/android/server/power/WakelockTracer$Wakelock;->flags:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->workUid:I

    iget v1, p1, Lcom/android/server/power/WakelockTracer$Wakelock;->workUid:I

    if-ne v0, v1, :cond_2a

    iget-object p0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/power/WakelockTracer$Wakelock;->tag:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->tag:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->workUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p0, v4, v0

    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/power/WakelockTracer$Wakelock;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 5

    .line 143
    iget v0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerUid:I

    iget v1, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->ownerPid:I

    iget v2, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->flags:I

    iget v3, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->workUid:I

    iget-object p0, p0, Lcom/android/server/power/WakelockTracer$Wakelock;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData$$ExternalSyntheticRecord0;->m(IIIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 143
    invoke-virtual {p0}, Lcom/android/server/power/WakelockTracer$Wakelock;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/power/WakelockTracer$Wakelock;

    const-string/jumbo v1, "tag;ownerUid;ownerPid;flags;workUid"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
