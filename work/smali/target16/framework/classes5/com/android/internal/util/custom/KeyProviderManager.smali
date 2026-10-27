.class public final Lcom/android/internal/util/custom/KeyProviderManager;
.super Ljava/lang/Object;
.source "KeyProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "KeyProviderManager"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getProvider()Lcom/android/internal/util/custom/IKeyboxProvider;
    .registers 2

    .line 33
    new-instance v0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;-><init>(Lcom/android/internal/util/custom/KeyProviderManager-IA;)V

    return-object v0
.end method

.method public static blacklist isKeyboxAvailable()Z
    .registers 1

    .line 37
    invoke-static {}, Lcom/android/internal/util/custom/KeyProviderManager;->getProvider()Lcom/android/internal/util/custom/IKeyboxProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/custom/IKeyboxProvider;->hasKeybox()Z

    move-result v0

    return v0
.end method
