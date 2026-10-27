.class public Lcom/android/server/wallpaper/WallpaperDataParser;
.super Ljava/lang/Object;
.source "WallpaperDataParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WallpaperDataParser"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mImageWallpaper:Landroid/content/ComponentName;

.field public final mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

.field public final mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperDisplayHelper;Lcom/android/server/wallpaper/WallpaperCropper;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 92
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10404f2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    return-void
.end method

.method public static getAttributeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;F)F
    .registers 4

    const/4 v0, 0x0

    .line 462
    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    .line 458
    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static screenDimensionPairs()Ljava/util/List;
    .registers 6

    .line 721
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    .line 722
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Portrait"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    .line 723
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Landscape"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x2

    .line 724
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SquarePortrait"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x3

    .line 725
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "SquareLandscape"

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 721
    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 2

    .line 278
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-ltz p0, :cond_12

    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 279
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-gez p0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 280
    :cond_12
    :goto_12
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final getAttributeString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    .line 466
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    return-object p0

    :cond_8
    return-object p3
.end method

.method public loadSettingsFromSerializer(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;IZZZLcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;)Lcom/android/server/wallpaper/WallpaperData;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 p7, 0x0

    .line 231
    :cond_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 233
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v3, "wp"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "kwp"

    if-eqz v4, :cond_18

    if-nez p4, :cond_20

    :cond_18
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    if-eqz p5, :cond_3a

    .line 235
    :cond_20
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 236
    new-instance p7, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p7, p3, v1}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 239
    :cond_2b
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move-object v1, p2

    goto :goto_34

    :cond_33
    move-object v1, p7

    .line 245
    :goto_34
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperDataParser;->parseComponentName(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/ComponentName;

    .line 247
    invoke-virtual {p0, p1, v1, p6}, Lcom/android/server/wallpaper/WallpaperDataParser;->parseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;Z)V

    :cond_3a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-object p7
.end method

.method public loadSettingsLocked(IZZI)Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;
    .registers 20

    .line 145
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperDataParser;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v1

    and-int/lit8 v0, p4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    move v8, v3

    goto :goto_11

    :cond_10
    move v8, v2

    :goto_11
    const/4 v12, 0x2

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_18

    move v9, v3

    goto :goto_19

    :cond_18
    move v9, v2

    :goto_19
    const/4 v13, 0x0

    if-eqz v8, :cond_45

    if-eqz p3, :cond_21

    .line 156
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperDataParser;->migrateFromOld()V

    .line 157
    :cond_21
    new-instance v0, Lcom/android/server/wallpaper/WallpaperData;

    move/from16 v7, p1

    invoke-direct {v0, v7, v3}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 158
    iput-boolean v3, v0, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 159
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_43

    .line 160
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->sourceExists()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 161
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v4, v0}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_43

    .line 163
    :cond_3c
    sget-object v4, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    const-string v5, "No static wallpaper imagery; defaults will be shown"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    :goto_43
    move-object v6, v0

    goto :goto_48

    :cond_45
    move/from16 v7, p1

    move-object v6, v13

    .line 168
    :goto_48
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v11

    .line 172
    :try_start_4e
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_53} :catch_65
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_53} :catch_62
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_53} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_53} :catch_62
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_53} :catch_62
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e .. :try_end_53} :catch_62

    .line 173
    :try_start_53
    invoke-static {v14}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    move-object v4, p0

    move/from16 v10, p2

    .line 175
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wallpaper/WallpaperDataParser;->loadSettingsFromSerializer(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;IZZZLcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_5e} :catch_88
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_5e} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_5e} :catch_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_5e} :catch_60
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5e} :catch_60
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_53 .. :try_end_5e} :catch_60

    move v1, v3

    goto :goto_90

    :catch_60
    move-exception v0

    goto :goto_67

    :catch_62
    move-exception v0

    move-object v14, v13

    goto :goto_67

    :catch_65
    move-object v14, v13

    goto :goto_88

    .line 183
    :goto_67
    sget-object v5, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    move v1, v2

    move-object v0, v13

    goto :goto_90

    .line 180
    :catch_88
    :goto_88
    sget-object v0, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    const-string v1, "no current wallpaper -- first boot?"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 185
    :goto_90
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 187
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v5, v11, v2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;I)V

    if-eqz v8, :cond_be

    if-nez v1, :cond_ab

    .line 192
    iget-object v5, v6, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 193
    iget-object v5, v11, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    const-string v2, ""

    iput-object v2, v6, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    goto :goto_b5

    .line 198
    :cond_ab
    iget v2, v6, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    if-gtz v2, :cond_b5

    .line 199
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, v6, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 206
    :cond_b5
    :goto_b5
    invoke-virtual {p0, v6}, Lcom/android/server/wallpaper/WallpaperDataParser;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    if-eqz v0, :cond_bb

    goto :goto_bc

    :cond_bb
    const/4 v3, 0x3

    .line 207
    :goto_bc
    iput v3, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    :cond_be
    if-eqz v9, :cond_ca

    if-nez v1, :cond_c3

    move-object v0, v13

    :cond_c3
    if-eqz v0, :cond_ca

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperDataParser;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 214
    iput v12, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 218
    :cond_ca
    new-instance p0, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;

    invoke-direct {p0, v6, v0, v1, v13}, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;-><init>(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;ZLcom/android/server/wallpaper/WallpaperDataParser-IA;)V

    return-object p0
