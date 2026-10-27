.class public abstract Lcom/miui/joyose/JoyoseProxy;
.super Ljava/lang/Object;
.source "JoyoseProxy.java"


# static fields
.field public static final blacklist AUTHORITY:Ljava/lang/String; = "com.xiaomi.joyose"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    const-string v0, "content://com.xiaomi.joyose"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/joyose/JoyoseProxy;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkSceneWorkState(J)Z
    .registers 3
    .param p0, "scene"    # J

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getJoyoseSupportSceneList(Landroid/content/Context;)J
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 28
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 29
    .local v0, "cr":Landroid/content/ContentResolver;
    const-wide/16 v8, 0x0

    .line 30
    .local v8, "sceneList":J
    sget-object v1, Lcom/miui/joyose/JoyoseProxy;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "scenemanager"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 31
    .local v1, "typeUri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 32
    .local v2, "typeCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_36

    .line 33
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    .line 34
    :goto_26
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 35
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    goto :goto_26

    .line 38
    :cond_33
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_36
    return-wide v8
.end method
