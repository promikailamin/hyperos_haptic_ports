.class public final Landroid/app/ActivityThreadImpl$Provider;
.super Ljava/lang/Object;
.source "ActivityThreadImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThreadImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/app/ActivityThreadImpl;",
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
.method public blacklist provideNewInstance()Landroid/app/ActivityThreadImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/app/ActivityThreadImpl;

    invoke-direct {v0}, Landroid/app/ActivityThreadImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/ActivityThreadImpl$Provider;->provideNewInstance()Landroid/app/ActivityThreadImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/app/ActivityThreadImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/app/ActivityThreadImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/ActivityThreadImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/ActivityThreadImpl$Provider;->provideSingleton()Landroid/app/ActivityThreadImpl;

    move-result-object v0

    return-object v0
.end method
