.class public final Landroid/hovermode/MiuiHoverModeImpl$Provider;
.super Ljava/lang/Object;
.source "MiuiHoverModeImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hovermode/MiuiHoverModeImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/hovermode/MiuiHoverModeImpl;",
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
.method public blacklist provideNewInstance()Landroid/hovermode/MiuiHoverModeImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/hovermode/MiuiHoverModeImpl;

    invoke-direct {v0}, Landroid/hovermode/MiuiHoverModeImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/hovermode/MiuiHoverModeImpl$Provider;->provideNewInstance()Landroid/hovermode/MiuiHoverModeImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/hovermode/MiuiHoverModeImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/hovermode/MiuiHoverModeImpl$Provider$SINGLETON;->INSTANCE:Landroid/hovermode/MiuiHoverModeImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/hovermode/MiuiHoverModeImpl$Provider;->provideSingleton()Landroid/hovermode/MiuiHoverModeImpl;

    move-result-object v0

    return-object v0
.end method
