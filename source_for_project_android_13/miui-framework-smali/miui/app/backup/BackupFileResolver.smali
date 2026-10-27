.class public Lmiui/app/backup/BackupFileResolver;
.super Ljava/lang/Object;
.source "BackupFileResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Backup:BackupFileResolver"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addExtraType(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .registers 9
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "userId"    # I
    .param p2, "encyptedPwd"    # Ljava/lang/String;

    .line 134
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 135
    .local v0, "isEncrypted":Z
    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-ne p1, v2, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, v3

    .line 137
    .local v2, "isXSpace":Z
    :goto_e
    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v3

    .line 138
    .local v1, "extraType":I
    :goto_12
    if-eqz v2, :cond_1c

    .line 139
    if-eqz v0, :cond_19

    const/16 v3, 0x15

    goto :goto_1b

    :cond_19
    const/16 v3, 0x14

    :goto_1b
    move v1, v3

    .line 141
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    if-eqz v0, :cond_4c

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_4c
    if-eqz v2, :cond_66

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_66
    return-void
.end method

.method public static blacklist getMiuiHeader(Ljava/io/File;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .registers 7
    .param p0, "bakFile"    # Ljava/io/File;

    .line 27
    const-string v0, "IOException"

    const-string v1, "Backup:BackupFileResolver"

    const/4 v2, 0x0

    .line 28
    .local v2, "header":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    const/4 v3, 0x0

    .line 30
    .local v3, "in":Ljava/io/InputStream;
    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 31
    invoke-static {v3}, Lmiui/app/backup/BackupFileResolver;->readMiuiHeader(Ljava/io/InputStream;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;

    move-result-object v4
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_10} :catch_1d
    .catchall {:try_start_6 .. :try_end_10} :catchall_1b

    move-object v2, v4

    .line 35
    nop

    .line 37
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    .line 40
    :goto_15
    goto :goto_28

    .line 38
    :catch_16
    move-exception v4

    .line 39
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_15

    .line 35
    :catchall_1b
    move-exception v4

    goto :goto_29

    .line 32
    :catch_1d
    move-exception v4

    .line 33
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_1e
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1b

    .line 35
    nop

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_28

    .line 37
    :try_start_24
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_16

    goto :goto_15

    .line 43
    :cond_28
    :goto_28
    return-object v2

    .line 35
    :goto_29
    if-eqz v3, :cond_33

    .line 37
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 40
    goto :goto_33

    .line 38
    :catch_2f
    move-exception v5

    .line 39
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .end local v5    # "e":Ljava/io/IOException;
    :cond_33
    :goto_33
    throw v4
.end method

.method private static blacklist readHeadLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const-string v0, "MIUI BACKUP\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 153
    .local v0, "sequence":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 155
    .local v1, "r":I
    if-gez v1, :cond_10

    const/4 v2, 0x0

    goto :goto_1b

    :cond_10
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1b
    return-object v2
.end method

.method private static blacklist readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_1a

    .line 162
    const/16 v1, 0xa

    if-ne v2, v1, :cond_11

    goto :goto_1a

    .line 163
    :cond_11
    int-to-byte v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 166
    :cond_1a
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 167
    .local v1, "sequence":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 168
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v1, v3

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 170
    .end local v3    # "i":I
    :cond_36
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v3
.end method

.method public static blacklist readMiuiHeader(Ljava/io/InputStream;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .registers 10
    .param p0, "in"    # Ljava/io/InputStream;

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "header":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    :try_start_1
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readHeadLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "s":Ljava/lang/String;
    const-string v2, "MIUI BACKUP\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 51
    new-instance v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;

    invoke-direct {v2}, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;-><init>()V

    .line 52
    .local v2, "tmp":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->version:I

    .line 54
    iget v3, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->version:I

    packed-switch v3, :pswitch_data_c8

    goto/16 :goto_bd

    .line 56
    :pswitch_24
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 57
    const-string v3, " "

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "ss":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v3, v5

    iput-object v6, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->packageName:Ljava/lang/String;

    .line 59
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_3d

    .line 60
    aget-object v6, v3, v7

    iput-object v6, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->apkName:Ljava/lang/String;

    .line 62
    :cond_3d
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->featureId:I

    .line 64
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 65
    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_ce

    :cond_59
    goto :goto_81

    :sswitch_5a
    const-string v4, "21"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    const/4 v4, 0x3

    goto :goto_82

    :sswitch_64
    const-string v8, "20"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    goto :goto_82

    :sswitch_6d
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    move v4, v7

    goto :goto_82

    :sswitch_77
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    move v4, v5

    goto :goto_82

    :goto_81
    move v4, v6

    :goto_82
    packed-switch v4, :pswitch_data_e0

    goto :goto_bc

    .line 79
    :pswitch_86
    iput-boolean v7, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z

    .line 80
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->encryptedPwd:Ljava/lang/String;

    .line 81
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->userId:I

    goto :goto_bc

    .line 74
    :pswitch_9e
    iput-boolean v5, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z

    .line 75
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->userId:I

    .line 77
    goto :goto_bc

    .line 70
    :pswitch_b0
    iput-boolean v7, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z

    .line 71
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->encryptedPwd:Ljava/lang/String;

    .line 72
    goto :goto_bc

    .line 67
    :pswitch_b9
    iput-boolean v5, v2, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bb} :catch_be

    .line 68
    nop

    .line 86
    :goto_bc
    move-object v0, v2

    .line 95
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "tmp":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .end local v3    # "ss":[Ljava/lang/String;
    :cond_bd
    :goto_bd
    goto :goto_c6

    .line 93
    :catch_be
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Backup:BackupFileResolver"

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c6
    return-object v0

    nop

    :pswitch_data_c8
    .packed-switch 0x2
        :pswitch_24
    .end packed-switch

    :sswitch_data_ce
    .sparse-switch
        0x30 -> :sswitch_77
        0x31 -> :sswitch_6d
        0x63e -> :sswitch_64
        0x63f -> :sswitch_5a
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_b0
        :pswitch_9e
        :pswitch_86
    .end packed-switch
.end method

.method public static blacklist writeMiuiHeader(Ljava/io/OutputStream;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 13
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "featrueId"    # I
    .param p4, "encyptedPwd"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 104
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 106
    .local v2, "appName":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {v1, p2, v3, p5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 107
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_21} :catch_23

    move-object v2, v4

    .line 110
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_27

    .line 108
    :catch_23
    move-exception v3

    .line 109
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 112
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_27
    const-string v3, "MIUI BACKUP\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_80

    .line 117
    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {v0, p5, p4}, Lmiui/app/backup/BackupFileResolver;->addExtraType(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 124
    return-void
.end method
