.class public final Landroid/app/ActivityImpl$Provider;
.super Ljava/lang/Object;
.source "ActivityImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/app/ActivityImpl;",
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
.method public blacklist provideNewInstance()Landroid/app/ActivityImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/app/ActivityImpl;

    invoke-direct {v0}, Landroid/app/ActivityImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/ActivityImpl$Provider;->provideNewInstance()Landroid/app/ActivityImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/app/ActivityImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/app/ActivityImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/ActivityImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/ActivityImpl$Provider;->provideSingleton()Landroid/app/ActivityImpl;

    move-result-object v0

    return-object v0
.end method