.end method

.method public final makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 5

    .line 98
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "wallpaper_info.xml"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance p1, Lcom/android/internal/util/JournaledFile;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object p1
.end method

.method public final migrateFromOld()V
    .registers 7

    .line 287
    new-instance p0, Ljava/io/File;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "wallpaper"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper_orig"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 294
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_55

    .line 300
    invoke-static {p0, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    return-void

    .line 302
    :cond_2e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 307
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 309
    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 313
    :cond_4f
    invoke-static {v1, p0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 314
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_55
    return-void
.end method

.method public final parseComponentName(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/ComponentName;
    .registers 4

    .line 267
    const-string v0, "component"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 268
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_d
    if-eqz v1, :cond_1d

    .line 269
    const-string p1, "android"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    return-object v1

    .line 270
    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    return-object p0
.end method

.method public parseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 339
    const-string v4, "id"

    const/4 v5, -0x1

    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_1c

    .line 341
    iput v4, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 342
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->getCurrentWallpaperId()I

    move-result v5

    if-le v4, v5, :cond_22

    .line 343
    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperUtils;->setCurrentWallpaperId(I)V

    goto :goto_22

    .line 346
    :cond_1c
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 349
    :cond_22
    :goto_22
    new-instance v4, Landroid/graphics/Rect;

    .line 350
    const-string v5, "cropLeft"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 351
    const-string v8, "cropTop"

    invoke-static {v1, v8, v6}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 352
    const-string v10, "cropRight"

    invoke-static {v1, v10, v6}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 353
    const-string v12, "cropBottom"

    invoke-static {v1, v12, v6}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v13

    invoke-direct {v4, v7, v9, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 354
    new-instance v7, Landroid/graphics/Rect;

    const-string v9, "totalCropLeft"

    .line 355
    invoke-static {v1, v9, v6}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    const-string v11, "totalCropTop"

    .line 356
    invoke-static {v1, v11, v6}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const-string v13, "totalCropRight"

    .line 357
    invoke-static {v1, v13, v6}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v13

    const-string v14, "totalCropBottom"

    .line 358
    invoke-static {v1, v14, v6}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    invoke-direct {v7, v9, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 359
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperDataParser;->parseComponentName(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/ComponentName;

    move-result-object v9

    .line 360
    iget-object v11, v0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v11, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14f

    .line 361
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 362
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperDataParser;->screenDimensionPairs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_78
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_125

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 363
    new-instance v14, Landroid/graphics/Rect;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    .line 364
    invoke-interface {v1, v15, v3, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v5

    const/4 v5, 0x0

    const/4 v15, 0x0

    .line 365
    invoke-interface {v1, v5, v6, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v8

    const/4 v8, 0x0

    const/4 v15, 0x0

    .line 366
    invoke-interface {v1, v8, v5, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v10

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 367
    invoke-interface {v1, v10, v8, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    invoke-direct {v14, v3, v6, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 368
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_105

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    iget-object v5, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    :cond_105
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11b

    invoke-virtual {v14, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 370
    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mOrientationWhenSet:I

    :cond_11b
    move-object/from16 v5, v16

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto/16 :goto_78

    .line 373
    :cond_125
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_13f

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 375
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_144

    .line 376
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_144

    .line 379
    :cond_13f
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 381
    :cond_144
    :goto_144
    const-string v3, "sampleSize"

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-interface {v1, v15, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 385
    :cond_14f
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    const/4 v15, 0x0

    .line 386
    invoke-virtual {v3, v15}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 397
    const-string v3, "dimAmount"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 400
    :try_start_15e
    const-string v3, "bindSource"

    sget-object v5, Lcom/android/server/wallpaper/WallpaperData$BindSource;->UNKNOWN:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 401
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v5}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperData$BindSource;->valueOf(Ljava/lang/String;)Lcom/android/server/wallpaper/WallpaperData$BindSource;

    move-result-object v3
    :try_end_16e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15e .. :try_end_16e} :catch_16f
    .catch Ljava/lang/NullPointerException; {:try_start_15e .. :try_end_16e} :catch_16f

    goto :goto_171

    .line 403
    :catch_16f
    sget-object v3, Lcom/android/server/wallpaper/WallpaperData$BindSource;->UNKNOWN:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 405
    :goto_171
    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 406
    const-string v3, "dimAmountsCount"

    const/4 v15, 0x0

    invoke-static {v1, v3, v15}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1bb

    .line 408
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v3}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v6, 0x0

    :goto_182
    if-ge v6, v3, :cond_1b9

    .line 410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dimUID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    invoke-static {v1, v7, v15}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dimValue"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v4}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;F)F

    move-result v8

    .line 412
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_182

    .line 414
    :cond_1b9
    iput-object v5, v2, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    .line 416
    :cond_1bb
    const-string v3, "colorsCount"

    const/4 v15, 0x0

    invoke-static {v1, v3, v15}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 417
    const-string v4, "allColorsCount"

    invoke-static {v1, v4, v15}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 418
    const-string v5, "colorHints"

    if-lez v4, :cond_21b

    .line 419
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    :goto_1d2
    if-ge v6, v4, :cond_20d

    .line 421
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allColorsValue"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    invoke-static {v1, v7, v15}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 422
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allColorsPopulation"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v15}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 423
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d2

    :cond_20d
    const/4 v15, 0x0

    .line 425
    invoke-static {v1, v5, v15}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 426
    new-instance v5, Landroid/app/WallpaperColors;

    invoke-direct {v5, v3, v4}, Landroid/app/WallpaperColors;-><init>(Ljava/util/Map;I)V

    iput-object v5, v2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    :cond_219
    const/4 v15, 0x0

    goto :goto_259

    :cond_21b
    if-lez v3, :cond_219

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_221
    if-ge v15, v3, :cond_24d

    .line 430
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "colorValue"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v1, v8, v10}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v8

    if-nez v15, :cond_241

    move-object v4, v8

    goto :goto_24a

    :cond_241
    const/4 v10, 0x1

    if-ne v15, v10, :cond_246

    move-object v6, v8

    goto :goto_24a

    :cond_246
    const/4 v10, 0x2

    if-ne v15, v10, :cond_24d

    move-object v7, v8

    :goto_24a
    add-int/lit8 v15, v15, 0x1

    goto :goto_221

    :cond_24d
    const/4 v15, 0x0

    .line 441
    invoke-static {v1, v5, v15}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 442
    new-instance v5, Landroid/app/WallpaperColors;

    invoke-direct {v5, v4, v6, v7, v3}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v5, v2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 444
    :goto_259
    const-string v3, "name"

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 445
    const-string v3, "backup"

    invoke-interface {v1, v5, v3, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 447
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wallpaper/WallpaperDataParser;->parseWallpaperDescription(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 448
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_287

    .line 452
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    .line 453
    invoke-virtual {v0, v9}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    .line 452
    invoke-virtual {v2, v0}, Lcom/android/server/wallpaper/WallpaperData;->setDescription(Landroid/app/wallpaper/WallpaperDescription;)V

    :cond_287
    return-void
.end method

.method public parseWallpaperDescription(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 5

    .line 321
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 322
    const-string v0, "description"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 325
    invoke-static {p1}, Landroid/app/wallpaper/WallpaperDescription;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 329
    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription;->toBuilder()Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperDataParser;->parseComponentName(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/ComponentName;

    move-result-object p0

    .line 329
    invoke-virtual {v0, p0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p0

    .line 330
    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    .line 332
    :cond_2d
    invoke-virtual {p2, v0}, Lcom/android/server/wallpaper/WallpaperData;->setDescription(Landroid/app/wallpaper/WallpaperDescription;)V

    :cond_30
    return-void
.end method

.method public saveSettingsLocked(ILcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 8

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperDataParser;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object p1

    const/4 v0, 0x0

    .line 474
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_24

    .line 475
    :try_start_f
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 476
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wallpaper/WallpaperDataParser;->saveSettingsToSerializer(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 477
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 478
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 479
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 480
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-object v0, v1

    .line 482
    :catch_24
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 483
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    return-void
.end method

.method public saveSettingsToSerializer(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 490
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p2, :cond_d

    .line 493
    const-string v0, "wp"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wallpaper/WallpaperDataParser;->writeWallpaperAttributes(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_d
    if-eqz p3, :cond_14

    .line 497
    const-string p2, "kwp"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperDataParser;->writeWallpaperAttributes(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 500
    :cond_14
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public writeWallpaperAttributes(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 509
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    const-string v1, "id"

    iget v2, p3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 513
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    if-nez v1, :cond_29

    .line 514
    sget-object v1, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    const-string v2, "cropHints should not be null when saved"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 517
    :cond_29
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 518
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperDataParser;->screenDimensionPairs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "cropBottom"

    const-string v5, "cropRight"

    const-string v6, "cropTop"

    const-string v7, "cropLeft"

    if-eqz v3, :cond_e2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 519
    iget-object v8, p3, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    if-nez v8, :cond_5f

    goto :goto_38

    .line 521
    :cond_5f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-interface {p1, v0, v7, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v8, Landroid/graphics/Rect;->top:I

    invoke-interface {p1, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v8, Landroid/graphics/Rect;->right:I

    invoke-interface {p1, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    iget v4, p3, Lcom/android/server/wallpaper/WallpaperData;->mOrientationWhenSet:I

    .line 529
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 530
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object v5

    .line 531
    iget-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    if-eqz v6, :cond_d3

    .line 532
    invoke-virtual {v5, v4}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d3

    move v4, v5

    .line 538
    :cond_d3
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_38

    .line 539
    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_38

    .line 542
    :cond_e2
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-interface {p1, v0, v7, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1, v0, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-interface {p1, v0, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v0, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const-string v2, "totalCropLeft"

    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 548
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const-string v2, "totalCropTop"

    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    const-string v2, "totalCropRight"

    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const-string v2, "totalCropBottom"

    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    const-string v1, "sampleSize"

    iget v2, p3, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    :cond_121
    const-string v1, "dimAmount"

    iget v2, p3, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bindSource"

    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 578
    const-string v2, "dimAmountsCount"

    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_18a

    move v1, v2

    move v4, v1

    .line 581
    :goto_144
    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_18a

    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dimUID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-interface {p1, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dimValue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {p1, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    add-int/2addr v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_144

    .line 588
    :cond_18a
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_23b

    .line 589
    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 590
    const-string v4, "colorsCount"

    invoke-interface {p1, v0, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v1, :cond_1c7

    move v4, v2

    :goto_19e
    if-ge v4, v1, :cond_1c7

    .line 593
    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v5}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Color;

    .line 594
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/graphics/Color;->toArgb()I

    move-result v5

    invoke-interface {p1, v0, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_19e

    .line 598
    :cond_1c7
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 599
    const-string v4, "allColorsCount"

    invoke-interface {p1, v0, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v1, :cond_230

    .line 602
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v1

    .line 603
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 602
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_230

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 604
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allColorsValue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allColorsPopulation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    add-int/2addr v2, v3

    goto :goto_1e6

    .line 610
    :cond_230
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v1

    const-string v2, "colorHints"

    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 613
    :cond_23b
    const-string v1, "name"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_261

    .line 615
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_261

    .line 617
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 616
    const-string v2, "component"

    invoke-interface {p1, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    :cond_261
    iget-boolean v1, p3, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    if-eqz v1, :cond_26a

    .line 621
    const-string v1, "backup"

    invoke-interface {p1, v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 624
    :cond_26a
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperDataParser;->writeWallpaperDescription(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 626
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeWallpaperDescription(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 6

    .line 631
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/4 p2, 0x0

    .line 634
    const-string v0, "description"

    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 636
    :try_start_c
    invoke-virtual {p0, p1}, Landroid/app/wallpaper/WallpaperDescription;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    .line 638
    sget-object v1, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    const-string v2, "Error writing wallpaper description"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    :goto_18
    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1b
    return-void
.end method
