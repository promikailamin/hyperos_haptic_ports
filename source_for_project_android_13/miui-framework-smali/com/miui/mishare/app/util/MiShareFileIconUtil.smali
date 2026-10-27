.class public Lcom/miui/mishare/app/util/MiShareFileIconUtil;
.super Ljava/lang/Object;
.source "MiShareFileIconUtil.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiShareFileIconUtil"

.field private static blacklist sFileExtToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetFileIconIdMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sFileExtToIcons:Ljava/util/HashMap;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sGetFileIconIdMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addItem([Ljava/lang/String;I)V
    .registers 8
    .param p0, "exts"    # [Ljava/lang/String;
    .param p1, "resId"    # I

    .line 19
    if-eqz p0, :cond_1e

    .line 20
    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    .line 21
    .local v2, "ext":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 22
    sget-object v3, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .end local v2    # "ext":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 26
    :cond_1e
    return-void
.end method

.method private static blacklist getFileIconId(Ljava/lang/String;)I
    .registers 5
    .param p0, "ext"    # Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sGetFileIconIdMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1e

    .line 47
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    return v0

    .line 48
    :catch_16
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiShareFileIconUtil"

    const-string v2, "miuix getFileIconId failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    const v0, 0x110800fb

    return v0
.end method

.method public static blacklist getFileIconResId(Ljava/lang/String;Landroid/content/Context;)I
    .registers 4
    .param p0, "ext"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-static {p1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->initResItemsIfNeed(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 38
    const-string v0, ""

    invoke-static {v0}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 40
    :cond_10
    sget-object v0, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 41
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_23

    invoke-static {p0}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v1

    goto :goto_27

    :cond_23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_27
    return v1
.end method

.method private static blacklist initResItemsIfNeed(Landroid/content/Context;)V
    .registers 21
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    const-string v0, "psd"

    const-string v1, "exe"

    const-string v2, "apk"

    const-string v3, "zip"

    const-string v4, "wps"

    const-string v5, "ppt"

    const-string v6, "xls"

    const-string v7, "doc"

    const-string v8, "pdf"

    const-string v9, "txt"

    sget-object v10, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sGetFileIconIdMethod:Ljava/lang/reflect/Method;

    if-nez v10, :cond_12b

    if-eqz p0, :cond_12b

    .line 58
    :try_start_1a
    const-string v10, "miuix.fileicon.FileIconUtils"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v12, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    .line 59
    .local v10, "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "getFileIconId"

    new-array v13, v12, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sGetFileIconIdMethod:Ljava/lang/reflect/Method;

    .line 60
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 62
    sget-object v11, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_122

    .line 63
    const-string v11, "text"

    const-string v12, "html"

    filled-new-array {v9, v11, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v9

    invoke-static {v11, v9}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 64
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v8

    invoke-static {v9, v8}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 65
    const-string v8, "docx"

    const-string v9, "rtf"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v7

    invoke-static {v8, v7}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 66
    const-string v7, "xlsx"

    const-string v8, "csv"

    filled-new-array {v7, v6, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v7, v6}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 67
    const-string v6, "pptx"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v6, v5}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 68
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5, v4}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 69
    const-string v4, "rar"

    const-string v5, "7z"

    const-string v6, "tar"

    const-string v7, "gz"

    filled-new-array {v4, v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 70
    const-string v11, "mp3"

    const-string v12, "wma"

    const-string v13, "aac"

    const-string v14, "flac"

    const-string v15, "ape"

    const-string v16, "m4a"

    const-string v17, "wav"

    const-string v18, "amr"

    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio"

    invoke-static {v4}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 71
    const-string v11, "avi"

    const-string v12, "wmv"

    const-string v13, "mov"

    const-string v14, "mkv"

    const-string v15, "ts"

    const-string v16, "mp4"

    const-string v17, "rmvb"

    const-string v18, "webm"

    const-string v19, "flv"

    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "mp4"

    invoke-static {v4}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 72
    const-string v11, "jpg"

    const-string v12, "jpeg"

    const-string v13, "png"

    const-string v14, "bmp"

    const-string v15, "tif"

    const-string v16, "raw"

    const-string v17, "gif"

    const-string v18, "webp"

    const-string v19, "wbmp"

    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "jpg"

    invoke-static {v4}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 73
    const-string v3, "pkg"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 74
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    .line 75
    const-string v1, "ps"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_122} :catch_123

    .line 79
    .end local v10    # "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_122
    goto :goto_12b

    .line 77
    :catch_123
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiShareFileIconUtil"

    const-string v2, "miuix init getFileIconId failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_12b
    :goto_12b
    return-void
.end method
