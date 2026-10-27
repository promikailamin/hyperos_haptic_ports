.class public final Landroid/os/VibratorStubImpl$Provider;
.super Ljava/lang/Object;
.source "VibratorStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibratorStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/os/VibratorStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/os/VibratorStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/os/VibratorStubImpl;

    invoke-direct {v0}, Landroid/os/VibratorStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/os/VibratorStubImpl$Provider;->provideNewInstance()Landroid/os/VibratorStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/os/VibratorStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/os/VibratorStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/os/VibratorStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/os/VibratorStubImpl$Provider;->provideSingleton()Landroid/os/VibratorStubImpl;

    move-result-object v0

    return-object v0
.end method
