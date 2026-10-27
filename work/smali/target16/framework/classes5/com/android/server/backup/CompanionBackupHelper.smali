.class public Lcom/android/server/backup/CompanionBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "CompanionBackupHelper.java"


# static fields
.field private static final blacklist BLOB_VERSION:I = 0x1

.field private static final blacklist KEY_COMPANION:Ljava/lang/String; = "companion"

.field private static final blacklist TAG:Ljava/lang/String; = "CompanionBackupHelper"


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4

    .line 43
    const-string v0, "companion"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 45
    iput p1, p0, Lcom/android/server/backup/CompanionBackupHelper;->mUserId:I

    .line 46
    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 5

    .line 65
    const-string v0, "Got companion backup data."

    const-string v1, "CompanionBackupHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "companion"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 68
    :try_start_f
    const-string p1, "companiondevice"

    .line 69
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object p1

    .line 70
    iget v0, p0, Lcom/android/server/backup/CompanionBackupHelper;->mUserId:I

    invoke-interface {p1, p2, v0}, Landroid/companion/ICompanionDeviceManager;->applyRestoredPayload([BI)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    .line 73
    goto :goto_25

    .line 71
    :catch_1f
    move-exception p1

    .line 72
    const-string p2, "Error applying restored payload to CompanionDeviceManager."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_25
    :goto_25
    return-void
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .registers 4

    .line 50
    nop

    .line 51
    const-string v0, "companion"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 53
    :try_start_9
    const-string p1, "companiondevice"

    .line 54
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object p1

    .line 55
    iget v0, p0, Lcom/android/server/backup/CompanionBackupHelper;->mUserId:I

    invoke-interface {p1, v0}, Landroid/companion/ICompanionDeviceManager;->getBackupPayload(I)[B

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    .line 58
    goto :goto_23

    .line 56
    :catch_1a
    move-exception p1

    .line 57
    const-string v0, "CompanionBackupHelper"

    const-string v1, "Error getting backup from CompanionDeviceManager."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_22
    const/4 p1, 0x0

    :goto_23
    return-object p1
.end method
