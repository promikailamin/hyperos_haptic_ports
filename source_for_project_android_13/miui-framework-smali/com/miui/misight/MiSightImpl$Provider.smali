.class public final Lcom/miui/misight/MiSightImpl$Provider;
.super Ljava/lang/Object;
.source "MiSightImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/misight/MiSightImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/miui/misight/MiSightImpl;",
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
.method public blacklist provideNewInstance()Lcom/miui/misight/MiSightImpl;
    .registers 3

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Impl class com.miui.misight.MiSightImpl is marked as singleton"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/miui/misight/MiSightImpl$Provider;->provideNewInstance()Lcom/miui/misight/MiSightImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/miui/misight/MiSightImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/miui/misight/MiSightImpl$Provider$SINGLETON;->INSTANCE:Lcom/miui/misight/MiSightImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/miui/misight/MiSightImpl$Provider;->provideSingleton()Lcom/miui/misight/MiSightImpl;

    move-result-object v0

    return-object v0
.end method
