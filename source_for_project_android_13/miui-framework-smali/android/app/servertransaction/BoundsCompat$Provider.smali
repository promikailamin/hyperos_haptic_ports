.class public final Landroid/app/servertransaction/BoundsCompat$Provider;
.super Ljava/lang/Object;
.source "BoundsCompat$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/BoundsCompat$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/app/servertransaction/BoundsCompat;",
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
.method public blacklist provideNewInstance()Landroid/app/servertransaction/BoundsCompat;
    .registers 2

    .line 14
    new-instance v0, Landroid/app/servertransaction/BoundsCompat;

    invoke-direct {v0}, Landroid/app/servertransaction/BoundsCompat;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/servertransaction/BoundsCompat$Provider;->provideNewInstance()Landroid/app/servertransaction/BoundsCompat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/app/servertransaction/BoundsCompat;
    .registers 2

    .line 10
    sget-object v0, Landroid/app/servertransaction/BoundsCompat$Provider$SINGLETON;->INSTANCE:Landroid/app/servertransaction/BoundsCompat;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/servertransaction/BoundsCompat$Provider;->provideSingleton()Landroid/app/servertransaction/BoundsCompat;

    move-result-object v0

    return-object v0
.end method
