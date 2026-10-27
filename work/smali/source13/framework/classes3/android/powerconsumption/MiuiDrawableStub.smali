.class public interface abstract Landroid/powerconsumption/MiuiDrawableStub;
.super Ljava/lang/Object;
.source "MiuiDrawableStub.java"


# direct methods
.method public static blacklist getInstance()Landroid/powerconsumption/MiuiDrawableStub;
    .registers 1

    .line 11
    const-class v0, Landroid/powerconsumption/MiuiDrawableStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/powerconsumption/MiuiDrawableStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getDeclineColor(I)I
.end method

.method public abstract blacklist getShouldDeclineWhiteColor()Z
.end method

.method public abstract blacklist isShouldDeclineColor(I)Z
.end method

.method public abstract blacklist setShouldDeclineWhiteColor(Z)V
.end method
