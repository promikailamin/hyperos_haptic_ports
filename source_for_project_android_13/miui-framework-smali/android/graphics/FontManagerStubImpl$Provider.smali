.class public final Landroid/graphics/FontManagerStubImpl$Provider;
.super Ljava/lang/Object;
.source "FontManagerStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontManagerStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/graphics/FontManagerStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/graphics/FontManagerStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/graphics/FontManagerStubImpl;

    invoke-direct {v0}, Landroid/graphics/FontManagerStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/graphics/FontManagerStubImpl$Provider;->provideNewInstance()Landroid/graphics/FontManagerStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/graphics/FontManagerStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/graphics/FontManagerStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/graphics/FontManagerStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/graphics/FontManagerStubImpl$Provider;->provideSingleton()Landroid/graphics/FontManagerStubImpl;

    move-result-object v0

    return-object v0
.end method
