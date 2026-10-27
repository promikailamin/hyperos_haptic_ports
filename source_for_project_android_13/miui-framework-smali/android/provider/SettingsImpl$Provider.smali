.class public final Landroid/provider/SettingsImpl$Provider;
.super Ljava/lang/Object;
.source "SettingsImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SettingsImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/provider/SettingsImpl;",
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
.method public blacklist provideNewInstance()Landroid/provider/SettingsImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/provider/SettingsImpl;

    invoke-direct {v0}, Landroid/provider/SettingsImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/provider/SettingsImpl$Provider;->provideNewInstance()Landroid/provider/SettingsImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/provider/SettingsImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/provider/SettingsImpl$Provider$SINGLETON;->INSTANCE:Landroid/provider/SettingsImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/provider/SettingsImpl$Provider;->provideSingleton()Landroid/provider/SettingsImpl;

    move-result-object v0

    return-object v0
.end method
