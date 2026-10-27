.class Lcom/android/internal/widget/LockPatternChecker$2;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mThrottleTimeout:I

.field final synthetic blacklist val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

.field final synthetic blacklist val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic blacklist val$userId:I

.field final synthetic blacklist val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .registers 5

    .line 112
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    iput p3, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$userId:I

    iput-object p4, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10

    .line 117
    const-string p1, "Failed to restore checkCredential thread priority to original priority"

    const-string v0, "LockPatternChecker"

    .line 119
    const/16 v1, -0x15

    :try_start_6
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->runCheckCredentialWithHigherPriority()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 120
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2
    :try_end_14
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_6 .. :try_end_14} :catch_4f
    .catchall {:try_start_6 .. :try_end_14} :catchall_4c

    .line 122
    const/4 v3, -0x2

    :try_start_15
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_18} :catch_19
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_15 .. :try_end_18} :catch_4a
    .catchall {:try_start_15 .. :try_end_18} :catchall_6d

    .line 127
    goto :goto_21

    .line 123
    :catch_19
    move-exception v3

    .line 124
    :try_start_1a
    const-string v4, "Failed to boost checkCredential thread priority to priority display"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 119
    :cond_20
    move v2, v1

    .line 129
    :goto_21
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    iget v5, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$userId:I

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/internal/widget/LockPatternChecker$2$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Lcom/android/internal/widget/LockPatternChecker$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_39
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1a .. :try_end_39} :catch_4a
    .catchall {:try_start_1a .. :try_end_39} :catchall_6d

    .line 134
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->runCheckCredentialWithHigherPriority()Z

    move-result v4

    if-eqz v4, :cond_49

    if-eq v2, v1, :cond_49

    .line 137
    :try_start_41
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_44
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_44} :catch_45

    .line 142
    goto :goto_49

    .line 138
    :catch_45
    move-exception v1

    .line 139
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_49
    :goto_49
    return-object v3

    .line 130
    :catch_4a
    move-exception v3

    goto :goto_51

    .line 134
    :catchall_4c
    move-exception v3

    move v2, v1

    goto :goto_6e

    .line 130
    :catch_4f
    move-exception v3

    move v2, v1

    .line 131
    :goto_51
    :try_start_51
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/LockPatternChecker$2;->mThrottleTimeout:I

    .line 132
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_6d

    .line 134
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->runCheckCredentialWithHigherPriority()Z

    move-result v4

    if-eqz v4, :cond_6c

    if-eq v2, v1, :cond_6c

    .line 137
    :try_start_64
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_64 .. :try_end_67} :catch_68

    .line 142
    goto :goto_6c

    .line 138
    :catch_68
    move-exception v1

    .line 139
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_6c
    :goto_6c
    return-object v3

    .line 134
    :catchall_6d
    move-exception v3

    :goto_6e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->runCheckCredentialWithHigherPriority()Z

    move-result v4

    if-eqz v4, :cond_7e

    if-eq v2, v1, :cond_7e

    .line 137
    :try_start_76
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_79
    .catch Ljava/lang/SecurityException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 142
    goto :goto_7e

    .line 138
    :catch_7a
    move-exception v1

    .line 139
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_7e
    :goto_7e
    throw v3
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist onCancelled()V
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onCancelled()V

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 157
    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->mThrottleTimeout:I

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onChecked(ZI)V

    .line 150
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 151
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 112
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
