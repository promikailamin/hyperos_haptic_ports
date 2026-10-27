.class public final Landroid/view/ChoreographerInjectorStubImpl$Provider;
.super Ljava/lang/Object;
.source "ChoreographerInjectorStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ChoreographerInjectorStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/view/ChoreographerInjectorStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/view/ChoreographerInjectorStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/view/ChoreographerInjectorStubImpl;

    invoke-direct {v0}, Landroid/view/ChoreographerInjectorStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/ChoreographerInjectorStubImpl$Provider;->provideNewInstance()Landroid/view/ChoreographerInjectorStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/view/ChoreographerInjectorStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/view/ChoreographerInjectorStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/ChoreographerInjectorStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/ChoreographerInjectorStubImpl$Provider;->provideSingleton()Landroid/view/ChoreographerInjectorStubImpl;

    move-result-object v0

    return-object v0
.end method
