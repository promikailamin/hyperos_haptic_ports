.class public final Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl$Provider;
.super Ljava/lang/Object;
.source "ClipboardAlertDialogStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;",
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
.method public blacklist provideNewInstance()Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;
    .registers 2

    .line 14
    new-instance v0, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;

    invoke-direct {v0}, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl$Provider;->provideNewInstance()Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;
    .registers 2

    .line 10
    sget-object v0, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl$Provider$SINGLETON;->INSTANCE:Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl$Provider;->provideSingleton()Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;

    move-result-object v0

    return-object v0
.end method
