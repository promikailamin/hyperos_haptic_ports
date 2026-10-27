.class public final Landroid/media/MediaFunctionStubImpl$Provider;
.super Ljava/lang/Object;
.source "MediaFunctionStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFunctionStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/media/MediaFunctionStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/media/MediaFunctionStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/media/MediaFunctionStubImpl;

    invoke-direct {v0}, Landroid/media/MediaFunctionStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/media/MediaFunctionStubImpl$Provider;->provideNewInstance()Landroid/media/MediaFunctionStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/media/MediaFunctionStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/media/MediaFunctionStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/media/MediaFunctionStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/media/MediaFunctionStubImpl$Provider;->provideSingleton()Landroid/media/MediaFunctionStubImpl;

    move-result-object v0

    return-object v0
.end method
