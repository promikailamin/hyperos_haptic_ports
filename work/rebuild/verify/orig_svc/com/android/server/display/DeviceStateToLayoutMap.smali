.class public Lcom/android/server/display/DeviceStateToLayoutMap;
.super Ljava/lang/Object;
.source "DeviceStateToLayoutMap.java"


# instance fields
.field public final mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

.field public final mLayoutMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .registers 4

    .line 76
    invoke-static {}, Lcom/android/server/display/DeviceStateToLayoutMap;->getConfigFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;Ljava/io/File;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 81
    iput-object p1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    .line 82
    invoke-virtual {p0, p3}, Lcom/android/server/display/DeviceStateToLayoutMap;->loadLayoutsFromConfig(Ljava/io/File;)V

    const/4 p1, -0x1

    .line 83
    const-string p2, "default_layout"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(ILjava/lang/String;)Lcom/android/server/display/layout/Layout;

    return-void
.end method

.method public static getConfigFile()Ljava/io/File;
    .registers 2

    .line 87
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system/displayconfig/display_layout_configuration.xml"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    .line 92
    :cond_16
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc/displayconfig/display_layout_configuration.xml"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final createLayout(ILjava/lang/String;)Lcom/android/server/display/layout/Layout;
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to create a second layout for state "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceStateToLayoutMap"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_20
    new-instance v0, Lcom/android/server/display/layout/Layout;

    invoke-direct {v0, p2}, Lcom/android/server/display/layout/Layout;-><init>(Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v0
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 97
    const-string v0, "DeviceStateToLayoutMap:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v0, "-----------------------"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 101
    const-string v0, "Registered Layouts:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    :goto_13
    iget-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_47
    return-void
.end method

.method public get(I)Lcom/android/server/display/layout/Layout;
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/layout/Layout;

    if-nez p1, :cond_14

    .line 110
    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/layout/Layout;

    return-object p0

    :cond_14
    return-object p1
.end method

.method public final getDisplayAddressForLayoutDisplay(Lcom/android/server/display/config/layout/Display;)Landroid/view/DisplayAddress;
    .registers 4

    .line 179
    invoke-virtual {p1}, Lcom/android/server/display/config/layout/Display;->getAddress_optional()Ljava/math/BigInteger;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 181
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object p0

    return-object p0

    .line 183
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/display/config/layout/Display;->getPort_optional()Ljava/math/BigInteger;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 187
    invoke-virtual {p1}, Lcom/android/server/display/config/layout/Display;->getPort_optional()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/view/DisplayAddress;->fromPortAndModel(ILjava/lang/Long;)Landroid/view/DisplayAddress$Physical;

    move-result-object p0

    return-object p0

    .line 184
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must specify a display identifier in display layout configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPosition(Ljava/lang/String;)I
    .registers 2

    .line 193
    const-string p0, "front"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 195
    :cond_a
    const-string/jumbo p0, "rear"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public loadLayoutsFromConfig(Ljava/io/File;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    .line 136
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading display layouts from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceStateToLayoutMap"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_21
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_49
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_21 .. :try_end_2b} :catch_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_2b} :catch_49

    .line 138
    :try_start_2b
    invoke-static {v2}, Lcom/android/server/display/config/layout/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/layout/Layouts;

    move-result-object v4

    if-nez v4, :cond_50

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display layout config not found: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_4c

    .line 171
    :cond_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_45 .. :try_end_48} :catch_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception v0

    goto/16 :goto_d5

    :catchall_4c
    move-exception v0

    move-object v4, v0

    goto/16 :goto_cc

    .line 143
    :cond_50
    :try_start_50
    invoke-virtual {v4}, Lcom/android/server/display/config/layout/Layouts;->getLayout()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/config/layout/Layout;

    .line 144
    invoke-virtual {v5}, Lcom/android/server/display/config/layout/Layout;->getState()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 145
    invoke-virtual {v5}, Lcom/android/server/display/config/layout/Layout;->getName()Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {v0, v6, v7}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(ILjava/lang/String;)Lcom/android/server/display/layout/Layout;

    move-result-object v8

    .line 147
    invoke-virtual {v5}, Lcom/android/server/display/config/layout/Layout;->getDisplay()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/config/layout/Display;

    .line 149
    invoke-virtual {v0, v6}, Lcom/android/server/display/DeviceStateToLayoutMap;->getDisplayAddressForLayoutDisplay(Lcom/android/server/display/config/layout/Display;)Landroid/view/DisplayAddress;

    move-result-object v9

    .line 151
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getPosition()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/display/DeviceStateToLayoutMap;->getPosition(Ljava/lang/String;)I

    move-result v14

    .line 152
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getLeadDisplayAddress()Ljava/math/BigInteger;

    move-result-object v7

    if-nez v7, :cond_9d

    const/4 v7, 0x0

    :goto_9b
    move-object v15, v7

    goto :goto_a6

    .line 155
    :cond_9d
    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    .line 154
    invoke-static {v10, v11}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v7

    goto :goto_9b

    .line 158
    :goto_a6
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->isDefaultDisplay()Z

    move-result v10

    .line 159
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->isEnabled()Z

    move-result v11

    .line 160
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getDisplayGroup()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    .line 164
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getBrightnessThrottlingMapId()Ljava/lang/String;

    move-result-object v16

    .line 165
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getRefreshRateZoneId()Ljava/lang/String;

    move-result-object v17

    .line 166
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getRefreshRateThermalThrottlingMapId()Ljava/lang/String;

    move-result-object v18

    .line 167
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getPowerThrottlingMapId()Ljava/lang/String;

    move-result-object v19

    .line 156
    invoke-virtual/range {v8 .. v19}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/layout/DisplayIdProducer;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 169
    :cond_c8
    invoke-virtual {v8}, Lcom/android/server/display/layout/Layout;->postProcessLocked()V
    :try_end_cb
    .catchall {:try_start_50 .. :try_end_cb} :catchall_4c

    goto :goto_58

    .line 137
    :goto_cc
    :try_start_cc
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d0

    goto :goto_d4

    :catchall_d0
    move-exception v0

    :try_start_d1
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d4
    throw v4
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d5} :catch_49
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_d1 .. :try_end_d5} :catch_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d1 .. :try_end_d5} :catch_49

    .line 172
    :goto_d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display layout config file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public size()I
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method
