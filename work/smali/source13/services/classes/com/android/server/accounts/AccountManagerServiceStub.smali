.class public interface abstract Lcom/android/server/accounts/AccountManagerServiceStub;
.super Ljava/lang/Object;
.source "AccountManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/accounts/AccountManagerServiceStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/accounts/AccountManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract isForceRemove(Z)Z
.end method

.method public abstract isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
.end method
