.class public Lmiui/util/DumpBitmapInfoUtils;
.super Ljava/lang/Object;
.source "DumpBitmapInfoUtils.java"


# static fields
.field static final blacklist ENABLE:Z

.field static blacklist sBitmapThresholdSize:I

.field static blacklist sBitmapTitles:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sCurrProcess:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 35
    const-string v0, "DumpBitmapInfo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    .line 41
    if-eqz v0, :cond_12

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    .line 44
    :cond_12
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dumpBitmapInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 27
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;

    .line 69
    move-object/from16 v1, p1

    sget-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-nez v0, :cond_7

    return-void

    .line 71
    :cond_7
    const/4 v0, 0x0

    .line 72
    .local v0, "isDumpBitmap":Z
    const/4 v2, 0x0

    .line 73
    .local v2, "isExportBitmap":Z
    const/4 v3, 0x0

    .line 74
    .local v3, "isNoGC":Z
    const/4 v4, 0x0

    .line 75
    .local v4, "isIncludePreload":Z
    const/4 v5, 0x0

    .line 76
    .local v5, "recycleBmp":I
    array-length v6, v1

    move v8, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    const/4 v0, 0x0

    .end local v0    # "isDumpBitmap":Z
    .local v2, "isDumpBitmap":Z
    .local v3, "isExportBitmap":Z
    .local v4, "isNoGC":Z
    .local v5, "isIncludePreload":Z
    .local v8, "recycleBmp":I
    :goto_13
    if-ge v0, v6, :cond_7d

    aget-object v9, v1, v0

    .line 77
    .local v9, "arg":Ljava/lang/String;
    const-string v10, "--bitmap"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_27

    const-string v10, "-b"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    :cond_27
    const/4 v2, 0x1

    .line 78
    :cond_28
    const-string v10, "--exportbitmap"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_38

    const-string v10, "-e"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_39

    :cond_38
    const/4 v3, 0x1

    .line 79
    :cond_39
    const-string v10, "--nogc"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_42

    const/4 v4, 0x1

    .line 80
    :cond_42
    const-string v10, "--includepreload"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4b

    const/4 v5, 0x1

    .line 81
    :cond_4b
    const-string v10, "--recycle:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 82
    const-string v10, "--recycle:0x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x10

    if-eqz v10, :cond_6c

    .line 83
    const-string v10, "--recycle:0x"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_7a

    .line 85
    :cond_6c
    const-string v10, "--recycle:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 76
    .end local v9    # "arg":Ljava/lang/String;
    :cond_7a
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 89
    :cond_7d
    if-nez v2, :cond_82

    if-nez v3, :cond_82

    return-void

    .line 91
    :cond_82
    if-nez v4, :cond_87

    .line 92
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 96
    :cond_87
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 97
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ca

    const-string v0, "system"

    .line 98
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    goto :goto_ca

    .line 101
    :cond_a4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_exportbitmap/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 102
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    .local v0, "exportBitmapFolder":Ljava/io/File;
    goto :goto_d2

    .line 99
    .end local v0    # "exportBitmapFolder":Ljava/io/File;
    :cond_ca
    :goto_ca
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/system/_exportbitmap/"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 104
    .local v6, "exportBitmapFolder":Ljava/io/File;
    :goto_d2
    if-eqz v3, :cond_e8

    .line 105
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_de

    .line 106
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_e8

    .line 109
    :cond_de
    :try_start_de
    invoke-static {v6}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_e2

    .line 112
    goto :goto_e8

    .line 110
    :catch_e2
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 111
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_e8
    :goto_e8
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v9, p0

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    .line 117
    .local v10, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v10}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v11, v0

    .line 119
    .local v11, "pw":Ljava/io/PrintWriter;
    const-wide/16 v12, 0x0

    .line 120
    .local v12, "totalSize":J
    const/4 v14, 0x0

    .line 123
    .local v14, "bitmapCount":I
    :try_start_f9
    sget-object v15, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    monitor-enter v15
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_2ee

    .line 124
    :try_start_fc
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    .line 125
    .local v16, "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    sget-object v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_111
    .catchall {:try_start_fc .. :try_end_111} :catchall_2e2

    if-eqz v17, :cond_141

    :try_start_113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    move-object/from16 v18, v17

    .line 126
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    invoke-direct {v7, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    .line 127
    .local v7, "newEntry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    invoke-virtual {v7}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_130

    move-object/from16 v1, v16

    .end local v16    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .local v1, "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12f
    .catchall {:try_start_113 .. :try_end_12f} :catchall_139

    goto :goto_132

    .end local v1    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .restart local v16    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    :cond_130
    move-object/from16 v1, v16

    .line 128
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .end local v7    # "newEntry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .end local v16    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .restart local v1    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    :goto_132
    move-object/from16 v16, v1

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    goto :goto_10d

    .line 129
    .end local v1    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    :catchall_139
    move-exception v0

    move/from16 v22, v2

    move v7, v4

    move/from16 v19, v5

    goto/16 :goto_2e8

    .restart local v16    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    :cond_141
    move-object/from16 v1, v16

    .end local v16    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .restart local v1    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    :try_start_143
    monitor-exit v15
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_2e2

    .line 131
    :try_start_144
    new-instance v0, Lmiui/util/DumpBitmapInfoUtils$1;

    invoke-direct {v0}, Lmiui/util/DumpBitmapInfoUtils$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    const-string v0, "All big bitmaps (debug.bitmap_threshold_size = %d k):\n"

    const/4 v7, 0x1

    new-array v15, v7, [Ljava/lang/Object;

    sget v16, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v11, v0, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 139
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    move-object v15, v0

    .line 141
    .local v15, "preloadDrawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_16f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_273

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object/from16 v18, v0

    .line 142
    .local v18, "bmpTitle":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    .line 143
    .local v19, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_190

    move-object/from16 v21, v1

    move/from16 v22, v2

    goto :goto_1d0

    .line 145
    :cond_190
    const/4 v0, 0x0

    .line 146
    .local v0, "isPreload":Z
    const/16 v20, 0x0

    move/from16 v7, v20

    .local v7, "i":I
    :goto_195
    move/from16 v20, v0

    .end local v0    # "isPreload":Z
    .local v20, "isPreload":Z
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v0
    :try_end_19b
    .catchall {:try_start_144 .. :try_end_19b} :catchall_2ee

    if-ge v7, v0, :cond_1c4

    .line 147
    :try_start_19d
    invoke-virtual {v15, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 148
    .local v0, "c":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object/from16 v21, v1

    .end local v1    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .local v21, "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    invoke-static {v0}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapFromDrawableState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1a9
    .catchall {:try_start_19d .. :try_end_1a9} :catchall_1bc

    move/from16 v22, v2

    move-object/from16 v2, v19

    .end local v19    # "bmp":Landroid/graphics/Bitmap;
    .local v2, "bmp":Landroid/graphics/Bitmap;
    .local v22, "isDumpBitmap":Z
    if-ne v1, v2, :cond_1b1

    .line 149
    const/4 v1, 0x1

    .line 150
    .end local v20    # "isPreload":Z
    .local v1, "isPreload":Z
    goto :goto_1cc

    .line 146
    .end local v0    # "c":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v1    # "isPreload":Z
    .restart local v20    # "isPreload":Z
    :cond_1b1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v19, v2

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    goto :goto_195

    .line 188
    .end local v7    # "i":I
    .end local v12    # "totalSize":J
    .end local v14    # "bitmapCount":I
    .end local v15    # "preloadDrawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v18    # "bmpTitle":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .end local v20    # "isPreload":Z
    .end local v21    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .end local v22    # "isDumpBitmap":Z
    .local v2, "isDumpBitmap":Z
    :catchall_1bc
    move-exception v0

    move/from16 v22, v2

    move v7, v4

    move/from16 v19, v5

    .end local v2    # "isDumpBitmap":Z
    .restart local v22    # "isDumpBitmap":Z
    goto/16 :goto_2f4

    .line 146
    .end local v22    # "isDumpBitmap":Z
    .local v1, "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .restart local v2    # "isDumpBitmap":Z
    .restart local v7    # "i":I
    .restart local v12    # "totalSize":J
    .restart local v14    # "bitmapCount":I
    .restart local v15    # "preloadDrawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .restart local v18    # "bmpTitle":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .restart local v19    # "bmp":Landroid/graphics/Bitmap;
    .restart local v20    # "isPreload":Z
    :cond_1c4
    move-object/from16 v21, v1

    move/from16 v22, v2

    move-object/from16 v2, v19

    .end local v1    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .end local v19    # "bmp":Landroid/graphics/Bitmap;
    .local v2, "bmp":Landroid/graphics/Bitmap;
    .restart local v21    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .restart local v22    # "isDumpBitmap":Z
    move/from16 v1, v20

    .line 153
    .end local v7    # "i":I
    .end local v20    # "isPreload":Z
    .local v1, "isPreload":Z
    :goto_1cc
    if-eqz v1, :cond_1d6

    if-nez v5, :cond_1d6

    .line 141
    .end local v18    # "bmpTitle":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .end local v21    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .end local v22    # "isDumpBitmap":Z
    .local v1, "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .local v2, "isDumpBitmap":Z
    :goto_1d0
    move-object/from16 v1, v21

    move/from16 v2, v22

    const/4 v7, 0x1

    .end local v1    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .end local v2    # "isDumpBitmap":Z
    .restart local v21    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .restart local v22    # "isDumpBitmap":Z
    goto :goto_16f

    .line 155
    .local v1, "isPreload":Z
    .local v2, "bmp":Landroid/graphics/Bitmap;
    .restart local v18    # "bmpTitle":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    :cond_1d6
    :try_start_1d6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0
    :try_end_1da
    .catchall {:try_start_1d6 .. :try_end_1da} :catchall_26d

    move v7, v4

    move/from16 v19, v5

    .end local v4    # "isNoGC":Z
    .end local v5    # "isIncludePreload":Z
    .local v7, "isNoGC":Z
    .local v19, "isIncludePreload":Z
    int-to-long v4, v0

    add-long/2addr v12, v4

    .line 156
    add-int/lit8 v14, v14, 0x1

    .line 158
    :try_start_1e1
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v1}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 159
    .local v4, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_203
    .catchall {:try_start_1e1 .. :try_end_203} :catchall_2ea

    .line 161
    if-eqz v3, :cond_24c

    .line 163
    :try_start_205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_21a} :catch_242
    .catchall {:try_start_205 .. :try_end_21a} :catchall_2ea

    move-object/from16 v20, v4

    const/4 v4, 0x1

    .end local v4    # "msg":Ljava/lang/String;
    .local v20, "msg":Ljava/lang/String;
    :try_start_21d
    invoke-static {v2, v5, v4, v1}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 165
    .local v4, "stream":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v23, v0

    .end local v0    # "fileName":Ljava/lang/String;
    .local v23, "fileName":Ljava/lang/String;
    const/16 v0, 0x64

    invoke-virtual {v2, v5, v0, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 166
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_23f} :catch_240
    .catchall {:try_start_21d .. :try_end_23f} :catchall_2ea

    .line 170
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .end local v23    # "fileName":Ljava/lang/String;
    goto :goto_24e

    .line 167
    :catch_240
    move-exception v0

    goto :goto_245

    .end local v20    # "msg":Ljava/lang/String;
    .local v4, "msg":Ljava/lang/String;
    :catch_242
    move-exception v0

    move-object/from16 v20, v4

    .line 168
    .end local v4    # "msg":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v20    # "msg":Ljava/lang/String;
    :goto_245
    :try_start_245
    invoke-virtual {v0, v11}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24e

    .line 161
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v20    # "msg":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_24c
    move-object/from16 v20, v4

    .line 173
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v20    # "msg":Ljava/lang/String;
    :goto_24e
    if-eqz v8, :cond_25e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, v8, :cond_25e

    .line 174
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    const-string v0, "  now recycled."

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    :cond_25e
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 179
    .end local v1    # "isPreload":Z
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v18    # "bmpTitle":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .end local v20    # "msg":Ljava/lang/String;
    move v4, v7

    move/from16 v5, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    const/4 v7, 0x1

    goto/16 :goto_16f

    .line 188
    .end local v7    # "isNoGC":Z
    .end local v12    # "totalSize":J
    .end local v14    # "bitmapCount":I
    .end local v15    # "preloadDrawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v19    # "isIncludePreload":Z
    .end local v21    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .local v4, "isNoGC":Z
    .restart local v5    # "isIncludePreload":Z
    :catchall_26d
    move-exception v0

    move v7, v4

    move/from16 v19, v5

    .end local v4    # "isNoGC":Z
    .end local v5    # "isIncludePreload":Z
    .restart local v7    # "isNoGC":Z
    .restart local v19    # "isIncludePreload":Z
    goto/16 :goto_2f4

    .line 181
    .end local v7    # "isNoGC":Z
    .end local v19    # "isIncludePreload":Z
    .end local v22    # "isDumpBitmap":Z
    .local v1, "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .local v2, "isDumpBitmap":Z
    .restart local v4    # "isNoGC":Z
    .restart local v5    # "isIncludePreload":Z
    .restart local v12    # "totalSize":J
    .restart local v14    # "bitmapCount":I
    .restart local v15    # "preloadDrawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_273
    move-object/from16 v21, v1

    move/from16 v22, v2

    move v7, v4

    move/from16 v19, v5

    .end local v1    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .end local v2    # "isDumpBitmap":Z
    .end local v4    # "isNoGC":Z
    .end local v5    # "isIncludePreload":Z
    .restart local v7    # "isNoGC":Z
    .restart local v19    # "isIncludePreload":Z
    .restart local v21    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .restart local v22    # "isDumpBitmap":Z
    const-string v0, "Total count: %d, size: %dM\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-wide/16 v4, 0x400

    div-long v23, v12, v4

    div-long v23, v23, v4

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v11, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 182
    if-eqz v3, :cond_2d4

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Export bitmap. Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    const-string v0, "DumpBitmapInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Export bitmaps finished. Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2d4
    const-string v0, "\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v11, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_2dc
    .catchall {:try_start_245 .. :try_end_2dc} :catchall_2ea

    .line 188
    nop

    .end local v12    # "totalSize":J
    .end local v14    # "bitmapCount":I
    .end local v15    # "preloadDrawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v21    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V

    .line 189
    nop

    .line 190
    return-void

    .line 129
    .end local v7    # "isNoGC":Z
    .end local v19    # "isIncludePreload":Z
    .end local v22    # "isDumpBitmap":Z
    .restart local v2    # "isDumpBitmap":Z
    .restart local v4    # "isNoGC":Z
    .restart local v5    # "isIncludePreload":Z
    .restart local v12    # "totalSize":J
    .restart local v14    # "bitmapCount":I
    :catchall_2e2
    move-exception v0

    move/from16 v22, v2

    move v7, v4

    move/from16 v19, v5

    .end local v2    # "isDumpBitmap":Z
    .end local v4    # "isNoGC":Z
    .end local v5    # "isIncludePreload":Z
    .restart local v7    # "isNoGC":Z
    .restart local v19    # "isIncludePreload":Z
    .restart local v22    # "isDumpBitmap":Z
    :goto_2e8
    :try_start_2e8
    monitor-exit v15
    :try_end_2e9
    .catchall {:try_start_2e8 .. :try_end_2e9} :catchall_2ec

    .end local v3    # "isExportBitmap":Z
    .end local v6    # "exportBitmapFolder":Ljava/io/File;
    .end local v7    # "isNoGC":Z
    .end local v8    # "recycleBmp":I
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "pw":Ljava/io/PrintWriter;
    .end local v19    # "isIncludePreload":Z
    .end local v22    # "isDumpBitmap":Z
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "args":[Ljava/lang/String;
    :try_start_2e9
    throw v0
    :try_end_2ea
    .catchall {:try_start_2e9 .. :try_end_2ea} :catchall_2ea

    .line 188
    .end local v12    # "totalSize":J
    .end local v14    # "bitmapCount":I
    .restart local v3    # "isExportBitmap":Z
    .restart local v6    # "exportBitmapFolder":Ljava/io/File;
    .restart local v7    # "isNoGC":Z
    .restart local v8    # "recycleBmp":I
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    .restart local v19    # "isIncludePreload":Z
    .restart local v22    # "isDumpBitmap":Z
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_2ea
    move-exception v0

    goto :goto_2f4

    .line 129
    .restart local v12    # "totalSize":J
    .restart local v14    # "bitmapCount":I
    :catchall_2ec
    move-exception v0

    goto :goto_2e8

    .line 188
    .end local v7    # "isNoGC":Z
    .end local v12    # "totalSize":J
    .end local v14    # "bitmapCount":I
    .end local v19    # "isIncludePreload":Z
    .end local v22    # "isDumpBitmap":Z
    .restart local v2    # "isDumpBitmap":Z
    .restart local v4    # "isNoGC":Z
    .restart local v5    # "isIncludePreload":Z
    :catchall_2ee
    move-exception v0

    move/from16 v22, v2

    move v7, v4

    move/from16 v19, v5

    .end local v2    # "isDumpBitmap":Z
    .end local v4    # "isNoGC":Z
    .end local v5    # "isIncludePreload":Z
    .restart local v7    # "isNoGC":Z
    .restart local v19    # "isIncludePreload":Z
    .restart local v22    # "isDumpBitmap":Z
    :goto_2f4
    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V

    .line 189
    throw v0
.end method

.method private static blacklist formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 8
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "isPreload"    # Z

    .line 241
    const-string v0, "0x%8x %,6dk %dx%d %s %s"

    .line 242
    .local v0, "msgFormat":Ljava/lang/String;
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 244
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, ""

    if-eqz p2, :cond_3a

    const-string v3, "preload"

    goto :goto_3b

    :cond_3a
    move-object v3, v2

    :goto_3b
    const/4 v4, 0x4

    aput-object v3, v1, v4

    const/4 v3, 0x5

    .line 245
    if-nez p1, :cond_42

    goto :goto_46

    :cond_42
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_46
    aput-object v2, v1, v3

    .line 242
    const-string v2, "0x%8x %,6dk %dx%d %s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getBitmapFromDrawableState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "c"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 221
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "clsName":Ljava/lang/String;
    const-string v2, "BitmapState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "mBitmap"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 224
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    return-object v3

    .line 226
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_26
    const-string v2, "NinePatchState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "mNinePatch"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 228
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 229
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/NinePatch;

    .line 230
    .local v3, "np":Landroid/graphics/NinePatch;
    if-nez v3, :cond_44

    return-object v0

    .line 231
    :cond_44
    invoke-virtual {v3}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    return-object v0

    .line 233
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "np":Landroid/graphics/NinePatch;
    :cond_49
    return-object v0

    .line 234
    .end local v1    # "clsName":Ljava/lang/String;
    :catchall_4a
    move-exception v1

    .line 235
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    return-object v0
.end method

.method private static blacklist getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;
    .registers 11
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "forFileName"    # Z
    .param p3, "isPreload"    # Z

    .line 203
    invoke-static {p0, p1, p3}, Lmiui/util/DumpBitmapInfoUtils;->formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "msg":Ljava/lang/String;
    if-nez p2, :cond_7

    .line 206
    return-object v0

    .line 209
    :cond_7
    const/16 v1, 0xf0

    .line 210
    .local v1, "maxFileNameLen":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0xf0

    .line 211
    .local v2, "overLength":I
    if-lez v2, :cond_25

    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v2, :cond_25

    .line 212
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {p0, p1, p3}, Lmiui/util/DumpBitmapInfoUtils;->formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    const/16 v5, 0x5f

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    const/16 v6, 0x2d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist isTrackingNeeded(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .line 193
    sget v0, Lmiui/util/DumpBitmapInfoUtils;->sCurrProcess:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 194
    const/16 v0, 0x64

    const-string v1, "debug.bitmap_threshold_size"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    .line 195
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lmiui/util/DumpBitmapInfoUtils;->sCurrProcess:I

    .line 198
    :cond_18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    .line 199
    .local v0, "size":I
    sget v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    if-lt v0, v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    return v1
.end method

.method public static blacklist putBitmap(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 50
    sget-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-nez v0, :cond_5

    return-void

    .line 52
    :cond_5
    if-nez p0, :cond_8

    return-void

    .line 55
    :cond_8
    :try_start_8
    invoke-static {p0}, Lmiui/util/DumpBitmapInfoUtils;->isTrackingNeeded(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 57
    :cond_f
    sget-object v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    monitor-enter v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1c

    .line 58
    :try_start_12
    sget-object v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit v0

    .line 62
    goto :goto_20

    .line 59
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    .end local p0    # "bmp":Landroid/graphics/Bitmap;
    .end local p1    # "title":Ljava/lang/CharSequence;
    :try_start_1b
    throw v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    .line 60
    .restart local p0    # "bmp":Landroid/graphics/Bitmap;
    .restart local p1    # "title":Ljava/lang/CharSequence;
    :catchall_1c
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_20
    return-void
.end method
