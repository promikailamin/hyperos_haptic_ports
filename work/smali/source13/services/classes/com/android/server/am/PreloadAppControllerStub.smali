.class public interface abstract Lcom/android/server/am/PreloadAppControllerStub;
.super Ljava/lang/Object;
.source "PreloadAppControllerStub.java"


# direct methods
.method public static get()Lcom/android/server/am/PreloadAppControllerStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/am/PreloadAppControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreloadAppControllerStub;

    return-object v0
.end method


# virtual methods
.method public abstract interceptWindowInjector(Landroid/view/WindowManager$LayoutParams;)Z
.end method
