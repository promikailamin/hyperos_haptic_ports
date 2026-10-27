.class public final Lcom/android/internal/policy/DecorViewStubImpl$Provider;
.super Ljava/lang/Object;
.source "DecorViewStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorViewStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/android/internal/policy/DecorViewStubImpl;",
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
.method public blacklist provideNewInstance()Lcom/android/internal/policy/DecorViewStubImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/android/internal/policy/DecorViewStubImpl;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorViewStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewStubImpl$Provider;->provideNewInstance()Lcom/android/internal/policy/DecorViewStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/android/internal/policy/DecorViewStubImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/android/internal/policy/DecorViewStubImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/internal/policy/DecorViewStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewStubImpl$Provider;->provideSingleton()Lcom/android/internal/policy/DecorViewStubImpl;

    move-result-object v0

    return-object v0
.end method
