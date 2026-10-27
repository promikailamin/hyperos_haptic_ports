.class Lcom/android/internal/lineage/util/ColorUtils$1;
.super Ljava/lang/Object;
.source "ColorUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/lineage/util/ColorUtils;->getDominantSwatch(Lcom/android/internal/lineage/util/palette/Palette;)Lcom/android/internal/lineage/util/palette/Palette$Swatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/lineage/util/palette/Palette$Swatch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/lineage/util/palette/Palette$Swatch;Lcom/android/internal/lineage/util/palette/Palette$Swatch;)I
    .registers 3

    .line 262
    invoke-virtual {p1}, Lcom/android/internal/lineage/util/palette/Palette$Swatch;->getPopulation()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/internal/lineage/util/palette/Palette$Swatch;->getPopulation()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 259
    check-cast p1, Lcom/android/internal/lineage/util/palette/Palette$Swatch;

    check-cast p2, Lcom/android/internal/lineage/util/palette/Palette$Swatch;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/lineage/util/ColorUtils$1;->compare(Lcom/android/internal/lineage/util/palette/Palette$Swatch;Lcom/android/internal/lineage/util/palette/Palette$Swatch;)I

    move-result p1

    return p1
.end method
