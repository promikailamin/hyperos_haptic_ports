.class Lcom/android/server/power/WakeLockLog$TagData;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagData"
.end annotation


# instance fields
.field public index:I

.field public lastUsedTime:J

.field public ownerUid:I

.field public tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    .line 1261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1262
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    .line 1263
    iput p2, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    .line 1264
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1268
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1269
    return v0

    .line 1271
    :cond_4
    instance-of v1, p1, Lcom/android/server/power/WakeLockLog$TagData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 1272
    move-object v1, p1

    check-cast v1, Lcom/android/server/power/WakeLockLog$TagData;

    .line 1273
    .local v1, "other":Lcom/android/server/power/WakeLockLog$TagData;
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v3, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    iget v4, v1, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    if-ne v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0

    .line 1275
    .end local v1    # "other":Lcom/android/server/power/WakeLockLog$TagData;
    :cond_1f
    return v2
.end method

.method getByteSize()I
    .registers 3

    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, "bytes":I
    add-int/lit8 v0, v0, 0x8

    .line 1292
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_f

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    :goto_f
    add-int/2addr v0, v1

    .line 1293
    add-int/lit8 v0, v0, 0x4

    .line 1294
    add-int/lit8 v0, v0, 0x4

    .line 1295
    add-int/lit8 v0, v0, 0x8

    .line 1296
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
