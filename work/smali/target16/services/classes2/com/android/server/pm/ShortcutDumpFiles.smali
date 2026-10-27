.class public Lcom/android/server/pm/ShortcutDumpFiles;
.super Ljava/lang/Object;
.source "ShortcutDumpFiles.java"


# instance fields
.field public final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public static synthetic $r8$lambda$Dp01k4Jw-eRRUd9hDAYA4PwvU9o([BLjava/io/PrintWriter;)V
    .registers 3

    .line 72
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ezn0Ei_tjz43Z-MaaOD-FGb-7DE(Ljava/io/File;)Z
    .registers 1

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HLKfdv_pARS01WpPd1x5IsCgDYk(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    return-void
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 8

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object p0

    .line 79
    new-instance v0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_76

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_76

    .line 84
    :cond_1c
    new-instance p0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 86
    array-length p0, v0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, p0, :cond_75

    aget-object v2, v0, v1

    .line 87
    const-string v3, "*** Dumping: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v3, "mtime: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5a} :catch_7c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5a} :catch_7c

    .line 96
    :goto_5a
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 97
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_64

    goto :goto_5a

    :catchall_64
    move-exception p0

    goto :goto_6c

    .line 99
    :cond_66
    :try_start_66
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_69} :catch_7c
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_7c

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 93
    :goto_6c
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception p1

    :try_start_71
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_74
    throw p0

    :cond_75
    return-void

    .line 81
    :cond_76
    :goto_76
    const-string p0, "  No dump files found."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_7b} :catch_7c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7b} :catch_7c

    return-void

    :catch_7c
    move-exception p0

    .line 102
    const-string p1, "ShortcutService"

    const-string v0, "Failed to print dump files"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public save(Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .registers 8

    .line 47
    const-string v0, "ShortcutService"

    const/4 v1, 0x0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_29

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_27
    move-exception p0

    goto :goto_4f

    .line 54
    :cond_29
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    new-instance p0, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3d} :catch_27
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3d} :catch_27

    .line 62
    :try_start_3d
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_45

    .line 63
    :try_start_40
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_43} :catch_27
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_27

    const/4 p0, 0x1

    return p0

    :catchall_45
    move-exception p2

    .line 60
    :try_start_46
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception p0

    :try_start_4b
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4e
    throw p2
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4f} :catch_27
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4f} :catch_27

    .line 66
    :goto_4f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create dump file: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public save(Ljava/lang/String;[B)Z
    .registers 4

    .line 72
    new-instance v0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method
