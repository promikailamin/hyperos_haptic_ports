.class public Lcom/miui/whetstone/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# static fields
.field private static final blacklist PID_TIME_IN_STATE:Ljava/lang/String; = "/proc/%s/time_in_state"

.field private static final blacklist UID_TIME_IN_STATE:Ljava/lang/String; = "/proc/uid_time_in_state"

.field public static blacklist mUidTimeInStateAvailable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    invoke-static {}, Lcom/miui/whetstone/SystemInfo;->isUidTimeInStateAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/SystemInfo;->mUidTimeInStateAvailable:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTimeInStateByPid(I)[I
    .registers 6
    .param p0, "pid"    # I

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "/proc/%s/time_in_state"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "file1":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    return-object v2

    .line 38
    :cond_21
    invoke-static {v0}, Lcom/miui/whetstone/SystemInfo;->readPidTimeInState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2c

    return-object v2

    .line 42
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "strings":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/miui/whetstone/SystemInfo$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/miui/whetstone/SystemInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    return-object v3
.end method

.method public static blacklist getTimeInStateByUid(I)[I
    .registers 6
    .param p0, "uid"    # I

    .line 26
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_time_in_state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "file":Ljava/io/File;
    invoke-static {v0, p0}, Lcom/miui/whetstone/SystemInfo;->readUidTimeInState(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_30

    .line 31
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "strings":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/miui/whetstone/SystemInfo$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/miui/whetstone/SystemInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    return-object v3

    .line 29
    .end local v2    # "strings":[Ljava/lang/String;
    :cond_30
    :goto_30
    const/4 v2, 0x0

    return-object v2
.end method

.method private static blacklist isUidTimeInStateAvailable()Z
    .registers 2

    .line 22
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_time_in_state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static blacklist readPidTimeInState(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .param p0, "file"    # Ljava/io/File;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, "result":Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_47

    .line 64
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_13
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "temp":Ljava/lang/String;
    if-eqz v2, :cond_39

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "cpu"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 66
    goto :goto_13

    .line 68
    :cond_27
    const-string v2, "\\s+"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_3d

    goto :goto_13

    .line 71
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_47

    .line 73
    .end local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_4b

    .line 63
    .end local v3    # "temp":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_3d
    move-exception v2

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v3

    :try_start_43
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/lang/StringBuilder;
    .end local p0    # "file":Ljava/io/File;
    :goto_46
    throw v2
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_47

    .line 71
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "result":Ljava/lang/StringBuilder;
    .restart local p0    # "file":Ljava/io/File;
    :catch_47
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist readSysNodeInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "nodePath"    # Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_16

    goto :goto_51

    .line 87
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v1, "info":Ljava/lang/StringBuilder;
    :try_start_1b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_48

    .line 90
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x1

    .line 91
    .local v3, "firstIn":Z
    :goto_26
    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "temp":Ljava/lang/String;
    if-eqz v4, :cond_3a

    .line 92
    if-eqz v3, :cond_31

    .line 93
    const/4 v3, 0x0

    goto :goto_36

    .line 95
    :cond_31
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :goto_36
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_3e

    goto :goto_26

    .line 99
    .end local v3    # "firstIn":Z
    :cond_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_48

    .line 101
    .end local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4c

    .line 89
    .end local v5    # "temp":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_3e
    move-exception v3

    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v4

    :try_start_44
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "info":Ljava/lang/StringBuilder;
    .end local p0    # "nodePath":Ljava/lang/String;
    :goto_47
    throw v3
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    .line 99
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "info":Ljava/lang/StringBuilder;
    .restart local p0    # "nodePath":Ljava/lang/String;
    :catch_48
    move-exception v2

    .line 100
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 84
    .end local v1    # "info":Ljava/lang/StringBuilder;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist readUidTimeInState(Ljava/io/File;I)Ljava/lang/String;
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "uid"    # I

    .line 48
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_50

    .line 49
    .local v0, "reader":Ljava/io/BufferedReader;
    :cond_e
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "temp":Ljava/lang/String;
    if-eqz v1, :cond_42

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 51
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_46

    .line 54
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 51
    return-object v1

    .line 54
    :cond_42
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_50

    .line 56
    .end local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_54

    .line 48
    .end local v2    # "temp":Ljava/lang/String;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_46
    move-exception v1

    :try_start_47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v2

    :try_start_4c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "uid":I
    :goto_4f
    throw v1
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_50

    .line 54
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "uid":I
    :catch_50
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    :goto_54
    const/4 v0, 0x0

    return-object v0
.end method
