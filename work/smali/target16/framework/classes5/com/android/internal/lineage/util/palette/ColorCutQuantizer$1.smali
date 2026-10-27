.class Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;)I
    .registers 3

    .line 457
    invoke-virtual {p2}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->getVolume()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->getVolume()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
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

    .line 454
    check-cast p1, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;

    check-cast p2, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$1;->compare(Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;)I

    move-result p1

    return p1
.end method
