.class public final Lcom/xiaomi/mirror/MiuiMirrorImpl$Provider;
.super Ljava/lang/Object;
.source "MiuiMirrorImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/MiuiMirrorImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/xiaomi/mirror/MiuiMirrorImpl;",
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
.method public blacklist provideNewInstance()Lcom/xiaomi/mirror/MiuiMirrorImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/xiaomi/mirror/MiuiMirrorImpl;

    invoke-direct {v0}, Lcom/xiaomi/mirror/MiuiMirrorImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/mirror/MiuiMirrorImpl$Provider;->provideNewInstance()Lcom/xiaomi/mirror/MiuiMirrorImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/xiaomi/mirror/MiuiMirrorImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/xiaomi/mirror/MiuiMirrorImpl$Provider$SINGLETON;->INSTANCE:Lcom/xiaomi/mirror/MiuiMirrorImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/mirror/MiuiMirrorImpl$Provider;->provideSingleton()Lcom/xiaomi/mirror/MiuiMirrorImpl;

    move-result-object v0

    return-object v0
.end method
