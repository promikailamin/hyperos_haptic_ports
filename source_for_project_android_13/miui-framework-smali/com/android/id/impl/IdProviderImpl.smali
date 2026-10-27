.class public Lcom/android/id/impl/IdProviderImpl;
.super Ljava/lang/Object;
.source "IdProviderImpl.java"

# interfaces
.implements Lcom/android/id/IdProvider;


# static fields
.field private static final blacklist AUTHORITY:Ljava/lang/String; = "content://com.miui.idprovider"

.field private static final blacklist COLUMN_NAME:Ljava/lang/String; = "uniform_id"

.field private static final blacklist PATH_AAID:Ljava/lang/String; = "/aaid"

.field private static final blacklist PATH_OAID:Ljava/lang/String; = "/oaid"

.field private static final blacklist PATH_UDID:Ljava/lang/String; = "/udid"

.field private static final blacklist PATH_VAID:Ljava/lang/String; = "/vaid"

.field private static final blacklist TAG:Ljava/lang/String; = "IdProviderImpl"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getAAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 88
    return-object v0

    .line 90
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAAID from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdProviderImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "content://com.miui.idprovider/aaid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 94
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_56

    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 95
    const-string v3, "uniform_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_44} :catch_4a
    .catchall {:try_start_34 .. :try_end_44} :catchall_48

    .line 100
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    return-object v0

    .line 100
    :catchall_48
    move-exception v0

    goto :goto_52

    .line 97
    :catch_4a
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v4, "get AAID exception"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .line 100
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_57

    :goto_52
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    throw v0

    .line 100
    :cond_56
    nop

    :goto_57
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    nop

    .line 102
    return-object v0
.end method

.method public whitelist getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 48
    return-object v0

    .line 50
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOAID from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdProviderImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "content://com.miui.idprovider/oaid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 54
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_56

    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 55
    const-string v3, "uniform_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_44} :catch_4a
    .catchall {:try_start_34 .. :try_end_44} :catchall_48

    .line 60
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    return-object v0

    .line 60
    :catchall_48
    move-exception v0

    goto :goto_52

    .line 57
    :catch_4a
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v4, "get OAID exception"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .line 60
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_57

    :goto_52
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    throw v0

    .line 60
    :cond_56
    nop

    :goto_57
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    nop

    .line 62
    return-object v0
.end method

.method public whitelist getUDID(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 28
    return-object v0

    .line 30
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUDID from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdProviderImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "content://com.miui.idprovider/udid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 34
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_56

    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 35
    const-string v3, "uniform_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_44} :catch_4a
    .catchall {:try_start_34 .. :try_end_44} :catchall_48

    .line 40
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 35
    return-object v0

    .line 40
    :catchall_48
    move-exception v0

    goto :goto_52

    .line 37
    :catch_4a
    move-exception v3

    .line 38
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v4, "get UDID exception"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .line 40
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_57

    :goto_52
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 41
    throw v0

    .line 40
    :cond_56
    nop

    :goto_57
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 41
    nop

    .line 42
    return-object v0
.end method

.method public whitelist getVAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 68
    return-object v0

    .line 70
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVAID from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdProviderImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "content://com.miui.idprovider/vaid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 74
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_56

    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 75
    const-string v3, "uniform_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_44} :catch_4a
    .catchall {:try_start_34 .. :try_end_44} :catchall_48

    .line 80
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    return-object v0

    .line 80
    :catchall_48
    move-exception v0

    goto :goto_52

    .line 77
    :catch_4a
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v4, "get VAID exception"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .line 80
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_57

    :goto_52
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    throw v0

    .line 80
    :cond_56
    nop

    :goto_57
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    nop

    .line 82
    return-object v0
.end method
