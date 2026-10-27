.class public Lcom/google/android/mms/util/DrmConvertSession;
.super Ljava/lang/Object;
.source "DrmConvertSession.java"


# static fields
.field public static final blacklist STATUS_FILE_ERROR:I = 0x1ec

.field public static final blacklist STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final blacklist STATUS_SUCCESS:I = 0xc8

.field public static final blacklist STATUS_UNKNOWN_ERROR:I = 0x1eb

.field private static final blacklist TAG:Ljava/lang/String; = "DrmConvertSession"


# instance fields
.field private blacklist mConvertSessionId:I

.field private blacklist mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method private constructor blacklist <init>(Landroid/drm/DrmManagerClient;I)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 44
    iput p2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    .line 45
    return-void
.end method

.method public static greylist open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;
    .registers 8

    .line 56
    const-string v0, "DrmConvertSession"

    .line 57
    nop

    .line 58
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p0, :cond_55

    if-eqz p1, :cond_55

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 60
    :try_start_11
    new-instance v3, Landroid/drm/DrmManagerClient;

    invoke-direct {v3, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_16} :catch_45

    .line 62
    :try_start_16
    invoke-virtual {v3, p1}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1a} :catch_23
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1a} :catch_1c

    .line 68
    move v2, p0

    goto :goto_54

    .line 66
    :catch_1c
    move-exception p0

    .line 67
    :try_start_1d
    const-string p1, "Could not access Open DrmFramework."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 63
    :catch_23
    move-exception p0

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversion of Mimetype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " is not supported."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_40} :catch_43
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_40} :catch_41

    .line 68
    goto :goto_54

    .line 72
    :catch_41
    move-exception p0

    goto :goto_47

    .line 69
    :catch_43
    move-exception p0

    goto :goto_4f

    .line 72
    :catch_45
    move-exception p0

    move-object v3, v1

    .line 73
    :goto_47
    const-string p0, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 69
    :catch_4d
    move-exception p0

    move-object v3, v1

    .line 70
    :goto_4f
    const-string p0, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_54
    goto :goto_56

    .line 77
    :cond_55
    move-object v3, v1

    :goto_56
    if-eqz v3, :cond_61

    if-gez v2, :cond_5b

    goto :goto_61

    .line 80
    :cond_5b
    new-instance p0, Lcom/google/android/mms/util/DrmConvertSession;

    invoke-direct {p0, v3, v2}, Lcom/google/android/mms/util/DrmConvertSession;-><init>(Landroid/drm/DrmManagerClient;I)V

    return-object p0

    .line 78
    :cond_61
    :goto_61
    return-object v1
.end method


