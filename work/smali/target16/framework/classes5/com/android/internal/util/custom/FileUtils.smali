.class public final Lcom/android/internal/util/custom/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static blacklist delete(Ljava/lang/String;)Z
    .registers 4

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    nop

    .line 137
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_a} :catch_b

    .line 140
    goto :goto_25

    .line 138
    :catch_b
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException trying to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FileUtils"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 141
    :goto_25
    return p0
.end method

.method public static blacklist fileExists(Ljava/lang/String;)Z
    .registers 2

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static blacklist isFileReadable(Ljava/lang/String;)Z
    .registers 2

    .line 114
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static blacklist isFileWritable(Ljava/lang/String;)Z
    .registers 2

    .line 124
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static blacklist readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 45
    const-string v0, "FileUtils"

    .line 46
    nop

    .line 49
    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_10} :catch_3f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_21
    .catchall {:try_start_4 .. :try_end_10} :catchall_1f

    .line 50
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_14} :catch_1d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_1b
    .catchall {:try_start_10 .. :try_end_14} :catchall_64

    .line 57
    nop

    .line 58
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    .line 62
    :cond_18
    :goto_18
    goto :goto_63

    .line 60
    :catch_19
    move-exception p0

    .line 63
    goto :goto_63

    .line 53
    :catch_1b
    move-exception v3

    goto :goto_23

    .line 51
    :catch_1d
    move-exception v3

    goto :goto_41

    .line 56
    :catchall_1f
    move-exception p0

    goto :goto_66

    .line 53
    :catch_21
    move-exception v3

    move-object v2, v1

    .line 54
    :goto_23
    :try_start_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_64

    .line 57
    if-eqz v2, :cond_18

    .line 58
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_19

    goto :goto_18

    .line 51
    :catch_3f
    move-exception v3

    move-object v2, v1

    .line 52
    :goto_41
    :try_start_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, " for reading"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_64

    .line 57
    if-eqz v2, :cond_18

    .line 58
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_19

    goto :goto_18

    .line 65
    :goto_63
    return-object v1

    .line 56
    :catchall_64
    move-exception p0

    move-object v1, v2

    .line 57
    :goto_66
    if-eqz v1, :cond_6e

    .line 58
    :try_start_68
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_6e

    .line 60
    :catch_6c
    move-exception v0

    goto :goto_6f

    .line 62
    :cond_6e
    :goto_6e
    nop

    .line 63
    :goto_6f
    throw p0
.end method

.method public static blacklist rename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 150
    const-string v0, " to "

    const-string v1, "FileUtils"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    nop

    .line 154
    :try_start_f
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_13} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_13} :catch_14

    .line 159
    goto :goto_55

    .line 157
    :catch_14
    move-exception v2

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException trying to rename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 155
    :catch_34
    move-exception v2

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException trying to rename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    nop

    .line 160
    :goto_54
    const/4 p0, 0x0

    :goto_55
    return p0
.end method

.method public static blacklist writeLine(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 74
    const-string v0, "FileUtils"

    .line 77
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_e} :catch_47
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_25
    .catchall {:try_start_4 .. :try_end_e} :catchall_23

    .line 78
    :try_start_e
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_11} :catch_20
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_1d
    .catchall {:try_start_e .. :try_end_11} :catchall_1a

    .line 87
    nop

    .line 88
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    .line 92
    goto :goto_18

    .line 90
    :catch_16
    move-exception p0

    .line 93
    nop

    .line 95
    :goto_18
    const/4 p0, 0x1

    return p0

    .line 86
    :catchall_1a
    move-exception p0

    move-object v2, v3

    goto :goto_6f

    .line 82
    :catch_1d
    move-exception p1

    move-object v2, v3

    goto :goto_26

    .line 79
    :catch_20
    move-exception p1

    move-object v2, v3

    goto :goto_48

    .line 86
    :catchall_23
    move-exception p0

    goto :goto_6f

    .line 82
    :catch_25
    move-exception p1

    .line 83
    :goto_26
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_23

    .line 84
    nop

    .line 87
    if-eqz v2, :cond_45

    .line 88
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_45

    .line 90
    :catch_43
    move-exception p0

    goto :goto_46

    .line 92
    :cond_45
    :goto_45
    nop

    .line 84
    :goto_46
    return v1

    .line 79
    :catch_47
    move-exception p1

    .line 80
    :goto_48
    :try_start_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " for writing"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_48 .. :try_end_64} :catchall_23

    .line 81
    nop

    .line 87
    if-eqz v2, :cond_6d

    .line 88
    :try_start_67
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_6d

    .line 90
    :catch_6b
    move-exception p0

    goto :goto_6e

    .line 92
    :cond_6d
    :goto_6d
    nop

    .line 81
    :goto_6e
    return v1

    .line 87
    :goto_6f
    if-eqz v2, :cond_77

    .line 88
    :try_start_71
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_77

    .line 90
    :catch_75
    move-exception p1

    goto :goto_78

    .line 92
    :cond_77
    :goto_77
    nop

    .line 93
    :goto_78
    throw p0
.end method
