.class abstract Lcom/android/internal/lineage/util/palette/Palette$Generator;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/lineage/util/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Generator"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist generate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/lineage/util/palette/Palette$Swatch;",
            ">;)V"
        }
    .end annotation
.end method

.method public blacklist getDarkMutedSwatch()Lcom/android/internal/lineage/util/palette/Palette$Swatch;
    .registers 2

    .line 685
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDarkVibrantSwatch()Lcom/android/internal/lineage/util/palette/Palette$Swatch;
    .registers 2

    .line 664
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLightMutedSwatch()Lcom/android/internal/lineage/util/palette/Palette$Swatch;
    .registers 2

    .line 678
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLightVibrantSwatch()Lcom/android/internal/lineage/util/palette/Palette$Swatch;
    .registers 2

    .line 657
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMutedSwatch()Lcom/android/internal/lineage/util/palette/Palette$Swatch;
    .registers 2

    .line 671
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVibrantSwatch()Lcom/android/internal/lineage/util/palette/Palette$Swatch;
    .registers 2

    .line 650
    const/4 v0, 0x0

    return-object v0
.end method
