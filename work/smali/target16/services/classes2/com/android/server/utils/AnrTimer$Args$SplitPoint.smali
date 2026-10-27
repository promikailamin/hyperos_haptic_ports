.class public final Lcom/android/server/utils/AnrTimer$Args$SplitPoint;
.super Ljava/lang/Record;
.source "AnrTimer.java"


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
        "percent",
        "token"
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
.field public final percent:I

.field public final token:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 176
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    if-eqz p2, :cond_19

    if-lez p1, :cond_10

    const/16 v0, 0x64

    if-gt p1, v0, :cond_10

    iput p1, p0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->percent:I

    iput p2, p0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->token:I

    return-void

    .line 181
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "percent must be in (0,100]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token may not be zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;

    iget v0, p0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->percent:I

    iget v1, p1, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->percent:I

    if-ne v0, v1, :cond_14

    iget p0, p0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->token:I

    iget p1, p1, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->token:I

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->percent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->token:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->percent:I

    iget p0, p0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->token:I

    invoke-static {v0, p0}, Lcom/android/server/appop/AudioRestrictionManager$Key$$ExternalSyntheticRecord0;->m(II)I

    move-result p0

    return p0
.end method

.method public percent()I
    .registers 1

    .line 175
    iget p0, p0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->percent:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 175
    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;

    const-string/jumbo v1, "percent;token"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public token()I
    .registers 1

    .line 175
    iget p0, p0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->token:I

    return p0
.end method
