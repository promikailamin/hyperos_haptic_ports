.class public final Lcom/android/server/appop/AudioRestrictionManager$Key;
.super Ljava/lang/Record;
.source "AudioRestrictionManager.java"


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
        "op",
        "usage"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        I
    }
.end annotation


# instance fields
.field public final op:I

.field public final usage:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/appop/AudioRestrictionManager$Key;->op:I

    iput p2, p0, Lcom/android/server/appop/AudioRestrictionManager$Key;->usage:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/android/server/appop/AudioRestrictionManager-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AudioRestrictionManager$Key;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/appop/AudioRestrictionManager$Key;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/android/server/appop/AudioRestrictionManager$Key;

    iget v0, p0, Lcom/android/server/appop/AudioRestrictionManager$Key;->op:I

    iget v1, p1, Lcom/android/server/appop/AudioRestrictionManager$Key;->op:I

    if-ne v0, v1, :cond_14

    iget p0, p0, Lcom/android/server/appop/AudioRestrictionManager$Key;->usage:I

    iget p1, p1, Lcom/android/server/appop/AudioRestrictionManager$Key;->usage:I

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AudioRestrictionManager$Key;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/android/server/appop/AudioRestrictionManager$Key;->op:I

    iget p0, p0, Lcom/android/server/appop/AudioRestrictionManager$Key;->usage:I

    invoke-static {v0, p0}, Lcom/android/server/appop/AudioRestrictionManager$Key$$ExternalSyntheticRecord0;->m(II)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "op: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AudioRestrictionManager$Key;->op:I

    .line 82
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/appop/AudioRestrictionManager$Key;->usage:I

    .line 84
    invoke-static {p0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
