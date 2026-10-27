.class public Lcom/android/server/appop/LegacyAppOpStateParser;
.super Ljava/lang/Object;
.source "LegacyAppOpStateParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LegacyAppOpStateParser"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final readOp(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Landroid/util/SparseArray;)V
    .registers 8

    .line 245
    const-string/jumbo p0, "n"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 246
    invoke-static {p0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    .line 247
    const-string/jumbo v2, "m"

    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_38

    .line 250
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_25

    .line 252
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 253
    invoke-virtual {p4, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    :cond_25
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseIntArray;

    if-nez p2, :cond_35

    .line 258
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    .line 259
    invoke-virtual {v0, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_35
    invoke-virtual {p2, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_38
    return-void
.end method

.method public final readPackage(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .registers 8

    const/4 v0, 0x0

    .line 118
    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 121
    :cond_c
    :goto_c
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_51

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    .line 122
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_51

    :cond_1c
    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    goto :goto_c

    .line 127
    :cond_22
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 129
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readPackageUid(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_c

    .line 131
    :cond_33
    sget-object v2, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <pkg>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_51
    return-void
.end method

.method public final readPackageOp(Lcom/android/modules/utils/TypedXmlPullParser;ILandroid/util/SparseArray;)V
    .registers 9

    const/4 v0, 0x0

    .line 222
    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 225
    :cond_c
    :goto_c
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_51

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    .line 226
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_51

    :cond_1c
    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    goto :goto_c

    .line 231
    :cond_22
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 232
    const-string/jumbo v3, "op"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 233
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/LegacyAppOpStateParser;->readOp(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_c

    .line 235
    :cond_33
    sget-object v2, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <pkg>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_51
    return-void
.end method

.method public final readPackageUid(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 9

    const/4 v0, 0x0

    .line 141
    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 142
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 144
    :cond_10
    :goto_10
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_55

    const/4 v3, 0x3

    if-ne v2, v3, :cond_20

    .line 145
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_55

    :cond_20
    if-eq v2, v3, :cond_10

    const/4 v3, 0x4

    if-ne v2, v3, :cond_26

    goto :goto_10

    .line 150
    :cond_26
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 151
    const-string/jumbo v3, "op"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 152
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/appop/LegacyAppOpStateParser;->readOp(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_10

    .line 154
    :cond_37
    sget-object v2, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <pkg>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_10

    :cond_55
    return-void
.end method

.method public readState(Landroid/util/AtomicFile;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .registers 14

    .line 52
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_d6

    .line 53
    :try_start_4
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 54
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 57
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 59
    :goto_12
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1d

    if-eq v4, v6, :cond_1d

    goto :goto_12

    :cond_1d
    if-ne v4, v5, :cond_c2

    .line 68
    const-string/jumbo v4, "v"

    const/4 v5, -0x1

    const/4 v7, 0x0

    invoke-interface {v3, v7, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 70
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 71
    :cond_2c
    :goto_2c
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v6, :cond_8e

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3f

    .line 72
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_8e

    goto :goto_3f

    :catchall_3c
    move-exception p0

    goto/16 :goto_cb

    :cond_3f
    :goto_3f
    if-eq v7, v8, :cond_2c

    const/4 v8, 0x4

    if-ne v7, v8, :cond_45

    goto :goto_2c

    .line 77
    :cond_45
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 78
    const-string/jumbo v8, "pkg"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 82
    invoke-virtual {p0, v3, v2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    goto :goto_2c

    .line 83
    :cond_56
    const-string/jumbo v8, "uid"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 84
    invoke-virtual {p0, v3, v1}, Lcom/android/server/appop/LegacyAppOpStateParser;->readUidOps(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    goto :goto_2c

    .line 85
    :cond_63
    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 86
    invoke-virtual {p0, v3, v2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readUser(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    goto :goto_2c

    .line 88
    :cond_70
    sget-object v7, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <app-ops>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2c

    .line 95
    :cond_8e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v3, 0x0

    move v5, v3

    :goto_94
    if-ge v5, p0, :cond_a6

    .line 97
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseIntArray;

    invoke-virtual {p2, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 99
    :cond_a6
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result p0

    :goto_aa
    if-ge v3, p0, :cond_bc

    .line 101
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 102
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 101
    invoke-virtual {p3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_b9
    .catchall {:try_start_4 .. :try_end_b9} :catchall_3c

    add-int/lit8 v3, v3, 0x1

    goto :goto_aa

    :cond_bc
    if-eqz v0, :cond_c1

    .line 106
    :try_start_be
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_be .. :try_end_c1} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_d6

    :cond_c1
    return v4

    .line 65
    :cond_c2
    :try_start_c2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "no start tag found"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_cb
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_3c

    :goto_cb
    if-eqz v0, :cond_d5

    .line 52
    :try_start_cd
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d1

    goto :goto_d5

    :catchall_d1
    move-exception p2

    :try_start_d2
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d5
    :goto_d5
    throw p0
    :try_end_d6
    .catch Ljava/io/FileNotFoundException; {:try_start_d2 .. :try_end_d6} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d6} :catch_d6

    :catch_d6
    move-exception p0

    .line 110
    sget-object p1, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed parsing "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 107
    :catch_ee
    sget-object p0, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No existing app ops "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; starting empty"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10d
    const/4 p0, -0x2

    return p0
.end method

.method public final readUidOps(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .registers 8

    const/4 p0, 0x0

    .line 164
    const-string/jumbo v0, "n"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 165
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-nez v2, :cond_18

    .line 167
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 168
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    :cond_18
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p2

    .line 173
    :cond_1c
    :goto_1c
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_72

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2c

    .line 174
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, p2, :cond_72

    :cond_2c
    if-eq v1, v3, :cond_1c

    const/4 v3, 0x4

    if-ne v1, v3, :cond_32

    goto :goto_1c

    .line 179
    :cond_32
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 180
    const-string/jumbo v3, "op"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 181
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 182
    const-string/jumbo v3, "m"

    invoke-interface {p1, p0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 184
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    if-eq v3, v4, :cond_1c

    .line 185
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1c

    .line 188
    :cond_54
    sget-object v1, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <uid>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1c

    :cond_72
    return-void
.end method

.method public final readUser(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .registers 8

    const/4 v0, 0x0

    .line 198
    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 199
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 201
    :cond_c
    :goto_c
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_51

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    .line 202
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_51

    :cond_1c
    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    goto :goto_c

    .line 207
    :cond_22
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 208
    const-string/jumbo v3, "pkg"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 209
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readPackageOp(Lcom/android/modules/utils/TypedXmlPullParser;ILandroid/util/SparseArray;)V

    goto :goto_c

    .line 211
    :cond_33
    sget-object v2, Lcom/android/server/appop/LegacyAppOpStateParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <user>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_51
    return-void
.end method
