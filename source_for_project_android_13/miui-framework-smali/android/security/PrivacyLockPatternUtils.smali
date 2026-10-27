.class public Landroid/security/PrivacyLockPatternUtils;
.super Ljava/lang/Object;
.source "PrivacyLockPatternUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PrivacyLockPatternUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkPrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 24
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 25
    .local v0, "lockSettingsSevices":Lcom/android/internal/widget/ILockSettings;
    invoke-static {p0}, Landroid/security/MiuiLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return v1

    .line 26
    .end local v0    # "lockSettingsSevices":Lcom/android/internal/widget/ILockSettings;
    :catch_13
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PrivacyLockPatternUtils"

    const-string v2, "CheckPrivacyPasswordPattern error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist savePrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)V
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 34
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    invoke-static {p0}, Landroid/security/MiuiLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "patternStr":Ljava/lang/String;
    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 36
    .local v1, "lockSettingsSevices":Lcom/android/internal/widget/ILockSettings;
    invoke-interface {v1, v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 39
    .end local v0    # "patternStr":Ljava/lang/String;
    .end local v1    # "lockSettingsSevices":Lcom/android/internal/widget/ILockSettings;
    goto :goto_1a

    .line 37
    :catch_12
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PrivacyLockPatternUtils"

    const-string v2, "savePrivacyPasswordPattern error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method
