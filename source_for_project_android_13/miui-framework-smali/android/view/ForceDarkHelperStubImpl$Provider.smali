.class public final Landroid/view/ForceDarkHelperStubImpl$Provider;
.super Ljava/lang/Object;
.source "ForceDarkHelperStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ForceDarkHelperStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/view/ForceDarkHelperStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/view/ForceDarkHelperStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/view/ForceDarkHelperStubImpl;

    invoke-direct {v0}, Landroid/view/ForceDarkHelperStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/ForceDarkHelperStubImpl$Provider;->provideNewInstance()Landroid/view/ForceDarkHelperStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/view/ForceDarkHelperStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/view/ForceDarkHelperStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/ForceDarkHelperStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/ForceDarkHelperStubImpl$Provider;->provideSingleton()Landroid/view/ForceDarkHelperStubImpl;

    move-result-object v0

    return-object v0
.end method
