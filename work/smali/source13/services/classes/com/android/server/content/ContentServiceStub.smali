.class public interface abstract Lcom/android/server/content/ContentServiceStub;
.super Ljava/lang/Object;
.source "ContentServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/content/ContentServiceStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/content/ContentServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentServiceStub;

    return-object v0
.end method


# virtual methods
.method public getMiSyncPauseToTime(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;I)J
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentService"    # Lcom/android/server/content/ContentService;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "uid"    # I

    .line 18
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMiSyncStrategy(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;I)I
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentService"    # Lcom/android/server/content/ContentService;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "uid"    # I

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setMiSyncPauseToTime(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;JI)V
.end method

.method public abstract setMiSyncStrategy(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;II)V
.end method
