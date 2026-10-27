.class public final Landroid/hardware/display/DisplayTopology$TreeNode;
.super Ljava/lang/Object;
.source "DisplayTopology.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayTopology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TreeNode"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayId:I

.field private blacklist mLogicalDensity:I

.field private blacklist mLogicalHeight:I

.field private blacklist mLogicalWidth:I

.field private blacklist mOffset:F

.field private blacklist mPosition:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .registers 1

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogicalDensity(Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .registers 1

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalDensity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogicalHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .registers 1

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogicalWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .registers 1

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F
    .registers 1

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .registers 1

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLogicalDensity(Landroid/hardware/display/DisplayTopology$TreeNode;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalDensity:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLogicalHeight(Landroid/hardware/display/DisplayTopology$TreeNode;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLogicalWidth(Landroid/hardware/display/DisplayTopology$TreeNode;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V
    .registers 2

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 890
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode$1;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology$TreeNode$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DisplayTopology$TreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIF)V
    .registers 15

    .line 942
    nop

    .line 943
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v7

    .line 942
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IIIIIFLjava/util/List;)V

    .line 944
    return-void
.end method

.method public constructor blacklist <init>(IIIIIFLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIF",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;)V"
        }
    .end annotation

    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    .line 949
    iput p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalWidth:I

    .line 950
    iput p3, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalHeight:I

    .line 951
    iput p4, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalDensity:I

    .line 952
    iput p5, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    .line 953
    iput p6, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    .line 954
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    .line 955
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 958
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IIIIIF)V

    .line 960
    iget-object v0, v0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    sget-object v1, Landroid/hardware/display/DisplayTopology$TreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 961
    return-void
.end method

.method public static blacklist positionToString(I)Ljava/lang/String;
    .registers 4

    .line 1029
    packed-switch p0, :pswitch_data_28

    .line 1034
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :pswitch_1c
    const-string p0, "bottom"

    goto :goto_27

    .line 1032
    :pswitch_1f
    const-string p0, "right"

    goto :goto_27

    .line 1031
    :pswitch_22
    const-string p0, "top"

    goto :goto_27

    .line 1030
    :pswitch_25
    const-string p0, "left"

    .line 1029
    :goto_27
    return-object p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public blacklist addChild(Landroid/hardware/display/DisplayTopology$TreeNode;)V
    .registers 3

    .line 1072
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    return-void
.end method

.method public blacklist copy()Landroid/hardware/display/DisplayTopology$TreeNode;
    .registers 8

    .line 1009
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    iget v2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalWidth:I

    iget v3, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalHeight:I

    iget v4, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalDensity:I

    iget v5, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    iget v6, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IIIIIF)V

    .line 1011
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 1012
    iget-object v3, v0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->copy()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    goto :goto_17

    .line 1014
    :cond_2d
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 1059
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1060
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1061
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 1062
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1063
    goto :goto_c

    .line 1064
    :cond_1c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1065
    return-void
.end method

.method public blacklist getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 964
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    return v0
.end method

.method public blacklist getHeight()F
    .registers 3

    .line 978
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalDensity:I

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result v0

    return v0
.end method

.method public blacklist getLogicalDensity()I
    .registers 2

    .line 990
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalDensity:I

    return v0
.end method

.method public blacklist getLogicalHeight()I
    .registers 2

    .line 986
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalHeight:I

    return v0
.end method

.method public blacklist getLogicalWidth()I
    .registers 2

    .line 982
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalWidth:I

    return v0
.end method

.method public blacklist getOffset()F
    .registers 2

    .line 998
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    return v0
.end method

.method public blacklist getPosition()I
    .registers 2

    .line 994
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    return v0
.end method

.method public blacklist getWidth()F
    .registers 3

    .line 971
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalDensity:I

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logical width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logical height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logical density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    .line 1021
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->positionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1045
    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mLogicalDensity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    iget p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1051
    iget-object p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1052
    return-void
.end method