# virtual methods
.method public greylist close(Ljava/lang/String;)I
    .registers 12

    .line 135
    const-string v0, "."

    const-string v1, "Failed to close File:"

    const-string v2, "DrmConvertSession"

    .line 136
    nop

    .line 137
    iget-object v3, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/16 v4, 0x1eb

    if-eqz v3, :cond_1a4

    iget v3, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    if-ltz v3, :cond_1a4

    .line 139
    :try_start_11
    iget-object v3, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v3, v5}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v3

    .line 140
    if-eqz v3, :cond_187

    iget v5, v3, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_187

    iget-object v5, v3, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_22} :catch_18b

    if-nez v5, :cond_26

    goto/16 :goto_187

    .line 145
    :cond_26
    nop

    .line 147
    const/16 v5, 0x1ec

    const/4 v6, 0x0

    :try_start_2a
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "rw"

    invoke-direct {v7, p1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_32} :catch_11f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_e3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_32} :catch_b7
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_32} :catch_7a
    .catchall {:try_start_2a .. :try_end_32} :catchall_77

    .line 148
    :try_start_32
    iget v6, v3, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 149
    iget-object v3, v3, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_3d} :catch_73
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3d} :catch_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_3d} :catch_6c
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_3d} :catch_69
    .catchall {:try_start_32 .. :try_end_3d} :catchall_65

    .line 150
    nop

    .line 164
    nop

    .line 166
    const/16 v3, 0xc8

    :try_start_41
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_44} :catch_48

    .line 171
    nop

    .line 178
    move v4, v3

    goto/16 :goto_18a

    .line 175
    :catch_48
    move-exception p1

    move v4, v3

    goto/16 :goto_18c

    .line 167
    :catch_4c
    move-exception v3

    .line 168
    nop

    .line 169
    :try_start_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_63} :catch_184

    goto/16 :goto_15a

    .line 164
    :catchall_65
    move-exception v3

    move-object v6, v7

    goto/16 :goto_161

    .line 160
    :catch_69
    move-exception v3

    move-object v6, v7

    goto :goto_7b

    .line 157
    :catch_6c
    move-exception v3

    move-object v6, v7

    goto :goto_b8

    .line 154
    :catch_6f
    move-exception v3

    move-object v6, v7

    goto/16 :goto_e4

    .line 151
    :catch_73
    move-exception v3

    move-object v6, v7

    goto/16 :goto_120

    .line 164
    :catchall_77
    move-exception v3

    goto/16 :goto_161

    .line 160
    :catch_7a
    move-exception v3

    .line 161
    :goto_7b
    :try_start_7b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Access to File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was denied denied by SecurityManager."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_7b .. :try_end_97} :catchall_77

    .line 164
    if-eqz v6, :cond_18a

    .line 166
    :try_start_99
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9e
    .catch Ljava/lang/IllegalStateException; {:try_start_99 .. :try_end_9c} :catch_18b

    .line 171
    goto/16 :goto_18a

    .line 167
    :catch_9e
    move-exception v3

    .line 168
    nop

    .line 169
    :try_start_a0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_b5
    .catch Ljava/lang/IllegalStateException; {:try_start_a0 .. :try_end_b5} :catch_184

    goto/16 :goto_15a

    .line 157
    :catch_b7
    move-exception v3

    .line 158
    :goto_b8
    nop

    .line 159
    :try_start_b9
    const-string v4, "Could not open file in mode: rw"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_b9 .. :try_end_be} :catchall_15f

    .line 164
    if-eqz v6, :cond_e0

    .line 166
    :try_start_c0
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4
    .catch Ljava/lang/IllegalStateException; {:try_start_c0 .. :try_end_c3} :catch_184

    .line 171
    :goto_c3
    goto :goto_e0

    .line 167
    :catch_c4
    move-exception v3

    .line 168
    nop

    .line 169
    :try_start_c6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_db
    .catch Ljava/lang/IllegalStateException; {:try_start_c6 .. :try_end_db} :catch_184

    goto/16 :goto_15a

    .line 171
    :goto_dd
    move v4, v5

    goto/16 :goto_18a

    .line 178
    :cond_e0
    :goto_e0
    move v4, v5

    goto/16 :goto_18a

    .line 154
    :catch_e3
    move-exception v3

    .line 155
    :goto_e4
    nop

    .line 156
    :try_start_e5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not access File: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_101
    .catchall {:try_start_e5 .. :try_end_101} :catchall_15f

    .line 164
    if-eqz v6, :cond_e0

    .line 166
    :try_start_103
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_107
    .catch Ljava/lang/IllegalStateException; {:try_start_103 .. :try_end_106} :catch_184

    goto :goto_c3

    .line 167
    :catch_107
    move-exception v3

    .line 168
    nop

    .line 169
    :try_start_109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_11e
    .catch Ljava/lang/IllegalStateException; {:try_start_109 .. :try_end_11e} :catch_184

    goto :goto_15a

    .line 151
    :catch_11f
    move-exception v3

    .line 152
    :goto_120
    nop

    .line 153
    :try_start_121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " could not be found."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13d
    .catchall {:try_start_121 .. :try_end_13d} :catchall_15f

    .line 164
    if-eqz v6, :cond_e0

    .line 166
    :try_start_13f
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_143
    .catch Ljava/lang/IllegalStateException; {:try_start_13f .. :try_end_142} :catch_184

    goto :goto_c3

    .line 167
    :catch_143
    move-exception v3

    .line 168
    nop

    .line 169
    :try_start_145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_15a
    invoke-static {v2, p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15d
    .catch Ljava/lang/IllegalStateException; {:try_start_145 .. :try_end_15d} :catch_184

    goto/16 :goto_dd

    .line 164
    :catchall_15f
    move-exception v3

    move v4, v5

    :goto_161
    if-eqz v6, :cond_182

    .line 166
    :try_start_163
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_166} :catch_167
    .catch Ljava/lang/IllegalStateException; {:try_start_163 .. :try_end_166} :catch_18b

    .line 171
    goto :goto_182

    .line 167
    :catch_167
    move-exception v4

    .line 168
    nop

    .line 169
    :try_start_169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_183

    .line 173
    :cond_182
    :goto_182
    move v5, v4

    :goto_183
    throw v3
    :try_end_184
    .catch Ljava/lang/IllegalStateException; {:try_start_169 .. :try_end_184} :catch_184

    .line 175
    :catch_184
    move-exception p1

    move v4, v5

    goto :goto_18c

    .line 143
    :cond_187
    :goto_187
    const/16 p1, 0x196

    move v4, p1

    .line 178
    :cond_18a
    :goto_18a
    goto :goto_1a4

    .line 175
    :catch_18b
    move-exception p1

    .line 176
    :goto_18c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not close convertsession. Convertsession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_1a4
    :goto_1a4
    return v4
.end method

.method public greylist convert([BI)[B
    .registers 7

    .line 93
    const-string v0, "DrmConvertSession"

    .line 94
    if-eqz p1, :cond_65

    .line 95
    nop

    .line 97
    const/4 v1, 0x0

    :try_start_6
    array-length v2, p1

    if-eq p2, v2, :cond_18

    .line 98
    new-array v2, p2, [B

    .line 99
    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget-object p1, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget p2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {p1, p2, v2}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object p1

    .line 101
    goto :goto_20

    .line 102
    :cond_18
    iget-object p2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {p2, v2, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object p1

    .line 105
    :goto_20
    if-eqz p1, :cond_2e

    iget p2, p1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2e

    iget-object p2, p1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    if-eqz p2, :cond_2e

    .line 108
    iget-object p1, p1, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_2d} :catch_49
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_2d} :catch_2f

    move-object v1, p1

    .line 116
    :cond_2e
    :goto_2e
    goto :goto_63

    .line 113
    :catch_2f
    move-exception p1

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert data. Convertsession: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 110
    :catch_49
    move-exception p1

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer with data to convert is illegal. Convertsession: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 117
    :goto_63
    nop

    .line 120
    return-object v1

    .line 118
    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter inBuffer is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
