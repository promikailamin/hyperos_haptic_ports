.class public interface abstract Landroid/app/WallpaperManagerStub;
.super Ljava/lang/Object;
.source "WallpaperManagerStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/app/WallpaperManagerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    const-class v0, Landroid/app/WallpaperManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManagerStub;

    sput-object v0, Landroid/app/WallpaperManagerStub;->sInstance:Landroid/app/WallpaperManagerStub;

    return-void
.end method

.method public static blacklist getInstance()Landroid/app/WallpaperManagerStub;
    .registers 1

    .line 15
    sget-object v0, Landroid/app/WallpaperManagerStub;->sInstance:Landroid/app/WallpaperManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist notifyWallpaperChanged(Landroid/content/Context;ILjava/lang/String;IZ)V
.end method
