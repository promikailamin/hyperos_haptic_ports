.class public Lcom/android/server/backup/AccountManagerBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "AccountManagerBackupHelper.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist KEY_ACCOUNT_ACCESS_GRANTS:Ljava/lang/String; = "account_access_grants"

.field private static final blacklist STATE_VERSION:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AccountsBackup"


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4

    .line 41
    const-string v0, "account_access_grants"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 42
    iput p1, p0, Lcom/android/server/backup/AccountManagerBackupHelper;->mUserId:I

    .line 43
    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 6

    .line 70
    const-string v0, "AccountsBackup"

    const-class v1, Landroid/accounts/AccountManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManagerInternal;

    .line 75
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_56

    :cond_11
    goto :goto_1c

    :pswitch_12
    const-string v2, "account_access_grants"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    goto :goto_1d

    :goto_1c
    const/4 v2, -0x1

    :goto_1d
    packed-switch v2, :pswitch_data_5c

    .line 81
    goto :goto_27

    .line 77
    :pswitch_21
    iget v2, p0, Lcom/android/server/backup/AccountManagerBackupHelper;->mUserId:I

    invoke-virtual {v1, p2, v2}, Landroid/accounts/AccountManagerInternal;->restoreAccountAccessPermissions([BI)V

    .line 78
    goto :goto_3d

    .line 81
    :goto_27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected restore key "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_3e

    .line 86
    :goto_3d
    goto :goto_55

    .line 84
    :catch_3e
    move-exception p2

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to restore key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_55
    return-void

    :pswitch_data_56
    .packed-switch 0x5c091b80
        :pswitch_12
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_21
    .end packed-switch
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .registers 7

    .line 47
    const-string v0, "AccountsBackup"

    const-class v1, Landroid/accounts/AccountManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManagerInternal;

    .line 52
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_5a

    :cond_12
    goto :goto_1d

    :pswitch_13
    const-string v3, "account_access_grants"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v2

    goto :goto_1e

    :goto_1d
    const/4 v3, -0x1

    :goto_1e
    packed-switch v3, :pswitch_data_60

    .line 58
    goto :goto_29

    .line 54
    :pswitch_22
    iget v3, p0, Lcom/android/server/backup/AccountManagerBackupHelper;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManagerInternal;->backupAccountAccessPermissions(I)[B

    move-result-object p1

    return-object p1

    .line 58
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected backup key "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3f} :catch_40

    .line 63
    goto :goto_57

    .line 61
    :catch_40
    move-exception v1

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store payload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_57
    new-array p1, v2, [B

    return-object p1

    :pswitch_data_5a
    .packed-switch 0x5c091b80
        :pswitch_13
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_22
    .end packed-switch
.end method
