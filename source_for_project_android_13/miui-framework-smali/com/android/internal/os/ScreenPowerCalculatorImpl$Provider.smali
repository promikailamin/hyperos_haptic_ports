.class public final Lcom/android/internal/os/ScreenPowerCalculatorImpl$Provider;
.super Ljava/lang/Object;
.source "ScreenPowerCalculatorImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ScreenPowerCalculatorImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/android/internal/os/ScreenPowerCalculatorImpl;",
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
.method public blacklist provideNewInstance()Lcom/android/internal/os/ScreenPowerCalculatorImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/android/internal/os/ScreenPowerCalculatorImpl;

    invoke-direct {v0}, Lcom/android/internal/os/ScreenPowerCalculatorImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/os/ScreenPowerCalculatorImpl$Provider;->provideNewInstance()Lcom/android/internal/os/ScreenPowerCalculatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/android/internal/os/ScreenPowerCalculatorImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/android/internal/os/ScreenPowerCalculatorImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/internal/os/ScreenPowerCalculatorImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/os/ScreenPowerCalculatorImpl$Provider;->provideSingleton()Lcom/android/internal/os/ScreenPowerCalculatorImpl;

    move-result-object v0

    return-object v0
.end method
