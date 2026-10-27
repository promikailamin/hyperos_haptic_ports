.class Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;
.super Ljava/lang/Object;
.source "BluetoothManagerServiceInjector.java"


# static fields
.field static final BD_ADDR_NO_COLON_LEN:I = 0xc

.field static final BD_ADDR_WITH_COLON_LEN:I = 0x11

.field private static final DBG:Z = true

.field static final MASK_BD_ADDR_NO_COLON_PREFIX:Ljava/lang/String; = "000000"

.field static final MASK_BD_ADDR_WITH_COLON_DEFAULT:Ljava/lang/String; = "00:00:00:00:00:00"

.field static final MASK_BD_ADDR_WITH_COLON_PREFIX:Ljava/lang/String; = "00:00:00:"

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerServiceInjector"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBluetoothPermission(Landroid/app/AppOpsManager;ILjava/lang/String;)I
    .registers 4
    .param p0, "appOps"    # Landroid/app/AppOpsManager;
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 79
    if-eqz p0, :cond_9

    .line 80
    const/16 v0, 0x2712

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0

    .line 83
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public static startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Z
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 52
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 50
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 53
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_59

    .line 57
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_25} :catch_7c

    .line 63
    .local v2, "callingIdentity":J
    :try_start_25
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_30
    .catchall {:try_start_25 .. :try_end_28} :catchall_2e

    .line 69
    :try_start_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_2b} :catch_7c

    .line 70
    nop

    .line 72
    const/4 v4, 0x1

    return v4

    .line 69
    :catchall_2e
    move-exception v4

    goto :goto_54

    .line 64
    :catch_30
    move-exception v4

    .line 66
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    :try_start_31
    const-string v5, "BluetoothManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent to handle action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " missing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_2e

    .line 67
    const/4 v5, 0x0

    .line 69
    :try_start_50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    return v5

    .line 69
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :goto_54
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    nop

    .end local p0    # "packageName":Ljava/lang/String;
    .end local p1    # "callingUid":I
    .end local p2    # "intentAction":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    throw v4

    .line 54
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "callingIdentity":J
    .restart local p0    # "packageName":Ljava/lang/String;
    .restart local p1    # "callingUid":I
    .restart local p2    # "intentAction":Ljava/lang/String;
    .restart local p3    # "context":Landroid/content/Context;
    :cond_59
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "packageName":Ljava/lang/String;
    .end local p1    # "callingUid":I
    .end local p2    # "intentAction":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    throw v1
    :try_end_7c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_7c} :catch_7c

    .line 73
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "packageName":Ljava/lang/String;
    .restart local p1    # "callingUid":I
    .restart local p2    # "intentAction":Ljava/lang/String;
    .restart local p3    # "context":Landroid/content/Context;
    :catch_7c
    move-exception v0

    .line 74
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getMaskDeviceAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 33
    if-eqz p1, :cond_4a

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_26

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00:00:00:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    return-object v0

    .line 37
    :cond_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_4a

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    return-object v0

    .line 42
    :cond_4a
    const-string v0, "00:00:00:00:00:00"

    return-object v0
.end method
