.class public final Landroid/view/HandWritingAllyKeyboardTypeStubImpl$Provider;
.super Ljava/lang/Object;
.source "HandWritingAllyKeyboardTypeStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandWritingAllyKeyboardTypeStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/view/HandWritingAllyKeyboardTypeStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/view/HandWritingAllyKeyboardTypeStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/view/HandWritingAllyKeyboardTypeStubImpl;

    invoke-direct {v0}, Landroid/view/HandWritingAllyKeyboardTypeStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/HandWritingAllyKeyboardTypeStubImpl$Provider;->provideNewInstance()Landroid/view/HandWritingAllyKeyboardTypeStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/view/HandWritingAllyKeyboardTypeStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/view/HandWritingAllyKeyboardTypeStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/HandWritingAllyKeyboardTypeStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/HandWritingAllyKeyboardTypeStubImpl$Provider;->provideSingleton()Landroid/view/HandWritingAllyKeyboardTypeStubImpl;

    move-result-object v0

    return-object v0
.end method
