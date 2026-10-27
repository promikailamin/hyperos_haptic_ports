.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final greylist-max-o PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mColumns:[Ljava/lang/String;

.field private final greylist-max-o mProperties:[Landroid/mtp/MtpPropertyGroup$Property;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-class v0, Landroid/mtp/MtpPropertyGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>([I)V
    .registers 7
    .param p1, "properties"    # [I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    array-length v0, p1

    .line 60
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v1, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-array v2, v0, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 64
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_22

    .line 65
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p1, v2

    invoke-direct {p0, v4, v1}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 67
    .end local v2    # "i":I
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 69
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2b
    if-ge v2, v0, :cond_3a

    .line 70
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 72
    .end local v2    # "i":I
    :cond_3a
    return-void
.end method

.method private greylist-max-o createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .registers 8
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .line 75
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 78
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_92

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "type":I
    sget-object v2, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_79

    .line 152
    .end local v1    # "type":I
    :sswitch_1f
    const/4 v1, 0x6

    .line 153
    .restart local v1    # "type":I
    goto/16 :goto_79

    .line 157
    .end local v1    # "type":I
    :sswitch_22
    const/4 v1, 0x4

    .line 158
    .restart local v1    # "type":I
    goto :goto_79

    .line 122
    .end local v1    # "type":I
    :sswitch_24
    const v1, 0xffff

    .line 123
    .restart local v1    # "type":I
    goto :goto_79

    .line 133
    .end local v1    # "type":I
    :sswitch_28
    const-string v0, "album_artist"

    .line 134
    const v1, 0xffff

    .line 135
    .restart local v1    # "type":I
    goto :goto_79

    .line 129
    .end local v1    # "type":I
    :sswitch_2e
    const-string v0, "album"

    .line 130
    const v1, 0xffff

    .line 131
    .restart local v1    # "type":I
    goto :goto_79

    .line 104
    .end local v1    # "type":I
    :sswitch_34
    const-string/jumbo v0, "year"

    .line 105
    const v1, 0xffff

    .line 106
    .restart local v1    # "type":I
    goto :goto_79

    .line 141
    .end local v1    # "type":I
    :sswitch_3b
    const-string v0, "composer"

    .line 142
    const v1, 0xffff

    .line 143
    .restart local v1    # "type":I
    goto :goto_79

    .line 137
    .end local v1    # "type":I
    :sswitch_41
    const-string v0, "genre"

    .line 138
    const v1, 0xffff

    .line 139
    .restart local v1    # "type":I
    goto :goto_79

    .line 118
    .end local v1    # "type":I
    :sswitch_47
    const-string v0, "track"

    .line 119
    const/4 v1, 0x4

    .line 120
    .restart local v1    # "type":I
    goto :goto_79

    .line 114
    .end local v1    # "type":I
    :sswitch_4b
    const-string v0, "duration"

    .line 115
    const/4 v1, 0x6

    .line 116
    .restart local v1    # "type":I
    goto :goto_79

    .line 101
    .end local v1    # "type":I
    :sswitch_4f
    const v1, 0xffff

    .line 102
    .restart local v1    # "type":I
    goto :goto_79

    .line 145
    .end local v1    # "type":I
    :sswitch_53
    const-string v0, "description"

    .line 146
    const v1, 0xffff

    .line 147
    .restart local v1    # "type":I
    goto :goto_79

    .line 125
    .end local v1    # "type":I
    :sswitch_59
    const-string v0, "artist"

    .line 126
    const v1, 0xffff

    .line 127
    .restart local v1    # "type":I
    goto :goto_79

    .line 95
    .end local v1    # "type":I
    :sswitch_5f
    const v1, 0xffff

    .line 96
    .restart local v1    # "type":I
    goto :goto_79

    .line 111
    .end local v1    # "type":I
    :sswitch_63
    const/16 v1, 0xa

    .line 112
    .restart local v1    # "type":I
    goto :goto_79

    .line 108
    .end local v1    # "type":I
    :sswitch_66
    const/4 v1, 0x6

    .line 109
    .restart local v1    # "type":I
    goto :goto_79

    .line 98
    .end local v1    # "type":I
    :sswitch_68
    const v1, 0xffff

    .line 99
    .restart local v1    # "type":I
    goto :goto_79

    .line 92
    .end local v1    # "type":I
    :sswitch_6c
    const v1, 0xffff

    .line 93
    .restart local v1    # "type":I
    goto :goto_79

    .line 89
    .end local v1    # "type":I
    :sswitch_70
    const/16 v1, 0x8

    .line 90
    .restart local v1    # "type":I
    goto :goto_79

    .line 86
    .end local v1    # "type":I
    :sswitch_73
    const/4 v1, 0x4

    .line 87
    .restart local v1    # "type":I
    goto :goto_79

    .line 83
    .end local v1    # "type":I
    :sswitch_75
    const/4 v1, 0x4

    .line 84
    .restart local v1    # "type":I
    goto :goto_79

    .line 80
    .end local v1    # "type":I
    :sswitch_77
    const/4 v1, 0x6

    .line 81
    .restart local v1    # "type":I
    nop

    .line 165
    :goto_79
    if-eqz v0, :cond_8a

    .line 166
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    .line 169
    :cond_8a
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    nop

    :sswitch_data_92
    .sparse-switch
        0xdc01 -> :sswitch_77
        0xdc02 -> :sswitch_75
        0xdc03 -> :sswitch_73
        0xdc04 -> :sswitch_70
        0xdc07 -> :sswitch_6c
        0xdc09 -> :sswitch_68
        0xdc0b -> :sswitch_66
        0xdc41 -> :sswitch_63
        0xdc44 -> :sswitch_5f
        0xdc46 -> :sswitch_59
        0xdc48 -> :sswitch_53
        0xdc4e -> :sswitch_4f
        0xdc89 -> :sswitch_4b
        0xdc8b -> :sswitch_47
        0xdc8c -> :sswitch_41
        0xdc96 -> :sswitch_3b
        0xdc99 -> :sswitch_34
        0xdc9a -> :sswitch_2e
        0xdc9b -> :sswitch_28
        0xdce0 -> :sswitch_24
        0xde92 -> :sswitch_22
        0xde93 -> :sswitch_1f
        0xde94 -> :sswitch_22
        0xde99 -> :sswitch_1f
        0xde9a -> :sswitch_1f
    .end sparse-switch
.end method

.method private native greylist-max-o format_date_time(J)Ljava/lang/String;
.end method


# virtual methods
.method public blacklist getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .registers 28
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p4, "list"    # Landroid/mtp/MtpPropertyList;

    .line 180
    move-object/from16 v1, p0

    move-object/from16 v8, p4

    const/4 v0, 0x0

    .line 181
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v9

    .line 182
    .local v9, "id":I
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "path":Ljava/lang/String;
    iget-object v11, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v12, v11

    const/4 v13, 0x0

    move-object v2, v0

    move v14, v13

    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :goto_17
    if-ge v14, v12, :cond_1b3

    aget-object v15, v11, v14

    .line 184
    .local v15, "property":Landroid/mtp/MtpPropertyGroup$Property;
    iget v0, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_69

    if-nez v2, :cond_69

    .line 187
    :try_start_22
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_26} :catch_62
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_56

    move-object/from16 v6, p2

    :try_start_28
    invoke-static {v0, v6}, Landroid/mtp/MtpDatabase;->getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 189
    .local v17, "uri":Landroid/net/Uri;
    iget-object v0, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v19, "_data=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v10, v3, v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p1

    move-object/from16 v18, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 191
    if-eqz v2, :cond_50

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_50

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_4f} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4f} :catch_52

    .line 193
    const/4 v2, 0x0

    .line 199
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_50
    move-object v0, v2

    goto :goto_6c

    .line 197
    :catch_52
    move-exception v0

    goto :goto_59

    .line 195
    :catch_54
    move-exception v0

    goto :goto_65

    .line 197
    :catch_56
    move-exception v0

    move-object/from16 v6, p2

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    :goto_59
    sget-object v3, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v4, "Mediaprovider lookup failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_6c

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_62
    move-exception v0

    move-object/from16 v6, p2

    .line 196
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_65
    const v3, 0xa801

    return v3

    .line 184
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_69
    move-object/from16 v6, p2

    .line 201
    move-object v0, v2

    .end local v2    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    :goto_6c
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    sparse-switch v2, :sswitch_data_1bc

    .line 264
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    sparse-switch v2, :sswitch_data_206

    .line 275
    const-wide/16 v2, 0x0

    .line 276
    .local v2, "longValue":J
    if-eqz v0, :cond_1a0

    .line 277
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide/from16 v16, v2

    goto/16 :goto_1a2

    .line 256
    .end local v2    # "longValue":J
    :sswitch_84
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x6

    const-wide/16 v16, 0x0

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 257
    goto/16 :goto_1ae

    .line 261
    :sswitch_93
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 262
    goto/16 :goto_1ae

    .line 239
    :sswitch_a0
    const/4 v2, 0x0

    .line 240
    .local v2, "year":I
    if-eqz v0, :cond_a9

    .line 241
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 242
    :cond_a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0101T000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "dateTime":Ljava/lang/String;
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 244
    goto/16 :goto_1ae

    .line 246
    .end local v2    # "year":I
    .end local v3    # "dateTime":Ljava/lang/String;
    :sswitch_c7
    const/4 v2, 0x0

    .line 247
    .local v2, "track":I
    if-eqz v0, :cond_d2

    .line 248
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move v6, v2

    goto :goto_d3

    .line 247
    :cond_d2
    move v6, v2

    .line 249
    .end local v2    # "track":I
    .local v6, "track":I
    :goto_d3
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    rem-int/lit16 v2, v6, 0x3e8

    int-to-long v2, v2

    move-wide/from16 v16, v2

    move-object/from16 v2, p4

    move v3, v9

    move/from16 v18, v6

    .end local v6    # "track":I
    .local v18, "track":I
    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 251
    goto/16 :goto_1ae

    .line 233
    .end local v18    # "track":I
    :sswitch_e7
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    add-long v16, v2, v4

    .line 235
    .local v16, "puid":J
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 236
    goto/16 :goto_1ae

    .line 227
    .end local v16    # "puid":J
    :sswitch_10a
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_11b

    const-wide/16 v2, 0x0

    goto :goto_124

    :cond_11b
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    int-to-long v2, v2

    :goto_124
    move-wide v6, v2

    .line 227
    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 229
    goto/16 :goto_1ae

    .line 214
    :sswitch_12d
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 216
    goto/16 :goto_1ae

    .line 209
    :sswitch_13c
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 210
    goto/16 :goto_1ae

    .line 224
    :sswitch_147
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 225
    goto :goto_1ae

    .line 204
    :sswitch_156
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 205
    goto :goto_1ae

    .line 221
    :sswitch_163
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 222
    goto :goto_1ae

    .line 218
    :sswitch_173
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 219
    goto :goto_1ae

    .line 269
    :sswitch_183
    const-string v2, ""

    .line 270
    .local v2, "value":Ljava/lang/String;
    if-eqz v0, :cond_18d

    .line 271
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    :cond_18d
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v3, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 273
    goto :goto_1ae

    .line 266
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_193
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 267
    goto :goto_1ae

    .line 276
    .local v2, "longValue":J
    :cond_1a0
    move-wide/from16 v16, v2

    .line 278
    .end local v2    # "longValue":J
    .local v16, "longValue":J
    :goto_1a2
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 183
    .end local v15    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v16    # "longValue":J
    :goto_1ae
    add-int/lit8 v14, v14, 0x1

    move-object v2, v0

    goto/16 :goto_17

    .line 282
    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :cond_1b3
    if-eqz v2, :cond_1b8

    .line 283
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_1b8
    const/16 v0, 0x2001

    return v0

    nop

    :sswitch_data_1bc
    .sparse-switch
        0xdc01 -> :sswitch_173
        0xdc02 -> :sswitch_163
        0xdc03 -> :sswitch_156
        0xdc04 -> :sswitch_147
        0xdc07 -> :sswitch_13c
        0xdc09 -> :sswitch_12d
        0xdc0b -> :sswitch_10a
        0xdc41 -> :sswitch_e7
        0xdc44 -> :sswitch_13c
        0xdc4e -> :sswitch_12d
        0xdc8b -> :sswitch_c7
        0xdc99 -> :sswitch_a0
        0xdce0 -> :sswitch_13c
        0xde92 -> :sswitch_93
        0xde93 -> :sswitch_84
        0xde94 -> :sswitch_93
        0xde99 -> :sswitch_84
        0xde9a -> :sswitch_84
    .end sparse-switch

    :sswitch_data_206
    .sparse-switch
        0x0 -> :sswitch_193
        0xffff -> :sswitch_183
    .end sparse-switch
.end method
