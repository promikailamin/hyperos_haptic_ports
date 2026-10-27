.class public final Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;
.super Ljava/lang/Record;
.source "BitmapOffloadProvider.java"


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
        "source",
        "ownerUid",
        "width",
        "height",
        "filePath"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        I,
        I,
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field public final filePath:Ljava/lang/String;

.field public final height:I

.field public final ownerUid:I

.field public final source:I

.field public final width:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetfilePath(Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetownerUid(Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->ownerUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetsource(Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->source:I

    return p0
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 6

    .line 118
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->source:I

    iput p2, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->ownerUid:I

    iput p3, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->width:I

    iput p4, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->height:I

    iput-object p5, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->filePath:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIIILjava/lang/String;Lcom/android/server/bitmapoffload/BitmapOffloadProvider-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;

    iget v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->source:I

    iget v1, p1, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->source:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->ownerUid:I

    iget v1, p1, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->ownerUid:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->width:I

    iget v1, p1, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->width:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->height:I

    iget v1, p1, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->height:I

    if-ne v0, v1, :cond_2a

    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->filePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->filePath:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 5

    .line 118
    iget v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->source:I

    iget v1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->ownerUid:I

    iget v2, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->width:I

    iget v3, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->height:I

    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData$$ExternalSyntheticRecord0;->m(IIIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Owner UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->ownerUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
