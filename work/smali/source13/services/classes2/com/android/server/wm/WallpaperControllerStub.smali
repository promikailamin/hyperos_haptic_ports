.class public interface abstract Lcom/android/server/wm/WallpaperControllerStub;
.super Ljava/lang/Object;
.source "WallpaperControllerStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/WallpaperControllerStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/wm/WallpaperControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WallpaperControllerStub;

    return-object v0
.end method


# virtual methods
.method public getLastWallpaperX(Landroid/content/Context;)F
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method
