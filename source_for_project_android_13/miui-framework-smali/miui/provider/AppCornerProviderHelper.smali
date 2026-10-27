.class public Lmiui/provider/AppCornerProviderHelper;
.super Ljava/lang/Object;
.source "AppCornerProviderHelper.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 22
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x1

    .line 23
    .local v7, "allow":Z
    const/4 v8, 0x0

    .line 25
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_6
    sget-object v1, Lmiui/provider/AppCornerProviderConstants;->URI:Landroid/net/Uri;

    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v2, v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 28
    if-eqz v8, :cond_30

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_30

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_30

    .line 31
    :cond_26
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_37

    .line 32
    .local v0, "isShowMessage":I
    if-ne v0, v9, :cond_2d

    goto :goto_2e

    :cond_2d
    move v9, v10

    :goto_2e
    move v1, v9

    .end local v7    # "allow":Z
    .local v1, "allow":Z
    goto :goto_31

    .line 29
    .end local v0    # "isShowMessage":I
    .end local v1    # "allow":Z
    .restart local v7    # "allow":Z
    :cond_30
    :goto_30
    const/4 v1, 0x1

    .line 35
    .end local v7    # "allow":Z
    .restart local v1    # "allow":Z
    :goto_31
    if-eqz v8, :cond_36

    .line 36
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_36
    return v1

    .line 35
    .end local v1    # "allow":Z
    .restart local v7    # "allow":Z
    :catchall_37
    move-exception v0

    if-eqz v8, :cond_3d

    .line 36
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_3d
    throw v0
.end method
