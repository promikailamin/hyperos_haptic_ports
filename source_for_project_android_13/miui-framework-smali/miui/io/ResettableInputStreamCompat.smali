.class public Lmiui/io/ResettableInputStreamCompat;
.super Ljava/io/InputStream;
.source "ResettableInputStreamCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/io/ResettableInputStreamCompat$Type;
    }
.end annotation


# instance fields
.field private final blacklist mAssetManager:Landroid/content/res/AssetManager;

.field private final blacklist mAssetPath:Ljava/lang/String;

.field private final blacklist mByteArray:[B

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFinalizeGuardian:Ljava/lang/Object;

.field private volatile blacklist mInputStream:Ljava/io/InputStream;

.field private blacklist mLastException:Ljava/io/IOException;

.field private blacklist mOpenStack:Ljava/lang/Throwable;

.field private final blacklist mPath:Ljava/lang/String;

.field private final blacklist mType:Lmiui/io/ResettableInputStreamCompat$Type;

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOpenStack(Lmiui/io/ResettableInputStreamCompat;)Ljava/lang/Throwable;
    .registers 1

    iget-object p0, p0, Lmiui/io/ResettableInputStreamCompat;->mOpenStack:Ljava/lang/Throwable;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 77
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 25
    new-instance v0, Lmiui/io/ResettableInputStreamCompat$1;

    invoke-direct {v0, p0}, Lmiui/io/ResettableInputStreamCompat$1;-><init>(Lmiui/io/ResettableInputStreamCompat;)V

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mFinalizeGuardian:Ljava/lang/Object;

    .line 78
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 79
    sget-object v0, Lmiui/io/ResettableInputStreamCompat$Type;->File:Lmiui/io/ResettableInputStreamCompat$Type;

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mType:Lmiui/io/ResettableInputStreamCompat$Type;

    .line 80
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mPath:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mContext:Landroid/content/Context;

    .line 82
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mUri:Landroid/net/Uri;

    .line 83
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetManager:Landroid/content/res/AssetManager;

    .line 84
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetPath:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mByteArray:[B

    goto :goto_3c

    .line 87
    :cond_2c
    sget-object v0, Lmiui/io/ResettableInputStreamCompat$Type;->Uri:Lmiui/io/ResettableInputStreamCompat$Type;

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mType:Lmiui/io/ResettableInputStreamCompat$Type;

    .line 88
    iput-object p1, p0, Lmiui/io/ResettableInputStreamCompat;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lmiui/io/ResettableInputStreamCompat;->mUri:Landroid/net/Uri;

    .line 90
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mPath:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetManager:Landroid/content/res/AssetManager;

    .line 92
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetPath:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mByteArray:[B

    .line 95
    :goto_3c
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "assetPath"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 25
    new-instance v0, Lmiui/io/ResettableInputStreamCompat$1;

    invoke-direct {v0, p0}, Lmiui/io/ResettableInputStreamCompat$1;-><init>(Lmiui/io/ResettableInputStreamCompat;)V

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mFinalizeGuardian:Ljava/lang/Object;

    .line 102
    sget-object v0, Lmiui/io/ResettableInputStreamCompat$Type;->Asset:Lmiui/io/ResettableInputStreamCompat$Type;

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mType:Lmiui/io/ResettableInputStreamCompat$Type;

    .line 103
    iput-object p1, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetManager:Landroid/content/res/AssetManager;

    .line 104
    iput-object p2, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetPath:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mPath:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mContext:Landroid/content/Context;

    .line 107
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mUri:Landroid/net/Uri;

    .line 108
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mByteArray:[B

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 25
    new-instance v0, Lmiui/io/ResettableInputStreamCompat$1;

    invoke-direct {v0, p0}, Lmiui/io/ResettableInputStreamCompat$1;-><init>(Lmiui/io/ResettableInputStreamCompat;)V

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mFinalizeGuardian:Ljava/lang/Object;

    .line 64
    sget-object v0, Lmiui/io/ResettableInputStreamCompat$Type;->File:Lmiui/io/ResettableInputStreamCompat$Type;

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mType:Lmiui/io/ResettableInputStreamCompat$Type;

    .line 65
    iput-object p1, p0, Lmiui/io/ResettableInputStreamCompat;->mPath:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mContext:Landroid/content/Context;

    .line 67
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mUri:Landroid/net/Uri;

    .line 68
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetManager:Landroid/content/res/AssetManager;

    .line 69
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetPath:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mByteArray:[B

    .line 71
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 114
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 25
    new-instance v0, Lmiui/io/ResettableInputStreamCompat$1;

    invoke-direct {v0, p0}, Lmiui/io/ResettableInputStreamCompat$1;-><init>(Lmiui/io/ResettableInputStreamCompat;)V

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mFinalizeGuardian:Ljava/lang/Object;

    .line 115
    sget-object v0, Lmiui/io/ResettableInputStreamCompat$Type;->ByteArray:Lmiui/io/ResettableInputStreamCompat$Type;

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mType:Lmiui/io/ResettableInputStreamCompat$Type;

    .line 116
    iput-object p1, p0, Lmiui/io/ResettableInputStreamCompat;->mByteArray:[B

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mPath:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mContext:Landroid/content/Context;

    .line 119
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mUri:Landroid/net/Uri;

    .line 120
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetManager:Landroid/content/res/AssetManager;

    .line 121
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetPath:Ljava/lang/String;

    .line 122
    return-void
.end method

.method private blacklist openStream()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mLastException:Ljava/io/IOException;

    if-nez v0, :cond_75

    .line 129
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 130
    return-void

    .line 133
    :cond_9
    iget-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mFinalizeGuardian:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_c
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_12

    .line 135
    monitor-exit v1

    return-void

    .line 138
    :cond_12
    sget-object v0, Lmiui/io/ResettableInputStreamCompat$2;->$SwitchMap$miui$io$ResettableInputStreamCompat$Type:[I

    iget-object v2, p0, Lmiui/io/ResettableInputStreamCompat;->mType:Lmiui/io/ResettableInputStreamCompat$Type;

    invoke-virtual {v2}, Lmiui/io/ResettableInputStreamCompat$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_76

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_59

    .line 149
    :pswitch_22
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lmiui/io/ResettableInputStreamCompat;->mByteArray:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    .line 150
    goto :goto_50

    .line 146
    :pswitch_2c
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lmiui/io/ResettableInputStreamCompat;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    .line 147
    goto :goto_50

    .line 143
    :pswitch_37
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lmiui/io/ResettableInputStreamCompat;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    .line 144
    goto :goto_50

    .line 140
    :pswitch_41
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lmiui/io/ResettableInputStreamCompat;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    .line 141
    nop

    .line 155
    :goto_50
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mOpenStack:Ljava/lang/Throwable;

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 152
    :goto_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/io/ResettableInputStreamCompat;->mType:Lmiui/io/ResettableInputStreamCompat$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lmiui/io/ResettableInputStreamCompat;
    throw v0

    .line 156
    .restart local p0    # "this":Lmiui/io/ResettableInputStreamCompat;
    :catchall_72
    move-exception v0

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_c .. :try_end_74} :catchall_72

    throw v0

    .line 126
    :cond_75
    throw v0

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_41
        :pswitch_37
        :pswitch_2c
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lmiui/io/ResettableInputStreamCompat;->openStream()V

    .line 166
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_5

    .line 176
    return-void

    .line 179
    :cond_5
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mFinalizeGuardian:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_8
    iget-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_e

    .line 181
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_26

    return-void

    .line 184
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    iget-object v2, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1d

    .line 186
    :try_start_14
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mOpenStack:Ljava/lang/Throwable;

    .line 187
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    .line 188
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mLastException:Ljava/io/IOException;

    .line 189
    nop

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 186
    :catchall_1d
    move-exception v2

    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mOpenStack:Ljava/lang/Throwable;

    .line 187
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    .line 188
    iput-object v1, p0, Lmiui/io/ResettableInputStreamCompat;->mLastException:Ljava/io/IOException;

    .line 189
    nop

    .end local p0    # "this":Lmiui/io/ResettableInputStreamCompat;
    throw v2

    .line 190
    .restart local p0    # "this":Lmiui/io/ResettableInputStreamCompat;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public whitelist test-api mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .line 200
    :try_start_0
    invoke-direct {p0}, Lmiui/io/ResettableInputStreamCompat;->openStream()V

    .line 201
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    .line 204
    goto :goto_c

    .line 202
    :catch_9
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mLastException:Ljava/io/IOException;

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :goto_c
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 214
    :try_start_0
    invoke-direct {p0}, Lmiui/io/ResettableInputStreamCompat;->openStream()V

    .line 215
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 216
    :catch_a
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mLastException:Ljava/io/IOException;

    .line 219
    .end local v0    # "e":Ljava/io/IOException;
    invoke-super {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Lmiui/io/ResettableInputStreamCompat;->openStream()V

    .line 229
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([B)I
    .registers 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lmiui/io/ResettableInputStreamCompat;->openStream()V

    .line 239
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Lmiui/io/ResettableInputStreamCompat;->openStream()V

    .line 249
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_32

    .line 258
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1a

    .line 259
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_34

    .line 260
    monitor-exit p0

    return-void

    .line 261
    .end local p0    # "this":Lmiui/io/ResettableInputStreamCompat;
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_27

    goto :goto_2b

    .line 266
    :cond_27
    invoke-virtual {p0}, Lmiui/io/ResettableInputStreamCompat;->close()V

    goto :goto_32

    .line 263
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_34

    .line 264
    monitor-exit p0

    return-void

    .line 268
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 256
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Lmiui/io/ResettableInputStreamCompat;->openStream()V

    .line 276
    iget-object v0, p0, Lmiui/io/ResettableInputStreamCompat;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
