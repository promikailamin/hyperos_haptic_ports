.class public Landroid/aconfig/DeviceProtos;
.super Ljava/lang/Object;
.source "DeviceProtos.java"


# static fields
.field private static final blacklist APEX_ACONFIG_PATH_SUFFIX:Ljava/lang/String; = "/etc/aconfig_flags.pb"

.field private static final blacklist APEX_DIR:Ljava/lang/String; = "/apex"

.field public static final blacklist PATHS:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 34
    const-string v0, "/product/etc/aconfig_flags.pb"

    const-string v1, "/vendor/etc/aconfig_flags.pb"

    const-string v2, "/system/etc/aconfig_flags.pb"

    const-string v3, "/system_ext/etc/aconfig_flags.pb"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/aconfig/DeviceProtos;->PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist loadAndParseFlagProtos()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/aconfig/nano/Aconfig$parsed_flag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {}, Landroid/aconfig/DeviceProtos;->parsedFlagsProtoPaths()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 59
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->readAllBytes()[B

    move-result-object v2

    invoke-static {v2}, Landroid/aconfig/nano/Aconfig$parsed_flags;->parseFrom([B)Landroid/aconfig/nano/Aconfig$parsed_flags;

    move-result-object v2

    .line 60
    iget-object v2, v2, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v4, :cond_34

    aget-object v6, v2, v5

    .line 61
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_38

    .line 60
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 63
    :cond_34
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 64
    goto :goto_d

    .line 58
    :catchall_38
    move-exception v0

    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw v0

    .line 66
    :cond_42
    return-object v0
.end method

.method public static blacklist parsedFlagsProtoPaths()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/aconfig/DeviceProtos;->PATHS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    new-instance v1, Ljava/io/File;

    const-string v2, "/apex"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_19

    .line 78
    return-object v0

    .line 81
    :cond_19
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 82
    if-nez v1, :cond_20

    .line 83
    return-object v0

    .line 86
    :cond_20
    array-length v2, v1

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_5c

    aget-object v4, v1, v3

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 90
    goto :goto_59

    .line 93
    :cond_33
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/etc/aconfig_flags.pb"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_52

    .line 95
    goto :goto_59

    .line 98
    :cond_52
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 100
    :cond_5c
    return-object v0
.end method
