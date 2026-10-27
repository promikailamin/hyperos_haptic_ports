.class public final Lcom/xiaomi/freeform/MiuiFreeformImpl$Provider;
.super Ljava/lang/Object;
.source "MiuiFreeformImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/freeform/MiuiFreeformImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/xiaomi/freeform/MiuiFreeformImpl;",
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
.method public blacklist provideNewInstance()Lcom/xiaomi/freeform/MiuiFreeformImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/xiaomi/freeform/MiuiFreeformImpl;

    invoke-direct {v0}, Lcom/xiaomi/freeform/MiuiFreeformImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/freeform/MiuiFreeformImpl$Provider;->provideNewInstance()Lcom/xiaomi/freeform/MiuiFreeformImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/xiaomi/freeform/MiuiFreeformImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/xiaomi/freeform/MiuiFreeformImpl$Provider$SINGLETON;->INSTANCE:Lcom/xiaomi/freeform/MiuiFreeformImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/freeform/MiuiFreeformImpl$Provider;->provideSingleton()Lcom/xiaomi/freeform/MiuiFreeformImpl;

    move-result-object v0

    return-object v0
.end method
