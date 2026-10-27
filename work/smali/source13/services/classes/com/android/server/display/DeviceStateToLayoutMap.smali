.class Lcom/android/server/display/DeviceStateToLayoutMap;
.super Ljava/lang/Object;
.source "DeviceStateToLayoutMap.java"


# static fields
.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "etc/displayconfig/display_layout_configuration.xml"

.field public static final STATE_DEFAULT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DeviceStateToLayoutMap"


# instance fields
.field private final mLayoutMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/layout/Layout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 57
    invoke-direct {p0}, Lcom/android/server/display/DeviceStateToLayoutMap;->loadLayoutsFromConfig()V

    .line 58
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    .line 59
    return-void
.end method

.method private createLayout(I)Lcom/android/server/display/layout/Layout;
    .registers 4
    .param p1, "state"    # I

    .line 80
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to create a second layout for state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStateToLayoutMap"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_22
    new-instance v0, Lcom/android/server/display/layout/Layout;

    invoke-direct {v0}, Lcom/android/server/display/layout/Layout;-><init>()V

    .line 86
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    iget-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 87
    return-object v0
.end method

.method private getConfigurationFile()Ljava/io/File;
    .registers 4

    .line 133
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc/displayconfig/display_layout_configuration.xml"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v0, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 134
    .local v0, "configFileFromOdmDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 135
    return-object v0

    .line 139
    :cond_15
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v2, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 140
    .local v1, "configFileFromVendorDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 141
    return-object v1

    .line 144
    :cond_28
    const/4 v2, 0x0

    return-object v2
.end method

.method private loadLayoutsFromConfig()V
    .registers 14

    .line 101
    invoke-direct {p0}, Lcom/android/server/display/DeviceStateToLayoutMap;->getConfigurationFile()Ljava/io/File;

    move-result-object v0

    .line 102
    .local v0, "configFile":Ljava/io/File;
    if-nez v0, :cond_7

    .line 103
    return-void

    .line 107
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading display layouts from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceStateToLayoutMap"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_1f
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_a6
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_1f .. :try_end_29} :catch_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_29} :catch_a6

    .line 109
    .local v1, "in":Ljava/io/InputStream;
    :try_start_29
    invoke-static {v1}, Lcom/android/server/display/config/layout/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/layout/Layouts;

    move-result-object v3

    .line 110
    .local v3, "layouts":Lcom/android/server/display/config/layout/Layouts;
    if-nez v3, :cond_49

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display layout config not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_9c

    .line 124
    :try_start_45
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_a6
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_45 .. :try_end_48} :catch_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_48} :catch_a6

    .line 112
    return-void

    .line 114
    :cond_49
    :try_start_49
    invoke-virtual {v3}, Lcom/android/server/display/config/layout/Layouts;->getLayout()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/config/layout/Layout;

    .line 115
    .local v5, "l":Lcom/android/server/display/config/layout/Layout;
    invoke-virtual {v5}, Lcom/android/server/display/config/layout/Layout;->getState()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 116
    .local v6, "state":I
    invoke-direct {p0, v6}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    move-result-object v7

    .line 117
    .local v7, "layout":Lcom/android/server/display/layout/Layout;
    invoke-virtual {v5}, Lcom/android/server/display/config/layout/Layout;->getDisplay()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_71
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_97

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/config/layout/Display;

    .line 118
    .local v9, "d":Lcom/android/server/display/config/layout/Display;
    nop

    .line 119
    invoke-virtual {v9}, Lcom/android/server/display/config/layout/Display;->getAddress()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v10

    .line 120
    invoke-virtual {v9}, Lcom/android/server/display/config/layout/Display;->isDefaultDisplay()Z

    move-result v11

    .line 121
    invoke-virtual {v9}, Lcom/android/server/display/config/layout/Display;->isEnabled()Z

    move-result v12

    .line 118
    invoke-virtual {v7, v10, v11, v12}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZ)Lcom/android/server/display/layout/Layout$Display;
    :try_end_95
    .catchall {:try_start_49 .. :try_end_95} :catchall_9c

    .line 122
    nop

    .end local v9    # "d":Lcom/android/server/display/config/layout/Display;
    goto :goto_71

    .line 123
    .end local v5    # "l":Lcom/android/server/display/config/layout/Layout;
    .end local v6    # "state":I
    .end local v7    # "layout":Lcom/android/server/display/layout/Layout;
    :cond_97
    goto :goto_51

    .line 124
    .end local v3    # "layouts":Lcom/android/server/display/config/layout/Layouts;
    :cond_98
    :try_start_98
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_a6
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_98 .. :try_end_9b} :catch_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_9b} :catch_a6

    .line 127
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_bd

    .line 108
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_9c
    move-exception v3

    :try_start_9d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_a5

    :catchall_a1
    move-exception v4

    :try_start_a2
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "configFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/display/DeviceStateToLayoutMap;
    :goto_a5
    throw v3
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a6} :catch_a6
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_a2 .. :try_end_a6} :catch_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_a6} :catch_a6

    .line 124
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "configFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/display/DeviceStateToLayoutMap;
    :catch_a6
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display layout config file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_bd
    return-void
.end method


# virtual methods
.method public dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 62
    const-string v0, "DeviceStateToLayoutMap:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 65
    const-string v0, "Registered Layouts:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 69
    .end local v0    # "i":I
    :cond_46
    return-void
.end method

.method get(I)Lcom/android/server/display/layout/Layout;
    .registers 5
    .param p1, "state"    # I

    .line 72
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/layout/Layout;

    .line 73
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    if-nez v0, :cond_14

    .line 74
    iget-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/display/layout/Layout;

    .line 76
    :cond_14
    return-object v0
.end method
