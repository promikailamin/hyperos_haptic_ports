.class public final Lcom/android/internal/policy/DecorViewMultiWinStubImpl$Provider;
.super Ljava/lang/Object;
.source "DecorViewMultiWinStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorViewMultiWinStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/android/internal/policy/DecorViewMultiWinStubImpl;",
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
.method public blacklist provideNewInstance()Lcom/android/internal/policy/DecorViewMultiWinStubImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorViewMultiWinStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewMultiWinStubImpl$Provider;->provideNewInstance()Lcom/android/internal/policy/DecorViewMultiWinStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/android/internal/policy/DecorViewMultiWinStubImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/internal/policy/DecorViewMultiWinStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewMultiWinStubImpl$Provider;->provideSingleton()Lcom/android/internal/policy/DecorViewMultiWinStubImpl;

    move-result-object v0

    return-object v0
.end method
