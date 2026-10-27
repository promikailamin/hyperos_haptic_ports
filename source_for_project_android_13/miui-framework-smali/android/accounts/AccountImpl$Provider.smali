.class public final Landroid/accounts/AccountImpl$Provider;
.super Ljava/lang/Object;
.source "AccountImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/accounts/AccountImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideNewInstance()Landroid/accounts/AccountImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/accounts/AccountImpl;

    invoke-direct {v0}, Landroid/accounts/AccountImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/accounts/AccountImpl$Provider;->provideNewInstance()Landroid/accounts/AccountImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/accounts/AccountImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/accounts/AccountImpl$Provider$SINGLETON;->INSTANCE:Landroid/accounts/AccountImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/accounts/AccountImpl$Provider;->provideSingleton()Landroid/accounts/AccountImpl;

    move-result-object v0

    return-object v0
.end method
