.class public final Landroid/content/ClipboardManagerStubImpl$Provider;
.super Ljava/lang/Object;
.source "ClipboardManagerStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipboardManagerStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/content/ClipboardManagerStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/content/ClipboardManagerStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/content/ClipboardManagerStubImpl;

    invoke-direct {v0}, Landroid/content/ClipboardManagerStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/content/ClipboardManagerStubImpl$Provider;->provideNewInstance()Landroid/content/ClipboardManagerStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/content/ClipboardManagerStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/content/ClipboardManagerStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/content/ClipboardManagerStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/content/ClipboardManagerStubImpl$Provider;->provideSingleton()Landroid/content/ClipboardManagerStubImpl;

    move-result-object v0

    return-object v0
.end method
