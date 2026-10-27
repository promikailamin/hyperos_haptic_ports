.class public Landroid/os/RecoverySystemInjector;
.super Ljava/lang/Object;
.source "RecoverySystemInjector.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RecoverySystemInjector"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist calculateMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "filename"    # Ljava/lang/String;

    .line 18
    const-string v0, ""

    .line 19
    .local v0, "md5Sum":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "RecoverySystemInjector"

    if-eqz v1, :cond_10

    .line 20
    const-string v1, "calculateMD5:filename is empty"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-object v0

    .line 24
    :cond_10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_21

    .line 26
    const-string v3, "calculateMD5:file not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-object v0

    .line 29
    :cond_21
    invoke-static {v1}, Landroid/os/updater/MD5;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateMD5:file md5 is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-object v0
.end method

.method public static whitelist checkForValidate(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "processed"    # Z
    .param p3, "md5Sum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 36
    new-instance v0, Landroid/os/updater/ValidateChecker;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p2, p3}, Landroid/os/updater/ValidateChecker;-><init>(Landroid/content/Context;Ljava/io/File;ZLjava/lang/String;)V

    .line 39
    .local v0, "validateChecker":Landroid/os/updater/ValidateChecker;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/updater/ValidateChecker;->checkValidate()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 43
    return-object v1

    .line 41
    :cond_15
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "Request validate fail is null"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "validateChecker":Landroid/os/updater/ValidateChecker;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "processed":Z
    .end local p3    # "md5Sum":Ljava/lang/String;
    throw v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_1d

    .line 44
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "validateChecker":Landroid/os/updater/ValidateChecker;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "processed":Z
    .restart local p3    # "md5Sum":Ljava/lang/String;
    :catch_1d
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "Request validate fail IOException"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
