.class public Landroid/accounts/AccountManagerImpl;
.super Ljava/lang/Object;
.source "AccountManagerImpl.java"

# interfaces
.implements Landroid/accounts/AccountManagerStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 17
    invoke-static {p1}, Lmiui/content/pm/ExtraPackageManager;->handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
