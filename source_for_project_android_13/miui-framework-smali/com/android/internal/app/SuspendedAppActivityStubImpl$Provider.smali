.class public final Lcom/android/internal/app/SuspendedAppActivityStubImpl$Provider;
.super Ljava/lang/Object;
.source "SuspendedAppActivityStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SuspendedAppActivityStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/android/internal/app/SuspendedAppActivityStubImpl;",
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
.method public blacklist provideNewInstance()Lcom/android/internal/app/SuspendedAppActivityStubImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/android/internal/app/SuspendedAppActivityStubImpl;

    invoke-direct {v0}, Lcom/android/internal/app/SuspendedAppActivityStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivityStubImpl$Provider;->provideNewInstance()Lcom/android/internal/app/SuspendedAppActivityStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/android/internal/app/SuspendedAppActivityStubImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/android/internal/app/SuspendedAppActivityStubImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/internal/app/SuspendedAppActivityStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivityStubImpl$Provider;->provideSingleton()Lcom/android/internal/app/SuspendedAppActivityStubImpl;

    move-result-object v0

    return-object v0
.end method
