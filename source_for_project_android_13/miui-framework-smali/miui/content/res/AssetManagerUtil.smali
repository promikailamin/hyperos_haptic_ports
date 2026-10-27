.class public Lmiui/content/res/AssetManagerUtil;
.super Ljava/lang/Object;
.source "AssetManagerUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 3
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCookieName(Landroid/content/res/AssetManager;I)Ljava/lang/String;
    .registers 3
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "cookie"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13
    const-string v0, ""

    return-object v0
.end method
