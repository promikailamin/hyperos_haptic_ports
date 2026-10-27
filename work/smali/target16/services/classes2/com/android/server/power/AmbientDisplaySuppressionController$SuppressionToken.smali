.class public final Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;
.super Ljava/lang/Record;
.source "AmbientDisplaySuppressionController.java"


# annotations
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
        "id",
        "tag"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field public final id:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgettag(Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->id:I

    iput-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->tag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/android/server/power/AmbientDisplaySuppressionController-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;

    iget v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->id:I

    iget v1, p1, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->id:I

    if-ne v0, v1, :cond_18

    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->tag:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public belongsToId(I)Z
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->id()I

    move-result p0

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->id:I

    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public id()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->id:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;

    const-string v1, "id;tag"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
