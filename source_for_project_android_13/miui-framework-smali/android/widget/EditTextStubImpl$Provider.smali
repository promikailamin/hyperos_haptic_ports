.class public final Landroid/widget/EditTextStubImpl$Provider;
.super Ljava/lang/Object;
.source "EditTextStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditTextStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/widget/EditTextStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/widget/EditTextStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/widget/EditTextStubImpl;

    invoke-direct {v0}, Landroid/widget/EditTextStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/widget/EditTextStubImpl$Provider;->provideNewInstance()Landroid/widget/EditTextStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/widget/EditTextStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/widget/EditTextStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/widget/EditTextStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/widget/EditTextStubImpl$Provider;->provideSingleton()Landroid/widget/EditTextStubImpl;

    move-result-object v0

    return-object v0
.end method
