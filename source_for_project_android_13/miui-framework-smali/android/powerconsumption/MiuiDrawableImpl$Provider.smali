.class public final Landroid/powerconsumption/MiuiDrawableImpl$Provider;
.super Ljava/lang/Object;
.source "MiuiDrawableImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/powerconsumption/MiuiDrawableImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/powerconsumption/MiuiDrawableImpl;",
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
.method public blacklist provideNewInstance()Landroid/powerconsumption/MiuiDrawableImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/powerconsumption/MiuiDrawableImpl;

    invoke-direct {v0}, Landroid/powerconsumption/MiuiDrawableImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/powerconsumption/MiuiDrawableImpl$Provider;->provideNewInstance()Landroid/powerconsumption/MiuiDrawableImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/powerconsumption/MiuiDrawableImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/powerconsumption/MiuiDrawableImpl$Provider$SINGLETON;->INSTANCE:Landroid/powerconsumption/MiuiDrawableImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/powerconsumption/MiuiDrawableImpl$Provider;->provideSingleton()Landroid/powerconsumption/MiuiDrawableImpl;

    move-result-object v0

    return-object v0
.end method
