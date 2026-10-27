.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontFamily$NoImagePreloadHolder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mBuilderPtr:J

.field private greylist-max-o mNativeBuilderCleaner:Ljava/lang/Runnable;

.field public greylist-max-q mNativePtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetBuilderReleaseFunc()J
    .registers 2

    invoke-static {}, Landroid/graphics/FontFamily;->nGetBuilderReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFamilyReleaseFunc()J
    .registers 2

    invoke-static {}, Landroid/graphics/FontFamily;->nGetFamilyReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-string v0, "FontFamily"

    sput-object v0, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-q <init>()V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 80
    invoke-static {}, Landroid/graphics/FontFamily$NoImagePreloadHolder;->-$$Nest$sfgetsBuilderRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    iget-wide v1, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    .line 82
    return-void
.end method

.method public constructor greylist-max-q <init>([Ljava/lang/String;I)V
    .registers 5

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-eqz p1, :cond_18

    array-length v0, p1

    if-nez v0, :cond_9

    goto :goto_18

    .line 93
    :cond_9
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 94
    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_19

    .line 96
    :cond_11
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    .line 92
    :cond_18
    :goto_18
    const/4 p1, 0x0

    .line 98
    :goto_19
    invoke-static {p1, p2}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 99
    invoke-static {}, Landroid/graphics/FontFamily$NoImagePreloadHolder;->-$$Nest$sfgetsBuilderRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    .line 101
    return-void
.end method

.method private static native greylist-max-o nAddAxisValue(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nAddFont(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native greylist-max-o nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native greylist-max-o nCreateFamily(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetBuilderReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFamilyReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nInitBuilder(Ljava/lang/String;I)J
.end method


# virtual methods
.method public greylist-max-q abortCreation()V
    .registers 5

    .line 132
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 135
    iget-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 136
    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 137
    return-void

    .line 133
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FontFamily is already frozen or abandoned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-q addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .registers 15

    .line 146
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_51

    .line 149
    const/4 v1, 0x0

    :try_start_9
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_4f

    .line 150
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    .line 152
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    .line 153
    if-eqz p3, :cond_36

    .line 154
    array-length v0, p3

    move v3, v1

    :goto_22
    if-ge v3, v0, :cond_36

    aget-object v4, p3, v3

    .line 155
    iget-wide v5, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v4}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v4

    invoke-static {v5, v6, v7, v4}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 158
    :cond_36
    iget-wide v3, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move p3, p2

    move-object p2, p1

    move-wide p0, v3

    invoke-static/range {p0 .. p5}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z

    move-result p1
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_43

    .line 159
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4f

    .line 158
    return p1

    .line 149
    :catchall_43
    move-exception v0

    move-object p1, v0

    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4e

    :catchall_49
    move-exception v0

    move-object p2, v0

    :try_start_4b
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4e
    throw p1
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4f} :catch_4f

    .line 159
    :catch_4f
    move-exception v0

    .line 160
    return v1

    .line 147
    :cond_51
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to call addFont after freezing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-q addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z
    .registers 13

    .line 201
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 206
    :try_start_8
    invoke-static {p1, p2, p4, p3}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 207
    move-object p1, p0

    move p3, p5

    move p5, p6

    move p6, p7

    move-object p4, p8

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result p1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_16

    return p1

    .line 208
    :catch_16
    move-exception v0

    .line 209
    const/4 p1, 0x0

    return p1

    .line 202
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to call addFontFromAsset after freezing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-q addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .registers 12

    .line 171
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    .line 174
    if-eqz p3, :cond_20

    .line 175
    array-length v0, p3

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_20

    aget-object v2, p3, v1

    .line 176
    iget-wide v3, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v2

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 179
    :cond_20
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move p3, p2

    move-object p2, p1

    move-wide p0, v0

    invoke-static/range {p0 .. p5}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z

    move-result p1

    return p1

    .line 172
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to call addFontWeightStyle after freezing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-q freeze()Z
    .registers 7

    .line 114
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_30

    .line 117
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nCreateFamily(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    .line 118
    iget-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 119
    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 120
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 121
    invoke-static {}, Landroid/graphics/FontFamily$NoImagePreloadHolder;->-$$Nest$sfgetsFamilyRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    iget-wide v4, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-virtual {v0, p0, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 123
    :cond_26
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0

    .line 115
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FontFamily is already frozen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
