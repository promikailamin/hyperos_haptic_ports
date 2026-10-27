.class public interface abstract Lcom/android/server/content/SyncSecurityStub;
.super Ljava/lang/Object;
.source "SyncSecurityStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/content/SyncSecurityStub;
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/content/SyncSecurityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncSecurityStub;

    return-object v0
.end method


# virtual methods
.method public filterOutXiaomiAccount([Landroid/accounts/AccountAndUser;I)[Landroid/accounts/AccountAndUser;
    .registers 3
    .param p1, "accountAndUsers"    # [Landroid/accounts/AccountAndUser;
    .param p2, "reason"    # I

    .line 16
    return-object p1
.end method

.method public permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 20
    const/4 v0, 0x1

    return v0
.end method
