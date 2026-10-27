.class public Lcom/android/server/display/DisplayBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "DisplayBackupHelper.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-string v0, "DisplayBackupHelper"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 62
    new-instance v0, Lcom/android/server/display/DisplayBackupHelper$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayBackupHelper$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayBackupHelper;-><init>(ILcom/android/server/display/DisplayBackupHelper$Injector;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/display/DisplayBackupHelper$Injector;)V
    .registers 5

    .line 67
    const-string v0, "display"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 68
    iput p1, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    .line 69
    iput-object p2, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 7

    .line 89
    const-string v0, "DisplayBackupHelper"

    const-string v1, "display"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayBackupHelper$Injector;->isDisplayTopologyFlagEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_70

    .line 92
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    iget v2, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayBackupHelper$Injector;->writeTopologyFile(I)Landroid/util/AtomicFileOutputStream;

    move-result-object v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_5d

    .line 93
    :try_start_1b
    invoke-virtual {v1, p2}, Landroid/util/AtomicFileOutputStream;->write([B)V

    .line 94
    invoke-virtual {v1}, Landroid/util/AtomicFileOutputStream;->markSuccess()V

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyRestoredPayload for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_1b .. :try_end_46} :catchall_5f

    .line 97
    :try_start_46
    invoke-virtual {v1}, Landroid/util/AtomicFileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_5d

    .line 101
    iget-object p1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayBackupHelper$Injector;->getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;

    move-result-object p1

    if-nez p1, :cond_57

    .line 103
    const-string p0, "DisplayManagerInternal is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_57
    iget p0, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManagerInternal;->reloadTopologies(I)V

    return-void

    :catch_5d
    move-exception p0

    goto :goto_6b

    :catchall_5f
    move-exception p0

    if-eqz v1, :cond_6a

    .line 92
    :try_start_62
    invoke-virtual {v1}, Landroid/util/AtomicFileOutputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception p1

    :try_start_67
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    throw p0
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6b} :catch_5d

    .line 98
    :goto_6b
    const-string p1, "applyRestoredPayload failed"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_70
    :goto_70
    return-void
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .registers 6

    .line 74
    const-string v0, "DisplayBackupHelper"

    const-string v1, "display"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayBackupHelper$Injector;->isDisplayTopologyFlagEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_44

    .line 78
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    iget p0, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/display/DisplayBackupHelper$Injector;->readTopologyFile(I)[B

    move-result-object p0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupPayload for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " done, size="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    move-exception p0

    .line 82
    sget-boolean p1, Lcom/android/server/display/DisplayBackupHelper;->DEBUG:Z

    if-eqz p1, :cond_44

    const-string p1, "Skip topology backup"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    :goto_44
    return-object v2
.end method
