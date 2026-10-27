.class public Lcom/android/server/backup/SliceBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "SliceBackupHelper.java"


# static fields
.field static final blacklist BLOB_VERSION:I = 0x1

.field static final blacklist DEBUG:Z

.field static final blacklist KEY_SLICES:Ljava/lang/String; = "slices"

.field static final blacklist TAG:Ljava/lang/String; = "SliceBackupHelper"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 27
    const-string v0, "SliceBackupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/backup/SliceBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    const-string/jumbo p1, "slices"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 6

    .line 60
    sget-boolean v0, Lcom/android/server/backup/SliceBackupHelper;->DEBUG:Z

    const-string v1, "SliceBackupHelper"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got restore of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1c
    const-string/jumbo v0, "slices"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 64
    :try_start_25
    const-string/jumbo p1, "slice"

    .line 65
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/app/slice/ISliceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/slice/ISliceManager;

    move-result-object p1

    .line 67
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/app/slice/ISliceManager;->applyRestore([BI)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_35

    .line 70
    goto :goto_3b

    .line 68
    :catch_35
    move-exception p1

    .line 69
    const-string p2, "Couldn\'t communicate with slice manager"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_3b
    :goto_3b
    return-void
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .registers 5

    .line 42
    nop

    .line 43
    const-string/jumbo v0, "slices"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    .line 45
    :try_start_b
    const-string/jumbo p1, "slice"

    .line 46
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/app/slice/ISliceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/slice/ISliceManager;

    move-result-object p1

    .line 48
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/app/slice/ISliceManager;->getBackupPayload(I)[B

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1c

    .line 53
    goto :goto_25

    .line 49
    :catch_1c
    move-exception p1

    .line 51
    const-string v1, "SliceBackupHelper"

    const-string v2, "Couldn\'t communicate with slice manager"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    nop

    .line 55
    :cond_25
    :goto_25
    return-object v0
.end method
