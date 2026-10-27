.class public final Landroid/content/pm/ActivityInfo$WindowLayout;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowLayout"
.end annotation


# instance fields
.field public final whitelist gravity:I

.field public final whitelist height:I

.field public final whitelist heightFraction:F

.field public final whitelist minHeight:I

.field public final whitelist minWidth:I

.field public final whitelist width:I

.field public final whitelist widthFraction:F

.field public blacklist windowLayoutAffinity:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(IFIFIII)V
    .registers 17
    .param p1, "width"    # I
    .param p2, "widthFraction"    # F
    .param p3, "height"    # I
    .param p4, "heightFraction"    # F
    .param p5, "gravity"    # I
    .param p6, "minWidth"    # I
    .param p7, "minHeight"    # I

    .line 1820
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    .line 1822
    return-void
.end method

.method public constructor blacklist <init>(IFIFIIILjava/lang/String;)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "widthFraction"    # F
    .param p3, "height"    # I
    .param p4, "heightFraction"    # F
    .param p5, "gravity"    # I
    .param p6, "minWidth"    # I
    .param p7, "minHeight"    # I
    .param p8, "windowLayoutAffinity"    # Ljava/lang/String;

    .line 1826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1827
    iput p1, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 1828
    iput p2, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    .line 1829
    iput p3, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 1830
    iput p4, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    .line 1831
    iput p5, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    .line 1832
    iput p6, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 1833
    iput p7, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 1834
    iput-object p8, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 1835
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 1840
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    .line 1841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 1842
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    .line 1843
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    .line 1844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 1845
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 1846
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 1847
    return-void
.end method


# virtual methods
.method public blacklist hasSpecifiedSize()Z
    .registers 3

    .line 1926
    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-gez v0, :cond_18

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-gez v0, :cond_18

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_18

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 1931
    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1932
    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1933
    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1935
    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    iget-object v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1939
    return-void
.end method
