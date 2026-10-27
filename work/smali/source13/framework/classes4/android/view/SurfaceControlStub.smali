.class public interface abstract Landroid/view/SurfaceControlStub;
.super Ljava/lang/Object;
.source "SurfaceControlStub.java"


# direct methods
.method public static blacklist getInstance()Landroid/view/SurfaceControlStub;
    .registers 1

    .line 14
    const-class v0, Landroid/view/SurfaceControlStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist reportOORException(Z)V
.end method
