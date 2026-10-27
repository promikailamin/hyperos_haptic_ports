.class public final Landroid/app/ApplicationImpl$Provider;
.super Ljava/lang/Object;
.source "ApplicationImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/app/ApplicationImpl;",
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
.method public blacklist provideNewInstance()Landroid/app/ApplicationImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/app/ApplicationImpl;

    invoke-direct {v0}, Landroid/app/ApplicationImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/ApplicationImpl$Provider;->provideNewInstance()Landroid/app/ApplicationImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/app/ApplicationImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/app/ApplicationImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/ApplicationImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/ApplicationImpl$Provider;->provideSingleton()Landroid/app/ApplicationImpl;

    move-result-object v0

    return-object v0
.end method
