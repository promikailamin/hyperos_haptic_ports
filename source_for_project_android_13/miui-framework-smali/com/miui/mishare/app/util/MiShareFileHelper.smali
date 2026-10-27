.class public Lcom/miui/mishare/app/util/MiShareFileHelper;
.super Ljava/lang/Object;
.source "MiShareFileHelper.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, "_data"

    .line 238
    .local v1, "column":Ljava/lang/String;
    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "projection":[Ljava/lang/String;
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 245
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 246
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 247
    .local v2, "column_index":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_33

    .line 250
    if-eqz v0, :cond_2b

    .line 251
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_2b
    return-object v3

    .line 250
    .end local v2    # "column_index":I
    :cond_2c
    if-eqz v0, :cond_31

    .line 251
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_31
    const/4 v2, 0x0

    return-object v2

    .line 250
    :catchall_33
    move-exception v2

    if-eqz v0, :cond_39

    .line 251
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_39
    throw v2
.end method

.method public static blacklist getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 130
    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 131
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "url":Ljava/lang/String;
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 133
    .local v1, "fragment":I
    const/4 v2, 0x0

    if-lez v1, :cond_1d

    .line 134
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_1d
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 138
    .local v3, "query":I
    if-lez v3, :cond_29

    .line 139
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_29
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 143
    .local v2, "filenamePos":I
    if-ltz v2, :cond_38

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_39

    :cond_38
    move-object v4, v0

    .line 147
    .local v4, "filename":Ljava/lang/String;
    :goto_39
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "[a-zA-Z_0-9\\.\\-\\(\\)\\%]+"

    invoke-static {v5, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 148
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 149
    .local v5, "dotPos":I
    if-ltz v5, :cond_5a

    .line 150
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 155
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "fragment":I
    .end local v2    # "filenamePos":I
    .end local v3    # "query":I
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "dotPos":I
    :cond_5a
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 95
    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 96
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "url":Ljava/lang/String;
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 98
    .local v1, "fragment":I
    const/4 v2, 0x0

    if-lez v1, :cond_1d

    .line 99
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_1d
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 103
    .local v3, "query":I
    if-lez v3, :cond_29

    .line 104
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_29
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 108
    .local v2, "filenamePos":I
    if-ltz v2, :cond_38

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_39

    :cond_38
    move-object v4, v0

    .line 110
    .local v4, "fileName":Ljava/lang/String;
    :goto_39
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 112
    :try_start_3f
    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_45} :catch_46

    return-object v5

    .line 113
    :catch_46
    move-exception v5

    .line 114
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 118
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "fragment":I
    .end local v2    # "filenamePos":I
    .end local v3    # "query":I
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4a
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 169
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a6

    .line 171
    invoke-static {p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v0

    const-string v2, ":"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_43

    .line 172
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "split":[Ljava/lang/String;
    aget-object v4, v2, v4

    .line 176
    .local v4, "type":Ljava/lang/String;
    const-string v5, "primary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 179
    .end local v0    # "docId":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    :cond_41
    goto/16 :goto_c8

    .line 181
    :cond_43
    invoke-static {p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 183
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "id":Ljava/lang/String;
    nop

    .line 185
    const-string v2, "content://downloads/public_downloads"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 184
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 187
    .local v2, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v2, v1, v1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 190
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "contentUri":Landroid/net/Uri;
    :cond_65
    invoke-static {p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 191
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "split":[Ljava/lang/String;
    aget-object v2, v1, v4

    .line 195
    .local v2, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 196
    .local v5, "contentUri":Landroid/net/Uri;
    const-string v6, "image"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 197
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_96

    .line 198
    :cond_81
    const-string v6, "video"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 199
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_96

    .line 200
    :cond_8c
    const-string v6, "audio"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 201
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 204
    :cond_96
    :goto_96
    const-string v6, "_id=?"

    .line 205
    .local v6, "selection":Ljava/lang/String;
    new-array v7, v3, [Ljava/lang/String;

    aget-object v3, v1, v3

    aput-object v3, v7, v4

    move-object v3, v7

    .line 209
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-string v4, "_id=?"

    invoke-static {p0, v5, v4, v3}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 213
    .end local v0    # "docId":Ljava/lang/String;
    .end local v1    # "split":[Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v6    # "selection":Ljava/lang/String;
    :cond_a6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 214
    invoke-static {p0, p1, v1, v1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_b7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 218
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_c8
    :goto_c8
    return-object v1
.end method

.method public static blacklist isAllImageOverview(Landroid/content/Context;Ljava/util/List;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .line 83
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 84
    return v0

    .line 86
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 87
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1e

    invoke-static {p0, v2}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isFileImageOverview(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_1e

    .line 90
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1d
    goto :goto_8

    .line 88
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1e
    :goto_1e
    return v0

    .line 91
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 269
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.downloads.documents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 261
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.externalstorage.documents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isFileImageOverview(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 71
    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "fileExtension":Ljava/lang/String;
    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 73
    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 74
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 75
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 76
    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 77
    const-string v1, "webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 78
    const-string v1, "wbmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v1, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v1, 0x1

    .line 72
    :goto_40
    return v1
.end method

.method public static blacklist isFilePdf(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 59
    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "fileExtension":Ljava/lang/String;
    const-string v1, "pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isImageCanPrint(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 28
    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "fileExtension":Ljava/lang/String;
    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 30
    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 31
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 32
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 33
    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 34
    const-string v1, "webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 35
    const-string v1, "wbmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v1, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v1, 0x1

    .line 29
    :goto_40
    return v1
.end method

.method public static blacklist isMediaDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 277
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.media.documents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isOfficeFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 39
    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "fileExtension":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isOfficeFile(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isVideoCanScreenThrow(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 45
    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "fileExtension":Ljava/lang/String;
    const-string v1, "3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 47
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 48
    const-string v1, "mov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    .line 46
    :goto_20
    return v1
.end method
