.class public final Landroid/inputmethodservice/InputMethodServiceInjector$Provider;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodServiceInjector$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/inputmethodservice/InputMethodServiceInjector;",
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
.method public blacklist provideNewInstance()Landroid/inputmethodservice/InputMethodServiceInjector;
    .registers 2

    .line 14
    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodServiceInjector$Provider;->provideNewInstance()Landroid/inputmethodservice/InputMethodServiceInjector;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/inputmethodservice/InputMethodServiceInjector;
    .registers 2

    .line 10
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector$Provider$SINGLETON;->INSTANCE:Landroid/inputmethodservice/InputMethodServiceInjector;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodServiceInjector$Provider;->provideSingleton()Landroid/inputmethodservice/InputMethodServiceInjector;

    move-result-object v0

    return-object v0
.end method
