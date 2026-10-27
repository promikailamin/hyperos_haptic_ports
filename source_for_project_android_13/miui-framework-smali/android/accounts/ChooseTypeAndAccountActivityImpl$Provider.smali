.class public final Landroid/accounts/ChooseTypeAndAccountActivityImpl$Provider;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivityImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/ChooseTypeAndAccountActivityImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/accounts/ChooseTypeAndAccountActivityImpl;",
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
.method public blacklist provideNewInstance()Landroid/accounts/ChooseTypeAndAccountActivityImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/accounts/ChooseTypeAndAccountActivityImpl;

    invoke-direct {v0}, Landroid/accounts/ChooseTypeAndAccountActivityImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivityImpl$Provider;->provideNewInstance()Landroid/accounts/ChooseTypeAndAccountActivityImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/accounts/ChooseTypeAndAccountActivityImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/accounts/ChooseTypeAndAccountActivityImpl$Provider$SINGLETON;->INSTANCE:Landroid/accounts/ChooseTypeAndAccountActivityImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivityImpl$Provider;->provideSingleton()Landroid/accounts/ChooseTypeAndAccountActivityImpl;

    move-result-object v0

    return-object v0
.end method
