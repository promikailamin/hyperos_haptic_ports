.class Landroid/graphics/drawable/VectorDrawable$VFullPath$10;
.super Ljava/util/HashMap;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VFullPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/util/Property;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 1910
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1912
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-$$Nest$sfgetSTROKE_WIDTH()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "strokeWidth"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-$$Nest$sfgetSTROKE_COLOR()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "strokeColor"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-$$Nest$sfgetSTROKE_ALPHA()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "strokeAlpha"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-$$Nest$sfgetFILL_COLOR()Landroid/util/Property;

    move-result-object v0

    const-string v1, "fillColor"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-$$Nest$sfgetFILL_ALPHA()Landroid/util/Property;

    move-result-object v0

    const-string v1, "fillAlpha"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-$$Nest$sfgetTRIM_PATH_START()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "trimPathStart"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-$$Nest$sfgetTRIM_PATH_END()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "trimPathEnd"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-$$Nest$sfgetTRIM_PATH_OFFSET()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "trimPathOffset"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    return-void
.end method
