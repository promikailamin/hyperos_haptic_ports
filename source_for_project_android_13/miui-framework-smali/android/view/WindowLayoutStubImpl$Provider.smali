.class public final Landroid/view/WindowLayoutStubImpl$Provider;
.super Ljava/lang/Object;
.source "WindowLayoutStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowLayoutStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/view/WindowLayoutStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/view/WindowLayoutStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/view/WindowLayoutStubImpl;

    invoke-direct {v0}, Landroid/view/WindowLayoutStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/WindowLayoutStubImpl$Provider;->provideNewInstance()Landroid/view/WindowLayoutStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/view/WindowLayoutStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/view/WindowLayoutStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/WindowLayoutStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/WindowLayoutStubImpl$Provider;->provideSingleton()Landroid/view/WindowLayoutStubImpl;

    move-result-object v0

    return-object v0
.end method
