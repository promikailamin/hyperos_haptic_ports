.class public final Lcom/miui/xspace/XSpaceManagerImpl$Provider;
.super Ljava/lang/Object;
.source "XSpaceManagerImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/xspace/XSpaceManagerImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/miui/xspace/XSpaceManagerImpl;",
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
.method public blacklist provideNewInstance()Lcom/miui/xspace/XSpaceManagerImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/miui/xspace/XSpaceManagerImpl;

    invoke-direct {v0}, Lcom/miui/xspace/XSpaceManagerImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/miui/xspace/XSpaceManagerImpl$Provider;->provideNewInstance()Lcom/miui/xspace/XSpaceManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/miui/xspace/XSpaceManagerImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/miui/xspace/XSpaceManagerImpl$Provider$SINGLETON;->INSTANCE:Lcom/miui/xspace/XSpaceManagerImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/miui/xspace/XSpaceManagerImpl$Provider;->provideSingleton()Lcom/miui/xspace/XSpaceManagerImpl;

    move-result-object v0

    return-object v0
.end method
