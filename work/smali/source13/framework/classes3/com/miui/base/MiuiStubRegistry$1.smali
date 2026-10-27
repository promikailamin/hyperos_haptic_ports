.class Lcom/miui/base/MiuiStubRegistry$1;
.super Ljava/lang/Object;
.source "MiuiStubRegistry.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/base/MiuiStubRegistry;->registerSingleton(Ljava/lang/Class;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "TQ;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$baseClazz:Ljava/lang/Class;

.field final synthetic blacklist val$impl:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3

    .line 179
    iput-object p1, p0, Lcom/miui/base/MiuiStubRegistry$1;->val$baseClazz:Ljava/lang/Class;

    iput-object p2, p0, Lcom/miui/base/MiuiStubRegistry$1;->val$impl:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideNewInstance()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/base/MiuiStubRegistry$1;->val$baseClazz:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was registered as singleton"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist provideSingleton()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/miui/base/MiuiStubRegistry$1;->val$impl:Ljava/lang/Object;

    return-object v0
.end method
