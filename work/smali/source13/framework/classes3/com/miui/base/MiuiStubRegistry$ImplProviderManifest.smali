.class public interface abstract Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;
.super Ljava/lang/Object;
.source "MiuiStubRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/base/MiuiStubRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImplProviderManifest"
.end annotation


# virtual methods
.method public abstract blacklist collectImplProviders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;)V"
        }
    .end annotation
.end method

.method public abstract blacklist collectImplProvidersClass(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method
