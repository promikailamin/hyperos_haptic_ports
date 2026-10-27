.class Landroid/graphics/drawable/VectorDrawable$VFullPath$4;
.super Landroid/util/IntProperty;
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
        "Landroid/util/IntProperty<",
        "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 1810
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/graphics/drawable/VectorDrawable$VFullPath;)Ljava/lang/Integer;
    .registers 2

    .line 1818
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1810
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;->get(Landroid/graphics/drawable/VectorDrawable$VFullPath;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/graphics/drawable/VectorDrawable$VFullPath;I)V
    .registers 3

    .line 1813
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setFillColor(I)V

    .line 1814
    return-void
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/Object;I)V
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

    .line 1810
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;->setValue(Landroid/graphics/drawable/VectorDrawable$VFullPath;I)V

    return-void
.end method
