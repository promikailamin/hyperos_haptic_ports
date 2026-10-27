.class public final Landroid/media/MediaPlayerStubImpl$Provider;
.super Ljava/lang/Object;
.source "MediaPlayerStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayerStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/media/MediaPlayerStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/media/MediaPlayerStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/media/MediaPlayerStubImpl;

    invoke-direct {v0}, Landroid/media/MediaPlayerStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/media/MediaPlayerStubImpl$Provider;->provideNewInstance()Landroid/media/MediaPlayerStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/media/MediaPlayerStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/media/MediaPlayerStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/media/MediaPlayerStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/media/MediaPlayerStubImpl$Provider;->provideSingleton()Landroid/media/MediaPlayerStubImpl;

    move-result-object v0

    return-object v0
.end method
