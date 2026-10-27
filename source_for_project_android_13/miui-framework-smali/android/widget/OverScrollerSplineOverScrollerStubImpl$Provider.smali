.class public final Landroid/widget/OverScrollerSplineOverScrollerStubImpl$Provider;
.super Ljava/lang/Object;
.source "OverScrollerSplineOverScrollerStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScrollerSplineOverScrollerStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/widget/OverScrollerSplineOverScrollerStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/widget/OverScrollerSplineOverScrollerStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;

    invoke-direct {v0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl$Provider;->provideNewInstance()Landroid/widget/OverScrollerSplineOverScrollerStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/widget/OverScrollerSplineOverScrollerStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/widget/OverScrollerSplineOverScrollerStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl$Provider;->provideSingleton()Landroid/widget/OverScrollerSplineOverScrollerStubImpl;

    move-result-object v0

    return-object v0
.end method
