.class public Landroid/content/type/DefaultMimeMapFactory;
.super Ljava/lang/Object;
.source "DefaultMimeMapFactory.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static blacklist create()Llibcore/content/type/MimeMap;
    .registers 2

    .line 49
    nop

    .line 51
    new-instance v0, Landroid/content/type/DefaultMimeMapFactory$$ExternalSyntheticLambda0;

    const-class v1, Landroid/content/type/DefaultMimeMapFactory;

    invoke-direct {v0, v1}, Landroid/content/type/DefaultMimeMapFactory$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Landroid/content/type/DefaultMimeMapFactory;->create(Ljava/util/function/Function;)Llibcore/content/type/MimeMap;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create(Ljava/util/function/Function;)Llibcore/content/type/MimeMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;)",
            "Llibcore/content/type/MimeMap;"
        }
    .end annotation

    .line 61
    invoke-static {}, Llibcore/content/type/MimeMap;->builder()Llibcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 70
    const-string v1, "debian.mime.types"

    invoke-static {v0, p0, v1}, Landroid/content/type/DefaultMimeMapFactory;->parseTypes(Llibcore/content/type/MimeMap$Builder;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 71
    const-string v1, "android.mime.types"

    invoke-static {v0, p0, v1}, Landroid/content/type/DefaultMimeMapFactory;->parseTypes(Llibcore/content/type/MimeMap$Builder;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "vendor.mime.types"

    invoke-static {v0, p0, v1}, Landroid/content/type/DefaultMimeMapFactory;->parseTypes(Llibcore/content/type/MimeMap$Builder;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Llibcore/content/type/MimeMap$Builder;->build()Llibcore/content/type/MimeMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$create$0(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseTypes(Llibcore/content/type/MimeMap$Builder;Ljava/util/function/Function;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llibcore/content/type/MimeMap$Builder;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_95
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_95

    .line 79
    :try_start_c
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_89

    .line 81
    :try_start_16
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    :goto_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 83
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 86
    const/4 v3, 0x0

    move v4, v3

    .line 88
    :cond_28
    const/16 v5, 0x20

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 89
    if-gez v5, :cond_34

    .line 90
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 92
    :cond_34
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5c

    .line 96
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v4, v5, 0x1

    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_28

    .line 99
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Llibcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Llibcore/content/type/MimeMap$Builder;

    .line 100
    goto :goto_1d

    .line 94
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed line: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_75
    .catchall {:try_start_16 .. :try_end_75} :catchall_7f

    .line 101
    :cond_75
    :try_start_75
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_89

    if-eqz p1, :cond_7d

    :try_start_7a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_95
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_7d} :catch_95

    .line 103
    :cond_7d
    nop

    .line 104
    return-void

    .line 78
    :catchall_7f
    move-exception p0

    :try_start_80
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_88

    :catchall_84
    move-exception v0

    :try_start_85
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_88
    throw p0
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p0

    if-eqz p1, :cond_94

    :try_start_8c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception p1

    :try_start_91
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_94
    :goto_94
    throw p0
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_95} :catch_95
    .catch Ljava/lang/RuntimeException; {:try_start_91 .. :try_end_95} :catch_95

    .line 101
    :catch_95
    move-exception p0

    .line 102
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
