.class public final Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl$Provider;
.super Ljava/lang/Object;
.source "MiuiScreenProjectionStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;",
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
.method public blacklist provideNewInstance()Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;

    invoke-direct {v0}, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl$Provider;->provideNewInstance()Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl$Provider$SINGLETON;->INSTANCE:Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl$Provider;->provideSingleton()Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;

    move-result-object v0

    return-object v0
.end method
