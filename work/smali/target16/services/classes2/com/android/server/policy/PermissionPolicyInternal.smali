.class public abstract Lcom/android/server/policy/PermissionPolicyInternal;
.super Ljava/lang/Object;
.source "PermissionPolicyInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z
.end method

.method public abstract isIntentToPermissionDialog(Landroid/content/Intent;)Z
.end method

.method public abstract shouldShowNotificationDialogForTask(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
.end method

.method public abstract showNotificationPromptIfNeeded(Ljava/lang/String;II)V
.end method
