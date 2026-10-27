.class public interface abstract Lmiui/accounts/MiuiOnAccountsUpdateListener;
.super Ljava/lang/Object;
.source "MiuiOnAccountsUpdateListener.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# virtual methods
.method public abstract whitelist onPostAccountUpdated(Landroid/accounts/Account;ILandroid/os/Bundle;)V
.end method

.method public abstract blacklist onPreAccountUpdated(Landroid/accounts/Account;ILandroid/os/Bundle;)V
.end method
