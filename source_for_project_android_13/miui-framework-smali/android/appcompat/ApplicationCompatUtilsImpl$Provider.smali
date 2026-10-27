.class public final Landroid/appcompat/ApplicationCompatUtilsImpl$Provider;
.super Ljava/lang/Object;
.source "ApplicationCompatUtilsImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appcompat/ApplicationCompatUtilsImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/appcompat/ApplicationCompatUtilsImpl;",
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
.method public blacklist provideNewInstance()Landroid/appcompat/ApplicationCompatUtilsImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/appcompat/ApplicationCompatUtilsImpl;

    invoke-direct {v0}, Landroid/appcompat/ApplicationCompatUtilsImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/appcompat/ApplicationCompatUtilsImpl$Provider;->provideNewInstance()Landroid/appcompat/ApplicationCompatUtilsImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/appcompat/ApplicationCompatUtilsImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/appcompat/ApplicationCompatUtilsImpl$Provider$SINGLETON;->INSTANCE:Landroid/appcompat/ApplicationCompatUtilsImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/appcompat/ApplicationCompatUtilsImpl$Provider;->provideSingleton()Landroid/appcompat/ApplicationCompatUtilsImpl;

    move-result-object v0

    return-object v0
.end method
