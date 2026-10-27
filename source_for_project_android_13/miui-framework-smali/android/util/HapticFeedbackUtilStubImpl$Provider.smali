.class public final Landroid/util/HapticFeedbackUtilStubImpl$Provider;
.super Ljava/lang/Object;
.source "HapticFeedbackUtilStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HapticFeedbackUtilStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/util/HapticFeedbackUtilStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/util/HapticFeedbackUtilStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/util/HapticFeedbackUtilStubImpl;

    invoke-direct {v0}, Landroid/util/HapticFeedbackUtilStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/util/HapticFeedbackUtilStubImpl$Provider;->provideNewInstance()Landroid/util/HapticFeedbackUtilStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/util/HapticFeedbackUtilStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/util/HapticFeedbackUtilStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/util/HapticFeedbackUtilStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/util/HapticFeedbackUtilStubImpl$Provider;->provideSingleton()Landroid/util/HapticFeedbackUtilStubImpl;

    move-result-object v0

    return-object v0
.end method
