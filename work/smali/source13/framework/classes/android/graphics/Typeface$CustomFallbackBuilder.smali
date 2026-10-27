.class public final Landroid/graphics/Typeface$CustomFallbackBuilder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomFallbackBuilder"
.end annotation


# static fields
.field private static final blacklist MAX_CUSTOM_FALLBACK:I = 0x40


# instance fields
.field private blacklist mFallbackName:Ljava/lang/String;

.field private final blacklist mFamilies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStyle:Landroid/graphics/fonts/FontStyle;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/fonts/FontFamily;)V
    .registers 4
    .param p1, "family"    # Landroid/graphics/fonts/FontFamily;

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    .line 834
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    .line 855
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    return-void
.end method

.method public static whitelist getMaxCustomFallbackCount()I
    .registers 1

    .line 846
    const/16 v0, 0x40

    return v0
.end method


# virtual methods
.method public whitelist addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 6
    .param p1, "family"    # Landroid/graphics/fonts/FontFamily;

    .line 903
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Landroid/graphics/Typeface$CustomFallbackBuilder;->getMaxCustomFallbackCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v3

    :goto_14
    new-array v1, v2, [Ljava/lang/Object;

    .line 905
    invoke-static {}, Landroid/graphics/Typeface$CustomFallbackBuilder;->getMaxCustomFallbackCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 904
    const-string v2, "Custom fallback limit exceeded(%d)"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 906
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    return-object p0
.end method

.method public whitelist build()Landroid/graphics/Typeface;
    .registers 5

    .line 917
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/FontManagerStub;->isSupportMiuiFont()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 918
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    iget-object v3, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/graphics/FontManagerStub;->createFallbackFontWithMiuiFamily(Landroid/graphics/Typeface$CustomFallbackBuilder;Ljava/util/List;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 921
    :cond_19
    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->originBuild()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist originBuild()Landroid/graphics/Typeface;
    .registers 10

    .line 930
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 931
    .local v0, "userFallbackSize":I
    iget-object v1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->-$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 932
    .local v1, "fallbackTypeface":Landroid/graphics/Typeface;
    if-nez v1, :cond_12

    .line 933
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$smgetDefault()Landroid/graphics/Typeface;

    move-result-object v1

    .line 935
    :cond_12
    new-array v2, v0, [J

    .line 936
    .local v2, "ptrArray":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v0, :cond_28

    .line 937
    iget-object v4, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontFamily;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getNativePtr()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 936
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 939
    .end local v3    # "i":I
    :cond_28
    iget-object v3, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    if-nez v3, :cond_2f

    const/16 v3, 0x190

    goto :goto_33

    :cond_2f
    invoke-virtual {v3}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v3

    .line 941
    .local v3, "weight":I
    :goto_33
    iget-object v4, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    if-eqz v4, :cond_40

    invoke-virtual {v4}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v4, 0x0

    .line 942
    .local v4, "italic":I
    :goto_41
    new-instance v5, Landroid/graphics/Typeface;

    .line 943
    if-nez v1, :cond_48

    const-wide/16 v6, 0x0

    goto :goto_4a

    :cond_48
    iget-wide v6, v1, Landroid/graphics/Typeface;->native_instance:J

    .line 942
    :goto_4a
    invoke-static {v2, v6, v7, v3, v4}, Landroid/graphics/Typeface;->-$$Nest$smnativeCreateFromArray([JJII)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/Typeface;-><init>(JLandroid/graphics/Typeface-IA;)V

    return-object v5
.end method

.method public whitelist setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 2
    .param p1, "style"    # Landroid/graphics/fonts/FontStyle;

    .line 888
    iput-object p1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    .line 889
    return-object p0
.end method

.method public whitelist setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 2
    .param p1, "familyName"    # Ljava/lang/String;

    .line 873
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iput-object p1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    .line 875
    return-object p0
.end method
