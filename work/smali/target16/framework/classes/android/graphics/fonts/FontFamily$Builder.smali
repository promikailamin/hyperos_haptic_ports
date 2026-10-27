.class public final Landroid/graphics/fonts/FontFamily$Builder;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontFamily$Builder$NoImagePreloadHolder;,
        Landroid/graphics/fonts/FontFamily$Builder$VariableFontFamilyType;
    }
.end annotation


# static fields
.field private static final blacklist TAG_ital:I = 0x6974616c

.field private static final blacklist TAG_wght:I = 0x77676874

.field public static final blacklist VARIABLE_FONT_FAMILY_TYPE_NONE:I = 0x0

.field public static final blacklist VARIABLE_FONT_FAMILY_TYPE_SINGLE_FONT_WGHT_ITAL:I = 0x2

.field public static final blacklist VARIABLE_FONT_FAMILY_TYPE_SINGLE_FONT_WGHT_ONLY:I = 0x1

.field public static final blacklist VARIABLE_FONT_FAMILY_TYPE_TWO_FONTS_WGHT:I = 0x3

.field public static final blacklist VARIABLE_FONT_FAMILY_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStyles:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetReleaseNativeFamily()J
    .registers 2

    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder;->nGetReleaseNativeFamily()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/fonts/Font;)V
    .registers 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    .line 96
    const-string v0, "font can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    invoke-static {p1}, Landroid/graphics/fonts/FontFamily$Builder;->makeStyleIdentifier(Landroid/graphics/fonts/Font;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 98
    iget-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public static blacklist analyzeAndResolveVariableType(Ljava/util/ArrayList;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;)I"
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_9

    .line 269
    return v1

    .line 272
    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v3, 0x77676874

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_41

    .line 273
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/fonts/Font;

    .line 274
    nop

    .line 275
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result p0

    invoke-static {v0, p0}, Landroid/graphics/fonts/FontFileUtil;->getSupportedAxes(Ljava/nio/ByteBuffer;I)Ljava/util/Set;

    move-result-object p0

    .line 276
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 277
    const v0, 0x6974616c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 278
    return v2

    .line 280
    :cond_3f
    return v5

    .line 283
    :cond_40
    return v1

    .line 286
    :cond_41
    move v0, v4

    :goto_42
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_69

    .line 287
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/Font;

    .line 288
    nop

    .line 289
    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v2

    invoke-static {v6, v2}, Landroid/graphics/fonts/FontFileUtil;->getSupportedAxes(Ljava/nio/ByteBuffer;I)Ljava/util/Set;

    move-result-object v2

    .line 290
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 291
    return v1

    .line 286
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 294
    :cond_69
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    if-ne v0, v5, :cond_7b

    move v0, v5

    goto :goto_7c

    :cond_7b
    move v0, v4

    .line 295
    :goto_7c
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/Font;

    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v2

    if-ne v2, v5, :cond_8e

    move v2, v5

    goto :goto_8f

    :cond_8e
    move v2, v4

    .line 297
    :goto_8f
    if-ne v0, v2, :cond_92

    .line 298
    return v1

    .line 300
    :cond_92
    if-eqz v0, :cond_a6

    .line 302
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    .line 303
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/Font;

    invoke-virtual {p0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {p0, v5, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_a6
    const/4 p0, 0x3

    return p0
.end method

.method private static blacklist makeStyleIdentifier(Landroid/graphics/fonts/Font;)I
    .registers 2

    .line 196
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method private static native blacklist nAddFont(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nBuild(JLjava/lang/String;IZZI)J
.end method

.method private static native blacklist nGetReleaseNativeFamily()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nInitBuilder()J
.end method


# virtual methods
.method public whitelist addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    .registers 5

    .line 116
    const-string v0, "font can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Landroid/graphics/fonts/FontFamily$Builder;->makeStyleIdentifier(Landroid/graphics/fonts/Font;)I

    move-result v0

    .line 118
    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1d

    .line 121
    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 122
    iget-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    return-object p0

    .line 119
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " has already been added"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/graphics/fonts/FontFamily;
    .registers 7

    .line 174
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;
    .registers 13

    .line 184
    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder;->nInitBuilder()J

    move-result-wide v0

    .line 185
    const/4 v2, 0x0

    :goto_5
    iget-object v3, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 186
    iget-object v3, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/Font;

    invoke-virtual {v3}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->nAddFont(JJ)V

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 188
    :cond_1f
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/fonts/FontFamily$Builder;->nBuild(JLjava/lang/String;IZZI)J

    move-result-wide p1

    .line 190
    new-instance p3, Landroid/graphics/fonts/FontFamily;

    invoke-direct {p3, p1, p2}, Landroid/graphics/fonts/FontFamily;-><init>(J)V

    .line 191
    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder$NoImagePreloadHolder;->-$$Nest$sfgetsFamilyRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object p4

    invoke-virtual {p4, p3, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 192
    return-object p3
.end method

.method public whitelist buildVariableFamily()Landroid/graphics/fonts/FontFamily;
    .registers 8

    .line 159
    iget-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/graphics/fonts/FontFamily$Builder;->analyzeAndResolveVariableType(Ljava/util/ArrayList;)I

    move-result v6

    .line 160
    const/4 v0, -0x1

    if-ne v6, v0, :cond_b

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_b
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    return-object v0
.end method
