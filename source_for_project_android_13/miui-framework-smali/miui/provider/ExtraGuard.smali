.class public final Lmiui/provider/ExtraGuard;
.super Ljava/lang/Object;
.source "ExtraGuard.java"


# static fields
.field public static final blacklist DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.miui.guardprovider"

.field public static final blacklist VIRUS_BLACK:I = 0x2

.field public static final blacklist VIRUS_GRAY:I = 0x3

.field public static final blacklist VIRUS_WHITE:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkApkForVirusInfo(Landroid/content/Context;Landroid/net/Uri;Z)Lmiui/provider/ExtraGuardVirusInfoEntity;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cloud"    # Z

    .line 29
    if-eqz p1, :cond_83

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 33
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 35
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_7
    const-string v0, "content://guard/sync_scan"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v8, v0

    .line 36
    .local v8, "antiUri":Landroid/net/Uri;
    if-eqz v8, :cond_72

    .line 37
    new-instance v0, Lmiui/provider/ExtraGuardVirusInfoEntity;

    invoke-direct {v0}, Lmiui/provider/ExtraGuardVirusInfoEntity;-><init>()V

    move-object v9, v0

    .line 38
    .local v9, "result":Lmiui/provider/ExtraGuardVirusInfoEntity;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 41
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 42
    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 43
    const-string v0, "Type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setType(I)V

    .line 44
    const-string v0, "Description"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setDescription(Ljava/lang/String;)V

    .line 45
    const-string v0, "VirusName"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setVirusName(Ljava/lang/String;)V

    .line 46
    const-string v0, "EngineName"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setEngineName(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6d} :catch_75
    .catchall {:try_start_7 .. :try_end_6d} :catchall_73

    .line 48
    :cond_6d
    nop

    .line 53
    invoke-static {v7}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 48
    return-object v9

    .line 36
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "antiUri":Landroid/net/Uri;
    .end local v9    # "result":Lmiui/provider/ExtraGuardVirusInfoEntity;
    :cond_72
    goto :goto_79

    .line 53
    :catchall_73
    move-exception v0

    goto :goto_7f

    .line 50
    :catch_75
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    :try_start_76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_73

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_79
    invoke-static {v7}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    nop

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 53
    :goto_7f
    invoke-static {v7}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    throw v0

    .line 30
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
