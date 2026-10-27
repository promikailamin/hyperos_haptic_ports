.class public final Landroid/content/pm/ArchivedActivityInfo;
.super Ljava/lang/Object;
.source "ArchivedActivityInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ArchivedActivityInfo"


# instance fields
.field private blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mMonochromeIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/ArchivedActivityParcel;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    .line 67
    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    invoke-static {v0}, Landroid/content/pm/ArchivedActivityInfo;->drawableFromCompressedBitmap([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object p1, p1, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    invoke-static {p1}, Landroid/content/pm/ArchivedActivityInfo;->drawableFromCompressedBitmap([B)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    .line 60
    iput-object p2, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    .line 61
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    return-void
.end method

.method public static blacklist bytesFromBitmap(Landroid/graphics/Bitmap;)[B
    .registers 5

    .line 135
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 136
    return-object v0

    .line 139
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_26

    .line 141
    :try_start_d
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 142
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1c

    .line 143
    :try_start_18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_26

    .line 142
    return-object p0

    .line 139
    :catchall_1c
    move-exception p0

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v1

    :try_start_22
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    throw p0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_26

    .line 143
    :catch_26
    move-exception p0

    .line 144
    const-string v1, "ArchivedActivityInfo"

    const-string v2, "Failed to compress bitmap"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-object v0
.end method

.method private static blacklist drawableFromCompressedBitmap([B)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 150
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 151
    return-object v0

    .line 153
    :cond_4
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 2

    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 8

    .line 97
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 98
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_44

    .line 100
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_29

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_19

    goto :goto_29

    .line 104
    :cond_19
    nop

    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 107
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 105
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2f

    .line 102
    :cond_29
    :goto_29
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    :goto_2f
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p0, v0

    .line 115
    :goto_44
    if-gtz p1, :cond_47

    .line 116
    return-object p0

    .line 119
    :cond_47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_63

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, p1, :cond_63

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v2, p1, 0x2

    if-gt v0, v2, :cond_63

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v2, :cond_62

    goto :goto_63

    .line 127
    :cond_62
    return-object p0

    .line 121
    :cond_63
    :goto_63
    invoke-static {p0, p1, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 122
    if-eq p1, p0, :cond_6c

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_6c
    return-object p1
.end method


# virtual methods
.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getMonochromeIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method blacklist getParcel()Landroid/content/pm/ArchivedActivityParcel;
    .registers 4

    .line 73
    new-instance v0, Landroid/content/pm/ArchivedActivityParcel;

    invoke-direct {v0}, Landroid/content/pm/ArchivedActivityParcel;-><init>()V

    .line 74
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    .line 76
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    move-object v1, v2

    goto :goto_22

    .line 77
    :cond_18
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    :goto_22
    iput-object v1, v0, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    .line 78
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_29

    goto :goto_33

    .line 79
    :cond_29
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    :goto_33
    iput-object v2, v0, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    .line 80
    return-object v0
.end method

.method public whitelist setComponentName(Landroid/content/ComponentName;)Landroid/content/pm/ArchivedActivityInfo;
    .registers 4

    .line 220
    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    .line 221
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 223
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)Landroid/content/pm/ArchivedActivityInfo;
    .registers 2

    .line 232
    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 233
    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ArchivedActivityInfo;
    .registers 4

    .line 209
    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    .line 210
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 212
    return-object p0
.end method

.method public whitelist setMonochromeIcon(Landroid/graphics/drawable/Drawable;)Landroid/content/pm/ArchivedActivityInfo;
    .registers 2

    .line 241
    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    .line 242
    return-object p0
.end method
