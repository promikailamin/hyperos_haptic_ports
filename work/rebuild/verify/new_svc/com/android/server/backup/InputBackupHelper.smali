.class public Lcom/android/server/backup/InputBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "InputBackupHelper.java"


# instance fields
.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 46
    const-string v0, "input_gestures"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 47
    iput p1, p0, Lcom/android/server/backup/InputBackupHelper;->mUserId:I

    .line 48
    const-class p1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerInternal;

    iput-object p1, p0, Lcom/android/server/backup/InputBackupHelper;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 5

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v1, "input_gestures"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_15
    :try_start_15
    iget-object p1, p0, Lcom/android/server/backup/InputBackupHelper;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget p0, p0, Lcom/android/server/backup/InputBackupHelper;->mUserId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/server/input/InputManagerInternal;->applyBackupPayload(Ljava/util/Map;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 78
    const-string p1, "InputBackupHelper"

    const-string p2, "Failed to apply input backup payload"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/InputBackupHelper;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget p0, p0, Lcom/android/server/backup/InputBackupHelper;->mUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/input/InputManagerInternal;->getBackupPayload(I)Ljava/util/Map;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_1e

    .line 61
    const-string v1, "input_gestures"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_1d
    return-object v0

    :catch_1e
    move-exception p0

    .line 57
    const-string p1, "InputBackupHelper"

    const-string v1, "Failed to get backup payload for input gestures"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
