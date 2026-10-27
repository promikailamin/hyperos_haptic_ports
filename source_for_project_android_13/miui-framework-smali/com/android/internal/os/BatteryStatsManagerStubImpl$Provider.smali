.class public final Lcom/android/internal/os/BatteryStatsManagerStubImpl$Provider;
.super Ljava/lang/Object;
.source "BatteryStatsManagerStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsManagerStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/android/internal/os/BatteryStatsManagerStubImpl;",
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
.method public blacklist provideNewInstance()Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsManagerStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsManagerStubImpl$Provider;->provideNewInstance()Lcom/android/internal/os/BatteryStatsManagerStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/android/internal/os/BatteryStatsManagerStubImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/internal/os/BatteryStatsManagerStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsManagerStubImpl$Provider;->provideSingleton()Lcom/android/internal/os/BatteryStatsManagerStubImpl;

    move-result-object v0

    return-object v0
.end method
