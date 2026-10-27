.class public final Lcom/android/internal/app/LocalePickerStubImpl$Provider;
.super Ljava/lang/Object;
.source "LocalePickerStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePickerStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/android/internal/app/LocalePickerStubImpl;",
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
.method public blacklist provideNewInstance()Lcom/android/internal/app/LocalePickerStubImpl;
    .registers 2

    .line 14
    new-instance v0, Lcom/android/internal/app/LocalePickerStubImpl;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerStubImpl$Provider;->provideNewInstance()Lcom/android/internal/app/LocalePickerStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Lcom/android/internal/app/LocalePickerStubImpl;
    .registers 2

    .line 10
    sget-object v0, Lcom/android/internal/app/LocalePickerStubImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/internal/app/LocalePickerStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerStubImpl$Provider;->provideSingleton()Lcom/android/internal/app/LocalePickerStubImpl;

    move-result-object v0

    return-object v0
.end method
