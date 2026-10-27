.class public final Lcom/xiaomi/aiinput/AIInputTextStubImpl$Provider;
.super Ljava/lang/Object;
.source "AIInputTextStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aiinput/AIInputTextStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/xiaomi/aiinput/AIInputTextStubImpl;",
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
.method public blacklist provideNewInstance()Lcom/xiaomi/aiinput/AIInputTextStubImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/xiaomi/aiinput/AIInputTextStubImpl;

    invoke-direct {v0}, Lcom/xiaomi/aiinput/AIInputTextStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/aiinput/AIInputTextStubImpl$Provider;->provideNewInstance()Lcom/xiaomi/aiinput/AIInputTextStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/xiaomi/aiinput/AIInputTextStubImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/xiaomi/aiinput/AIInputTextStubImpl$Provider$SINGLETON;->INSTANCE:Lcom/xiaomi/aiinput/AIInputTextStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/aiinput/AIInputTextStubImpl$Provider;->provideSingleton()Lcom/xiaomi/aiinput/AIInputTextStubImpl;

    move-result-object v0

    return-object v0
.end method
