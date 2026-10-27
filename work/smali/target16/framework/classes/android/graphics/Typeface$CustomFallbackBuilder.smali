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
    .registers 3

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    .line 913
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    return-void
.end method

.method public static whitelist getMaxCustomFallbackCount()I
    .registers 1

    .line 904
    const/16 v0, 0x40

    return v0
.end method


# virtual methods
.method public whitelist addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 5

    .line 961
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Landroid/graphics/Typeface$CustomFallbackBuilder;->getMaxCustomFallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 963
    :goto_12
    invoke-static {}, Landroid/graphics/Typeface$CustomFallbackBuilder;->getMaxCustomFallbackCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 962
    const-string v2, "Custom fallback limit exceeded(%d)"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 964
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    return-object p0
.end method

.method public whitelist build()Landroid/graphics/Typeface;
    .registers 8

    .line 974
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 975
    iget-object v1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->-$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 976
    new-array v2, v0, [J

    .line 977
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v0, :cond_23

    .line 978
    iget-object v5, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/fonts/FontFamily;

    invoke-virtual {v5}, Landroid/graphics/fonts/FontFamily;->getNativePtr()J

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 977
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 980
    :cond_23
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    if-nez v0, :cond_2a

    const/16 v0, 0x190

    goto :goto_30

    :cond_2a
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    .line 982
    :goto_30
    iget-object v4, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    if-eqz v4, :cond_3e

    iget-object v4, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x1

    .line 983
    :cond_3e
    :goto_3e
    new-instance v4, Landroid/graphics/Typeface;

    .line 984
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getNativeInstance()J

    move-result-wide v5

    .line 983
    invoke-static {v2, v5, v6, v0, v3}, Landroid/graphics/Typeface;->-$$Nest$smnativeCreateFromArray([JJII)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v4, v0, v1, v2, v2}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;Landroid/graphics/Typeface-IA;)V

    return-object v4
.end method

.method public whitelist setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 2

    .line 946
    iput-object p1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    .line 947
    return-object p0
.end method

.method public whitelist setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 2

    .line 931
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iput-object p1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    .line 933
    return-object p0
.end method
